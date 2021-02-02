.class public Lcom/samsung/multiscreen/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;,
        Lcom/samsung/multiscreen/Channel$OnErrorListener;,
        Lcom/samsung/multiscreen/Channel$OnMessageListener;,
        Lcom/samsung/multiscreen/Channel$OnReadyListener;,
        Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;,
        Lcom/samsung/multiscreen/Channel$OnClientConnectListener;,
        Lcom/samsung/multiscreen/Channel$OnDisconnectListener;,
        Lcom/samsung/multiscreen/Channel$OnConnectListener;
    }
.end annotation


# static fields
.field private static final CA_CRT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIIDhjCCAm6gAwIBAgIJAPm7naJvG91yMA0GCSqGSIb3DQEBCwUAMFcxCzAJBgNV\nBAYTAktSMRUwEwYDVQQKEwxTbWFydFZpZXdTREsxMTAvBgNVBAMTKFNtYXJ0Vmll\nd1NESyBSb290IENlcml0aWZpY2F0ZSBBdXRob3JpdHkwHhcNMTYwNzI5MDUzNDEw\nWhcNMzYwNzI5MDUzNDEwWjBXMQswCQYDVQQGEwJLUjEVMBMGA1UEChMMU21hcnRW\naWV3U0RLMTEwLwYDVQQDEyhTbWFydFZpZXdTREsgUm9vdCBDZXJpdGlmaWNhdGUg\nQXV0aG9yaXR5MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArtBcclIW\nEuObUkeTn+FW3m6Lm/YpwAOeABCtq6RKnBcq6jzEo3I433cSuVC2DrWGiiYi62Qm\niAzOHEtkvRctj+jEuK7ZKneKkxQ5261os0RsvWG7fONVb4m0ZRBydykgfu/PLwUB\nMWeiF3PB6w7YCzN1MJzb9EISFlhEcqMxDHgwGWHZYo/CTWtIwBVZ07mhdrCQaV2r\nLLJInA+4Wh9nXRO82qRnqYqFZfV7psIOW4MqfjWqNcKAHWWZ1gKrdZc9fPb2YVK4\nOIlaT3Qq9DOCveeU5T8d3MGEoiFnXt4Lp5656nI7MbkAsPEFFRHFkBK3o8CE1HLp\nsELQa6GBRe8WPQIDAQABo1UwUzASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQW\nBBRQyhCp74M+t2GwCiH3g3Aau0AX7DALBgNVHQ8EBAMCAQYwEQYJYIZIAYb4QgEB\nBAQDAgAHMA0GCSqGSIb3DQEBCwUAA4IBAQAVIEeJo4vGsKPZBoY19hCXZnqB6Qcm\nOnWZzAZ0am8OQHQ4/LbSJ+Vnxh7eFiLtPQwuSHJ1a95ODA7RlNgnpC8ymHsL5Wl5\nUKOq5jOs3Jfa0aG99H9TsFKBysXlsBHfaHX+8/AoZUJDOksNeQigj3n4wCdLEPvt\nUpI9qJEjuzXeKxVhwnDkc/AvOuSGUaPiSeCSxy+xpcyWCANc4uVXtOxJluQvy8aC\nm6l0yG3Ucg09yCIkPzKtzG/kAadDRrTOYi/x4ZECtdamHQxncEnb3D881veLc6+s\nztEvDx0F77vRtadpeBxNZKivG2kJrymuf47pGIS0FlC5+/5ieV54+1/d\n-----END CERTIFICATE-----"

.field private static final CLIENT_CONNECT_EVENT:Ljava/lang/String; = "ms.channel.clientConnect"

.field private static final CLIENT_DISCONNECT_EVENT:Ljava/lang/String; = "ms.channel.clientDisconnect"

.field private static final CONNECT_EVENT:Ljava/lang/String; = "ms.channel.connect"

.field private static final DISCONNECT_EVENT:Ljava/lang/String; = "ms.channel.disconnect"

