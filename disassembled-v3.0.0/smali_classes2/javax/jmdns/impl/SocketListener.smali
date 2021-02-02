.class Ljavax/jmdns/impl/SocketListener;
.super Ljava/lang/Thread;
.source "SocketListener.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Ljavax/jmdns/impl/SocketListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/SocketListener;->setDaemon(Z)V

    .line 31
    iput-object p1, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-void
.end method


# virtual methods
.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .line 84
    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public run()V
    .locals 8

    const-string v0, ".run() exception "

    const/16 v1, 0x230c

    .line 37
    :try_start_0
    new-array v1, v1, [B

    .line 38
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 39
    :cond_0
    :goto_0
    iget-object v3, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 40
    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 41
    iget-object v3, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getSocket()Ljava/net/MulticastSocket;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 42
    iget-object v3, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 46
    :cond_1
    :try_start_1
    iget-object v3, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/jmdns/impl/HostInfo;->shouldIgnorePacket(Ljava/net/DatagramPacket;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    new-instance v3, Ljavax/jmdns/impl/DNSIncoming;

    invoke-direct {v3, v2}, Ljavax/jmdns/impl/DNSIncoming;-><init>(Ljava/net/DatagramPacket;)V

    .line 51
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSIncoming;->isValidResponseCode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 52
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".run() JmDNS in:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 55
    :cond_3
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 56
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    sget v5, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    if-eq v4, v5, :cond_4

    .line 57
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    .line 59
    :cond_4
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    iget-object v5, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v5}, Ljavax/jmdns/impl/JmDNSImpl;->getGroup()Ljava/net/InetAddress;

    move-result-object v5

    sget v6, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    invoke-virtual {v4, v3, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    goto/16 :goto_0

    .line 61
    :cond_5
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4, v3}, Ljavax/jmdns/impl/JmDNSImpl;->handleResponse(Ljavax/jmdns/impl/DNSIncoming;)V

    goto/16 :goto_0

    .line 64
    :cond_6
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".run() JmDNS in message with error code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 69
    :try_start_2
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 73
    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosing()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 74
    sget-object v2, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    .line 78
    :cond_7
    :goto_1
    sget-object v0, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    sget-object v0, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".run() exiting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_8
    return-void
.end method
