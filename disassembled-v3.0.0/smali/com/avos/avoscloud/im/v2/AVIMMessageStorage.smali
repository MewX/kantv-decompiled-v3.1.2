.class Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
.super Ljava/lang/Object;
.source "AVIMMessageStorage.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;,
        Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;,
        Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;,
        Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$SQL;
    }
.end annotation


# static fields
.field static final BLOB:Ljava/lang/String; = "BLOB"

.field static final COLUMN_ATTRIBUTE:Ljava/lang/String; = "attr"

.field static final COLUMN_BREAKPOINT:Ljava/lang/String; = "breakpoint"

.field static final COLUMN_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field static final COLUMN_CONVERSATION_READAT:Ljava/lang/String; = "readAt"

.field static final COLUMN_CONVRESATION_DELIVEREDAT:Ljava/lang/String; = "deliveredAt"

.field static final COLUMN_CONV_LASTMESSAGE_INNERTYPE:Ljava/lang/String; = "last_msg_iType"

.field static final COLUMN_CONV_MENTIONED:Ljava/lang/String; = "mentioned"

.field static final COLUMN_CONV_SYSTEM:Ljava/lang/String; = "sys"

.field static final COLUMN_CONV_TEMP:Ljava/lang/String; = "temp"

.field static final COLUMN_CONV_TEMP_TTL:Ljava/lang/String; = "temp_ttl"

.field static final COLUMN_CREATEDAT:Ljava/lang/String; = "createdAt"

.field static final COLUMN_CREATOR:Ljava/lang/String; = "creator"

.field static final COLUMN_DEDUPLICATED_TOKEN:Ljava/lang/String; = "dtoken"

.field static final COLUMN_EXPIREAT:Ljava/lang/String; = "expireAt"

.field static final COLUMN_FROM_PEER_ID:Ljava/lang/String; = "from_peer_id"

.field static final COLUMN_INSTANCEDATA:Ljava/lang/String; = "instanceData"

.field static final COLUMN_LASTMESSAGE:Ljava/lang/String; = "last_message"

.field static final COLUMN_LM:Ljava/lang/String; = "lm"

.field static final COLUMN_MEMBERS:Ljava/lang/String; = "members"

.field static final COLUMN_MESSAGE_DELIVEREDAT:Ljava/lang/String; = "receipt_timestamp"

.field static final COLUMN_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field static final COLUMN_MESSAGE_READAT:Ljava/lang/String; = "readAt"

.field static final COLUMN_MESSAGE_UPDATEAT:Ljava/lang/String; = "updateAt"

.field static final COLUMN_MSG_INNERTYPE:Ljava/lang/String; = "iType"

.field static final COLUMN_MSG_MENTION_ALL:Ljava/lang/String; = "mentionAll"

.field static final COLUMN_MSG_MENTION_LIST:Ljava/lang/String; = "mentionList"

.field static final COLUMN_PAYLOAD:Ljava/lang/String; = "payload"

.field static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final COLUMN_TRANSIENT:Ljava/lang/String; = "isTransient"

.field static final COLUMN_UNREAD_COUNT:Ljava/lang/String; = "unread_count"

.field static final COLUMN_UPDATEDAT:Ljava/lang/String; = "updatedAt"

.field static final CONVERSATION_TABLE:Ljava/lang/String; = "conversations"

.field static final DB_NAME_PREFIX:Ljava/lang/String; = "com.avos.avoscloud.im.v2."

.field static final DB_VERSION:I = 0xa

.field static final INTEGER:Ljava/lang/String; = "INTEGER"

.field static final MESSAGE_INDEX:Ljava/lang/String; = "message_index"

.field static final MESSAGE_INNERTYPE_BIN:I = 0x1

.field static final MESSAGE_INNERTYPE_PLAIN:I = 0x0

.field static final MESSAGE_TABLE:Ljava/lang/String; = "messages"

.field static final NUMBERIC:Ljava/lang/String; = "NUMBERIC"

