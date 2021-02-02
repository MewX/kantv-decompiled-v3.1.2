.class public Lorg/nanohttpd/protocols/http/ClientHandler;
.super Ljava/lang/Object;
.source "ClientHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field private final httpd:Lorg/nanohttpd/protocols/http/NanoHTTPD;

.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/nanohttpd/protocols/http/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->httpd:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    .line 58
    iput-object p2, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 59
    iput-object p3, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->acceptSocket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 71
    :try_start_0
    iget-object v1, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->httpd:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    invoke-virtual {v1}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->getTempFileManagerFactory()Lorg/nanohttpd/util/IFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/nanohttpd/util/IFactory;->create()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/nanohttpd/protocols/http/tempfiles/ITempFileManager;

    .line 73
    new-instance v1, Lorg/nanohttpd/protocols/http/HTTPSession;

    iget-object v3, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->httpd:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    iget-object v5, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lorg/nanohttpd/protocols/http/HTTPSession;-><init>(Lorg/nanohttpd/protocols/http/NanoHTTPD;Lorg/nanohttpd/protocols/http/tempfiles/ITempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 74
    :goto_0
    iget-object v2, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {v1}, Lorg/nanohttpd/protocols/http/HTTPSession;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 85
    :try_start_1
    instance-of v2, v1, Ljava/net/SocketException;

    if-eqz v2, :cond_0

    const-string v2, "NanoHttpd Shutdown"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_1

    .line 86
    sget-object v2, Lorg/nanohttpd/protocols/http/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Communication with the client broken, or an bug in the handler code"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_1
    invoke-static {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->httpd:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    iget-object v0, v0, Lorg/nanohttpd/protocols/http/NanoHTTPD;->asyncRunner:Lorg/nanohttpd/protocols/http/threading/IAsyncRunner;

    invoke-interface {v0, p0}, Lorg/nanohttpd/protocols/http/threading/IAsyncRunner;->closed(Lorg/nanohttpd/protocols/http/ClientHandler;)V

    return-void

    .line 89
    :goto_1
    invoke-static {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/nanohttpd/protocols/http/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/ClientHandler;->httpd:Lorg/nanohttpd/protocols/http/NanoHTTPD;

    iget-object v0, v0, Lorg/nanohttpd/protocols/http/NanoHTTPD;->asyncRunner:Lorg/nanohttpd/protocols/http/threading/IAsyncRunner;

    invoke-interface {v0, p0}, Lorg/nanohttpd/protocols/http/threading/IAsyncRunner;->closed(Lorg/nanohttpd/protocols/http/ClientHandler;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
