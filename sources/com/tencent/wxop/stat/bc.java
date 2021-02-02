package com.tencent.wxop.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.r;
import java.util.ArrayList;

class bc extends SQLiteOpenHelper {
    private String a = "";
    private Context b = null;

    public bc(Context context, String str) {
        super(context, str, null, 3);
        this.a = str;
        this.b = context.getApplicationContext();
        if (StatConfig.isDebugEnable()) {
            StatLogger e = au.h;
            StringBuilder sb = new StringBuilder("SQLiteOpenHelper ");
            sb.append(this.a);
            e.i(sb.toString());
        }
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r1v3 */
    /* JADX WARNING: type inference failed for: r0v2 */
    /* JADX WARNING: type inference failed for: r0v3 */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r0v6 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(android.database.sqlite.SQLiteDatabase r10) {
        /*
            r9 = this;
            r0 = 0
            java.lang.String r2 = "user"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r10
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ Throwable -> 0x004e }
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            r2.<init>()     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            boolean r3 = r1.moveToNext()     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L_0x0033
            java.lang.String r0 = r1.getString(r5)     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            r1.getInt(r4)     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            r3 = 2
            r1.getString(r3)     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            r3 = 3
            r1.getLong(r3)     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            java.lang.String r3 = com.tencent.wxop.stat.common.r.b(r0)     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            java.lang.String r6 = "uid"
            r2.put(r6, r3)     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
        L_0x0033:
            if (r0 == 0) goto L_0x0040
            java.lang.String r3 = "user"
            java.lang.String r6 = "uid=?"
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            r4[r5] = r0     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
            r10.update(r3, r2, r6, r4)     // Catch:{ Throwable -> 0x0048, all -> 0x0046 }
        L_0x0040:
            if (r1 == 0) goto L_0x005b
            r1.close()
            return
        L_0x0046:
            r10 = move-exception
            goto L_0x005c
        L_0x0048:
            r10 = move-exception
            r0 = r1
            goto L_0x004f
        L_0x004b:
            r10 = move-exception
            r1 = r0
            goto L_0x005c
        L_0x004e:
            r10 = move-exception
        L_0x004f:
            com.tencent.wxop.stat.common.StatLogger r1 = com.tencent.wxop.stat.au.h     // Catch:{ all -> 0x004b }
            r1.e(r10)     // Catch:{ all -> 0x004b }
            if (r0 == 0) goto L_0x005b
            r0.close()
        L_0x005b:
            return
        L_0x005c:
            if (r1 == 0) goto L_0x0061
            r1.close()
        L_0x0061:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.bc.a(android.database.sqlite.SQLiteDatabase):void");
    }

    private void b(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            Cursor query = sQLiteDatabase.query("events", null, null, null, null, null, null);
            ArrayList<bd> arrayList = new ArrayList<>();
            while (query.moveToNext()) {
                bd bdVar = new bd(query.getLong(0), query.getString(1), query.getInt(2), query.getInt(3));
                arrayList.add(bdVar);
            }
            ContentValues contentValues = new ContentValues();
            for (bd bdVar2 : arrayList) {
                contentValues.put("content", r.b(bdVar2.b));
                sQLiteDatabase.update("events", contentValues, "event_id=?", new String[]{Long.toString(bdVar2.a)});
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public synchronized void close() {
        super.close();
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists events(event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, content TEXT, status INTEGER, send_count INTEGER, timestamp LONG)");
        sQLiteDatabase.execSQL("create table if not exists user(uid TEXT PRIMARY KEY, user_type INTEGER, app_ver TEXT, ts INTEGER)");
        sQLiteDatabase.execSQL("create table if not exists config(type INTEGER PRIMARY KEY NOT NULL, content TEXT, md5sum TEXT, version INTEGER)");
        sQLiteDatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
        sQLiteDatabase.execSQL("CREATE INDEX if not exists status_idx ON events(status)");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        StatLogger e = au.h;
        StringBuilder sb = new StringBuilder("upgrade DB from oldVersion ");
        sb.append(i);
        sb.append(" to newVersion ");
        sb.append(i2);
        e.debug(sb.toString());
        if (i == 1) {
            sQLiteDatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
            a(sQLiteDatabase);
            b(sQLiteDatabase);
        }
        if (i == 2) {
            a(sQLiteDatabase);
            b(sQLiteDatabase);
        }
    }
}
