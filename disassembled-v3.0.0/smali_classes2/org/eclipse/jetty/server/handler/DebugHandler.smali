.class public Lorg/eclipse/jetty/server/handler/DebugHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "DebugHandler.java"


# instance fields
.field private _date:Lorg/eclipse/jetty/util/DateCache;

.field private _out:Ljava/io/OutputStream;

.field private _print:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 45
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "HH:mm:ss"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    const/4 v1, 0x1

    const-string v2, "./logs/yyyy_mm_dd.debug.log"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    .line 129
    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    .line 130
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, ""

    const-string v5, " SUSPEND"

    const-string v6, ".0"

    const-string v7, ".00"

    const-string v8, "."

    const-string v9, " "

    .line 57
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v10

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    .line 59
    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "org.eclipse.jetty.thread.name"

    .line 63
    invoke-interface {v3, v13}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v14, ":"

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "://"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getLocalAddr()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getLocalPort()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getUri()Lorg/eclipse/jetty/http/HttpURI;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    const/4 v15, 0x1

    :goto_0
    move-object/from16 v16, v6

    move-object v6, v0

    const/16 v17, 0x0

    move-object/from16 v18, v7

    .line 72
    :try_start_0
    iget-object v0, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v7, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v7

    if-eqz v15, :cond_3

    .line 76
    iget-object v15, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v19, v8

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v20, v4

    const/16 v4, 0x63

    if-le v7, v4, :cond_1

    move-object/from16 v0, v19

    goto :goto_1

    :cond_1
    const/16 v4, 0x9

    if-le v7, v4, :cond_2

    move-object/from16 v0, v16

    goto :goto_1

    :cond_2
    move-object/from16 v0, v18

    :goto_1
    :try_start_2
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " RETRY"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/servlet/ServletException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v7, v17

    move-object/from16 v4, v20

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    goto/16 :goto_b

    :cond_3
    move-object/from16 v20, v4

    move-object/from16 v19, v8

    .line 78
    :try_start_3
    iget-object v4, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x63

    if-le v7, v15, :cond_4

    move-object/from16 v0, v19

    goto :goto_2

    :cond_4
    const/16 v15, 0x9

    if-le v7, v15, :cond_5

    move-object/from16 v0, v16

    goto :goto_2

    :cond_5
    move-object/from16 v0, v18

    :goto_2
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Cookie"

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "User-Agent"

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    :goto_3
    invoke-virtual {v11, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/handler/DebugHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    invoke-interface {v0, v4, v2, v3, v7}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/servlet/ServletException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    invoke-virtual {v11, v12}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v0, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v4, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v4

    .line 108
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 111
    invoke-interface {v3, v13, v6}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v2, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x63

    if-le v4, v7, :cond_6

    move-object/from16 v0, v19

    goto :goto_4

    :cond_6
    const/16 v7, 0x9

    if-le v4, v7, :cond_7

    move-object/from16 v0, v16

    goto :goto_4

    :cond_7
    move-object/from16 v0, v18

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 115
    :cond_8
    iget-object v2, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x63

    if-le v4, v5, :cond_9

    move-object/from16 v0, v19

    goto :goto_5

    :cond_9
    const/16 v5, 0x9

    if-le v4, v5, :cond_a

    move-object/from16 v0, v16

    goto :goto_5

    :cond_a
    move-object/from16 v0, v18

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/Response;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v19, v8

    :goto_7
    move-object/from16 v7, v17

    goto :goto_c

    :catch_8
    move-exception v0

    move-object/from16 v19, v8

    .line 100
    :goto_8
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v17

    .line 101
    throw v0

    :catch_9
    move-exception v0

    move-object/from16 v19, v8

    .line 95
    :goto_9
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v17

    .line 96
    throw v0

    :catch_a
    move-exception v0

    move-object/from16 v19, v8

    .line 90
    :goto_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/servlet/ServletException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 91
    throw v0

    :catch_b
    move-exception v0

    move-object/from16 v19, v8

    .line 85
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    .line 86
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 105
    :goto_c
    invoke-virtual {v11, v12}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v8, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v8

    .line 107
    iget-object v11, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v11

    .line 108
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 111
    invoke-interface {v3, v13, v6}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v2, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x63

    if-gt v11, v4, :cond_c

    const/16 v4, 0x9

    if-le v11, v4, :cond_b

    move-object/from16 v4, v16

    goto :goto_d

    :cond_b
    move-object/from16 v4, v18

    goto :goto_d

    :cond_c
    move-object/from16 v4, v19

    :goto_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 115
    :cond_d
    iget-object v2, v1, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x63

    if-le v11, v5, :cond_e

    move-object/from16 v5, v19

    goto :goto_e

    :cond_e
    const/16 v5, 0x9

    if-le v11, v5, :cond_f

    move-object/from16 v5, v16

    goto :goto_e

    :cond_f
    move-object/from16 v5, v18

    :goto_e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v7, :cond_10

    goto :goto_f

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/Response;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :goto_10
    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    return-void
.end method
