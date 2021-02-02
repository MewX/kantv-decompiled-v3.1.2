.class public Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;
.source "JDBCSessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;
    }
.end annotation


# static fields
.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _blobType:Ljava/lang/String;

.field protected _connectionUrl:Ljava/lang/String;

.field protected _createSessionIdTable:Ljava/lang/String;

.field protected _createSessionTable:Ljava/lang/String;

.field protected _datasource:Ljavax/sql/DataSource;

.field protected _dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

.field protected _deleteId:Ljava/lang/String;

.field protected _deleteOldExpiredSessions:Ljava/lang/String;

.field protected _deleteSession:Ljava/lang/String;

.field protected _driver:Ljava/sql/Driver;

.field protected _driverClassName:Ljava/lang/String;

.field protected _insertId:Ljava/lang/String;

.field protected _insertSession:Ljava/lang/String;

.field protected _jndiName:Ljava/lang/String;

.field protected _lastScavengeTime:J

.field protected _longType:Ljava/lang/String;

.field protected _queryId:Ljava/lang/String;

.field protected _scavengeIntervalMs:J

.field protected _selectBoundedExpiredSessions:Ljava/lang/String;

.field private _selectExpiredSessions:Ljava/lang/String;

.field protected _server:Lorg/eclipse/jetty/server/Server;

.field protected _sessionIdTable:Ljava/lang/String;

.field protected final _sessionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _sessionTable:Ljava/lang/String;

.field protected _sessionTableRowId:Ljava/lang/String;

.field protected _task:Ljava/util/TimerTask;

.field protected _timer:Ljava/util/Timer;

.field protected _updateSession:Ljava/lang/String;

.field protected _updateSessionAccessTime:Ljava/lang/String;

.field protected _updateSessionNode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;)V
    .locals 2

    .line 241
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    const-string v0, "JettySessionIds"

    .line 73
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    const-string v0, "JettySessions"

    .line 74
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    const-string v0, "rowId"

    .line 75
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    const-wide/32 v0, 0x927c0

    .line 80
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 242
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;Ljava/util/Random;)V
    .locals 2

    .line 247
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;-><init>(Ljava/util/Random;)V

    .line 66
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    const-string p2, "JettySessionIds"

    .line 73
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    const-string p2, "JettySessions"

    .line 74
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    const-string p2, "rowId"

    .line 75
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    const-wide/32 v0, 0x927c0

    .line 80
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 248
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->scavenge()V

    return-void
.end method

