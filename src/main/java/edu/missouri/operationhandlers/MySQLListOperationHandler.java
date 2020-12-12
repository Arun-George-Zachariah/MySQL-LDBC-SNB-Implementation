package edu.missouri.operationhandlers;

import com.ldbc.driver.DbException;
import com.ldbc.driver.Operation;
import com.ldbc.driver.ResultReporter;
import edu.missouri.mysql.MySQLDbConnectionState;
import edu.missouri.snb.operationhandlers.ListOperationHandler;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public abstract class MySQLListOperationHandler<TOperation extends Operation<List<TOperationResult>>, TOperationResult>
        implements ListOperationHandler<TOperationResult, TOperation, MySQLDbConnectionState> {

    @Override
    public void executeOperation(TOperation operation, MySQLDbConnectionState state,
                                 ResultReporter resultReporter) throws DbException {
        Connection conn = state.getConnection();
        List<TOperationResult> results = new ArrayList<>();
        int resultCount = 0;
        results.clear();

        String queryString = getQueryString(state, operation);
        try (final Statement stmt = conn.createStatement()) {
            state.logQuery(operation.getClass().getSimpleName(), queryString);

            ResultSet result = stmt.executeQuery(queryString);
            while (result.next()) {
                resultCount++;

                TOperationResult tuple = convertSingleResult(result);
                if (state.isPrintResults()) {
                    System.out.println(tuple.toString());
                }
                results.add(tuple);
            }
        } catch (Exception e) {
            throw new DbException(e);
        }
        resultReporter.report(resultCount, results, operation);
    }

    public abstract TOperationResult convertSingleResult(ResultSet result) throws SQLException;

}
