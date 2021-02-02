.class Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AVIMMessageStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DBHelper"
.end annotation


# static fields
.field static final CONVERSATION_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS conversations (conversation_id VARCHAR(32) NOT NULL,expireAt NUMBERIC,attr BLOB,instanceData BLOB,updatedAt VARCHAR(32),createdAt VARCHAR(32),creator TEXT,members TEXT,isTransient INTEGER,unread_count INTEGER,readAt NUMBERIC,deliveredAt NUMBERIC,lm NUMBERIC,last_message TEXT,mentioned INTEGER default 0,last_msg_iType INTEGER default 0, sys INTEGER default 0, temp INTEGER default 0, temp_ttl NUMBERIC, PRIMARY KEY(conversation_id))"

.field static final MESSAGE_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS messages (conversation_id VARCHAR(32) NOT NULL, message_id VARCHAR(32) NOT NULL, timestamp NUMBERIC, from_peer_id TEXT NOT NULL, receipt_timestamp NUMBERIC, readAt NUMBERIC, updateAt NUMBERIC, payload BLOB, status INTEGER, breakpoint INTEGER, dtoken VARCHAR(32), mentionAll INTEGER default 0, mentionList TEXT NULL, iType INTEGER default 0, PRIMARY KEY(conversation_id,message_id)) "

.field static final MESSAGE_UNIQUE_INDEX_SQL:Ljava/lang/String; = "CREATE UNIQUE INDEX IF NOT EXISTS message_index on messages (conversation_id, timestamp, message_id) "


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 179
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getDatabasePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 339
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 340
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 v8, 0x1

    :catch_0
    :cond_0
    return v8
.end method

.method private static getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    .line 188
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "ALTER TABLE %s ADD COLUMN %s %s;"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 192
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const-string p0, "ALTER TABLE %s ADD COLUMN %s %s default %s;"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDatabasePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.avos.avoscloud.im.v2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private upgradeToVersion10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "temp_ttl"

    const-string v1, "temp"

    const-string v2, "sys"

    const-string v3, "conversations"

    .line 323
    :try_start_0
    invoke-static {p1, v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "0"

    const-string v6, "INTEGER"

    if-nez v4, :cond_0

    .line 324
    :try_start_1
    invoke-static {v3, v2, v6, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-static {p1, v3, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    invoke-static {v3, v1, v6, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    :cond_1
    invoke-static {p1, v3, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NUMBERIC"

    .line 330
    invoke-static {v3, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS conversations (conversation_id VARCHAR(32) NOT NULL,expireAt NUMBERIC,attr BLOB,instanceData BLOB,updatedAt VARCHAR(32),createdAt VARCHAR(32),creator TEXT,members TEXT,isTransient INTEGER,unread_count INTEGER,readAt NUMBERIC,deliveredAt NUMBERIC,lm NUMBERIC,last_message TEXT,mentioned INTEGER default 0,last_msg_iType INTEGER default 0, sys INTEGER default 0, temp INTEGER default 0, temp_ttl NUMBERIC, PRIMARY KEY(conversation_id))"

    .line 243
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "dtoken"

    const-string v1, "messages"

    .line 248
    :try_start_0
    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VARCHAR(32)"

    .line 249
    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "last_message"

    const-string v1, "conversations"

    .line 256
    :try_start_0
    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TEXT"

    .line 257
    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "instanceData"

    const-string v1, "conversations"

    .line 264
    :try_start_0
    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BLOB"

    .line 265
    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v0, "messages"

    const-string v1, "unread_count"

    const-string v2, "conversations"

    .line 273
    :try_start_0
    invoke-static {p1, v2, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "NUMBERIC"

    const-string v5, "readAt"

    if-nez v3, :cond_0

    :try_start_1
    const-string v3, "INTEGER"

    .line 274
    invoke-static {v2, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    invoke-static {v2, v5, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "deliveredAt"

    .line 276
    invoke-static {v2, v1, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-static {p1, v0, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-static {v0, v5, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "updateAt"

    const-string v1, "messages"

    .line 287
    :try_start_0
    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NUMBERIC"

    .line 288
    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const-string v0, "mentioned"

    const-string v1, "conversations"

    const-string v2, "mentionList"

    const-string v3, "mentionAll"

    const-string v4, "messages"

    .line 296
    :try_start_0
    invoke-static {p1, v4, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "0"

    const-string v7, "INTEGER"

    if-nez v5, :cond_0

    .line 297
    :try_start_1
    invoke-static {v4, v3, v7, v6}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    :cond_0
    invoke-static {p1, v4, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TEXT"

    .line 300
    invoke-static {v4, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    :cond_1
    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 303
    invoke-static {v1, v0, v7, v6}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private upgradeToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "last_msg_iType"

    const-string v1, "conversations"

    const-string v2, "iType"

    const-string v3, "messages"

    .line 311
    :try_start_0
    invoke-static {p1, v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "0"

    const-string v6, "INTEGER"

    if-nez v4, :cond_0

    .line 312
    :try_start_1
    invoke-static {v3, v2, v6, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    :cond_0
    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    invoke-static {v1, v0, v6, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getAddColumnSql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS messages (conversation_id VARCHAR(32) NOT NULL, message_id VARCHAR(32) NOT NULL, timestamp NUMBERIC, from_peer_id TEXT NOT NULL, receipt_timestamp NUMBERIC, readAt NUMBERIC, updateAt NUMBERIC, payload BLOB, status INTEGER, breakpoint INTEGER, dtoken VARCHAR(32), mentionAll INTEGER default 0, mentionList TEXT NULL, iType INTEGER default 0, PRIMARY KEY(conversation_id,message_id)) "

    .line 197
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS message_index on messages (conversation_id, timestamp, message_id) "

    .line 198
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS conversations (conversation_id VARCHAR(32) NOT NULL,expireAt NUMBERIC,attr BLOB,instanceData BLOB,updatedAt VARCHAR(32),createdAt VARCHAR(32),creator TEXT,members TEXT,isTransient INTEGER,unread_count INTEGER,readAt NUMBERIC,deliveredAt NUMBERIC,lm NUMBERIC,last_message TEXT,mentioned INTEGER default 0,last_msg_iType INTEGER default 0, sys INTEGER default 0, temp INTEGER default 0, temp_ttl NUMBERIC, PRIMARY KEY(conversation_id))"

    .line 199
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 209
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    .line 213
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_2
    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    .line 217
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_3
    const/4 p3, 0x5

    if-ne p2, p3, :cond_4

    .line 221
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_4
    const/4 p3, 0x6

    if-ne p2, p3, :cond_5

    .line 225
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_5
    const/4 p3, 0x7

    if-ne p2, p3, :cond_6

    .line 229
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_6
    const/16 p3, 0x8

    if-ne p2, p3, :cond_7

    .line 233
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_7
    const/16 p3, 0x9

    if-ne p2, p3, :cond_8

    .line 237
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->upgradeToVersion10(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    return-void
.end method
