.class public Lcom/samsung/multiscreen/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireMulticastLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 1

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 105
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p0

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 107
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    return-object p0
.end method

.method public static getDeviceIpAddress(Landroid/content/Context;)Ljava/net/InetAddress;
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/samsung/multiscreen/util/NetUtil;->getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 77
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 80
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :cond_1
    int-to-long v1, p0

    .line 84
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_0
    return-void
.end method
