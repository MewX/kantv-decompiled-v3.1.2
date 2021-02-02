.class public Lcom/samsung/multiscreen/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/Service$SecureModeState;
    }
.end annotation


# static fields
.field private static final DEFAULT_WOW_TIMEOUT_VALUE:I = 0xea60

.field private static final ENDPOINT_PROPERTY:Ljava/lang/String; = "se"

.field private static final ID_PROPERTY:Ljava/lang/String; = "id"

.field private static final NAME_PROPERTY:Ljava/lang/String; = "fn"

.field private static final PROPERTY_DEVICE:Ljava/lang/String; = "device"

.field private static final PROPERTY_DUID:Ljava/lang/String; = "duid"

.field private static final PROPERTY_ISSUPPORT:Ljava/lang/String; = "isSupport"

.field private static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field private static final PROPERTY_TYPE:Ljava/lang/String; = "type"

.field private static final PROPERTY_URI:Ljava/lang/String; = "uri"

.field private static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field public static final SUPPORT_DMP:Ljava/lang/String; = "DMP_available"

.field private static final TAG:Ljava/lang/String; = "Service"

.field private static final TV_YEAR_DMP_SUPPORT:I = 0xf

.field private static final TV_YEAR_SSL_SUPPORT:I = 0xf

.field private static final TYPE_PROPERTY:Ljava/lang/String; = "md"

.field public static final TYPE_SMART_TV:Ljava/lang/String; = "Samsung SmartTV"

.field public static final TYPE_SPEAKER:Ljava/lang/String; = "Samsung Speaker"

.field private static final VERSION_PROPERTY:Ljava/lang/String; = "ve"

.field private static isWoWAndConnectStarted:Z = false


# instance fields
.field private final id:Ljava/lang/String;

.field private isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

.field final isStandbyService:Ljava/lang/Boolean;

.field private final isSupport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/multiscreen/Service;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    sget-object v0, Lcom/samsung/multiscreen/Service$SecureModeState;->Unknown:Lcom/samsung/multiscreen/Service$SecureModeState;

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    .line 118
    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->version:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->name:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->type:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    .line 123
    iget-object v0, p1, Lcom/samsung/multiscreen/Service;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    .line 125
    iget-object p1, p1, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    iput-object p1, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    sget-object v0, Lcom/samsung/multiscreen/Service$SecureModeState;->Unknown:Lcom/samsung/multiscreen/Service$SecureModeState;

    iput-object v0, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    .line 70
    iput-object p1, p0, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/multiscreen/Service;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/multiscreen/Service;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/multiscreen/Service;->type:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    iput-object p6, p0, Lcom/samsung/multiscreen/Service;->uri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    return-void
.end method