.method private cleanExpiredSessions()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 858
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    const/16 v2, 0x8

    .line 859
    invoke-interface {v1, v2}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    const/4 v2, 0x0

    .line 860
    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 862
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectExpiredSessions:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 864
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "Searching for sessions expired before {}"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-interface {v6, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    :cond_0
    invoke-interface {v3, v7, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 867
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 868
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "sessionId"

    .line 870
    invoke-interface {v3, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 871
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Found expired sessionId={}"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-interface {v5, v6, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 878
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 880
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " where sessionId in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->createCleanExpiredSessionsSql(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 882
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " where id in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->createCleanExpiredSessionsSql(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 885
    :cond_3
    invoke-interface {v1}, Ljava/sql/Connection;->commit()V

    .line 887
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 889
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 890
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 903
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 907
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 890
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 895
    :try_start_5
    invoke-interface {v1}, Ljava/sql/Connection;->rollback()V

    .line 896
    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    if-eqz v1, :cond_6

    .line 903
    :try_start_6
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 907
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 908
    :cond_6
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private createCleanExpiredSessionsSql(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 923
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 924
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "("

    .line 925
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 927
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 929
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 930
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ","

    .line 931
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 933
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    sget-object p1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v1, "Cleaning expired sessions with: {}"

    invoke-interface {p1, v1, p2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private delete(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 713
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 714
    :try_start_1
    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 715
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 716
    invoke-interface {v2, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 717
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 722
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_1
    throw p1
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 740
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 741
    :try_start_1
    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 742
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 743
    invoke-interface {v2, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 744
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    .line 745
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 750
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_1
    throw p1
.end method

.method private initializeDatabase()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    if-eqz v0, :cond_0

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 947
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 948
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sql/DataSource;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    goto :goto_0

    .line 950
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driver:Ljava/sql/Driver;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 952
    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V

    goto :goto_0

    .line 954
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 956
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    :goto_0
    return-void

    .line 959
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No database configured for sessions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insert(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 681
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 682
    :try_start_1
    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 683
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 684
    invoke-interface {v2, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 685
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 687
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    .line 689
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 690
    invoke-interface {v2, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 691
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 697
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_2
    throw p1
.end method

.method private prepareTables()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ", "

    const-string v2, "idx_"

    const-string v3, "update "

    const-string v4, " = ?"

    .line 576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (id varchar(120), primary key(id))"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionIdTable:Ljava/lang/String;

    .line 577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " where expiryTime >= ? and expiryTime <= ?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectBoundedExpiredSessions:Ljava/lang/String;

    .line 578
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " where expiryTime >0 and expiryTime <= ?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectExpiredSessions:Ljava/lang/String;

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete from "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteOldExpiredSessions:Ljava/lang/String;

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert into "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (id)  values (?)"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertId:Ljava/lang/String;

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " where id = ?"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteId:Ljava/lang/String;

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    const/4 v5, 0x0

    .line 589
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x1

    .line 590
    :try_start_1
    invoke-interface {v7, v10}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 591
    invoke-interface {v7}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v11

    .line 592
    new-instance v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-direct {v12, v1, v11}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;Ljava/sql/DatabaseMetaData;)V

    iput-object v12, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    .line 593
    iget-object v12, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v12}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getRowIdColumnName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    .line 596
    iget-object v12, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    iget-object v13, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->convertIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 597
    invoke-interface {v11, v5, v5, v12, v5}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v12

    .line 598
    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-nez v12, :cond_0

    .line 601
    invoke-interface {v7}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v12

    iget-object v13, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionIdTable:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 605
    :cond_0
    iget-object v12, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    iget-object v13, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->convertIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 606
    invoke-interface {v11, v5, v5, v14, v5}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5

    .line 607
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v15, " ("

    if-nez v5, :cond_1

    .line 610
    :try_start_2
    iget-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getBlobType()Ljava/lang/String;

    move-result-object v5

    .line 611
    iget-object v12, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v12}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getLongType()Ljava/lang/String;

    move-result-object v12

    .line 612
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " varchar(120), sessionId varchar(120), "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " contextPath varchar(60), virtualHost varchar(60), lastNode varchar(60), accessTime "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " lastAccessTime "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", createTime "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cookieTime "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " lastSavedTime "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expiryTime "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", map "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", primary key("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "))"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionTable:Ljava/lang/String;

    .line 616
    invoke-interface {v7}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    iget-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionTable:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 620
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_expiry"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_session"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v6, v15

    move v15, v5

    .line 623
    invoke-interface/range {v11 .. v16}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 626
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "INDEX_NAME"

    .line 628
    invoke-interface {v5, v13}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 629
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    .line 631
    :cond_3
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    if-eqz v11, :cond_5

    if-nez v12, :cond_7

    .line 636
    :cond_5
    invoke-interface {v7}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, "create index "

    if-nez v11, :cond_6

    .line 638
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (expiryTime)"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    :cond_6
    if-nez v12, :cond_7

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (sessionId, contextPath)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 644
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId, contextPath, virtualHost, lastNode, accessTime, lastAccessTime, createTime, cookieTime, lastSavedTime, expiryTime, map) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertSession:Ljava/lang/String;

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteSession:Ljava/lang/String;

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set lastNode = ?, accessTime = ?, lastAccessTime = ?, lastSavedTime = ?, expiryTime = ?, map = ? where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSession:Ljava/lang/String;

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set lastNode = ? where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionNode:Ljava/lang/String;

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set lastNode = ?, accessTime = ?, lastAccessTime = ?, lastSavedTime = ?, expiryTime = ? where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionAccessTime:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_8

    .line 665
    invoke-interface {v7}, Ljava/sql/Connection;->close()V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v7, v5

    :goto_1
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/sql/Connection;->close()V

    :cond_9
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private scavenge()V
    .locals 15

    const-string v0, "Scavenge sweep ended at "

    .line 768
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 771
    :try_start_0
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scavenge sweep started at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    :cond_0
    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_7

    .line 775
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    const/4 v4, 0x1

    .line 776
    invoke-interface {v3, v4}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 778
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectBoundedExpiredSessions:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    .line 779
    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    iget-wide v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    sub-long/2addr v8, v10

    .line 780
    iget-wide v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 781
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 782
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Searching for sessions expired between "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v2, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    :cond_1
    invoke-interface {v5, v4, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v8, 0x2

    .line 785
    invoke-interface {v5, v8, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 786
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    .line 787
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "sessionId"

    .line 789
    invoke-interface {v5, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 790
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Found expired sessionId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v2, [Ljava/lang/Object;

    invoke-interface {v9, v8, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 795
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    const-class v8, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v5, v8}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v5

    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 796
    array-length v9, v5

    if-ge v8, v9, :cond_5

    .line 799
    aget-object v9, v5, v8

    check-cast v9, Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v10, Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v9, :cond_4

    .line 802
    invoke-virtual {v9}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 803
    instance-of v10, v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    if-eqz v10, :cond_4

    .line 805
    check-cast v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v9, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->expire(Ljava/util/List;)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 811
    :cond_5
    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    const-wide/16 v10, 0x2

    iget-wide v12, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12, v13}, Ljava/lang/Long;->signum(J)I

    mul-long v12, v12, v10

    sub-long/2addr v8, v12

    cmp-long v1, v8, v6

    if-lez v1, :cond_7

    .line 814
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting old expired sessions expired before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteOldExpiredSessions:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 816
    invoke-interface {v1, v4, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 817
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v1

    .line 818
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows of old sessions expired before "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 832
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-eqz v3, :cond_b

    .line 837
    :try_start_2
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 841
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 824
    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 825
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Problem selecting expired sessions"

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 827
    :cond_9
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 832
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    if-eqz v3, :cond_b

    .line 837
    :try_start_4
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_b
    :goto_3
    return-void

    .line 831
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 832
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-eqz v3, :cond_d

    .line 837
    :try_start_5
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 841
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 842
    :cond_d
    :goto_5
    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method


# virtual methods
.method public addSession(Ljavax/servlet/http/HttpSession;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v0

    .line 378
    :try_start_0
    check-cast p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->insert(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 386
    :try_start_2
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem storing session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 521
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->initializeDatabase()V

    .line 522
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->prepareTables()V

    .line 523
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->cleanExpiredSessions()V

    .line 524
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->doStart()V

    .line 525
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scavenging interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getScavengeInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    const-string v2, "JDBCSessionScavenger"

    invoke-direct {v0, v2, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    .line 528
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getScavengeInterval()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->setScavengeInterval(J)V

    return-void
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 538
    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 544
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    .line 545
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 547
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->doStop()V

    return-void

    :catchall_0
    move-exception v0

    .line 545
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBlobType()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    return-object v0
.end method

.method public getClusterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 433
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionUrl()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getDatasourceName()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverClassName()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongType()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 0

    .line 444
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 445
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getScavengeInterval()J
    .locals 4

    .line 367
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public idInUse(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 456
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 458
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 461
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 470
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->exists(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception v1

    .line 474
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking inUse for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception p1

    .line 461
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public invalidateAll(Ljava/lang/String;)V
    .locals 5

    .line 487
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->removeSession(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    const-class v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 494
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 496
    aget-object v3, v1, v2

    check-cast v3, Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v4, Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v3, :cond_0

    .line 499
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 501
    instance-of v4, v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    if-eqz v4, :cond_0

    .line 503
    check-cast v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->invalidateSession(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v0

    .line 409
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing session id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 414
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->delete(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 418
    :try_start_2
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem removing session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 396
    :cond_0
    check-cast p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->removeSession(Ljava/lang/String;)V

    return-void
.end method

.method public setBlobType(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    return-void
.end method

.method public setDatasource(Ljavax/sql/DataSource;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    return-void
.end method

.method public setDatasourceName(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    return-void
.end method

.method public setDriverInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    return-void
.end method

.method public setDriverInfo(Ljava/sql/Driver;Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driver:Ljava/sql/Driver;

    .line 272
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    return-void
.end method

.method public setLongType(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    return-void
.end method

.method public setScavengeInterval(J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x3c

    .line 333
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    const-wide/16 v4, 0x3e8

    mul-long p1, p1, v4

    .line 336
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 340
    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    rem-long/2addr v6, v8

    cmp-long v8, v6, v0

    if-nez v8, :cond_1

    .line 342
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 344
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scavenging every "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-nez p1, :cond_5

    .line 348
    :cond_3
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-eqz p1, :cond_4

    .line 351
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 352
    :cond_4
    new-instance p1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V

    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    .line 360
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 361
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_0
    return-void
.end method
