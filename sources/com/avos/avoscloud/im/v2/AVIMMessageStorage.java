package com.avos.avoscloud.im.v2;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.avlog;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import tv.danmaku.ijk.media.player.IMediaPlayer;

@TargetApi(8)
class AVIMMessageStorage {
    static final String BLOB = "BLOB";
    static final String COLUMN_ATTRIBUTE = "attr";
    static final String COLUMN_BREAKPOINT = "breakpoint";
    static final String COLUMN_CONVERSATION_ID = "conversation_id";
    static final String COLUMN_CONVERSATION_READAT = "readAt";
    static final String COLUMN_CONVRESATION_DELIVEREDAT = "deliveredAt";
    static final String COLUMN_CONV_LASTMESSAGE_INNERTYPE = "last_msg_iType";
    static final String COLUMN_CONV_MENTIONED = "mentioned";
    static final String COLUMN_CONV_SYSTEM = "sys";
    static final String COLUMN_CONV_TEMP = "temp";
    static final String COLUMN_CONV_TEMP_TTL = "temp_ttl";
    static final String COLUMN_CREATEDAT = "createdAt";
    static final String COLUMN_CREATOR = "creator";
    static final String COLUMN_DEDUPLICATED_TOKEN = "dtoken";
    static final String COLUMN_EXPIREAT = "expireAt";
    static final String COLUMN_FROM_PEER_ID = "from_peer_id";
    static final String COLUMN_INSTANCEDATA = "instanceData";
    static final String COLUMN_LASTMESSAGE = "last_message";
    static final String COLUMN_LM = "lm";
    static final String COLUMN_MEMBERS = "members";
    static final String COLUMN_MESSAGE_DELIVEREDAT = "receipt_timestamp";
    static final String COLUMN_MESSAGE_ID = "message_id";
    static final String COLUMN_MESSAGE_READAT = "readAt";
    static final String COLUMN_MESSAGE_UPDATEAT = "updateAt";
    static final String COLUMN_MSG_INNERTYPE = "iType";
    static final String COLUMN_MSG_MENTION_ALL = "mentionAll";
    static final String COLUMN_MSG_MENTION_LIST = "mentionList";
    static final String COLUMN_PAYLOAD = "payload";
    static final String COLUMN_STATUS = "status";
    static final String COLUMN_TIMESTAMP = "timestamp";
    static final String COLUMN_TRANSIENT = "isTransient";
    static final String COLUMN_UNREAD_COUNT = "unread_count";
    static final String COLUMN_UPDATEDAT = "updatedAt";
    static final String CONVERSATION_TABLE = "conversations";
    static final String DB_NAME_PREFIX = "com.avos.avoscloud.im.v2.";
    static final int DB_VERSION = 10;
    static final String INTEGER = "INTEGER";
    static final String MESSAGE_INDEX = "message_index";
    static final int MESSAGE_INNERTYPE_BIN = 1;
    static final int MESSAGE_INNERTYPE_PLAIN = 0;
    static final String MESSAGE_TABLE = "messages";
    static final String NUMBERIC = "NUMBERIC";
    static final String TEXT = "TEXT";
    static final String VARCHAR32 = "VARCHAR(32)";
    private static ConcurrentHashMap<String, AVIMMessageStorage> storages = new ConcurrentHashMap<>();
    String clientId;
    private DBHelper dbHelper;

    static class DBHelper extends SQLiteOpenHelper {
        static final String CONVERSATION_CREATE_SQL = "CREATE TABLE IF NOT EXISTS conversations (conversation_id VARCHAR(32) NOT NULL,expireAt NUMBERIC,attr BLOB,instanceData BLOB,updatedAt VARCHAR(32),createdAt VARCHAR(32),creator TEXT,members TEXT,isTransient INTEGER,unread_count INTEGER,readAt NUMBERIC,deliveredAt NUMBERIC,lm NUMBERIC,last_message TEXT,mentioned INTEGER default 0,last_msg_iType INTEGER default 0, sys INTEGER default 0, temp INTEGER default 0, temp_ttl NUMBERIC, PRIMARY KEY(conversation_id))";
        static final String MESSAGE_CREATE_SQL = "CREATE TABLE IF NOT EXISTS messages (conversation_id VARCHAR(32) NOT NULL, message_id VARCHAR(32) NOT NULL, timestamp NUMBERIC, from_peer_id TEXT NOT NULL, receipt_timestamp NUMBERIC, readAt NUMBERIC, updateAt NUMBERIC, payload BLOB, status INTEGER, breakpoint INTEGER, dtoken VARCHAR(32), mentionAll INTEGER default 0, mentionList TEXT NULL, iType INTEGER default 0, PRIMARY KEY(conversation_id,message_id)) ";
        static final String MESSAGE_UNIQUE_INDEX_SQL = "CREATE UNIQUE INDEX IF NOT EXISTS message_index on messages (conversation_id, timestamp, message_id) ";

        public DBHelper(Context context, String str) {
            super(context, getDatabasePath(str), null, 10);
        }

        private static String getDatabasePath(String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(AVIMMessageStorage.DB_NAME_PREFIX);
            sb.append(str);
            return sb.toString();
        }

        private static String getAddColumnSql(String str, String str2, String str3) {
            return String.format("ALTER TABLE %s ADD COLUMN %s %s;", new Object[]{str, str2, str3});
        }

        private static String getAddColumnSql(String str, String str2, String str3, String str4) {
            return String.format("ALTER TABLE %s ADD COLUMN %s %s default %s;", new Object[]{str, str2, str3, str4});
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(MESSAGE_CREATE_SQL);
            sQLiteDatabase.execSQL(MESSAGE_UNIQUE_INDEX_SQL);
            sQLiteDatabase.execSQL(CONVERSATION_CREATE_SQL);
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i == 1) {
                upgradeToVersion2(sQLiteDatabase);
                i++;
            }
            if (i == 2) {
                upgradeToVersion3(sQLiteDatabase);
                i++;
            }
            if (i == 3) {
                upgradeToVersion4(sQLiteDatabase);
                i++;
            }
            if (i == 4) {
                upgradeToVersion5(sQLiteDatabase);
                i++;
            }
            if (i == 5) {
                upgradeToVersion6(sQLiteDatabase);
                i++;
            }
            if (i == 6) {
                upgradeToVersion7(sQLiteDatabase);
                i++;
            }
            if (i == 7) {
                upgradeToVersion8(sQLiteDatabase);
                i++;
            }
            if (i == 8) {
                upgradeToVersion9(sQLiteDatabase);
                i++;
            }
            if (i == 9) {
                upgradeToVersion10(sQLiteDatabase);
            }
        }

        private void upgradeToVersion2(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(CONVERSATION_CREATE_SQL);
        }

