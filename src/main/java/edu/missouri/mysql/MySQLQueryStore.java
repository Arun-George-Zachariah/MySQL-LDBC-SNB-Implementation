package edu.missouri.mysql;

import com.ldbc.driver.DbException;
import edu.missouri.converter.MySQLConverter;
import edu.missouri.snb.QueryStore;
import edu.missouri.snb.converter.Converter;

public class MySQLQueryStore extends QueryStore {

    protected Converter getConverter() {
        return new MySQLConverter();
    }

    @Override
    protected String getParameterPrefix() {
        return ":";
    }

    public MySQLQueryStore(String path) throws DbException {
        super(path, ".sql");
    }

}
