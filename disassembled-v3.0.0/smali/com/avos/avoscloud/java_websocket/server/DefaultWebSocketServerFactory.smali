.class public Lcom/avos/avoscloud/java_websocket/server/DefaultWebSocketServerFactory;
.super Ljava/lang/Object;
.source "DefaultWebSocketServerFactory.java"

# interfaces
.implements Lcom/avos/avoscloud/java_websocket/server/WebSocketServer$WebSocketServerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocket;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/server/DefaultWebSocketServerFactory;->createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocket;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/server/DefaultWebSocketServerFactory;->createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;
    .locals 0

    .line 16
    new-instance p3, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-direct {p3, p1, p2}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Lcom/avos/avoscloud/java_websocket/drafts/Draft;)V

    return-object p3
.end method

.method public createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")",
            "Lcom/avos/avoscloud/java_websocket/WebSocketImpl;"
        }
    .end annotation

    .line 20
    new-instance p3, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-direct {p3, p1, p2}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Ljava/util/List;)V

    return-object p3
.end method

.method public bridge synthetic wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/java_websocket/server/DefaultWebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .locals 0

    return-object p1
.end method
