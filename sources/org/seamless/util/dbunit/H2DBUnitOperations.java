package org.seamless.util.dbunit;

import org.dbunit.database.DatabaseConfig;
import org.dbunit.database.IDatabaseConnection;
import org.dbunit.dataset.datatype.DataType;
import org.dbunit.dataset.datatype.DataTypeException;
import org.dbunit.dataset.datatype.DefaultDataTypeFactory;

public abstract class H2DBUnitOperations extends DBUnitOperations {
    /* access modifiers changed from: protected */
    public void disableReferentialIntegrity(IDatabaseConnection iDatabaseConnection) {
        try {
            iDatabaseConnection.getConnection().prepareStatement("set referential_integrity FALSE").execute();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: protected */
    public void enableReferentialIntegrity(IDatabaseConnection iDatabaseConnection) {
        try {
            iDatabaseConnection.getConnection().prepareStatement("set referential_integrity TRUE").execute();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: protected */
    public void editConfig(DatabaseConfig databaseConfig) {
        super.editConfig(databaseConfig);
        databaseConfig.setProperty("http://www.dbunit.org/properties/datatypeFactory", new DefaultDataTypeFactory() {
            public DataType createDataType(int i, String str) throws DataTypeException {
                if (i == 16) {
                    return DataType.BOOLEAN;
                }
                return H2DBUnitOperations.super.createDataType(i, str);
            }
        });
    }
}