.method public static WakeOnWirelessAndConnect(Ljava/lang/String;Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Service;",
            ">;)V"
        }
    .end annotation

    .line 458
    sget-boolean v0, Lcom/samsung/multiscreen/Service;->isWoWAndConnectStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 460
    sput-boolean v0, Lcom/samsung/multiscreen/Service;->isWoWAndConnectStarted:Z

    if-eqz p0, :cond_1

    .line 464
    invoke-static {p0}, Lcom/samsung/multiscreen/Service;->WakeOnWirelessLan(Ljava/lang/String;)V

    .line 465
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 466
    invoke-static {p1, p3}, Lcom/samsung/multiscreen/Service;->WakeUpAndConnect(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    .line 467
    new-instance p1, Lcom/samsung/multiscreen/Service$6;

    invoke-direct {p1}, Lcom/samsung/multiscreen/Service$6;-><init>()V

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 462
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static WakeOnWirelessAndConnect(Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Service;",
            ">;)V"
        }
    .end annotation

    const v0, 0xea60

    .line 446
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/multiscreen/Service;->WakeOnWirelessAndConnect(Ljava/lang/String;Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public static WakeOnWirelessLan(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x78

    .line 387
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "FF:FF:FF:FF:FF:FF"

    .line 388
    invoke-static {v1}, Lcom/samsung/multiscreen/Service;->convertMacAddrToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 392
    invoke-static {p0}, Lcom/samsung/multiscreen/Service;->convertMacAddrToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "00:00:00:00:00:00"

    .line 396
    invoke-static {p0}, Lcom/samsung/multiscreen/Service;->convertMacAddrToBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-string p0, "SECWOW"

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 398
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-byte p0, v1

    .line 399
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 409
    new-instance v0, Lcom/samsung/multiscreen/Service$5;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Service$5;-><init>([B)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static WakeUpAndConnect(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Service;",
            ">;)V"
        }
    .end annotation

    .line 483
    new-instance v0, Lcom/samsung/multiscreen/Service$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Service$7;-><init>(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    invoke-static {p0, v0}, Lcom/samsung/multiscreen/Service;->getByURI(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;)Lcom/samsung/multiscreen/Service;
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/samsung/multiscreen/Service;->create(Ljava/util/Map;)Lcom/samsung/multiscreen/Service;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/multiscreen/Service;Lcom/samsung/multiscreen/Service$SecureModeState;)Lcom/samsung/multiscreen/Service$SecureModeState;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/samsung/multiscreen/Service;->isWoWAndConnectStarted:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 72
    sput-boolean p0, Lcom/samsung/multiscreen/Service;->isWoWAndConnectStarted:Z

    return p0
.end method

.method static synthetic access$300(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 72
    invoke-static {p0, p1}, Lcom/samsung/multiscreen/Service;->WakeUpAndConnect(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method private static convertMacAddrToBytes(Ljava/lang/String;)[B
    .locals 5

    const-string v0, ":"

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 513
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 515
    aget-object v3, p0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 516
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static create(Ljava/util/Map;)Lcom/samsung/multiscreen/Service;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Service;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "id"

    .line 712
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "version"

    .line 713
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "name"

    .line 714
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "type"

    .line 715
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "isSupport"

    .line 716
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/multiscreen/util/JSONUtil;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string v0, "uri"

    .line 717
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 719
    new-instance p0, Lcom/samsung/multiscreen/Service;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/multiscreen/Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/Uri;Ljava/lang/Boolean;)V

    return-object p0

    .line 709
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static create(Ljavax/jmdns/ServiceInfo;)Lcom/samsung/multiscreen/Service;
    .locals 9

    if-eqz p0, :cond_0

    const-string v0, "id"

    .line 696
    invoke-virtual {p0, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ve"

    .line 697
    invoke-virtual {p0, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "fn"

    .line 698
    invoke-virtual {p0, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "md"

    .line 699
    invoke-virtual {p0, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "isSupport"

    .line 700
    invoke-virtual {p0, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/multiscreen/util/JSONUtil;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string v0, "se"

    .line 701
    invoke-virtual {p0, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 703
    new-instance p0, Lcom/samsung/multiscreen/Service;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/multiscreen/Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/Uri;Ljava/lang/Boolean;)V

    return-object p0

    .line 693
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method protected static create(Lorg/json/JSONObject;)Lcom/samsung/multiscreen/Service;
    .locals 8

    if-eqz p0, :cond_0

    .line 731
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "id"

    .line 734
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "name"

    .line 735
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "(standby)"

    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    .line 737
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v2, v0

    goto :goto_0

    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 739
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create(): Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Service"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    :goto_1
    move-object v3, v2

    .line 742
    new-instance p0, Lcom/samsung/multiscreen/Service;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v2, "Unknown"

    const-string v4, "Samsung SmartTV"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/multiscreen/Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/Uri;Ljava/lang/Boolean;)V

    return-object p0

    .line 724
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Service;",
            ">;)V"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 237
    new-instance v2, Lcom/samsung/multiscreen/Service$2;

    invoke-direct {v2, v1, v0}, Lcom/samsung/multiscreen/Service$2;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 262
    invoke-static {p0, p1, v2}, Lcom/samsung/multiscreen/MDNSSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {p0, p1, v2}, Lcom/samsung/multiscreen/MSFDSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 265
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    new-instance p0, Lcom/samsung/multiscreen/Service$3;

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/multiscreen/Service$3;-><init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/multiscreen/Result;)V

    invoke-static {p0}, Lcom/samsung/multiscreen/util/RunUtil;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getByURI(Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Service;",
            ">;)V"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/samsung/multiscreen/Service$1;

    invoke-direct {v0}, Lcom/samsung/multiscreen/Service$1;-><init>()V

    invoke-static {v0, p2}, Lcom/samsung/multiscreen/HttpHelper;->createHttpCallback(Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;Lcom/samsung/multiscreen/Result;)Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;

    move-result-object p2

    const-string v0, "GET"

    .line 220
    invoke-static {p0, v0, p1, p2}, Lcom/samsung/multiscreen/util/HttpUtil;->executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;ILcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V

    return-void
.end method

.method public static getByURI(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Service;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x7530

    .line 202
    invoke-static {p0, v0, p1}, Lcom/samsung/multiscreen/Service;->getByURI(Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method private isSupport(Ljava/lang/String;)Z
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static search(Landroid/content/Context;)Lcom/samsung/multiscreen/Search;
    .locals 0

    .line 192
    invoke-static {p0}, Lcom/samsung/multiscreen/Search;->getInstance(Landroid/content/Context;)Lcom/samsung/multiscreen/Search;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 71
    instance-of p1, p1, Lcom/samsung/multiscreen/Service;

    return p1
.end method

.method createApplication(Landroid/net/Uri;)Lcom/samsung/multiscreen/Application;
    .locals 0

    if-eqz p1, :cond_0

    .line 564
    invoke-static {p0, p1}, Lcom/samsung/multiscreen/Application;->create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;)Lcom/samsung/multiscreen/Application;

    move-result-object p1

    return-object p1

    .line 561
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public createApplication(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/multiscreen/Application;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 580
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/multiscreen/Application;->create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/multiscreen/Application;

    move-result-object p1

    return-object p1

    .line 577
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public createApplication(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/multiscreen/Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Application;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 598
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/multiscreen/Application;->create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/multiscreen/Application;

    move-result-object p1

    return-object p1

    .line 595
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method createApplication(Ljava/lang/String;)Lcom/samsung/multiscreen/Application;
    .locals 0

    if-eqz p1, :cond_0

    .line 613
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 614
    invoke-static {p0, p1}, Lcom/samsung/multiscreen/Application;->create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;)Lcom/samsung/multiscreen/Application;

    move-result-object p1

    return-object p1

    .line 610
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public createApplication(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Application;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 630
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 631
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/multiscreen/Application;->create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/multiscreen/Application;

    move-result-object p1

    return-object p1

    .line 627
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public createApplication(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/multiscreen/Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Application;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 687
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 688
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/multiscreen/Application;->create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/multiscreen/Application;

    move-result-object p1

    return-object p1

    .line 684
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public createAudioPlayer(Ljava/lang/String;)Lcom/samsung/multiscreen/AudioPlayer;
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 669
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 670
    new-instance v1, Lcom/samsung/multiscreen/AudioPlayer;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/multiscreen/AudioPlayer;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1

    .line 667
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public createChannel(Landroid/net/Uri;)Lcom/samsung/multiscreen/Channel;
    .locals 0

    .line 549
    invoke-static {p0, p1}, Lcom/samsung/multiscreen/Channel;->create(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;)Lcom/samsung/multiscreen/Channel;

    move-result-object p1

    return-object p1
.end method

.method public createPhotoPlayer(Ljava/lang/String;)Lcom/samsung/multiscreen/PhotoPlayer;
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 656
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 657
    new-instance v1, Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/multiscreen/PhotoPlayer;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1

    .line 654
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public createVideoPlayer(Ljava/lang/String;)Lcom/samsung/multiscreen/VideoPlayer;
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 643
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 644
    new-instance v1, Lcom/samsung/multiscreen/VideoPlayer;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/multiscreen/VideoPlayer;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1

    .line 641
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Lcom/samsung/multiscreen/Service;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/multiscreen/Service;

    invoke-virtual {p1, p0}, Lcom/samsung/multiscreen/Service;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getDeviceInfo(Lcom/samsung/multiscreen/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Lcom/samsung/multiscreen/Device;",
            ">;)V"
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 530
    new-instance v1, Lcom/samsung/multiscreen/Service$8;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/Service$8;-><init>(Lcom/samsung/multiscreen/Service;)V

    invoke-static {v1, p1}, Lcom/samsung/multiscreen/HttpHelper;->createHttpCallback(Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;Lcom/samsung/multiscreen/Result;)Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;

    move-result-object p1

    const-string v1, "GET"

    .line 538
    invoke-static {v0, v1, p1}, Lcom/samsung/multiscreen/util/HttpUtil;->executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSecureModeSupported()Lcom/samsung/multiscreen/Service$SecureModeState;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    return-object v0
.end method

.method public getIsStandbyService()Ljava/lang/Boolean;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsSupport()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isDMPSupported(Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 760
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 764
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DMP_available"

    .line 766
    invoke-direct {p0, v0}, Lcom/samsung/multiscreen/Service;->isSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 768
    :cond_1
    new-instance v0, Lcom/samsung/multiscreen/Service$9;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Service$9;-><init>(Lcom/samsung/multiscreen/Service;Lcom/samsung/multiscreen/Result;)V

    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Service;->getDeviceInfo(Lcom/samsung/multiscreen/Result;)V

    :cond_2
    :goto_0
    return-void
.end method

.method isEqualTo(Lcom/samsung/multiscreen/Service;)Ljava/lang/Boolean;
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eq v0, v1, :cond_0

    return-object v2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/multiscreen/Service;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_2

    return-object v2

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/multiscreen/Service;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v2

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/samsung/multiscreen/Service;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object v2

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/multiscreen/Service;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v2

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->version:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/multiscreen/Service;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v2

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/multiscreen/Service;->isSupport:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object v2

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    iget-object p1, p1, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    if-eq v0, p1, :cond_8

    return-object v2

    :cond_8
    const/4 p1, 0x1

    .line 143
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method isSecurityModeSupported(Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isStandbyService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {p1, v1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    sget-object v2, Lcom/samsung/multiscreen/Service$SecureModeState;->Unknown:Lcom/samsung/multiscreen/Service$SecureModeState;

    if-ne v0, v2, :cond_1

    .line 316
    new-instance v0, Lcom/samsung/multiscreen/Service$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Service$4;-><init>(Lcom/samsung/multiscreen/Service;Lcom/samsung/multiscreen/Result;)V

    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Service;->getDeviceInfo(Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    sget-object v2, Lcom/samsung/multiscreen/Service$SecureModeState;->Supported:Lcom/samsung/multiscreen/Service$SecureModeState;

    if-ne v0, v2, :cond_2

    .line 343
    invoke-interface {p1, v1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 345
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public remove()V
    .locals 1

    .line 749
    invoke-static {}, Lcom/samsung/multiscreen/StandbyDeviceList;->getInstance()Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    invoke-static {}, Lcom/samsung/multiscreen/StandbyDeviceList;->getInstance()Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/multiscreen/StandbyDeviceList;->remove(Lcom/samsung/multiscreen/Service;)V

    :cond_0
    return-void
.end method

.method public setIsSecureModeSupported(Lcom/samsung/multiscreen/Service$SecureModeState;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/multiscreen/Service;->isSecureModeSupported:Lcom/samsung/multiscreen/Service$SecureModeState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service(isSecureModeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getIsSecureModeSupported()Lcom/samsung/multiscreen/Service$SecureModeState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getIsSupport()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStandbyService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Service;->getIsStandbyService()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
