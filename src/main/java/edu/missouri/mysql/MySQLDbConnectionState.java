package edu.missouri.mysql;

import com.ldbc.driver.DbException;

import edu.missouri.snb.BaseDbConnectionState;
import edu.missouri.snb.QueryStore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Map;

public class MySQLDbConnectionState<TDbQueryStore extends QueryStore> extends BaseDbConnectionState<TDbQueryStore> {

    protected String endPoint;
    public static MySQLDbConnectionState state = null;
    protected Connection connection;

    public MySQLDbConnectionState(Map<String, String> properties, TDbQueryStore queryStore) {
        super(properties, queryStore);
    }

    public Connection getConnection() throws DbException {
        try {
            if (connection == null) {
                Class.forName("com.mysql.jdbc.Driver");
                //ToDo: Change username and password and make them configurable
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sonoo","root","root");
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new DbException(e);
        }
        return connection;
    }

    @Override
    public void close() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
