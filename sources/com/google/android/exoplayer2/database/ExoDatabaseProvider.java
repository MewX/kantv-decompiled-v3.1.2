package com.google.android.exoplayer2.database;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.exoplayer2.util.Log;

public final class ExoDatabaseProvider extends SQLiteOpenHelper implements DatabaseProvider {
    public static final String DATABASE_NAME = "exoplayer_internal.db";
    private static final String TAG = "ExoDatabaseProvider";
    private static final int VERSION = 1;

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public ExoDatabaseProvider(Context context) {
        super(context.getApplicationContext(), DATABASE_NAME, null, 1);
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        wipeDatabase(sQLiteDatabase);
    }

    private static void wipeDatabase(SQLiteDatabase sQLiteDatabase) {
        String sb;
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("sqlite_master", new String[]{"type", "name"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                String string = query.getString(0);
                String string2 = query.getString(1);
                if (!"sqlite_sequence".equals(string2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("DROP ");
                    sb2.append(string);
                    sb2.append(" IF EXISTS ");
                    sb2.append(string2);
                    sb = sb2.toString();
                    sQLiteDatabase.execSQL(sb);
                }
            } catch (SQLException e) {
                String str = TAG;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Error executing ");
                sb3.append(sb);
                Log.e(str, sb3.toString(), e);
            } catch (Throwable th) {
                Throwable th2 = th;
                try {
                    throw th2;
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
        }
        if (query != null) {
            query.close();
            return;
        }
        return;
        throw th;
    }
}