.field private static final ERROR_EVENT:Ljava/lang/String; = "ms.error"

.field private static final HTTPS_PROTOCOL:Ljava/lang/String; = "https:"

.field private static final HTTP_PROTOCOL:Ljava/lang/String; = "http:"

.field private static final MULTICAST_PORT:Ljava/lang/String; = "8001"

.field private static final READY_EVENT:Ljava/lang/String; = "ms.channel.ready"

.field private static final ROUTE:Ljava/lang/String; = "channels"

.field private static final SECURE_PORT:Ljava/lang/String; = "8002"

.field private static final TAG:Ljava/lang/String; = "Channel"

.field private static final TLS_PROTOCOL:Ljava/lang/String; = "TLS"

.field private static lastPingReceived:J

.field private static random:Ljava/security/SecureRandom;


# instance fields
.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/multiscreen/Result;",
            ">;"
        }
    .end annotation
.end field

.field private clients:Lcom/samsung/multiscreen/Clients;

.field protected connected:Z

.field private final connectionHandler:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

.field private debug:Z

.field private disconnecting:Z

.field private final id:Ljava/lang/String;

.field private messageListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Channel$OnMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile onClientConnectListener:Lcom/samsung/multiscreen/Channel$OnClientConnectListener;

.field private volatile onClientDisconnectListener:Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;

.field private volatile onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

.field private volatile onDisconnectListener:Lcom/samsung/multiscreen/Channel$OnDisconnectListener;

.field private volatile onErrorListener:Lcom/samsung/multiscreen/Channel$OnErrorListener;

.field private onReadyListener:Lcom/samsung/multiscreen/Channel$OnReadyListener;

.field protected securityMode:Z

.field private service:Lcom/samsung/multiscreen/Service;

.field private final uri:Landroid/net/Uri;

.field private webSocket:Lcom/koushikdutta/async/http/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/samsung/multiscreen/Channel;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/samsung/multiscreen/Clients;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Clients;-><init>(Lcom/samsung/multiscreen/Channel;)V

    iput-object v0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->securityMode:Z

    .line 184
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/multiscreen/Channel;->messageListeners:Ljava/util/Map;

    .line 186
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/multiscreen/Channel;->callbacks:Ljava/util/Map;

    .line 194
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->disconnecting:Z

    .line 199
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->debug:Z

    .line 206
    new-instance v0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;-><init>(Lcom/samsung/multiscreen/Channel;)V

    iput-object v0, p0, Lcom/samsung/multiscreen/Channel;->connectionHandler:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    .line 135
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    .line 136
    iput-object p2, p0, Lcom/samsung/multiscreen/Channel;->uri:Landroid/net/Uri;

    .line 137
    iput-object p3, p0, Lcom/samsung/multiscreen/Channel;->id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/multiscreen/Channel;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/Channel;->getWebSocketConnectionURL(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Service;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnConnectListener;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Service;)Lcom/samsung/multiscreen/Service;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnClientConnectListener;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->onClientConnectListener:Lcom/samsung/multiscreen/Channel$OnClientConnectListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->onClientDisconnectListener:Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;

    return-object p0
.end method

.method static synthetic access$1400()J
    .locals 2

    .line 80
    sget-wide v0, Lcom/samsung/multiscreen/Channel;->lastPingReceived:J

    return-wide v0
.end method

.method static synthetic access$1402(J)J
    .locals 0

    .line 80
    sput-wide p0, Lcom/samsung/multiscreen/Channel;->lastPingReceived:J

    return-wide p0
.end method

