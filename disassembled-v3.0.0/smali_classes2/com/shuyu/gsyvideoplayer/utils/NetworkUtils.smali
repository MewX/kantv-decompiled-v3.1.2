.class public Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final NETWORK_2G:I = 0x2

.field public static final NETWORK_3G:I = 0x3

.field public static final NETWORK_4G:I = 0x4

.field public static final NETWORK_NO:I = -0x1

.field private static final NETWORK_TYPE_GSM:I = 0x10

.field private static final NETWORK_TYPE_IWLAN:I = 0x12

.field private static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_UNKNOWN:I = 0x5

.field public static final NETWORK_WIFI:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 59
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getNetWorkType(Landroid/content/Context;)I
    .locals 3

    .line 157
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 158
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    .line 163
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    .line 193
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TD-SCDMA"

    .line 194
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WCDMA"

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CDMA2000"

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x4

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_2
    const/4 p0, 0x2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :cond_3
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetWorkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 226
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "NETWORK_UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "NETWORK_4G"

    return-object p0

    :cond_1
    const-string p0, "NETWORK_3G"

    return-object p0

    :cond_2
    const-string p0, "NETWORK_2G"

    return-object p0

    :cond_3
    const-string p0, "NETWORK_WIFI"

    return-object p0

    :cond_4
    const-string p0, "NETWORK_NO"

    return-object p0
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPhoneType(Landroid/content/Context;)I
    .locals 1

    const-string v0, "phone"

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static is4G(Landroid/content/Context;)Z
    .locals 1

    .line 91
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static openWirelessSettings(Landroid/content/Context;)V
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
