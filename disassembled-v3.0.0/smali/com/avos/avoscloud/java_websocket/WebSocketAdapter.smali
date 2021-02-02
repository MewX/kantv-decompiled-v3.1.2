.class public abstract Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;
.super Ljava/lang/Object;
.source "WebSocketAdapter.java"

# interfaces
.implements Lcom/avos/avoscloud/java_websocket/WebSocketListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashPolicy(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Lcom/avos/avoscloud/java_websocket/WebSocket;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "\" /></cross-domain-policy>\u0000"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;

    const-string v0, "socket not bound"

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onWebsocketHandshakeReceivedAsClient(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 28
    new-instance p1, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Server;

    invoke-direct {p1}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Server;-><init>()V

    return-object p1
.end method

.method public onWebsocketHandshakeSentAsClient(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public onWebsocketPing(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;

    invoke-direct {v0, p2}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;-><init>(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    .line 62
    sget-object p2, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;->setOptcode(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)V

    .line 63
    invoke-interface {p1, v0}, Lcom/avos/avoscloud/java_websocket/WebSocket;->sendFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public onWebsocketPong(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method
