package edu.missouri.snb.db;

import com.ldbc.driver.Db;
import edu.missouri.snb.BaseDbConnectionState;
import edu.missouri.snb.QueryStore;

import java.io.IOException;

public abstract class BaseDb<TQueryStore extends QueryStore> extends Db {

    protected BaseDbConnectionState<TQueryStore> dcs;

    @Override
    protected void onClose() throws IOException {
        dcs.close();
    }

    @Override
    protected BaseDbConnectionState getConnectionState() {
        return dcs;
    }
    
}
