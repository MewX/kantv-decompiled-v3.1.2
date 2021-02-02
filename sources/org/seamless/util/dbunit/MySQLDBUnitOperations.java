package org.seamless.util.dbunit;

import org.dbunit.database.IDatabaseConnection;

public abstract class MySQLDBUnitOperations extends DBUnitOperations {
    /* access modifiers changed from: protected */
    public void disableReferentialIntegrity(IDatabaseConnection iDatabaseConnection) {
        try {
            iDatabaseConnection.getConnection().prepareStatement("set foreign_key_checks=0").execute();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: protected */
    public void enableReferentialIntegrity(IDatabaseConnection iDatabaseConnection) {
        try {
            iDatabaseConnection.getConnection().prepareStatement("set foreign_key_checks=1").execute();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
