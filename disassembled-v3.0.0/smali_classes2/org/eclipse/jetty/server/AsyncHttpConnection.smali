.class public Lorg/eclipse/jetty/server/AsyncHttpConnection;
.super Lorg/eclipse/jetty/server/AbstractHttpConnection;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final NO_PROGRESS_CLOSE:I

.field private static final NO_PROGRESS_INFO:I


# instance fields
.field private final _asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _readInterested:Z

.field private _total_no_progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.mortbay.jetty.NO_PROGRESS_INFO"

    const/16 v1, 0x64

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    const-string v0, "org.mortbay.jetty.NO_PROGRESS_CLOSE"

    const/16 v1, 0xc8

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    .line 43
    const-class v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 51
    check-cast p2, Lorg/eclipse/jetty/io/AsyncEndPoint;

    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "EndPoint making no progress: "

    const-string v3, "Closing EndPoint making no progress: "

    const-string v4, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const-string v5, "suspended {}"

    const-string v6, "org.eclipse.jetty.io.Connection"

    const-string v7, "Disabled read interest while writing response {}"

    const-string v8, " "

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 63
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 66
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, v11}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v12, v1

    const/4 v0, 0x1

    const/4 v13, 0x0

    :goto_0
    if-eqz v0, :cond_15

    if-ne v12, v1, :cond_15

    const/16 v14, 0x65

    .line 76
    :try_start_1
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isDispatchable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->handleRequest()V

    goto :goto_1

    .line 82
    :cond_0
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->parseAvailable()Z

    move-result v0
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v15, 0x0

    .line 86
    :goto_2
    :try_start_2
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v15, 0x1

    .line 91
    :cond_2
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 94
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z

    move-result v0
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_3

    const/4 v15, 0x1

    :cond_3
    or-int/2addr v13, v15

    .line 112
    :try_start_3
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v0

    .line 113
    iget-object v9, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v9}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v9

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    if-eqz v0, :cond_8

    if-eqz v9, :cond_7

    .line 123
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    if-ne v0, v14, :cond_5

    .line 125
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Connection;

    if-eqz v0, :cond_5

    move-object v12, v0

    .line 130
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_6

    .line 135
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v0, v4, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    :cond_6
    const/4 v15, 0x1

    goto :goto_4

    .line 144
    :cond_7
    iput-boolean v11, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v14, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v14, v9, v11

    invoke-interface {v0, v7, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    if-nez v16, :cond_9

    .line 149
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v1, v9, v11

    invoke-interface {v0, v5, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x0

    :cond_9
    move v0, v15

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move v9, v13

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    .line 99
    :goto_5
    :try_start_4
    sget-object v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 101
    sget-object v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v14, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    sget-object v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fields="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v14, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 106
    :cond_a
    :try_start_5
    iget-object v9, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v10

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-interface {v9, v10, v0, v14, v15}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    or-int/lit8 v9, v13, 0x1

    .line 112
    :try_start_6
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v0

    .line 113
    iget-object v10, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v10}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v10

    if-eqz v0, :cond_b

    if-eqz v10, :cond_b

    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    :goto_6
    if-eqz v0, :cond_e

    if-eqz v10, :cond_d

    .line 123
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    const/16 v10, 0x65

    if-ne v0, v10, :cond_c

    .line 125
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Connection;

    if-eqz v0, :cond_c

    move-object v12, v0

    .line 130
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_e

    .line 135
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v0, v4, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    goto :goto_7

    .line 144
    :cond_d
    iput-boolean v11, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v10, v14, v11

    invoke-interface {v0, v7, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_7
    if-nez v13, :cond_f

    .line 149
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v1, v13, v11

    invoke-interface {v0, v5, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    const/4 v0, 0x1

    :goto_8
    move v13, v9

    :goto_9
    const/4 v10, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    const/4 v15, 0x1

    goto :goto_a

    :catchall_3
    move-exception v0

    :goto_a
    or-int v9, v13, v15

    .line 112
    iget-object v10, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v10}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v10

    .line 113
    iget-object v12, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v12}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v12

    if-eqz v10, :cond_10

    if-eqz v12, :cond_10

    const/4 v13, 0x1

    goto :goto_b

    :cond_10
    const/4 v13, 0x0

    :goto_b
    if-eqz v10, :cond_13

    if-eqz v12, :cond_12

    .line 123
    iget-object v7, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v7

    const/16 v10, 0x65

    if-ne v7, v10, :cond_11

    .line 125
    iget-object v7, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v7, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/io/Connection;

    .line 130
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v6, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v6

    if-nez v6, :cond_13

    .line 135
    sget-object v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-interface {v6, v4, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    goto :goto_c

    .line 144
    :cond_12
    iput-boolean v11, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v4, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v6, v10, v11

    invoke-interface {v4, v7, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_c
    if-nez v13, :cond_14

    .line 149
    iget-object v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 153
    sget-object v4, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v11

    invoke-interface {v4, v5, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_14
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    :goto_d
    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_15
    const/4 v4, 0x0

    .line 161
    invoke-static {v4}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 164
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_16

    .line 167
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 168
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 171
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    goto :goto_e

    :cond_16
    const/4 v4, 0x1

    :goto_e
    if-eqz v13, :cond_17

    .line 176
    iput v11, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    goto/16 :goto_f

    .line 179
    :cond_17
    iget v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/2addr v0, v4

    iput v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 180
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v0, :cond_19

    iget v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    rem-int v0, v4, v0

    if-nez v0, :cond_19

    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_18

    if-ge v4, v0, :cond_19

    .line 181
    :cond_18
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v11, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_19
    sget v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v0, :cond_1a

    iget v2, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    if-ne v2, v0, :cond_1a

    .line 184
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_1a

    .line 186
    iget-object v0, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_1a
    :goto_f
    return-object v12

    :catchall_5
    move-exception v0

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 161
    :goto_10
    invoke-static {v4}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 164
    iget-object v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 167
    iget-object v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 168
    iget-object v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 171
    iget-object v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    goto :goto_11

    :cond_1b
    const/4 v5, 0x1

    :goto_11
    if-nez v9, :cond_1e

    .line 179
    iget v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/2addr v4, v5

    iput v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 180
    sget v4, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v4, :cond_1d

    iget v5, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    rem-int v4, v5, v4

    if-nez v4, :cond_1d

    sget v4, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v4, :cond_1c

    if-ge v5, v4, :cond_1d

    .line 181
    :cond_1c
    sget-object v4, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_1d
    sget v2, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v2, :cond_1f

    iget v4, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    if-ne v4, v2, :cond_1f

    .line 184
    sget-object v2, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v2, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v2, v2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v2, :cond_1f

    .line 186
    iget-object v2, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/channels/ByteChannel;->close()V

    goto :goto_12

    .line 176
    :cond_1e
    iput v11, v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 186
    :cond_1f
    :goto_12
    goto :goto_14

    :goto_13
    throw v0

    :goto_14
    goto :goto_13
.end method

.method public isSuspended()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onInputShutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Parser;->setPersistent(Z)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 211
    sget-object v1, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Enabled read interest {}"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->reset()V

    return-void
.end method
