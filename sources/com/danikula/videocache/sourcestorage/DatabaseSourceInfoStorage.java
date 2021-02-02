package com.danikula.videocache.sourcestorage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.danikula.videocache.Preconditions;
import com.danikula.videocache.SourceInfo;

class DatabaseSourceInfoStorage extends SQLiteOpenHelper implements SourceInfoStorage {
    private static final String[] ALL_COLUMNS = {COLUMN_ID, "url", COLUMN_LENGTH, "mime"};
    private static final String COLUMN_ID = "_id";
    private static final String COLUMN_LENGTH = "length";
    private static final String COLUMN_MIME = "mime";
    private static final String COLUMN_URL = "url";
    private static final String CREATE_SQL = "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);";
    private static final String TABLE = "SourceInfo";

    DatabaseSourceInfoStorage(Context context) {
        super(context, "AndroidVideoCache.db", null, 1);
        Preconditions.checkNotNull(context);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        Preconditions.checkNotNull(sQLiteDatabase);
        sQLiteDatabase.execSQL(CREATE_SQL);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }

    /* JADX WARNING: type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r0v4 */
    /* JADX WARNING: type inference failed for: r0v6 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0037  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.danikula.videocache.SourceInfo get(java.lang.String r11) {
        /*
            r10 = this;
            com.danikula.videocache.Preconditions.checkNotNull(r11)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r10.getReadableDatabase()     // Catch:{ all -> 0x0034 }
            java.lang.String r2 = "SourceInfo"
            java.lang.String[] r3 = ALL_COLUMNS     // Catch:{ all -> 0x0034 }
            java.lang.String r4 = "url=?"
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch:{ all -> 0x0034 }
            r6 = 0
            r5[r6] = r11     // Catch:{ all -> 0x0034 }
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r11 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ all -> 0x0034 }
            if (r11 == 0) goto L_0x002e
            boolean r1 = r11.moveToFirst()     // Catch:{ all -> 0x0029 }
            if (r1 != 0) goto L_0x0024
            goto L_0x002e
        L_0x0024:
            com.danikula.videocache.SourceInfo r0 = r10.convert(r11)     // Catch:{ all -> 0x0029 }
            goto L_0x002e
        L_0x0029:
            r0 = move-exception
            r9 = r0
            r0 = r11
            r11 = r9
            goto L_0x0035
        L_0x002e:
            if (r11 == 0) goto L_0x0033
            r11.close()
        L_0x0033:
            return r0
        L_0x0034:
            r11 = move-exception
        L_0x0035:
            if (r0 == 0) goto L_0x003a
            r0.close()
        L_0x003a:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.danikula.videocache.sourcestorage.DatabaseSourceInfoStorage.get(java.lang.String):com.danikula.videocache.SourceInfo");
    }

    public void put(String str, SourceInfo sourceInfo) {
        Preconditions.checkAllNotNull(str, sourceInfo);
        boolean z = get(str) != null;
        ContentValues convert = convert(sourceInfo);
        String str2 = TABLE;
        if (z) {
            getWritableDatabase().update(str2, convert, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert(str2, null, convert);
        }
    }

    public void release() {
        close();
    }

    private SourceInfo convert(Cursor cursor) {
        return new SourceInfo(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow(COLUMN_LENGTH)), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    private ContentValues convert(SourceInfo sourceInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", sourceInfo.url);
        contentValues.put(COLUMN_LENGTH, Long.valueOf(sourceInfo.length));
        contentValues.put("mime", sourceInfo.mime);
        return contentValues;
    }
}
