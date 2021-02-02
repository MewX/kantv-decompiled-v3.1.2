.class public Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;
.super Ljava/lang/Object;
.source "NetworkTopologyDiscoveryImpl.java"

# interfaces
.implements Ljavax/jmdns/NetworkTopologyDiscovery;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final _isUp:Ljava/lang/reflect/Method;

.field private final _supportsMulticast:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    :try_start_0
    const-class v1, Ljava/net/NetworkInterface;

    const-string v2, "isUp"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 42
    :goto_0
    iput-object v1, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;

    .line 45
    :try_start_1
    const-class v1, Ljava/net/NetworkInterface;

    const-string v2, "supportsMulticast"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :catch_1
    iput-object v0, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getInetAddresses()[Ljava/net/InetAddress;
    .locals 8

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 62
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 64
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 66
    sget-object v5, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    sget-object v5, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found NetworkInterface/InetAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 69
    :cond_2
    invoke-virtual {p0, v2, v4}, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->useInetAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 75
    sget-object v2, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while fetching network interfaces addresses: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 77
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public lockInetAddress(Ljava/net/InetAddress;)V
    .locals 0

    return-void
.end method

.method public unlockInetAddress(Ljava/net/InetAddress;)V
    .locals 0

    return-void
.end method

.method public useInetAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z
    .locals 3

    const/4 p2, 0x0

    .line 87
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_isUp:Ljava/lang/reflect/Method;

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    return p2

    .line 96
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1

    .line 98
    :try_start_3
    iget-object v0, p0, Ljavax/jmdns/impl/NetworkTopologyDiscoveryImpl;->_supportsMulticast:Ljava/lang/reflect/Method;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez p1, :cond_1

    return p2

    :catch_1
    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_2
    return p2
.end method
