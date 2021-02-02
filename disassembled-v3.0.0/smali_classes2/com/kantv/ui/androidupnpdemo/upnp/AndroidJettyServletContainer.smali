.class public Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;
.super Ljava/lang/Object;
.source "AndroidJettyServletContainer.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;


# static fields
.field public static final INSTANCE:Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected server:Lorg/eclipse/jetty/server/Server;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    .line 47
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;-><init>()V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->resetServer()V

    return-void
.end method

.method public static isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 1

    const-string v0, " "

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;[B)Z

    move-result p0

    return p0
.end method

.method public static isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;[B)Z
    .locals 3

    .line 178
    check-cast p0, Lorg/eclipse/jetty/server/Request;

    .line 179
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jetty/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/Socket;

    .line 181
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking if client connection is still open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 184
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 185
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    nop

    .line 188
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection has been closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized addConnector(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->setHost(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/server/bio/SocketConnector;->setPort(I)V

    .line 74
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->open()V

    .line 77
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Server;->addConnector(Lorg/eclipse/jetty/server/Connector;)V

    .line 80
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 82
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    :try_start_2
    sget-object p2, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t start connector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 85
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getLocalPort()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)V
    .locals 3

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering UPnP servlet under context path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(I)V

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 126
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 127
    :cond_1
    new-instance p1, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Ljavax/servlet/Servlet;)V

    const-string p2, "/*"

    .line 128
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Server;->setHandler(Lorg/eclipse/jetty/server/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeConnector(Ljava/lang/String;I)V
    .locals 5

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 98
    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getLocalPort()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 99
    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->isStarting()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 101
    :cond_1
    :try_start_2
    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/server/Server;->removeConnector(Lorg/eclipse/jetty/server/Connector;)V

    .line 108
    array-length p1, v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 109
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    const-string p2, "No more connectors, stopping Jetty server"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->stopIfRunning()V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 103
    sget-object p2, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t stop connector: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 104
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected resetServer()V
    .locals 2

    .line 161
    new-instance v0, Lorg/eclipse/jetty/server/Server;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/Server;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    .line 162
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->setGracefulShutdown(I)V

    return-void
.end method

.method public declared-synchronized setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer$1;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer$1;-><init>(Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startIfNotRunning()V
    .locals 4

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting Jetty server... "

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    :try_start_2
    sget-object v1, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t start Jetty server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopIfRunning()V
    .locals 4

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStopping()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    const-string v1, "Stopping Jetty server..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->resetServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    :try_start_3
    sget-object v1, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t stop Jetty server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/upnp/AndroidJettyServletContainer;->resetServer()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