        private void upgradeToVersion3(SQLiteDatabase sQLiteDatabase) {
            String str = AVIMMessageStorage.COLUMN_DEDUPLICATED_TOKEN;
            String str2 = AVIMMessageStorage.MESSAGE_TABLE;
            try {
                if (!columnExists(sQLiteDatabase, str2, str)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str2, str, AVIMMessageStorage.VARCHAR32));
                }
            } catch (Exception unused) {
            }
        }

        private void upgradeToVersion4(SQLiteDatabase sQLiteDatabase) {
            String str = "last_message";
            String str2 = AVIMMessageStorage.CONVERSATION_TABLE;
            try {
                if (!columnExists(sQLiteDatabase, str2, str)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str2, str, AVIMMessageStorage.TEXT));
                }
            } catch (Exception unused) {
            }
        }

        private void upgradeToVersion5(SQLiteDatabase sQLiteDatabase) {
            String str = AVIMMessageStorage.COLUMN_INSTANCEDATA;
            String str2 = AVIMMessageStorage.CONVERSATION_TABLE;
            try {
                if (!columnExists(sQLiteDatabase, str2, str)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str2, str, AVIMMessageStorage.BLOB));
                }
            } catch (Exception unused) {
            }
        }

        private void upgradeToVersion6(SQLiteDatabase sQLiteDatabase) {
            String str = AVIMMessageStorage.MESSAGE_TABLE;
            String str2 = AVIMMessageStorage.COLUMN_UNREAD_COUNT;
            String str3 = AVIMMessageStorage.CONVERSATION_TABLE;
            try {
                boolean columnExists = columnExists(sQLiteDatabase, str3, str2);
                String str4 = AVIMMessageStorage.NUMBERIC;
                String str5 = "readAt";
                if (!columnExists) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str3, str2, AVIMMessageStorage.INTEGER));
                    sQLiteDatabase.execSQL(getAddColumnSql(str3, str5, str4));
                    sQLiteDatabase.execSQL(getAddColumnSql(str3, AVIMMessageStorage.COLUMN_CONVRESATION_DELIVEREDAT, str4));
                }
                if (!columnExists(sQLiteDatabase, str, str5)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str, str5, str4));
                }
            } catch (Exception unused) {
            }
        }

        private void upgradeToVersion7(SQLiteDatabase sQLiteDatabase) {
            String str = AVIMMessageStorage.COLUMN_MESSAGE_UPDATEAT;
            String str2 = AVIMMessageStorage.MESSAGE_TABLE;
            try {
                if (!columnExists(sQLiteDatabase, str2, str)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str2, str, AVIMMessageStorage.NUMBERIC));
                }
            } catch (Exception unused) {
            }
        }

        private void upgradeToVersion8(SQLiteDatabase sQLiteDatabase) {
            String str = AVIMMessageStorage.COLUMN_CONV_MENTIONED;
            String str2 = AVIMMessageStorage.CONVERSATION_TABLE;
            String str3 = AVIMMessageStorage.COLUMN_MSG_MENTION_LIST;
            String str4 = AVIMMessageStorage.COLUMN_MSG_MENTION_ALL;
            String str5 = AVIMMessageStorage.MESSAGE_TABLE;
            try {
                boolean columnExists = columnExists(sQLiteDatabase, str5, str4);
                String str6 = "0";
                String str7 = AVIMMessageStorage.INTEGER;
                if (!columnExists) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str5, str4, str7, str6));
                }
                if (!columnExists(sQLiteDatabase, str5, str3)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str5, str3, AVIMMessageStorage.TEXT));
                }
                if (!columnExists(sQLiteDatabase, str2, str)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str2, str, str7, str6));
                }
            } catch (Exception unused) {
            }
        }

        private void upgradeToVersion9(SQLiteDatabase sQLiteDatabase) {
            String str = AVIMMessageStorage.COLUMN_CONV_LASTMESSAGE_INNERTYPE;
            String str2 = AVIMMessageStorage.CONVERSATION_TABLE;
            String str3 = AVIMMessageStorage.COLUMN_MSG_INNERTYPE;
            String str4 = AVIMMessageStorage.MESSAGE_TABLE;
            try {
                boolean columnExists = columnExists(sQLiteDatabase, str4, str3);
                String str5 = "0";
                String str6 = AVIMMessageStorage.INTEGER;
                if (!columnExists) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str4, str3, str6, str5));
                }
                if (!columnExists(sQLiteDatabase, str2, str)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str2, str, str6, str5));
                }
            } catch (Exception unused) {
            }
        }

        private void upgradeToVersion10(SQLiteDatabase sQLiteDatabase) {
            String str = AVIMMessageStorage.COLUMN_CONV_TEMP_TTL;
            String str2 = "temp";
            String str3 = "sys";
            String str4 = AVIMMessageStorage.CONVERSATION_TABLE;
            try {
                boolean columnExists = columnExists(sQLiteDatabase, str4, str3);
                String str5 = "0";
                String str6 = AVIMMessageStorage.INTEGER;
                if (!columnExists) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str4, str3, str6, str5));
                }
                if (!columnExists(sQLiteDatabase, str4, str2)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str4, str2, str6, str5));
                }
                if (!columnExists(sQLiteDatabase, str4, str)) {
                    sQLiteDatabase.execSQL(getAddColumnSql(str4, str, AVIMMessageStorage.NUMBERIC));
                }
            } catch (Exception unused) {
            }
        }

        private static boolean columnExists(SQLiteDatabase sQLiteDatabase, String str, String str2) {
            try {
                if (sQLiteDatabase.query(str, null, null, null, null, null, null).getColumnIndex(str2) != -1) {
                    return true;
                }
                return false;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    static class SQL {
        static final String DELETE_LOCAL_MESSAGE = "conversation_id = ? and message_id = ? and status = ? and dtoken = ? ";
        static final String ORDER_BY_TIMESTAMP_ASC_THEN_MESSAGE_ID_ASC = "timestamp , message_id";
        static final String ORDER_BY_TIMESTAMP_DESC_THEN_MESSAGE_ID_DESC = "timestamp desc, message_id desc";
        static final String SELECT_VALID_CONVS = "(temp < 1 and expireAt > ?) or (temp> 0 and temp_ttl > ?)";
        static final String TIMESTAMP_LESS_AND_CONVERSATION_ID = "timestamp < ? and conversation_id = ? ";
        static final String TIMESTAMP_LESS_OR_TIMESTAMP_EQUAL_BUT_MESSAGE_ID_LESS_AND_CONVERSATION_ID = " ( timestamp < ? or (timestamp = ? and message_id < ? )) and conversation_id = ? ";
        static final String TIMESTAMP_MORE_OR_TIMESTAMP_EQUAL_BUT_MESSAGE_ID_MORE_AND_CONVERSATION_ID = " ( timestamp > ? or (timestamp = ? and message_id > ? )) and conversation_id = ? ";

        SQL() {
        }
    }

    public interface StorageMessageCallback {
        void done(AVIMMessage aVIMMessage, boolean z);
    }

    public interface StorageQueryCallback {
        void done(List<AVIMMessage> list, List<Boolean> list2);
    }

    private AVIMMessageStorage(Context context, String str) {
        this.dbHelper = new DBHelper(context, str);
        DBHelper dBHelper = this.dbHelper;
        dBHelper.onUpgrade(dBHelper.getWritableDatabase(), this.dbHelper.getWritableDatabase().getVersion(), 10);
        this.clientId = str;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0022, code lost:
        return r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized com.avos.avoscloud.im.v2.AVIMMessageStorage getInstance(java.lang.String r3) {
        /*
            java.lang.Class<com.avos.avoscloud.im.v2.AVIMMessageStorage> r0 = com.avos.avoscloud.im.v2.AVIMMessageStorage.class
            monitor-enter(r0)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.avos.avoscloud.im.v2.AVIMMessageStorage> r1 = storages     // Catch:{ all -> 0x0023 }
            java.lang.Object r1 = r1.get(r3)     // Catch:{ all -> 0x0023 }
            com.avos.avoscloud.im.v2.AVIMMessageStorage r1 = (com.avos.avoscloud.im.v2.AVIMMessageStorage) r1     // Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x000f
            monitor-exit(r0)
            return r1
        L_0x000f:
            com.avos.avoscloud.im.v2.AVIMMessageStorage r1 = new com.avos.avoscloud.im.v2.AVIMMessageStorage     // Catch:{ all -> 0x0023 }
            android.content.Context r2 = com.avos.avoscloud.AVOSCloud.applicationContext     // Catch:{ all -> 0x0023 }
            r1.<init>(r2, r3)     // Catch:{ all -> 0x0023 }
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.avos.avoscloud.im.v2.AVIMMessageStorage> r2 = storages     // Catch:{ all -> 0x0023 }
            java.lang.Object r3 = r2.putIfAbsent(r3, r1)     // Catch:{ all -> 0x0023 }
            com.avos.avoscloud.im.v2.AVIMMessageStorage r3 = (com.avos.avoscloud.im.v2.AVIMMessageStorage) r3     // Catch:{ all -> 0x0023 }
            if (r3 != 0) goto L_0x0021
            r3 = r1
        L_0x0021:
            monitor-exit(r0)
            return r3
        L_0x0023:
            r3 = move-exception
            monitor-exit(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.im.v2.AVIMMessageStorage.getInstance(java.lang.String):com.avos.avoscloud.im.v2.AVIMMessageStorage");
    }

    private static String getWhereClause(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" = ? ");
            arrayList.add(sb.toString());
        }
        return TextUtils.join(" and ", arrayList);
    }

    public void insertMessage(AVIMMessage aVIMMessage, boolean z) {
        if (aVIMMessage != null) {
            insertMessages(Arrays.asList(new AVIMMessage[]{aVIMMessage}), z);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x010b, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0134, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean insertLocalMessage(com.avos.avoscloud.im.v2.AVIMMessage r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            r0 = 1
            r1 = 0
            if (r8 == 0) goto L_0x0110
            java.lang.String r2 = r8.getMessageId()     // Catch:{ all -> 0x010e }
            boolean r2 = com.avos.avoscloud.AVUtils.isBlankString(r2)     // Catch:{ all -> 0x010e }
            if (r2 == 0) goto L_0x0110
            java.lang.String r2 = r8.conversationId     // Catch:{ all -> 0x010e }
            boolean r2 = com.avos.avoscloud.AVUtils.isBlankString(r2)     // Catch:{ all -> 0x010e }
            if (r2 != 0) goto L_0x0110
            java.lang.String r2 = r8.uniqueToken     // Catch:{ all -> 0x010e }
            boolean r2 = com.avos.avoscloud.AVUtils.isBlankString(r2)     // Catch:{ all -> 0x010e }
            if (r2 == 0) goto L_0x0021
            goto L_0x0110
        L_0x0021:
            java.lang.String r2 = r8.uniqueToken     // Catch:{ all -> 0x010e }
            java.lang.String r2 = r7.generateInternalMessageId(r2)     // Catch:{ all -> 0x010e }
            com.avos.avoscloud.im.v2.AVIMMessageStorage$DBHelper r3 = r7.dbHelper     // Catch:{ Exception -> 0x010c }
            android.database.sqlite.SQLiteDatabase r3 = r3.getWritableDatabase()     // Catch:{ Exception -> 0x010c }
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch:{ Exception -> 0x010c }
            r4.<init>()     // Catch:{ Exception -> 0x010c }
            java.lang.String r5 = "conversation_id"
            java.lang.String r6 = r8.conversationId     // Catch:{ Exception -> 0x010c }
            r4.put(r5, r6)     // Catch:{ Exception -> 0x010c }
            java.lang.String r5 = "message_id"
            r4.put(r5, r2)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "timestamp"
            long r5 = r8.getTimestamp()     // Catch:{ Exception -> 0x010c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "from_peer_id"
            java.lang.String r5 = r8.getFrom()     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            boolean r2 = r8 instanceof com.avos.avoscloud.im.v2.AVIMBinaryMessage     // Catch:{ Exception -> 0x010c }
            if (r2 == 0) goto L_0x006e
            java.lang.String r2 = "payload"
            r5 = r8
            com.avos.avoscloud.im.v2.AVIMBinaryMessage r5 = (com.avos.avoscloud.im.v2.AVIMBinaryMessage) r5     // Catch:{ Exception -> 0x010c }
            byte[] r5 = r5.getBytes()     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "iType"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r0)     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            goto L_0x007b
        L_0x006e:
            java.lang.String r2 = "payload"
            java.lang.String r5 = r8.getContent()     // Catch:{ Exception -> 0x010c }
            byte[] r5 = r5.getBytes()     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
        L_0x007b:
            java.lang.String r2 = "receipt_timestamp"
            long r5 = r8.getDeliveredAt()     // Catch:{ Exception -> 0x010c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "readAt"
            long r5 = r8.getReadAt()     // Catch:{ Exception -> 0x010c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "updateAt"
            long r5 = r8.getUpdateAt()     // Catch:{ Exception -> 0x010c }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "status"
            com.avos.avoscloud.im.v2.AVIMMessage$AVIMMessageStatus r5 = com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageStatus.AVIMMessageStatusFailed     // Catch:{ Exception -> 0x010c }
            int r5 = r5.getStatusCode()     // Catch:{ Exception -> 0x010c }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "breakpoint"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r1)     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "dtoken"
            java.lang.String r5 = r8.uniqueToken     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "mentionAll"
            boolean r5 = r8.isMentionAll()     // Catch:{ Exception -> 0x010c }
            if (r5 == 0) goto L_0x00cb
            r5 = 1
            goto L_0x00cc
        L_0x00cb:
            r5 = 0
        L_0x00cc:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r2 = "mentionList"
            java.lang.String r8 = r8.getMentionListString()     // Catch:{ Exception -> 0x010c }
            r4.put(r2, r8)     // Catch:{ Exception -> 0x010c }
            java.lang.String r8 = "messages"
            r2 = 0
            r5 = 4
            long r2 = r3.insertWithOnConflict(r8, r2, r4, r5)     // Catch:{ Exception -> 0x010c }
            r5 = 0
            int r8 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r8 >= 0) goto L_0x0102
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x010c }
            r8.<init>()     // Catch:{ Exception -> 0x010c }
            java.lang.String r5 = "failed to insert Message table. values="
            r8.append(r5)     // Catch:{ Exception -> 0x010c }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x010c }
            r8.append(r4)     // Catch:{ Exception -> 0x010c }
            java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x010c }
            com.avos.avoscloud.LogUtil.avlog.e(r8)     // Catch:{ Exception -> 0x010c }
        L_0x0102:
            r4 = -1
            int r8 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r8 == 0) goto L_0x0109
            goto L_0x010a
        L_0x0109:
            r0 = 0
        L_0x010a:
            monitor-exit(r7)
            return r0
        L_0x010c:
            monitor-exit(r7)
            return r1
        L_0x010e:
            r8 = move-exception
            goto L_0x0135
        L_0x0110:
            if (r8 != 0) goto L_0x0118
            java.lang.String r8 = "message is null"
            com.avos.avoscloud.LogUtil.avlog.e(r8)     // Catch:{ all -> 0x010e }
            goto L_0x0133
        L_0x0118:
            java.lang.String r2 = "invalid state. msgId=%s, convId=%s, uniToken=%s"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x010e }
            java.lang.String r4 = r8.getMessageId()     // Catch:{ all -> 0x010e }
            r3[r1] = r4     // Catch:{ all -> 0x010e }
            java.lang.String r4 = r8.conversationId     // Catch:{ all -> 0x010e }
            r3[r0] = r4     // Catch:{ all -> 0x010e }
            r0 = 2
            java.lang.String r8 = r8.uniqueToken     // Catch:{ all -> 0x010e }
            r3[r0] = r8     // Catch:{ all -> 0x010e }
            java.lang.String r8 = java.lang.String.format(r2, r3)     // Catch:{ all -> 0x010e }
            com.avos.avoscloud.LogUtil.avlog.e(r8)     // Catch:{ all -> 0x010e }
        L_0x0133:
            monitor-exit(r7)
            return r1
        L_0x0135:
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.im.v2.AVIMMessageStorage.insertLocalMessage(com.avos.avoscloud.im.v2.AVIMMessage):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0049, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0050, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean removeLocalMessage(com.avos.avoscloud.im.v2.AVIMMessage r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            r0 = 0
            if (r9 == 0) goto L_0x004f
            java.lang.String r1 = r9.conversationId     // Catch:{ all -> 0x004c }
            boolean r1 = com.avos.avoscloud.AVUtils.isBlankString(r1)     // Catch:{ all -> 0x004c }
            if (r1 != 0) goto L_0x004f
            java.lang.String r1 = r9.uniqueToken     // Catch:{ all -> 0x004c }
            boolean r1 = com.avos.avoscloud.AVUtils.isBlankString(r1)     // Catch:{ all -> 0x004c }
            if (r1 == 0) goto L_0x0015
            goto L_0x004f
        L_0x0015:
            java.lang.String r1 = r9.uniqueToken     // Catch:{ all -> 0x004c }
            java.lang.String r1 = r8.generateInternalMessageId(r1)     // Catch:{ all -> 0x004c }
            com.avos.avoscloud.im.v2.AVIMMessage$AVIMMessageStatus r2 = com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageStatus.AVIMMessageStatusFailed     // Catch:{ all -> 0x004c }
            int r2 = r2.getStatusCode()     // Catch:{ all -> 0x004c }
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch:{ all -> 0x004c }
            com.avos.avoscloud.im.v2.AVIMMessageStorage$DBHelper r3 = r8.dbHelper     // Catch:{ Exception -> 0x004a }
            android.database.sqlite.SQLiteDatabase r3 = r3.getWritableDatabase()     // Catch:{ Exception -> 0x004a }
            java.lang.String r4 = "messages"
            java.lang.String r5 = "conversation_id = ? and message_id = ? and status = ? and dtoken = ? "
            r6 = 4
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch:{ Exception -> 0x004a }
            java.lang.String r7 = r9.conversationId     // Catch:{ Exception -> 0x004a }
            r6[r0] = r7     // Catch:{ Exception -> 0x004a }
            r7 = 1
            r6[r7] = r1     // Catch:{ Exception -> 0x004a }
            r1 = 2
            r6[r1] = r2     // Catch:{ Exception -> 0x004a }
            r1 = 3
            java.lang.String r9 = r9.uniqueToken     // Catch:{ Exception -> 0x004a }
            r6[r1] = r9     // Catch:{ Exception -> 0x004a }
            int r9 = r3.delete(r4, r5, r6)     // Catch:{ Exception -> 0x004a }
            if (r9 <= 0) goto L_0x0048
            r0 = 1
        L_0x0048:
            monitor-exit(r8)
            return r0
        L_0x004a:
            monitor-exit(r8)
            return r0
        L_0x004c:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        L_0x004f:
            monitor-exit(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.im.v2.AVIMMessageStorage.removeLocalMessage(com.avos.avoscloud.im.v2.AVIMMessage):boolean");
    }

    private String generateInternalMessageId(String str) {
        return AVUtils.isBlankString(str) ? "" : str;
    }

    private synchronized int insertMessages(List<AVIMMessage> list, boolean z) {
        int i;
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        i = 0;
        for (AVIMMessage aVIMMessage : list) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(COLUMN_CONVERSATION_ID, aVIMMessage.getConversationId());
            contentValues.put(COLUMN_MESSAGE_ID, aVIMMessage.getMessageId());
            contentValues.put("timestamp", Long.valueOf(aVIMMessage.getTimestamp()));
            contentValues.put(COLUMN_FROM_PEER_ID, aVIMMessage.getFrom());
            boolean z2 = true;
            if (aVIMMessage instanceof AVIMBinaryMessage) {
                contentValues.put(COLUMN_PAYLOAD, ((AVIMBinaryMessage) aVIMMessage).getBytes());
                contentValues.put(COLUMN_MSG_INNERTYPE, Integer.valueOf(1));
            } else {
                contentValues.put(COLUMN_PAYLOAD, aVIMMessage.getContent().getBytes());
                contentValues.put(COLUMN_MSG_INNERTYPE, Integer.valueOf(0));
            }
            contentValues.put(COLUMN_MESSAGE_DELIVEREDAT, Long.valueOf(aVIMMessage.getDeliveredAt()));
            contentValues.put("readAt", Long.valueOf(aVIMMessage.getReadAt()));
            contentValues.put(COLUMN_MESSAGE_UPDATEAT, Long.valueOf(aVIMMessage.getUpdateAt()));
            contentValues.put("status", Integer.valueOf(aVIMMessage.getMessageStatus().getStatusCode()));
            contentValues.put(COLUMN_BREAKPOINT, Integer.valueOf(z ? 1 : 0));
            contentValues.put(COLUMN_MSG_MENTION_ALL, Integer.valueOf(aVIMMessage.isMentionAll() ? 1 : 0));
            contentValues.put(COLUMN_MSG_MENTION_LIST, aVIMMessage.getMentionListString());
            try {
                if (writableDatabase.insertWithOnConflict(MESSAGE_TABLE, null, contentValues, 5) <= -1) {
                    z2 = false;
                }
                if (z2) {
                    i++;
                }
            } catch (SQLException e) {
                if (AVOSCloud.isDebugLogEnabled()) {
                    e.printStackTrace();
                }
            }
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return i;
    }

    public void insertContinuousMessages(List<AVIMMessage> list, String str) {
        if (list != null && !list.isEmpty() && !AVUtils.isBlankString(str)) {
            AVIMMessage aVIMMessage = (AVIMMessage) list.get(0);
            List subList = list.subList(1, list.size());
            AVIMMessage aVIMMessage2 = (AVIMMessage) list.get(list.size() - 1);
            if (!containMessage(aVIMMessage2)) {
                AVIMMessage nextMessage = getNextMessage(aVIMMessage2);
                if (nextMessage != null) {
                    updateBreakpoints(Arrays.asList(new AVIMMessage[]{nextMessage}), true, str);
                }
            }
            if (!subList.isEmpty()) {
                insertMessages(subList, false);
                updateBreakpoints(subList, false, str);
            }
            insertMessage(aVIMMessage, true);
        }
    }

    public boolean containMessage(AVIMMessage aVIMMessage) {
        boolean z = false;
        Cursor query = this.dbHelper.getReadableDatabase().query(MESSAGE_TABLE, new String[0], getWhereClause(COLUMN_CONVERSATION_ID, COLUMN_MESSAGE_ID), new String[]{aVIMMessage.conversationId, aVIMMessage.getMessageId()}, null, null, null);
        if (query.getCount() > 0) {
            z = true;
        }
        query.close();
        return z;
    }

    /* access modifiers changed from: protected */
    public synchronized void updateBreakpoints(List<AVIMMessage> list, boolean z, String str) {
        if (list.size() > 900) {
            updateBreakpointsForBatch(list.subList(0, IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR), z, str);
            updateBreakpoints(list.subList(IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, list.size()), z, str);
        } else {
            updateBreakpointsForBatch(list, z, str);
        }
    }

    private synchronized int updateBreakpointsForBatch(List<AVIMMessage> list, boolean z, String str) {
        String[] strArr;
        SQLiteDatabase writableDatabase;
        ContentValues contentValues;
        String str2;
        StringBuilder sb;
        strArr = new String[list.size()];
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            strArr[i2] = ((AVIMMessage) list.get(i2)).getMessageId();
            arrayList.add("?");
        }
        writableDatabase = this.dbHelper.getWritableDatabase();
        contentValues = new ContentValues();
        String str3 = COLUMN_BREAKPOINT;
        if (z) {
            i = 1;
        }
        contentValues.put(str3, Integer.valueOf(i));
        String join = TextUtils.join(",", arrayList);
        str2 = MESSAGE_TABLE;
        sb = new StringBuilder();
        sb.append("message_id in (");
        sb.append(join);
        sb.append(") ");
        return writableDatabase.update(str2, contentValues, sb.toString(), strArr);
    }

    public synchronized boolean updateMessage(AVIMMessage aVIMMessage, String str) {
        boolean z;
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(aVIMMessage.getTimestamp()));
        contentValues.put("status", Integer.valueOf(aVIMMessage.getMessageStatus().getStatusCode()));
        contentValues.put(COLUMN_MESSAGE_DELIVEREDAT, Long.valueOf(aVIMMessage.getDeliveredAt()));
        contentValues.put("readAt", Long.valueOf(aVIMMessage.getReadAt()));
        contentValues.put(COLUMN_MESSAGE_UPDATEAT, Long.valueOf(aVIMMessage.getUpdateAt()));
        contentValues.put(COLUMN_MESSAGE_ID, aVIMMessage.getMessageId());
        z = true;
        contentValues.put(COLUMN_MSG_MENTION_ALL, Integer.valueOf(aVIMMessage.isMentionAll() ? 1 : 0));
        contentValues.put(COLUMN_MSG_MENTION_LIST, aVIMMessage.getMentionListString());
        if (((long) writableDatabase.update(MESSAGE_TABLE, contentValues, getWhereClause(COLUMN_MESSAGE_ID), new String[]{str})) <= -1) {
            z = false;
        }
        return z;
    }

    /* access modifiers changed from: 0000 */
    public synchronized boolean updateMessageForPatch(AVIMMessage aVIMMessage) {
        boolean z;
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        z = true;
        if (aVIMMessage instanceof AVIMBinaryMessage) {
            contentValues.put(COLUMN_PAYLOAD, ((AVIMBinaryMessage) aVIMMessage).getBytes());
            contentValues.put(COLUMN_MSG_INNERTYPE, Integer.valueOf(1));
        } else {
            contentValues.put(COLUMN_PAYLOAD, aVIMMessage.getContent());
            contentValues.put(COLUMN_MSG_INNERTYPE, Integer.valueOf(0));
        }
        contentValues.put("status", Integer.valueOf(aVIMMessage.getMessageStatus().getStatusCode()));
        contentValues.put(COLUMN_MESSAGE_UPDATEAT, Long.valueOf(aVIMMessage.getUpdateAt()));
        if (((long) writableDatabase.update(MESSAGE_TABLE, contentValues, getWhereClause(COLUMN_MESSAGE_ID), new String[]{aVIMMessage.getMessageId()})) <= -1) {
            z = false;
        }
        return z;
    }

    public synchronized void deleteMessages(List<AVIMMessage> list, String str) {
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        for (AVIMMessage aVIMMessage : list) {
            String messageId = aVIMMessage.getMessageId();
            if (getNextMessage(aVIMMessage) != null) {
                updateBreakpoints(Arrays.asList(new AVIMMessage[]{aVIMMessage}), true, str);
            }
            writableDatabase.delete(MESSAGE_TABLE, getWhereClause(COLUMN_MESSAGE_ID), new String[]{messageId});
        }
    }

    public synchronized void deleteConversationData(String str) {
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        writableDatabase.delete(MESSAGE_TABLE, getWhereClause(COLUMN_CONVERSATION_ID), new String[]{str});
        writableDatabase.delete(CONVERSATION_TABLE, getWhereClause(COLUMN_CONVERSATION_ID), new String[]{str});
    }

    public synchronized void deleteClientData() {
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        writableDatabase.delete(MESSAGE_TABLE, null, null);
        writableDatabase.delete(CONVERSATION_TABLE, null, null);
    }

    /* access modifiers changed from: 0000 */
    public void getMessage(String str, long j, String str2, StorageMessageCallback storageMessageCallback) {
        Cursor cursor;
        StorageMessageCallback storageMessageCallback2 = storageMessageCallback;
        AVIMMessage aVIMMessage = null;
        boolean z = false;
        if (j == 0) {
            storageMessageCallback2.done(null, false);
            return;
        }
        SQLiteDatabase readableDatabase = this.dbHelper.getReadableDatabase();
        if (str == null) {
            cursor = readableDatabase.query(MESSAGE_TABLE, null, getWhereClause("timestamp", COLUMN_CONVERSATION_ID), new String[]{Long.toString(j), str2}, null, null, null, "1");
        } else {
            cursor = readableDatabase.query(MESSAGE_TABLE, null, getWhereClause(COLUMN_MESSAGE_ID), new String[]{str}, null, null, null, "1");
        }
        if (cursor.moveToFirst()) {
            aVIMMessage = createMessageFromCursor(cursor);
            if (cursor.getInt(cursor.getColumnIndex(COLUMN_BREAKPOINT)) != 0) {
                z = true;
            }
        }
        cursor.close();
        storageMessageCallback2.done(aVIMMessage, z);
    }

    /* access modifiers changed from: 0000 */
    public void dumpMessages(String str) {
        Cursor query = this.dbHelper.getReadableDatabase().query(MESSAGE_TABLE, null, "timestamp < ? and conversation_id = ? ", new String[]{Long.toString(System.currentTimeMillis()), str}, null, null, "timestamp desc, message_id desc");
        if (query.moveToFirst()) {
            while (!query.isAfterLast()) {
                AVIMMessage createMessageFromCursor = createMessageFromCursor(query);
                boolean z = query.getInt(query.getColumnIndex(COLUMN_BREAKPOINT)) != 0;
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("msg: {id=");
                sb.append(createMessageFromCursor.getMessageId());
                sb.append(", ts=");
                sb.append(createMessageFromCursor.getTimestamp());
                sb.append(", breakpoint=");
                sb.append(z);
                sb.append("}");
                printStream.println(sb.toString());
                query.moveToNext();
            }
        }
    }

    public void getMessages(String str, long j, int i, String str2, StorageQueryCallback storageQueryCallback) {
        String[] strArr;
        String str3;
        SQLiteDatabase readableDatabase = this.dbHelper.getReadableDatabase();
        if (j <= 0) {
            strArr = new String[]{str2};
            str3 = getWhereClause(COLUMN_CONVERSATION_ID);
        } else if (str == null) {
            str3 = "timestamp < ? and conversation_id = ? ";
            strArr = new String[]{Long.toString(j), str2};
        } else {
            strArr = new String[]{Long.toString(j), Long.toString(j), str, str2};
            str3 = " ( timestamp < ? or (timestamp = ? and message_id < ? )) and conversation_id = ? ";
        }
        StringBuilder sb = new StringBuilder();
        int i2 = i;
        sb.append(i);
        sb.append("");
        processMessages(readableDatabase.query(MESSAGE_TABLE, null, str3, strArr, null, null, "timestamp desc, message_id desc", sb.toString()), storageQueryCallback);
    }

    public long getMessageCount(String str) {
        AVIMMessage latestMessageWithBreakpoint = getLatestMessageWithBreakpoint(str, true);
        SQLiteDatabase readableDatabase = this.dbHelper.getReadableDatabase();
        if (latestMessageWithBreakpoint == null) {
            return DatabaseUtils.longForQuery(readableDatabase, "select count(*) from messages where conversation_id = ?", new String[]{str});
        }
        return DatabaseUtils.longForQuery(readableDatabase, "select count(*) from messages where conversation_id = ? and (timestamp > ? or ( timestamp = ? and message_id >= ? )) order by timestamp desc, message_id desc", new String[]{str, String.valueOf(latestMessageWithBreakpoint.timestamp), String.valueOf(latestMessageWithBreakpoint.timestamp), latestMessageWithBreakpoint.messageId});
    }

    /* JADX WARNING: type inference failed for: r0v2, types: [com.avos.avoscloud.im.v2.AVIMMessage] */
    /* JADX WARNING: type inference failed for: r3v14, types: [com.avos.avoscloud.im.v2.AVIMMessage] */
    /* JADX WARNING: type inference failed for: r3v16, types: [com.avos.avoscloud.im.v2.AVIMBinaryMessage] */
    /* JADX WARNING: type inference failed for: r3v17 */
    /* JADX WARNING: type inference failed for: r3v19, types: [com.avos.avoscloud.im.v2.AVIMMessage] */
    /* JADX WARNING: type inference failed for: r3v20, types: [com.avos.avoscloud.im.v2.AVIMBinaryMessage] */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r3v19, types: [com.avos.avoscloud.im.v2.AVIMMessage]
      assigns: [com.avos.avoscloud.im.v2.AVIMMessage, com.avos.avoscloud.im.v2.AVIMBinaryMessage]
      uses: [com.avos.avoscloud.im.v2.AVIMMessage, com.avos.avoscloud.im.v2.AVIMBinaryMessage]
      mth insns count: 73
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.avos.avoscloud.im.v2.AVIMMessage createMessageFromCursor(android.database.Cursor r20) {
        /*
            r19 = this;
            r0 = r20
            java.lang.String r1 = "message_id"
            int r1 = r0.getColumnIndex(r1)
            java.lang.String r1 = r0.getString(r1)
            java.lang.String r2 = "timestamp"
            int r2 = r0.getColumnIndex(r2)
            long r6 = r0.getLong(r2)
            java.lang.String r2 = "conversation_id"
            int r2 = r0.getColumnIndex(r2)
            java.lang.String r4 = r0.getString(r2)
            java.lang.String r2 = "from_peer_id"
            int r2 = r0.getColumnIndex(r2)
            java.lang.String r5 = r0.getString(r2)
            java.lang.String r2 = "receipt_timestamp"
            int r2 = r0.getColumnIndex(r2)
            long r8 = r0.getLong(r2)
            java.lang.String r2 = "readAt"
            int r2 = r0.getColumnIndex(r2)
            long r10 = r0.getLong(r2)
            java.lang.String r2 = "updateAt"
            int r2 = r0.getColumnIndex(r2)
            long r12 = r0.getLong(r2)
            java.lang.String r2 = "payload"
            int r2 = r0.getColumnIndex(r2)
            byte[] r2 = r0.getBlob(r2)
            java.lang.String r3 = "dtoken"
            int r3 = r0.getColumnIndex(r3)
            java.lang.String r14 = r0.getString(r3)
            java.lang.String r3 = "status"
            int r3 = r0.getColumnIndex(r3)
            int r15 = r0.getInt(r3)
            java.lang.String r3 = "mentionAll"
            int r3 = r0.getColumnIndex(r3)
            int r3 = r0.getInt(r3)
            r16 = r3
            java.lang.String r3 = "mentionList"
            int r3 = r0.getColumnIndex(r3)
            java.lang.String r3 = r0.getString(r3)
            r17 = r3
            java.lang.String r3 = "iType"
            int r3 = r0.getColumnIndex(r3)
            int r0 = r0.getInt(r3)
            r3 = 1
            if (r0 != r3) goto L_0x009a
            com.avos.avoscloud.im.v2.AVIMBinaryMessage r0 = new com.avos.avoscloud.im.v2.AVIMBinaryMessage
            r18 = r16
            r3 = r0
            r3.<init>(r4, r5, r6, r8, r10)
            r3 = r0
            com.avos.avoscloud.im.v2.AVIMBinaryMessage r3 = (com.avos.avoscloud.im.v2.AVIMBinaryMessage) r3
            r3.setBytes(r2)
            goto L_0x00aa
        L_0x009a:
            r18 = r16
            com.avos.avoscloud.im.v2.AVIMMessage r0 = new com.avos.avoscloud.im.v2.AVIMMessage
            r3 = r0
            r3.<init>(r4, r5, r6, r8, r10)
            java.lang.String r3 = new java.lang.String
            r3.<init>(r2)
            r0.setContent(r3)
        L_0x00aa:
            r0.setMessageId(r1)
            r0.setUniqueToken(r14)
            com.avos.avoscloud.im.v2.AVIMMessage$AVIMMessageStatus r1 = com.avos.avoscloud.im.v2.AVIMMessage.AVIMMessageStatus.getMessageStatus(r15)
            r0.setMessageStatus(r1)
            r0.setUpdateAt(r12)
            r1 = r18
            r2 = 1
            if (r1 != r2) goto L_0x00c0
            goto L_0x00c2
        L_0x00c0:
            r3 = 0
            r2 = 0
        L_0x00c2:
            r0.setMentionAll(r2)
            r1 = r19
            java.lang.String r2 = r1.clientId
            r0.setCurrentClient(r2)
            boolean r2 = com.avos.avoscloud.AVUtils.isBlankString(r17)
            if (r2 != 0) goto L_0x00d7
            r2 = r17
            r0.setMentionListString(r2)
        L_0x00d7:
            com.avos.avoscloud.im.v2.AVIMMessage r0 = com.avos.avoscloud.im.v2.AVIMMessageManager.parseTypedMessage(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.im.v2.AVIMMessageStorage.createMessageFromCursor(android.database.Cursor):com.avos.avoscloud.im.v2.AVIMMessage");
    }

    private void processMessages(Cursor cursor, StorageQueryCallback storageQueryCallback) {
        List list = Collections.EMPTY_LIST;
        List list2 = Collections.EMPTY_LIST;
        if (cursor.moveToFirst()) {
            list = new ArrayList();
            list2 = new ArrayList();
            while (!cursor.isAfterLast()) {
                list.add(createMessageFromCursor(cursor));
                list2.add(Boolean.valueOf(cursor.getInt(cursor.getColumnIndex(COLUMN_BREAKPOINT)) != 0));
                cursor.moveToNext();
            }
        }
        cursor.close();
        storageQueryCallback.done(list, list2);
    }

    /* access modifiers changed from: protected */
    public AVIMMessage getNextMessage(AVIMMessage aVIMMessage) {
        Cursor query = this.dbHelper.getReadableDatabase().query(MESSAGE_TABLE, null, " ( timestamp > ? or (timestamp = ? and message_id > ? )) and conversation_id = ? ", new String[]{Long.toString(aVIMMessage.getTimestamp()), Long.toString(aVIMMessage.getTimestamp()), aVIMMessage.getMessageId(), aVIMMessage.getConversationId()}, null, null, "timestamp , message_id", "1");
        AVIMMessage createMessageFromCursor = query.moveToFirst() ? createMessageFromCursor(query) : null;
        query.close();
        return createMessageFromCursor;
    }

    /* access modifiers changed from: 0000 */
    public AVIMMessage getLatestMessage(String str) {
        Cursor query = this.dbHelper.getReadableDatabase().query(MESSAGE_TABLE, null, getWhereClause(COLUMN_CONVERSATION_ID), new String[]{str}, null, null, "timestamp desc, message_id desc", "1");
        AVIMMessage createMessageFromCursor = query.moveToFirst() ? createMessageFromCursor(query) : null;
        query.close();
        return createMessageFromCursor;
    }

    /* access modifiers changed from: 0000 */
    public AVIMMessage getLatestMessageWithBreakpoint(String str, boolean z) {
        SQLiteDatabase readableDatabase = this.dbHelper.getReadableDatabase();
        String whereClause = getWhereClause(COLUMN_CONVERSATION_ID, COLUMN_BREAKPOINT);
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = z ? "1" : "0";
        Cursor query = readableDatabase.query(MESSAGE_TABLE, null, whereClause, strArr, null, null, "timestamp desc, message_id desc", "1");
        AVIMMessage aVIMMessage = null;
        if (query.moveToFirst()) {
            aVIMMessage = createMessageFromCursor(query);
        }
        query.close();
        return aVIMMessage;
    }

    public void insertConversations(List<AVIMConversation> list) {
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        for (AVIMConversation aVIMConversation : list) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("attr", JSON.toJSONString(aVIMConversation.attributes));
            contentValues.put(COLUMN_INSTANCEDATA, JSON.toJSONString(aVIMConversation.instanceData));
            contentValues.put("createdAt", aVIMConversation.createdAt);
            contentValues.put("updatedAt", aVIMConversation.updatedAt);
            contentValues.put(COLUMN_CREATOR, aVIMConversation.creator);
            contentValues.put(COLUMN_EXPIREAT, Long.valueOf(System.currentTimeMillis() + 3600000));
            if (aVIMConversation.lastMessageAt != null) {
                contentValues.put("lm", Long.valueOf(aVIMConversation.lastMessageAt.getTime()));
            }
            AVIMMessage lastMessage = aVIMConversation.getLastMessage();
            if (lastMessage != null) {
                boolean z = lastMessage instanceof AVIMBinaryMessage;
                String str = COLUMN_CONV_LASTMESSAGE_INNERTYPE;
                String str2 = "last_message";
                if (z) {
                    contentValues.put(str2, AVUtils.base64Encode(((AVIMBinaryMessage) lastMessage).getBytes()));
                    contentValues.put(str, Integer.valueOf(1));
                } else {
                    contentValues.put(str2, JSON.toJSONString(lastMessage));
                    contentValues.put(str, Integer.valueOf(0));
                }
            }
            contentValues.put(COLUMN_MEMBERS, JSON.toJSONString(aVIMConversation.getMembers()));
            contentValues.put(COLUMN_TRANSIENT, Integer.valueOf(aVIMConversation.isTransient ? 1 : 0));
            contentValues.put(COLUMN_UNREAD_COUNT, Integer.valueOf(aVIMConversation.getUnreadMessagesCount()));
            contentValues.put(COLUMN_CONV_MENTIONED, Integer.valueOf(aVIMConversation.unreadMessagesMentioned() ? 1 : 0));
            contentValues.put("readAt", Long.valueOf(aVIMConversation.getLastReadAt()));
            contentValues.put(COLUMN_CONVRESATION_DELIVEREDAT, Long.valueOf(aVIMConversation.getLastDeliveredAt()));
            contentValues.put(COLUMN_CONVERSATION_ID, aVIMConversation.getConversationId());
            contentValues.put("sys", Integer.valueOf(aVIMConversation.isSystem() ? 1 : 0));
            contentValues.put("temp", Integer.valueOf(aVIMConversation.isTemporary() ? 1 : 0));
            contentValues.put(COLUMN_CONV_TEMP_TTL, Long.valueOf(aVIMConversation.getTemporaryExpiredat()));
            writableDatabase.insertWithOnConflict(CONVERSATION_TABLE, null, contentValues, 5);
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
    }

    /* access modifiers changed from: 0000 */
    public boolean updateConversationTimes(AVIMConversation aVIMConversation) {
        if (getConversation(aVIMConversation.getConversationId()) == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("readAt", Long.valueOf(aVIMConversation.getLastReadAt()));
        contentValues.put(COLUMN_CONVRESATION_DELIVEREDAT, Long.valueOf(aVIMConversation.getLastDeliveredAt()));
        if (((long) writableDatabase.update(CONVERSATION_TABLE, contentValues, getWhereClause(COLUMN_CONVERSATION_ID), new String[]{aVIMConversation.getConversationId()})) != -1) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean updateConversationUreadCount(String str, long j, boolean z) {
        if (getConversation(str) == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_UNREAD_COUNT, Long.valueOf(j));
        contentValues.put(COLUMN_CONV_MENTIONED, Integer.valueOf(z ? 1 : 0));
        boolean z2 = true;
        if (((long) writableDatabase.update(CONVERSATION_TABLE, contentValues, getWhereClause(COLUMN_CONVERSATION_ID), new String[]{str})) == -1) {
            z2 = false;
        }
        return z2;
    }

    public boolean updateConversationLastMessageAt(AVIMConversation aVIMConversation) {
        if (getConversation(aVIMConversation.getConversationId()) == null || aVIMConversation.getLastMessageAt() == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = this.dbHelper.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("lm", Long.valueOf(aVIMConversation.getLastMessageAt().getTime()));
        if (((long) writableDatabase.update(CONVERSATION_TABLE, contentValues, getWhereClause(COLUMN_CONVERSATION_ID), new String[]{aVIMConversation.getConversationId()})) != -1) {
            return true;
        }
        return false;
    }

    public List<AVIMConversation> getAllCachedConversations() {
        long currentTimeMillis = System.currentTimeMillis();
        Cursor query = this.dbHelper.getReadableDatabase().query(CONVERSATION_TABLE, null, "(temp < 1 and expireAt > ?) or (temp> 0 and temp_ttl > ?)", new String[]{String.valueOf(currentTimeMillis), String.valueOf(currentTimeMillis / 1000)}, null, null, null, null);
        query.moveToFirst();
        LinkedList linkedList = new LinkedList();
        while (!query.isAfterLast()) {
            linkedList.add(parseConversationFromCursor(query));
            query.moveToNext();
        }
        query.close();
        return linkedList;
    }

    private AVIMConversation parseConversationFromCursor(Cursor cursor) {
        AVIMConversation aVIMConversation;
        Cursor cursor2 = cursor;
        String string = cursor2.getString(cursor2.getColumnIndex(COLUMN_CONVERSATION_ID));
        String string2 = cursor2.getString(cursor2.getColumnIndex("createdAt"));
        String string3 = cursor2.getString(cursor2.getColumnIndex("updatedAt"));
        String string4 = cursor2.getString(cursor2.getColumnIndex(COLUMN_MEMBERS));
        String string5 = cursor2.getString(cursor2.getColumnIndex("attr"));
        String string6 = cursor2.getString(cursor2.getColumnIndex(COLUMN_INSTANCEDATA));
        String string7 = cursor2.getString(cursor2.getColumnIndex(COLUMN_CREATOR));
        long j = cursor2.getLong(cursor2.getColumnIndex("lm"));
        int i = cursor2.getInt(cursor2.getColumnIndex(COLUMN_TRANSIENT));
        int i2 = cursor2.getInt(cursor2.getColumnIndex(COLUMN_UNREAD_COUNT));
        int i3 = cursor2.getInt(cursor2.getColumnIndex(COLUMN_CONV_MENTIONED));
        long j2 = cursor2.getLong(cursor2.getColumnIndex("readAt"));
        long j3 = cursor2.getLong(cursor2.getColumnIndex(COLUMN_CONVRESATION_DELIVEREDAT));
        String string8 = cursor2.getString(cursor2.getColumnIndex("last_message"));
        int i4 = cursor2.getInt(cursor2.getColumnIndex(COLUMN_CONV_LASTMESSAGE_INNERTYPE));
        int i5 = i3;
        int i6 = cursor2.getInt(cursor2.getColumnIndex("sys"));
        int i7 = i2;
        if (cursor2.getInt(cursor2.getColumnIndex("temp")) > 0) {
            aVIMConversation = new AVIMTemporaryConversation(AVIMClient.getInstance(this.clientId), string);
            aVIMConversation.setTemporaryExpiredat(cursor2.getLong(cursor2.getColumnIndex(COLUMN_CONV_TEMP_TTL)));
        } else if (i6 > 0) {
            aVIMConversation = new AVIMServiceConversation(AVIMClient.getInstance(this.clientId), string);
        } else if (i > 0) {
            aVIMConversation = new AVIMChatRoom(AVIMClient.getInstance(this.clientId), string);
        } else {
            aVIMConversation = new AVIMConversation(AVIMClient.getInstance(this.clientId), string);
        }
        aVIMConversation.createdAt = string2;
        aVIMConversation.updatedAt = string3;
        boolean z = true;
        try {
            aVIMConversation.members.clear();
            if (!AVUtils.isBlankContent(string4)) {
                aVIMConversation.members.addAll((Collection) JSON.parseObject(string4, Set.class));
            }
            aVIMConversation.attributes.clear();
            if (!AVUtils.isBlankContent(string5)) {
                aVIMConversation.attributes.putAll((Map) JSON.parseObject(string5, HashMap.class));
            }
            aVIMConversation.instanceData.clear();
            if (!AVUtils.isBlankContent(string6)) {
                aVIMConversation.instanceData.putAll((Map) JSON.parseObject(string6, HashMap.class));
            }
            if (i4 != 1) {
                aVIMConversation.lastMessage = (AVIMMessage) JSON.parseObject(string8, AVIMMessage.class);
            } else {
                AVIMBinaryMessage aVIMBinaryMessage = new AVIMBinaryMessage(string, null);
                aVIMBinaryMessage.setBytes(AVUtils.base64Decode(string8));
                aVIMConversation.lastMessage = aVIMBinaryMessage;
            }
        } catch (Exception e) {
            if (AVOSCloud.isDebugLogEnabled()) {
                StringBuilder sb = new StringBuilder();
                sb.append("error during conversation cache parse:");
                sb.append(e.getMessage());
                avlog.e(sb.toString());
            }
        }
        aVIMConversation.creator = string7;
        aVIMConversation.lastMessageAt = new Date(j);
        aVIMConversation.unreadMessagesCount = i7;
        if (i5 != 1) {
            z = false;
        }
        aVIMConversation.unreadMessagesMentioned = z;
        aVIMConversation.lastReadAt = j2;
        aVIMConversation.lastDeliveredAt = j3;
        return aVIMConversation;
    }

    public AVIMConversation getConversation(String str) {
        SQLiteDatabase readableDatabase = this.dbHelper.getReadableDatabase();
        StringBuilder sb = new StringBuilder();
        sb.append(getWhereClause(COLUMN_CONVERSATION_ID));
        sb.append(" and ");
        sb.append(COLUMN_EXPIREAT);
        sb.append(" > ?");
        Cursor query = readableDatabase.query(CONVERSATION_TABLE, null, sb.toString(), new String[]{str, String.valueOf(System.currentTimeMillis())}, null, null, null, null);
        query.moveToFirst();
        AVIMConversation parseConversationFromCursor = !query.isAfterLast() ? parseConversationFromCursor(query) : null;
        query.close();
        return parseConversationFromCursor;
    }

    public List<AVIMConversation> getCachedConversations(List<String> list) {
        SQLiteDatabase readableDatabase = this.dbHelper.getReadableDatabase();
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM conversations WHERE conversation_id in ('");
        sb.append(AVUtils.joinCollection(list, "','"));
        sb.append("')");
        Cursor rawQuery = readableDatabase.rawQuery(sb.toString(), null);
        rawQuery.moveToFirst();
        LinkedList linkedList = new LinkedList();
        while (!rawQuery.isAfterLast()) {
            linkedList.add(parseConversationFromCursor(rawQuery));
            rawQuery.moveToNext();
        }
        rawQuery.close();
        return linkedList;
    }

    public void deleteConversation(String str) {
        this.dbHelper.getWritableDatabase().delete(CONVERSATION_TABLE, getWhereClause(COLUMN_CONVERSATION_ID), new String[]{str});
    }
}