.field static final TEXT:Ljava/lang/String; = "TEXT"

.field static final VARCHAR32:Ljava/lang/String; = "VARCHAR(32)"

.field private static storages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field clientId:Ljava/lang/String;

.field private dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-direct {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    .line 353
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 355
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->clientId:Ljava/lang/String;

    return-void
.end method

.method private createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "message_id"

    .line 741
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    .line 742
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v2, "conversation_id"

    .line 743
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "from_peer_id"

    .line 744
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "receipt_timestamp"

    .line 745
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v2, "readAt"

    .line 746
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v2, "updateAt"

    .line 747
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v2, "payload"

    .line 748
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-string v3, "dtoken"

    .line 749
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "status"

    .line 750
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v3, "mentionAll"

    .line 751
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "mentionList"

    .line 752
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    const-string v3, "iType"

    .line 753
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 757
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    move/from16 v18, v16

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 758
    move-object v3, v0

    check-cast v3, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->setBytes([B)V

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    .line 760
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 761
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 763
    :goto_0
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, v14}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setUniqueToken(Ljava/lang/String;)V

    .line 765
    invoke-static {v15}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getMessageStatus(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 766
    invoke-virtual {v0, v12, v13}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setUpdateAt(J)V

    move/from16 v1, v18

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 767
    :goto_1
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMentionAll(Z)V

    move-object/from16 v1, p0

    .line 768
    iget-object v2, v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setCurrentClient(Ljava/lang/String;)V

    .line 769
    invoke-static/range {v17 .. v17}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v2, v17

    .line 770
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMentionListString(Ljava/lang/String;)V

    .line 772
    :cond_2
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    return-object v0
.end method

.method private generateInternalMessageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 458
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
    .locals 3

    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    monitor-enter v0

    .line 359
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 361
    monitor-exit v0

    return-object v1

    .line 363
    :cond_0
    :try_start_1
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 364
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    move-object p0, v1

    .line 365
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static varargs getWhereClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ? "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, " and "

    .line 374
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized insertMessages(Ljava/util/List;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;Z)I"
        }
    .end annotation

    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 468
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 469
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "conversation_id"

    .line 470
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "message_id"

    .line 471
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    .line 472
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "from_peer_id"

    .line 473
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    instance-of v5, v3, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const-string v5, "payload"

    .line 475
    move-object v7, v3

    check-cast v7, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v7}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "iType"

    .line 476
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const-string v5, "payload"

    .line 478
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "iType"

    .line 479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    const-string v5, "receipt_timestamp"

    .line 481
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getDeliveredAt()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "readAt"

    .line 482
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReadAt()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "updateAt"

    .line 483
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getUpdateAt()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "status"

    .line 484
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "breakpoint"

    if-eqz p2, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 485
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "mentionAll"

    .line 487
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->isMentionAll()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "mentionList"

    .line 488
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMentionListString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "messages"

    const/4 v5, 0x0

    const/4 v7, 0x5

    .line 492
    invoke-virtual {v0, v3, v5, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, -0x1

    cmp-long v5, v3, v7

    if-lez v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 498
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    goto/16 :goto_0

    .line 503
    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 504
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private parseConversationFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "conversation_id"

    .line 961
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "createdAt"

    .line 962
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "updatedAt"

    .line 963
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "members"

    .line 964
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "attr"

    .line 965
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "instanceData"

    .line 966
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "creator"

    .line 967
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "lm"

    .line 968
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v11, "isTransient"

    .line 969
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "unread_count"

    .line 970
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "mentioned"

    .line 972
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "readAt"

    .line 974
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide/from16 v16, v14

    const-string v14, "deliveredAt"

    .line 975
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide/from16 v18, v14

    const-string v14, "last_message"

    .line 976
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "last_msg_iType"

    .line 977
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v20, v13

    const-string v13, "sys"

    .line 979
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v21, v12

    const-string v12, "temp"

    .line 980
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lez v12, :cond_0

    .line 984
    new-instance v11, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;

    iget-object v12, v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->clientId:Ljava/lang/String;

    invoke-static {v12}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    const-string v12, "temp_ttl"

    .line 985
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 986
    invoke-virtual {v11, v12, v13}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setTemporaryExpiredat(J)V

    goto :goto_0

    :cond_0
    if-lez v13, :cond_1

    .line 988
    new-instance v11, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;

    iget-object v0, v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->clientId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    invoke-direct {v11, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lez v11, :cond_2

    .line 990
    new-instance v11, Lcom/avos/avoscloud/im/v2/AVIMChatRoom;

    iget-object v0, v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->clientId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    invoke-direct {v11, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMChatRoom;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_2
    new-instance v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->clientId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    invoke-direct {v11, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    .line 1000
    :goto_0
    iput-object v3, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->createdAt:Ljava/lang/String;

    .line 1001
    iput-object v4, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    const/4 v3, 0x1

    .line 1003
    :try_start_0
    iget-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1004
    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1005
    iget-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    const-class v4, Ljava/util/Set;

    invoke-static {v5, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1008
    :cond_3
    iget-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1009
    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1010
    iget-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    const-class v4, Ljava/util/HashMap;

    invoke-static {v6, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1013
    :cond_4
    iget-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1014
    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1015
    iget-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    const-class v4, Ljava/util/HashMap;

    invoke-static {v7, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    if-eq v15, v3, :cond_6

    .line 1018
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 1019
    iput-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    goto :goto_1

    .line 1021
    :cond_6
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-static {v14}, Lcom/avos/avoscloud/AVUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->setBytes([B)V

    .line 1023
    iput-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1026
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error during conversation cache parse:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 1030
    :cond_7
    :goto_1
    iput-object v8, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    .line 1031
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    iput-object v0, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    move/from16 v2, v21

    .line 1032
    iput v2, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesCount:I

    move/from16 v2, v20

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 1033
    :goto_2
    iput-boolean v3, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesMentioned:Z

    move-wide/from16 v2, v16

    .line 1034
    iput-wide v2, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastReadAt:J

    move-wide/from16 v2, v18

    .line 1035
    iput-wide v2, v11, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastDeliveredAt:J

    return-object v11
.end method

.method private processMessages(Landroid/database/Cursor;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V
    .locals 3

    .line 776
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 777
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 778
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 782
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    .line 783
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "breakpoint"

    .line 784
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 785
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 789
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 790
    invoke-interface {p2, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;->done(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized updateBreakpointsForBatch(Ljava/util/List;ZLjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;Z",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    .line 559
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 562
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 563
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 564
    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    const-string v3, "?"

    .line 565
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 568
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "breakpoint"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 569
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, ","

    .line 570
    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "messages"

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message_id in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public containMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z
    .locals 10

    .line 536
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    .line 537
    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "conversation_id"

    aput-object v5, v4, v0

    const/4 v9, 0x1

    const-string v5, "message_id"

    aput-object v5, v4, v9

    .line 538
    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    aput-object v2, v5, v0

    .line 539
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v9

    const-string v2, "messages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 537
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 540
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 541
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public declared-synchronized deleteClientData()V
    .locals 3

    monitor-enter p0

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 635
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "conversations"

    .line 636
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteConversation(Ljava/lang/String;)V
    .locals 5

    .line 1072
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    .line 1073
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    const-string p1, "conversations"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized deleteConversationData(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x1

    .line 627
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "conversation_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "conversations"

    .line 629
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "conversation_id"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessages(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 614
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 615
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getNextMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 618
    new-array v3, v5, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v5, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V

    :cond_0
    const-string v1, "messages"

    .line 620
    new-array v3, v5, [Ljava/lang/String;

    const-string v6, "message_id"

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v4

    invoke-virtual {v0, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 623
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method dumpMessages(Ljava/lang/String;)V
    .locals 11

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 670
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v2, 0x2

    .line 672
    new-array v7, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const/4 v0, 0x1

    aput-object p1, v7, v0

    const-string v6, "timestamp < ? and conversation_id = ? "

    const-string v4, "messages"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "timestamp desc, message_id desc"

    .line 673
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 674
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 676
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    const-string v3, "breakpoint"

    .line 677
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 678
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg: {id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", breakpoint="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 679
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAllCachedConversations()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation

    .line 944
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 945
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v2, 0x2

    .line 946
    new-array v7, v2, [Ljava/lang/String;

    .line 948
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v7, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v7, v1

    const-string v4, "conversations"

    const/4 v5, 0x0

    const-string v6, "(temp < 1 and expireAt > ?) or (temp> 0 and temp_ttl > ?)"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 947
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 950
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 951
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 952
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 953
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->parseConversationFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 956
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public getCachedConversations(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM conversations WHERE conversation_id in (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'"

    .line 1060
    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1059
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1061
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1062
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1063
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->parseConversationFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1067
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 10

    .line 1040
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "conversation_id"

    aput-object v5, v3, v4

    .line 1042
    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "expireAt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    aput-object p1, v5, v4

    .line 1044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    const-string v2, "conversations"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    .line 1042
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1047
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1049
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->parseConversationFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1052
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method getLatestMessage(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 10

    .line 813
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    .line 814
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v3

    const-string v2, "messages"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "timestamp desc, message_id desc"

    const-string v9, "1"

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 818
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 821
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method getLatestMessageWithBreakpoint(Ljava/lang/String;Z)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 10

    .line 826
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x2

    .line 827
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "breakpoint"

    aput-object v5, v2, v4

    .line 828
    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    if-eqz p2, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    aput-object p1, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "messages"

    const/4 v3, 0x0

    const-string v8, "timestamp desc, message_id desc"

    const-string v9, "1"

    move-object v4, v5

    move-object v5, v0

    .line 827
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    .line 832
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p2

    .line 835
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method getMessage(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-nez v6, :cond_0

    .line 645
    invoke-interface {v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    goto :goto_1

    .line 647
    :cond_0
    iget-object v4, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v4, 0x1

    if-nez p1, :cond_1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 650
    new-array v8, v6, [Ljava/lang/String;

    const-string v9, "timestamp"

    aput-object v9, v8, v3

    const-string v9, "conversation_id"

    aput-object v9, v8, v4

    .line 651
    invoke-static {v8}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/String;

    .line 652
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    aput-object p4, v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "messages"

    const-string v13, "1"

    .line 651
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 654
    new-array v6, v4, [Ljava/lang/String;

    const-string v8, "message_id"

    aput-object v8, v6, v3

    invoke-static {v6}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/String;

    aput-object p1, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "messages"

    const-string v13, "1"

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 659
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 660
    invoke-direct {p0, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    const-string v6, "breakpoint"

    .line 661
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    .line 663
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 664
    invoke-interface {v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    :goto_1
    return-void
.end method

.method public getMessageCount(Ljava/lang/String;)J
    .locals 7

    const/4 v0, 0x1

    .line 717
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getLatestMessageWithBreakpoint(Ljava/lang/String;Z)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v1

    .line 718
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 722
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string p1, "select count(*) from messages where conversation_id = ?"

    .line 723
    invoke-static {v2, p1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    .line 726
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v3

    iget-wide v5, v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    .line 733
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x2

    iget-wide v5, v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    .line 734
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x3

    iget-object v0, v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    aput-object v0, v4, p1

    const-string p1, "select count(*) from messages where conversation_id = ? and (timestamp > ? or ( timestamp = ? and message_id >= ? )) order by timestamp desc, message_id desc"

    .line 726
    invoke-static {v2, p1, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getMessages(Ljava/lang/String;JILjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V
    .locals 11

    move-object v0, p0

    .line 695
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-lez v6, :cond_1

    const/4 v4, 0x2

    if-nez p1, :cond_0

    .line 701
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p5, v4, v3

    const-string v1, "timestamp < ? and conversation_id = ? "

    move-object v5, v1

    move-object v6, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    .line 704
    new-array v5, v5, [Ljava/lang/String;

    .line 705
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    aput-object p1, v5, v4

    const/4 v1, 0x3

    aput-object p5, v5, v1

    const-string v1, " ( timestamp < ? or (timestamp = ? and message_id < ? )) and conversation_id = ? "

    move-object v6, v5

    move-object v5, v1

    goto :goto_0

    .line 708
    :cond_1
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "conversation_id"

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 709
    new-array v3, v3, [Ljava/lang/String;

    aput-object p5, v3, v1

    move-object v6, v3

    move-object v5, v4

    :goto_0
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v3, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v3, "messages"

    const-string v9, "timestamp desc, message_id desc"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v2, p6

    .line 713
    invoke-direct {p0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->processMessages(Landroid/database/Cursor;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V

    return-void
.end method

.method protected getNextMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 10

    .line 794
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x4

    .line 795
    new-array v5, v0, [Ljava/lang/String;

    .line 800
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v5, v2

    .line 801
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    .line 802
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v5, v0

    const-string v2, "messages"

    const/4 v3, 0x0

    const-string v4, " ( timestamp > ? or (timestamp = ? and message_id > ? )) and conversation_id = ? "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "timestamp , message_id"

    const-string v9, "1"

    .line 796
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 805
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 808
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public insertContinuousMessages(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 514
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 518
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 519
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 520
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 521
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->containMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 522
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getNextMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 524
    new-array v4, v3, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    aput-object p1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v3, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V

    .line 527
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 528
    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessages(Ljava/util/List;Z)I

    .line 530
    invoke-virtual {p0, v2, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V

    .line 532
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public insertConversations(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;)V"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 850
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 851
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 852
    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "attr"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "instanceData"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->createdAt:Ljava/lang/String;

    const-string v4, "createdAt"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    const-string v4, "updatedAt"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    const-string v4, "creator"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "expireAt"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 859
    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 860
    iget-object v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lm"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    :cond_0
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 865
    instance-of v4, v3, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    const-string v5, "last_msg_iType"

    const-string v6, "last_message"

    if-eqz v4, :cond_1

    .line 866
    check-cast v3, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->getBytes()[B

    move-result-object v3

    .line 867
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->base64Encode([B)Ljava/lang/String;

    move-result-object v3

    .line 868
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 869
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 871
    :cond_1
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 872
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 873
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getMembers()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "members"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-boolean v3, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "isTransient"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getUnreadMessagesCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "unread_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesMentioned()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mentioned"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastReadAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "readAt"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 884
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastDeliveredAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "deliveredAt"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 885
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "conversation_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isSystem()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sys"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTemporary()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "temp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getTemporaryExpiredat()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "temp_ttl"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x0

    const/4 v3, 0x5

    const-string v4, "conversations"

    .line 896
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    .line 898
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 899
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public declared-synchronized insertLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 389
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 390
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    .line 391
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 400
    :cond_0
    iget-object v2, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->generateInternalMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :try_start_1
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 403
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "conversation_id"

    .line 404
    iget-object v6, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "message_id"

    .line 405
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    .line 406
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "from_peer_id"

    .line 407
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    instance-of v2, p1, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    if-eqz v2, :cond_1

    const-string v2, "payload"

    .line 409
    move-object v5, p1

    check-cast v5, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v5}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "iType"

    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string v2, "payload"

    .line 412
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_0
    const-string v2, "receipt_timestamp"

    .line 414
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getDeliveredAt()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "readAt"

    .line 415
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReadAt()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "updateAt"

    .line 416
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getUpdateAt()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "status"

    .line 417
    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v5}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "breakpoint"

    .line 418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "dtoken"

    .line 419
    iget-object v5, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mentionAll"

    .line 421
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->isMentionAll()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "mentionList"

    .line 422
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMentionListString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "messages"

    const/4 v2, 0x0

    const/4 v5, 0x4

    .line 424
    invoke-virtual {v3, p1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long p1, v2, v5

    if-gez p1, :cond_3

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to insert Message table. values="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 428
    :goto_2
    monitor-exit p0

    return v0

    .line 430
    :catch_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    :goto_3
    if-nez p1, :cond_6

    :try_start_2
    const-string p1, "message is null"

    .line 393
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v2, "invalid state. msgId=%s, convId=%s, uniToken=%s"

    const/4 v3, 0x3

    .line 395
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    :goto_4
    monitor-exit p0

    return v1

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public insertMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 381
    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessages(Ljava/util/List;Z)I

    return-void
.end method

.method public declared-synchronized removeLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 440
    :try_start_0
    iget-object v1, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 441
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    .line 442
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-object v1, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->generateInternalMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :try_start_1
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "messages"

    const-string v5, "conversation_id = ? and message_id = ? and status = ? and dtoken = ? "

    const/4 v6, 0x4

    .line 449
    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    aput-object v7, v6, v0

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    aput-object p1, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_1

    const/4 v0, 0x1

    .line 451
    :cond_1
    monitor-exit p0

    return v0

    .line 453
    :catch_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 443
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x384

    .line 549
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v1, 0x0

    .line 550
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpointsForBatch(Ljava/util/List;ZLjava/lang/String;)I

    .line 551
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpointsForBatch(Ljava/util/List;ZLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateConversationLastMessageAt(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z
    .locals 8

    .line 931
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessageAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 934
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 935
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessageAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lm"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x1

    .line 936
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "conversation_id"

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    .line 937
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const-string p1, "conversations"

    .line 936
    invoke-virtual {v0, p1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v4, p1

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method updateConversationTimes(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z
    .locals 8

    .line 903
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 905
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 906
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastReadAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "readAt"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 907
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastDeliveredAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "deliveredAt"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x1

    .line 908
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "conversation_id"

    aput-object v5, v4, v1

    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    .line 909
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const-string p1, "conversations"

    .line 908
    invoke-virtual {v0, p1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v4, p1

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method updateConversationUreadCount(Ljava/lang/String;JZ)Z
    .locals 4

    .line 916
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 918
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 919
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "unread_count"

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 921
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "mentioned"

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    .line 923
    new-array p3, p2, [Ljava/lang/String;

    const-string p4, "conversation_id"

    aput-object p4, p3, v1

    invoke-static {p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, p2, [Ljava/lang/String;

    aput-object p1, p4, v1

    const-string p1, "conversations"

    invoke-virtual {v0, p1, v2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p3, p1

    const-wide/16 v2, -0x1

    cmp-long p1, p3, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2

    :cond_1
    return v1
.end method

.method public declared-synchronized updateMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 578
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "timestamp"

    .line 579
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "status"

    .line 580
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "receipt_timestamp"

    .line 581
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getDeliveredAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "readAt"

    .line 582
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReadAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "updateAt"

    .line 583
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getUpdateAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "message_id"

    .line 584
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mentionAll"

    .line 586
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->isMentionAll()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "mentionList"

    .line 587
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMentionListString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "messages"

    .line 589
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "message_id"

    aput-object v3, v2, v5

    .line 590
    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p1, p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 592
    :goto_1
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateMessageForPatch(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z
    .locals 7

    monitor-enter p0

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 597
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 598
    instance-of v2, p1, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "payload"

    .line 599
    move-object v5, p1

    check-cast v5, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-virtual {v5}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "iType"

    .line 600
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const-string v2, "payload"

    .line 602
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iType"

    .line 603
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string v2, "status"

    .line 605
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "updateAt"

    .line 606
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getUpdateAt()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "messages"

    .line 607
    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "message_id"

    aput-object v6, v5, v4

    invoke-static {v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v4

    .line 607
    invoke-virtual {v0, v2, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p1

    const-wide/16 v5, -0x1

    cmp-long p1, v0, v5

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 609
    :goto_1
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