.method static synthetic access$200(Lcom/samsung/multiscreen/Channel;)Lcom/koushikdutta/async/http/WebSocket;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/multiscreen/Channel;Lcom/koushikdutta/async/http/WebSocket;)Lcom/koushikdutta/async/http/WebSocket;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/multiscreen/Channel;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/samsung/multiscreen/Channel;->handleSocketClosedAndNotify()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->connectionHandler:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/multiscreen/Channel;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/samsung/multiscreen/Channel;->handleConnectMessage(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/multiscreen/Channel;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/samsung/multiscreen/Channel;->handleBinaryMessage(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnDisconnectListener;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->onDisconnectListener:Lcom/samsung/multiscreen/Channel$OnDisconnectListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnErrorListener;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->onErrorListener:Lcom/samsung/multiscreen/Channel$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Clients;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    return-object p0
.end method

.method static create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;)Lcom/samsung/multiscreen/Channel;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 793
    new-instance v0, Lcom/samsung/multiscreen/Channel;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/multiscreen/Channel;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0

    .line 791
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private createBinaryMessage(Ljava/lang/String;[B)[B
    .locals 3

    .line 798
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v1, v0, 0x2

    .line 800
    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-short v0, v0

    .line 803
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 806
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 809
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 811
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private emit(Lcom/samsung/multiscreen/Message;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->messageListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/Channel$OnMessageListener;

    .line 1143
    new-instance v2, Lcom/samsung/multiscreen/Channel$11;

    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/multiscreen/Channel$11;-><init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Channel$OnMessageListener;Lcom/samsung/multiscreen/Message;)V

    const-wide/16 v3, 0x5

    invoke-static {v2, v3, v4}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUiDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    return-void

    .line 1135
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private getWebSocketConnectionURL(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    .line 327
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->securityMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 328
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    .line 330
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 331
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto/16 :goto_c

    .line 334
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Channel;->getSecureURL(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    const-string v0, "X509"

    .line 338
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 339
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIIDhjCCAm6gAwIBAgIJAPm7naJvG91yMA0GCSqGSIb3DQEBCwUAMFcxCzAJBgNV\nBAYTAktSMRUwEwYDVQQKEwxTbWFydFZpZXdTREsxMTAvBgNVBAMTKFNtYXJ0Vmll\nd1NESyBSb290IENlcml0aWZpY2F0ZSBBdXRob3JpdHkwHhcNMTYwNzI5MDUzNDEw\nWhcNMzYwNzI5MDUzNDEwWjBXMQswCQYDVQQGEwJLUjEVMBMGA1UEChMMU21hcnRW\naWV3U0RLMTEwLwYDVQQDEyhTbWFydFZpZXdTREsgUm9vdCBDZXJpdGlmaWNhdGUg\nQXV0aG9yaXR5MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArtBcclIW\nEuObUkeTn+FW3m6Lm/YpwAOeABCtq6RKnBcq6jzEo3I433cSuVC2DrWGiiYi62Qm\niAzOHEtkvRctj+jEuK7ZKneKkxQ5261os0RsvWG7fONVb4m0ZRBydykgfu/PLwUB\nMWeiF3PB6w7YCzN1MJzb9EISFlhEcqMxDHgwGWHZYo/CTWtIwBVZ07mhdrCQaV2r\nLLJInA+4Wh9nXRO82qRnqYqFZfV7psIOW4MqfjWqNcKAHWWZ1gKrdZc9fPb2YVK4\nOIlaT3Qq9DOCveeU5T8d3MGEoiFnXt4Lp5656nI7MbkAsPEFFRHFkBK3o8CE1HLp\nsELQa6GBRe8WPQIDAQABo1UwUzASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQW\nBBRQyhCp74M+t2GwCiH3g3Aau0AX7DALBgNVHQ8EBAMCAQYwEQYJYIZIAYb4QgEB\nBAQDAgAHMA0GCSqGSIb3DQEBCwUAA4IBAQAVIEeJo4vGsKPZBoY19hCXZnqB6Qcm\nOnWZzAZ0am8OQHQ4/LbSJ+Vnxh7eFiLtPQwuSHJ1a95ODA7RlNgnpC8ymHsL5Wl5\nUKOq5jOs3Jfa0aG99H9TsFKBysXlsBHfaHX+8/AoZUJDOksNeQigj3n4wCdLEPvt\nUpI9qJEjuzXeKxVhwnDkc/AvOuSGUaPiSeCSxy+xpcyWCANc4uVXtOxJluQvy8aC\nm6l0yG3Ucg09yCIkPzKtzG/kAadDRrTOYi/x4ZECtdamHQxncEnb3D881veLc6+s\nztEvDx0F77vRtadpeBxNZKivG2kJrymuf47pGIS0FlC5+/5ieV54+1/d\n-----END CERTIFICATE-----"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v1

    .line 344
    :goto_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    .line 347
    :try_start_1
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 348
    :try_start_2
    invoke-virtual {v2, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v3, "ca"

    .line 349
    invoke-virtual {v2, v3, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v1

    .line 357
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v2, v1

    .line 355
    :goto_2
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v2, v1

    .line 353
    :goto_3
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v2, v1

    .line 351
    :goto_4
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 361
    :goto_5
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 364
    :try_start_3
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_b

    .line 365
    :try_start_4
    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_8

    :catch_9
    move-exception v2

    goto :goto_6

    :catch_a
    move-exception v2

    goto :goto_7

    :catch_b
    move-exception v2

    move-object v0, v1

    .line 369
    :goto_6
    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_8

    :catch_c
    move-exception v2

    move-object v0, v1

    .line 367
    :goto_7
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_8
    if-eqz v0, :cond_1

    :try_start_5
    const-string v2, "TLS"

    .line 376
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_f

    .line 377
    :try_start_6
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_d

    goto :goto_b

    :catch_d
    move-exception v1

    goto :goto_9

    :catch_e
    move-exception v1

    goto :goto_a

    :catch_f
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 381
    :goto_9
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_b

    :catch_10
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 379
    :goto_a
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 383
    :goto_b
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    .line 384
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    :cond_1
    :goto_c
    return-object p1
.end method

.method private handleBinaryMessage(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 817
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result p1

    .line 819
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(I)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->readString()Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 823
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 826
    :try_start_0
    invoke-static {p1}, Lcom/samsung/multiscreen/util/JSONUtil;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 828
    invoke-direct {p0, p1, v0}, Lcom/samsung/multiscreen/Channel;->handleMessage(Ljava/util/Map;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 830
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleBinaryMessage error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Channel"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleClientConnectMessage(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    .line 970
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 972
    invoke-static {p0, p1}, Lcom/samsung/multiscreen/Client;->create(Lcom/samsung/multiscreen/Channel;Ljava/util/Map;)Lcom/samsung/multiscreen/Client;

    move-result-object p1

    const/4 v0, 0x1

    .line 974
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->connected:Z

    .line 975
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Clients;->add(Lcom/samsung/multiscreen/Client;)V

    .line 977
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->onClientConnectListener:Lcom/samsung/multiscreen/Channel$OnClientConnectListener;

    if-eqz v0, :cond_0

    .line 978
    new-instance v0, Lcom/samsung/multiscreen/Channel$9;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Channel$9;-><init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Client;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private handleConnect(Ljava/lang/String;)V
    .locals 1

    .line 941
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Channel;->getCallback(Ljava/lang/String;)Lcom/samsung/multiscreen/Result;

    move-result-object p1

    .line 942
    new-instance v0, Lcom/samsung/multiscreen/Channel$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Channel$7;-><init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Result;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    .line 952
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

    if-eqz p1, :cond_0

    .line 953
    new-instance p1, Lcom/samsung/multiscreen/Channel$8;

    invoke-direct {p1, p0}, Lcom/samsung/multiscreen/Channel$8;-><init>(Lcom/samsung/multiscreen/Channel;)V

    invoke-static {p1}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private handleConnectMessage(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    .line 914
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "id"

    .line 917
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 920
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "clients"

    .line 921
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 922
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 923
    invoke-static {p0, v2}, Lcom/samsung/multiscreen/Client;->create(Lcom/samsung/multiscreen/Channel;Ljava/util/Map;)Lcom/samsung/multiscreen/Client;

    move-result-object v2

    .line 924
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    iget-boolean v3, p0, Lcom/samsung/multiscreen/Channel;->connected:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Client;->isHost()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/multiscreen/Channel;->connected:Z

    goto :goto_0

    .line 929
    :cond_2
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Clients;->reset()V

    .line 930
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {p1, v1}, Lcom/samsung/multiscreen/Clients;->add(Ljava/util/List;)V

    .line 931
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {p1, v0}, Lcom/samsung/multiscreen/Clients;->setMyClientId(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0}, Lcom/samsung/multiscreen/Channel;->isWebSocketOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 934
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->connectionHandler:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->startPing()V

    .line 937
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/Channel;->handleConnect(Ljava/lang/String;)V

    return-void
.end method

.method private handleErrorMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    .line 875
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v0, "message"

    .line 878
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 880
    invoke-static {p2}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/multiscreen/Channel;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V

    return-void
.end method

.method private handleMessage(Ljava/util/Map;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/multiscreen/Channel;->handleMessage(Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method private handleSocketClosedAndNotify()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel;->handleSocketClosed()V

    .line 599
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->onDisconnectListener:Lcom/samsung/multiscreen/Channel$OnDisconnectListener;

    if-eqz v1, :cond_0

    .line 600
    new-instance v1, Lcom/samsung/multiscreen/Channel$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/multiscreen/Channel$4;-><init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Client;)V

    invoke-static {v1}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private isWebSocketOpen()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private publishMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 6

    const-string v1, "ms.channel.emit"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 729
    invoke-direct/range {v0 .. v5}, Lcom/samsung/multiscreen/Channel;->publishMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V

    return-void
.end method

.method private publishMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 3

    .line 745
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel;->isDebug()Z

    move-result v0

    const-string v1, "Channel"

    if-eqz v0, :cond_1

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", payload size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    array-length v2, p5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_1
    invoke-direct {p0}, Lcom/samsung/multiscreen/Channel;->isWebSocketOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 751
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel;->isDebug()Z

    move-result p1

    const-string p2, "Not Connected"

    if-eqz p1, :cond_2

    .line 752
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_2
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p3, "ERROR_WEBSOCKET_DISCONNECTED"

    invoke-direct {p1, p3}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 756
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result p4

    int-to-long p4, p4

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p5, p1, p2}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/samsung/multiscreen/Channel;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V

    return-void

    .line 761
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 762
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "event"

    .line 763
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p3, :cond_5

    const-string p2, "data"

    .line 766
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p4, :cond_6

    const-string p2, "to"

    .line 769
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :cond_6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "method"

    .line 775
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "params"

    .line 776
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-static {p2}, Lcom/samsung/multiscreen/util/JSONUtil;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_7

    .line 782
    iget-object p2, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-direct {p0, p1, p5}, Lcom/samsung/multiscreen/Channel;->createBinaryMessage(Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/WebSocket;->send([B)V

    goto :goto_1

    .line 784
    :cond_7
    iget-object p2, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/WebSocket;->send(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addOnMessageListener(Ljava/lang/String;Lcom/samsung/multiscreen/Channel$OnMessageListener;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->messageListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1052
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->messageListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1045
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public connect()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->connect(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public connect(Landroid/net/Uri;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel;->getUID()Ljava/lang/String;

    move-result-object p2

    .line 479
    invoke-virtual {p0, p2, p3}, Lcom/samsung/multiscreen/Channel;->registerCallback(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    .line 481
    invoke-direct {p0}, Lcom/samsung/multiscreen/Channel;->isWebSocketOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p3, "ERROR_ALREADY_CONNECTED"

    invoke-direct {p1, p3}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Already Connected"

    invoke-static {v0, v1, p1, p3}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/multiscreen/Channel;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V

    return-void

    .line 486
    :cond_0
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/multiscreen/Channel$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/samsung/multiscreen/Channel$3;-><init>(Lcom/samsung/multiscreen/Channel;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method public connect(Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0, p1}, Lcom/samsung/multiscreen/Channel;->connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    iget-object v0, v0, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-static {}, Lcom/samsung/multiscreen/StandbyDeviceList;->getInstance()Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-static {}, Lcom/samsung/multiscreen/StandbyDeviceList;->getInstance()Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v0, v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->getMac(Lcom/samsung/multiscreen/Service;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/multiscreen/Channel$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/multiscreen/Channel$2;-><init>(Lcom/samsung/multiscreen/Channel;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/multiscreen/Service;->WakeOnWirelessAndConnect(Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 469
    :cond_2
    invoke-static {}, Lcom/samsung/multiscreen/StandbyDeviceList;->getInstance()Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 470
    invoke-static {}, Lcom/samsung/multiscreen/StandbyDeviceList;->getInstance()Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/multiscreen/StandbyDeviceList;->update(Lcom/samsung/multiscreen/Service;Ljava/lang/Boolean;)V

    .line 473
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Channel;->getChannelUri(Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/multiscreen/Channel;->getWebSocketConnectionURL(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/multiscreen/Channel;->connect(Landroid/net/Uri;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->disconnect(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public disconnect(Lcom/samsung/multiscreen/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel;->getUID()Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-virtual {p0, v0, p1}, Lcom/samsung/multiscreen/Channel;->registerCallback(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    .line 570
    invoke-direct {p0}, Lcom/samsung/multiscreen/Channel;->isWebSocketOpen()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Already Disconnected"

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 574
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/multiscreen/Channel;->disconnecting:Z

    if-eqz v3, :cond_1

    const-string v1, "Already Disconnecting"

    :cond_1
    if-eqz v1, :cond_2

    .line 579
    invoke-static {v1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/multiscreen/Channel;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 581
    iput-boolean v1, p0, Lcom/samsung/multiscreen/Channel;->disconnecting:Z

    .line 583
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/WebSocket;->close()V

    .line 584
    iput-object v2, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    .line 586
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->getCallback(Ljava/lang/String;)Lcom/samsung/multiscreen/Result;

    if-eqz p1, :cond_3

    .line 588
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected getCallback(Ljava/lang/String;)Lcom/samsung/multiscreen/Result;
    .locals 1

    if-eqz p1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/multiscreen/Result;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getChannelUri(Ljava/util/Map;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "channels"

    .line 251
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->id:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 255
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getClients()Lcom/samsung/multiscreen/Clients;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected getOnReadyListener()Lcom/samsung/multiscreen/Channel$OnReadyListener;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->onReadyListener:Lcom/samsung/multiscreen/Channel$OnReadyListener;

    return-object v0
.end method

.method getSecureURL(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 315
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http:"

    const-string v1, "https:"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "8001"

    const-string v1, "8002"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v0

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 317
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected getService()Lcom/samsung/multiscreen/Service;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    return-object v0
.end method

.method protected getUID()Ljava/lang/String;
    .locals 2

    .line 1168
    sget-object v0, Lcom/samsung/multiscreen/Channel;->random:Ljava/security/SecureRandom;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getWebSocket()Lcom/koushikdutta/async/http/WebSocket;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    return-object v0
.end method

.method protected handleClientDisconnectMessage(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    .line 992
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v0, "id"

    .line 995
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 997
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Clients;->get(Ljava/lang/String;)Lcom/samsung/multiscreen/Client;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1002
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Client;->isHost()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1003
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->connected:Z

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Clients;->remove(Lcom/samsung/multiscreen/Client;)V

    .line 1007
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->onClientDisconnectListener:Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;

    if-eqz v0, :cond_2

    .line 1008
    new-instance v0, Lcom/samsung/multiscreen/Channel$10;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Channel$10;-><init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Client;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method protected handleClientMessage(Ljava/util/Map;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)V"
        }
    .end annotation

    const-string v0, "event"

    .line 1023
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "data"

    .line 1026
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v0, "from"

    .line 1028
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1029
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Clients;->get(Ljava/lang/String;)Lcom/samsung/multiscreen/Client;

    move-result-object v5

    .line 1031
    new-instance p1, Lcom/samsung/multiscreen/Message;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/multiscreen/Message;-><init>(Lcom/samsung/multiscreen/Channel;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/multiscreen/Client;[B)V

    .line 1033
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/Channel;->emit(Lcom/samsung/multiscreen/Message;)V

    return-void
.end method

.method protected handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 885
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Channel;->getCallback(Ljava/lang/String;)Lcom/samsung/multiscreen/Result;

    move-result-object p1

    .line 887
    new-instance v0, Lcom/samsung/multiscreen/Channel$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/multiscreen/Channel$5;-><init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Result;Lcom/samsung/multiscreen/Error;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    .line 897
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->onErrorListener:Lcom/samsung/multiscreen/Channel$OnErrorListener;

    if-eqz p1, :cond_0

    .line 898
    new-instance p1, Lcom/samsung/multiscreen/Channel$6;

    invoke-direct {p1, p0, p2}, Lcom/samsung/multiscreen/Channel$6;-><init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Error;)V

    invoke-static {p1}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected handleMessage(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)V"
        }
    .end annotation

    const-string v0, "event"

    .line 841
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 843
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", payload size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    array-length v2, p3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Channel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "ms.error"

    .line 850
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 851
    invoke-direct {p0, p1, p2}, Lcom/samsung/multiscreen/Channel;->handleErrorMessage(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string p1, "ms.channel.clientConnect"

    .line 852
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 853
    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/Channel;->handleClientConnectMessage(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    const-string p1, "ms.channel.clientDisconnect"

    .line 854
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 855
    invoke-virtual {p0, p2}, Lcom/samsung/multiscreen/Channel;->handleClientDisconnectMessage(Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    const-string p1, "ms.channel.ready"

    .line 856
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 860
    invoke-virtual {p0, p2}, Lcom/samsung/multiscreen/Channel;->handleReadyMessage(Ljava/util/Map;)V

    goto :goto_1

    :cond_6
    const-string p1, "ms.channel.disconnect"

    .line 861
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 863
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel;->disconnect()V

    goto :goto_1

    .line 868
    :cond_7
    invoke-virtual {p0, p2, p3}, Lcom/samsung/multiscreen/Channel;->handleClientMessage(Ljava/util/Map;[B)V

    :goto_1
    return-void
.end method

.method protected handleReadyMessage(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected handleSocketClosed()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->connectionHandler:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->stopPing()V

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/samsung/multiscreen/Channel;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->connected:Z

    .line 619
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Clients;->reset()V

    .line 621
    iget-boolean v1, p0, Lcom/samsung/multiscreen/Channel;->disconnecting:Z

    if-eqz v1, :cond_0

    .line 622
    iput-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->disconnecting:Z

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 242
    invoke-direct {p0}, Lcom/samsung/multiscreen/Channel;->isWebSocketOpen()Z

    move-result v0

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->debug:Z

    return v0
.end method

.method public isSecurityMode()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Channel;->securityMode:Z

    return v0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "host"

    const/4 v1, 0x0

    .line 633
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/multiscreen/Channel;->publishMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/multiscreen/Client;)V
    .locals 1

    .line 678
    invoke-virtual {p3}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/multiscreen/Channel;->publishMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/multiscreen/Client;[B)V
    .locals 0

    .line 690
    invoke-virtual {p3}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/multiscreen/Channel;->publishMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 655
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/multiscreen/Channel;->publishMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[B)V
    .locals 0

    .line 667
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/multiscreen/Channel;->publishMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/multiscreen/Channel;->publish(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;[B)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Client;",
            ">;[B)V"
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/Client;

    .line 715
    invoke-virtual {v1}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 717
    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/multiscreen/Channel;->publishMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;[B)V
    .locals 1

    const-string v0, "host"

    .line 644
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/multiscreen/Channel;->publishMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V

    return-void
.end method

.method protected registerCallback(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    const/4 v0, 0x0

    .line 1102
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->setOnConnectListener(Lcom/samsung/multiscreen/Channel$OnConnectListener;)V

    .line 1103
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->setOnDisconnectListener(Lcom/samsung/multiscreen/Channel$OnDisconnectListener;)V

    .line 1104
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->setOnClientConnectListener(Lcom/samsung/multiscreen/Channel$OnClientConnectListener;)V

    .line 1105
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->setOnClientDisconnectListener(Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;)V

    .line 1106
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->setOnReadyListener(Lcom/samsung/multiscreen/Channel$OnReadyListener;)V

    .line 1107
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Channel;->setOnErrorListener(Lcom/samsung/multiscreen/Channel$OnErrorListener;)V

    .line 1108
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Channel;->removeOnMessageListeners()V

    return-void
.end method

.method public removeOnMessageListener(Ljava/lang/String;Lcom/samsung/multiscreen/Channel$OnMessageListener;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->messageListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 1086
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 1080
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public removeOnMessageListeners()V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->messageListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeOnMessageListeners(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->messageListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1069
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 1065
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setConnectionTimeout(I)V
    .locals 1

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    .line 1123
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->connectionHandler:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->stopPing()V

    goto :goto_0

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel;->connectionHandler:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->setPingTimeout(I)V

    .line 1127
    invoke-direct {p0}, Lcom/samsung/multiscreen/Channel;->isWebSocketOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1128
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->connectionHandler:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->startPing()V

    :cond_1
    :goto_0
    return-void

    .line 1121
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDebug(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/samsung/multiscreen/Channel;->debug:Z

    return-void
.end method

.method public setOnClientConnectListener(Lcom/samsung/multiscreen/Channel$OnClientConnectListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->onClientConnectListener:Lcom/samsung/multiscreen/Channel$OnClientConnectListener;

    return-void
.end method

.method public setOnClientDisconnectListener(Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->onClientDisconnectListener:Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;

    return-void
.end method

.method public setOnConnectListener(Lcom/samsung/multiscreen/Channel$OnConnectListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

    return-void
.end method

.method public setOnDisconnectListener(Lcom/samsung/multiscreen/Channel$OnDisconnectListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->onDisconnectListener:Lcom/samsung/multiscreen/Channel$OnDisconnectListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/multiscreen/Channel$OnErrorListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->onErrorListener:Lcom/samsung/multiscreen/Channel$OnErrorListener;

    return-void
.end method

.method public setOnReadyListener(Lcom/samsung/multiscreen/Channel$OnReadyListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel;->onReadyListener:Lcom/samsung/multiscreen/Channel$OnReadyListener;

    return-void
.end method

.method public setSecurityMode(ZLcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    new-instance v0, Lcom/samsung/multiscreen/Channel$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/multiscreen/Channel$1;-><init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Result;)V

    invoke-virtual {p1, v0}, Lcom/samsung/multiscreen/Service;->isSecurityModeSupported(Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 303
    iput-boolean p1, p0, Lcom/samsung/multiscreen/Channel;->securityMode:Z

    const/4 p1, 0x1

    .line 304
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel(service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->clients:Lcom/samsung/multiscreen/Clients;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/multiscreen/Channel;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", securityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/multiscreen/Channel;->securityMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onConnectListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->onConnectListener:Lcom/samsung/multiscreen/Channel$OnConnectListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onDisconnectListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->onDisconnectListener:Lcom/samsung/multiscreen/Channel$OnDisconnectListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onClientConnectListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->onClientConnectListener:Lcom/samsung/multiscreen/Channel$OnClientConnectListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onClientDisconnectListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->onClientDisconnectListener:Lcom/samsung/multiscreen/Channel$OnClientDisconnectListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onReadyListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->onReadyListener:Lcom/samsung/multiscreen/Channel$OnReadyListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onErrorListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel;->onErrorListener:Lcom/samsung/multiscreen/Channel$OnErrorListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
