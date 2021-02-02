.class public final Lcom/google/android/gms/internal/cast/zzdh;
.super Lcom/google/android/gms/internal/cast/zzcg;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private zzxk:J

.field private zzxl:Lcom/google/android/gms/cast/MediaStatus;

.field private zzxm:Ljava/lang/Long;

.field private zzxn:Lcom/google/android/gms/internal/cast/zzdj;

.field private final zzxo:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxp:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxq:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxr:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxs:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxt:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxu:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxv:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxw:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxx:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxy:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzxz:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzya:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzyb:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzyc:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzyd:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzye:Lcom/google/android/gms/internal/cast/zzdn;

.field private final zzyf:Lcom/google/android/gms/internal/cast/zzdn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    .line 622
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcu;->zzp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdh;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzdh;->NAMESPACE:Ljava/lang/String;

    const-string v0, "MediaControlChannel"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzcg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    const-wide/32 v0, 0x5265c00

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxo:Lcom/google/android/gms/internal/cast/zzdn;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxp:Lcom/google/android/gms/internal/cast/zzdn;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxq:Lcom/google/android/gms/internal/cast/zzdn;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxr:Lcom/google/android/gms/internal/cast/zzdn;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    const-wide/16 v2, 0x2710

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxs:Lcom/google/android/gms/internal/cast/zzdn;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxt:Lcom/google/android/gms/internal/cast/zzdn;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxu:Lcom/google/android/gms/internal/cast/zzdn;

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxv:Lcom/google/android/gms/internal/cast/zzdn;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxw:Lcom/google/android/gms/internal/cast/zzdn;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxx:Lcom/google/android/gms/internal/cast/zzdn;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxy:Lcom/google/android/gms/internal/cast/zzdn;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxz:Lcom/google/android/gms/internal/cast/zzdn;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzya:Lcom/google/android/gms/internal/cast/zzdn;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyb:Lcom/google/android/gms/internal/cast/zzdn;

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyc:Lcom/google/android/gms/internal/cast/zzdn;

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzye:Lcom/google/android/gms/internal/cast/zzdn;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyd:Lcom/google/android/gms/internal/cast/zzdn;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzdn;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyf:Lcom/google/android/gms/internal/cast/zzdn;

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxo:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxp:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxq:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxr:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxs:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxt:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxv:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxw:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxx:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxy:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxz:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzya:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyb:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyc:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzye:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzye:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyf:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->zza(Lcom/google/android/gms/internal/cast/zzdn;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzdo()V

    return-void
.end method

.method private final onMetadataUpdated()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdj;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private final onPreloadStatusUpdated()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdj;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onQueueStatusUpdated()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdj;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onStatusUpdated()V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v0, :cond_0

    .line 596
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzdj;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final zza(DJJ)J
    .locals 5

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide p3

    :cond_1
    long-to-double v0, v0

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-long p1, v0

    add-long/2addr p1, p3

    cmp-long p3, p5, v2

    if-lez p3, :cond_2

    cmp-long p3, p1, p5

    if-lez p3, :cond_2

    move-wide p1, p5

    goto :goto_0

    :cond_2
    cmp-long p3, p1, v2

    if-gez p3, :cond_3

    move-wide p1, v2

    :cond_3
    :goto_0
    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzdh;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    const/4 p1, 0x0

    .line 621
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxm:Ljava/lang/Long;

    return-object p1
.end method

.method private static zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzbq;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 462
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "requestId"

    .line 463
    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "type"

    const-string p3, "PRECACHE"

    .line 464
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string p2, "precacheData"

    .line 466
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_2

    .line 467
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 468
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    .line 469
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 470
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/zzbq;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/zzbq;->toJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "requestItems"

    .line 472
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Lorg/json/JSONArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 587
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 588
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 589
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzdo()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 607
    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    const/4 v0, 0x0

    .line 608
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    .line 609
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzdd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdn;

    const/16 v2, 0x7d2

    .line 610
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzdn;->zzq(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzj()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide v0

    return-wide v0

    .line 593
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzdk;-><init>()V

    throw v0
.end method


# virtual methods
.method public final getApproximateAdBreakClipPositionMs()J
    .locals 13

    .line 238
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v2

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-wide v2

    .line 247
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    .line 248
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_3
    move-wide v7, v4

    .line 251
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getCurrentBreakClipTimeInMs()J

    move-result-wide v9

    .line 252
    invoke-virtual {v1}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getDurationInMs()J

    move-result-wide v11

    move-object v6, p0

    .line 253
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/cast/zzdh;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v2
.end method

.method public final getApproximateStreamPosition()J
    .locals 9

    .line 223
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdh;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxm:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 228
    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    return-wide v1

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v3

    .line 231
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v5

    .line 232
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v1

    const-wide/16 v7, 0x0

    cmpl-double v2, v3, v7

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v7

    move-object v2, p0

    .line 237
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/cast/zzdh;->zza(DJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v5
.end method

.method public final getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final getStreamDuration()J
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzdh;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 129
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxt:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 130
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SKIP_AD"

    .line 131
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzvq:Lcom/google/android/gms/internal/cast/zzdg;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string p1, "Error creating SkipAd message: %s"

    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;DLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 138
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 142
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxt:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 143
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    .line 144
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 146
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "level"

    .line 147
    invoke-virtual {p1, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 148
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p1, "customData"

    .line 150
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    .line 139
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p4, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Volume cannot be "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;III)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-nez p3, :cond_4

    if-lez p4, :cond_4

    .line 429
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 431
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzye:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 432
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEM_RANGE"

    .line 433
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 434
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "itemId"

    .line 435
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-lez p3, :cond_2

    const-string p1, "nextCount"

    .line 437
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-lez p4, :cond_3

    const-string p1, "prevCount"

    .line 439
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    .line 428
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of nextCount and prevCount must be positive and the other must be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x35

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition cannot be negative: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_1
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 343
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v3

    .line 344
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxz:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 345
    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_UPDATE"

    .line 346
    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 347
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v5

    invoke-virtual {v2, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    const-string p1, "currentItemId"

    .line 349
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p6, :cond_3

    const-string p1, "jump"

    .line 351
    invoke-virtual {v2, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz p5, :cond_5

    .line 352
    array-length p1, p5

    if-lez p1, :cond_5

    .line 353
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    .line 354
    :goto_1
    array-length p6, p5

    if-ge p2, p6, :cond_4

    .line 355
    aget-object p6, p5, p2

    invoke-virtual {p6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object p6

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "items"

    .line 357
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    if-eqz p7, :cond_a

    .line 359
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "repeatMode"

    if-eqz p1, :cond_9

    const/4 p5, 0x1

    if-eq p1, p5, :cond_8

    const/4 p5, 0x2

    if-eq p1, p5, :cond_7

    const/4 p5, 0x3

    if-eq p1, p5, :cond_6

    goto :goto_2

    :cond_6
    :try_start_1
    const-string p1, "REPEAT_ALL_AND_SHUFFLE"

    .line 366
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_7
    const-string p1, "REPEAT_SINGLE"

    .line 364
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_8
    const-string p1, "REPEAT_ALL"

    .line 362
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_9
    const-string p1, "REPEAT_OFF"

    .line 360
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    :goto_2
    cmp-long p1, p3, v0

    if-eqz p1, :cond_b

    const-string p1, "currentTime"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double p2, p3

    const-wide p4, 0x408f400000000000L    # 1000.0

    .line 369
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p4

    .line 370
    :try_start_2
    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_b
    if-eqz p8, :cond_c

    const-string p1, "customData"

    .line 372
    invoke-virtual {v2, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 375
    :catch_0
    :cond_c
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;JILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 109
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxm:Ljava/lang/Long;

    .line 110
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxs:Lcom/google/android/gms/internal/cast/zzdn;

    new-instance v4, Lcom/google/android/gms/internal/cast/zzdi;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/cast/zzdi;-><init>(Lcom/google/android/gms/internal/cast/zzdh;Lcom/google/android/gms/internal/cast/zzdm;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 111
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SEEK"

    .line 112
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "currentTime"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p2, p2

    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v3

    .line 116
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    const-string p2, "resumeState"

    if-ne p4, p1, :cond_0

    :try_start_2
    const-string p1, "PLAYBACK_START"

    .line 118
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    const-string p1, "PLAYBACK_PAUSE"

    .line 120
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    const-string p1, "customData"

    .line 122
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaLoadOptions;)J
    .locals 7
    .param p1    # Lcom/google/android/gms/internal/cast/zzdm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/cast/MediaInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/cast/MediaLoadOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 44
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxo:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 45
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "LOAD"

    .line 46
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "media"

    .line 47
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "autoplay"

    .line 48
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getAutoplay()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    .line 49
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getPlayPosition()J

    move-result-wide v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 50
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    .line 51
    :try_start_1
    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "playbackRate"

    .line 52
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getPlaybackRate()D

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentials()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "credentials"

    .line 54
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentials()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentialsType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "credentialsType"

    .line 56
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentialsType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getActiveTrackIds()[J

    move-result-object p1

    if-eqz p1, :cond_3

    .line 59
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 60
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 61
    aget-wide v4, p1, v3

    invoke-virtual {p2, v3, v4, v5}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "activeTrackIds"

    .line 63
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "customData"

    .line 66
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :catch_0
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 211
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 213
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxx:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 214
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "EDIT_TRACKS_INFO"

    .line 215
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "textTrackStyle"

    .line 217
    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "mediaSessionId"

    .line 218
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 73
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxp:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 74
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PAUSE"

    .line 75
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    .line 78
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;ZLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 157
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 158
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    .line 159
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 160
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 161
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "muted"

    .line 162
    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "volume"

    .line 163
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "customData"

    .line 165
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 444
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 445
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 446
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyd:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 447
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEMS"

    .line 448
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 449
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 450
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 451
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p2, v4

    .line 452
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 454
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[IILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 396
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 398
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 399
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 400
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyb:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 401
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_REORDER"

    .line 402
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 403
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 404
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 405
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 406
    aget v4, p2, v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 408
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p1, "insertBefore"

    .line 410
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "customData"

    .line 412
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    .line 397
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToReorder must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[ILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 377
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 379
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 380
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 381
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzya:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 382
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_REMOVE"

    .line 383
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 384
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 385
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 386
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 387
    aget v4, p2, v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "itemIds"

    .line 389
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    const-string p1, "customData"

    .line 391
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    .line 378
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToRemove must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 198
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxw:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 199
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "EDIT_TRACKS_INFO"

    .line 200
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 203
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 204
    aget-wide v4, p2, v3

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "activeTrackIds"

    .line 206
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    if-eqz v1, :cond_9

    .line 306
    array-length v7, v1

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    if-ltz v3, :cond_0

    .line 308
    array-length v9, v1

    if-ge v3, v9, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 310
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    array-length v1, v1

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const-string v1, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    .line 312
    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v11, v4, v9

    if-eqz v11, :cond_3

    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    if-ltz v13, :cond_2

    goto :goto_1

    .line 314
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "playPosition can not be negative: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_3
    :goto_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v12

    .line 317
    iget-object v14, v0, Lcom/google/android/gms/internal/cast/zzdh;->zzxy:Lcom/google/android/gms/internal/cast/zzdn;

    move-object/from16 v15, p1

    invoke-virtual {v14, v12, v13, v15}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string v14, "requestId"

    .line 318
    invoke-virtual {v11, v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v14, "type"

    const-string v15, "QUEUE_INSERT"

    .line 319
    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "mediaSessionId"

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v9

    invoke-virtual {v11, v14, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 321
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 322
    :goto_2
    array-length v10, v1

    if-ge v7, v10, :cond_4

    .line 323
    aget-object v10, v1, v7

    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "items"

    .line 325
    invoke-virtual {v11, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    const-string v1, "insertBefore"

    .line 327
    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    if-eq v3, v8, :cond_6

    const-string v1, "currentItemIndex"

    .line 329
    invoke-virtual {v11, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    const-wide/16 v1, -0x1

    cmp-long v3, v4, v1

    if-eqz v3, :cond_7

    const-string v1, "currentTime"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 332
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 333
    :try_start_1
    invoke-virtual {v11, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz v6, :cond_8

    const-string v1, "customData"

    .line 335
    invoke-virtual {v11, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    :catch_0
    :cond_8
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v13, v2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v12

    .line 307
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "itemsToInsert must not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdm;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_a

    .line 269
    array-length v0, p2

    if-eqz v0, :cond_a

    if-ltz p3, :cond_9

    .line 271
    array-length v0, p2

    if-ge p3, v0, :cond_9

    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x36

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition can not be negative: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_1
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v3

    .line 277
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxo:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 278
    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_LOAD"

    .line 279
    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 281
    :goto_1
    array-length v6, p2

    if-ge v5, v6, :cond_2

    .line 282
    aget-object v6, p2, v5

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "items"

    .line 284
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "repeatMode"

    if-eqz p4, :cond_6

    const/4 p2, 0x1

    if-eq p4, p2, :cond_5

    const/4 p2, 0x2

    if-eq p4, p2, :cond_4

    const/4 p2, 0x3

    if-ne p4, p2, :cond_3

    :try_start_1
    const-string p2, "REPEAT_ALL_AND_SHUFFLE"

    .line 292
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 294
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x20

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid repeat mode: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p2, "REPEAT_SINGLE"

    .line 290
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    const-string p2, "REPEAT_ALL"

    .line 288
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    const-string p2, "REPEAT_OFF"

    .line 286
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string p1, "startIndex"

    .line 295
    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    cmp-long p1, p5, v0

    if-eqz p1, :cond_7

    const-string p1, "currentTime"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double p2, p5

    const-wide p4, 0x408f400000000000L    # 1000.0

    .line 298
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p4

    .line 299
    :try_start_2
    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz p7, :cond_8

    const-string p1, "customData"

    .line 301
    invoke-virtual {v2, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 304
    :catch_0
    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    .line 272
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x1f

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid startIndex: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "items must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final zza(JI)V
    .locals 3

    .line 616
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzdd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cast/zzdn;

    const/4 v2, 0x0

    .line 618
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdj;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdm;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 187
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxv:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 188
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "GET_STATUS"

    .line 189
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz p1, :cond_0

    const-string p1, "mediaSessionId"

    .line 191
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdm;DLorg/json/JSONObject;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 174
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyf:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 175
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_PLAYBACK_RATE"

    .line 176
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playbackRate"

    .line 177
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 178
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaStatus;->zzj()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p1, "customData"

    .line 180
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    .line 171
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzdk;-><init>()V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/cast/zzdm;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 85
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxr:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 86
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "STOP"

    .line 87
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 88
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    .line 90
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzbq;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v0

    .line 460
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzdm;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzdk;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 417
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 419
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyc:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 420
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_GET_ITEM_IDS"

    .line 421
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 422
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/cast/zzdm;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/cast/zzdk;
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcm;->zzde()J

    move-result-wide v1

    .line 97
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxq:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JLcom/google/android/gms/internal/cast/zzdm;)V

    :try_start_0
    const-string p1, "requestId"

    .line 98
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PLAY"

    .line 99
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzj()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    .line 102
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/cast/zzcm;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzdc()V
    .locals 0

    .line 613
    invoke-super {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzdc()V

    .line 614
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->zzdo()V

    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 14

    .line 476
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzvq:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "message received: %s"

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 477
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    .line 478
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "requestId"

    const-wide/16 v6, -0x1

    .line 479
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 480
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x4

    const/4 v10, 0x3

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "QUEUE_ITEM_IDS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "MEDIA_STATUS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v7, "INVALID_PLAYER_STATE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "QUEUE_CHANGE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_4
    const-string v7, "LOAD_FAILED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v7, "INVALID_REQUEST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_6
    const-string v7, "QUEUE_ITEMS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_7
    const-string v7, "LOAD_CANCELLED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const-string v7, "itemIds"

    const/16 v11, 0x834

    const-string v12, "customData"

    const/4 v13, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_b

    .line 571
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyd:Lcom/google/android/gms/internal/cast/zzdn;

    .line 572
    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    .line 574
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v4, :cond_1a

    const-string v4, "items"

    .line 575
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 576
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v5, 0x0

    .line 577
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 578
    new-instance v6, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 580
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/cast/zzdj;->zzb([Lcom/google/android/gms/cast/MediaQueueItem;)V

    goto/16 :goto_b

    .line 554
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzye:Lcom/google/android/gms/internal/cast/zzdn;

    .line 555
    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    .line 557
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v4, :cond_7

    const-string v4, "changeType"

    .line 558
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzdh;->zzb(Lorg/json/JSONArray;)[I

    move-result-object v5

    const-string v6, "insertBefore"

    .line 560
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v5, :cond_7

    .line 562
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_3

    :sswitch_8
    const-string v6, "NO_CHANGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x4

    goto :goto_3

    :sswitch_9
    const-string v6, "ITEMS_CHANGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :sswitch_a
    const-string v6, "UPDATE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x3

    goto :goto_3

    :sswitch_b
    const-string v6, "REMOVE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x2

    goto :goto_3

    :sswitch_c
    const-string v6, "INSERT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x0

    :cond_2
    :goto_3
    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    if-eq v8, v0, :cond_4

    if-eq v8, v10, :cond_3

    goto :goto_4

    .line 569
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/cast/zzdj;->zza([I)V

    goto :goto_4

    .line 567
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/cast/zzdj;->zzc([I)V

    return-void

    .line 565
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/cast/zzdj;->zzb([I)V

    return-void

    .line 563
    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v4, v5, v2}, Lcom/google/android/gms/internal/cast/zzdj;->zza([II)V

    :cond_7
    :goto_4
    return-void

    .line 546
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzyc:Lcom/google/android/gms/internal/cast/zzdn;

    .line 547
    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    .line 549
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v4, :cond_8

    .line 550
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzdh;->zzb(Lorg/json/JSONArray;)[I

    move-result-object v2

    if-eqz v2, :cond_8

    .line 552
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/cast/zzdj;->zza([I)V

    :cond_8
    return-void

    .line 540
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzvq:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v7, "received unexpected error: Invalid Request."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzdd()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/cast/zzdn;

    .line 543
    invoke-virtual {v7, v5, v6, v11, v2}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-void

    .line 537
    :pswitch_4
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 538
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxo:Lcom/google/android/gms/internal/cast/zzdn;

    const/16 v7, 0x835

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    return-void

    .line 534
    :pswitch_5
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 535
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxo:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v4, v5, v6, v11, v2}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    return-void

    .line 528
    :pswitch_6
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzvq:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v7, "received unexpected error: Invalid Player State."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 530
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzdd()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/cast/zzdn;

    .line 531
    invoke-virtual {v7, v5, v6, v11, v2}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    goto :goto_6

    :cond_a
    return-void

    :pswitch_7
    const-string v4, "status"

    .line 481
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_19

    .line 483
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 484
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxo:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/cast/zzdn;->test(J)Z

    move-result v4

    .line 485
    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxt:Lcom/google/android/gms/internal/cast/zzdn;

    .line 486
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzdn;->zzdp()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxt:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/cast/zzdn;->test(J)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxu:Lcom/google/android/gms/internal/cast/zzdn;

    .line 487
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzdn;->zzdp()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxu:Lcom/google/android/gms/internal/cast/zzdn;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/cast/zzdn;->test(J)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    if-nez v4, :cond_f

    .line 491
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v4, :cond_e

    goto :goto_8

    .line 495
    :cond_e
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v4, v2, v7}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result v2

    goto :goto_9

    .line 492
    :cond_f
    :goto_8
    new-instance v4, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v4, v2}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    const/16 v2, 0x7f

    :goto_9
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_10

    .line 497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    .line 498
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onStatusUpdated()V

    :cond_10
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_11

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    .line 501
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onStatusUpdated()V

    :cond_11
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_12

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    :cond_12
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_13

    .line 505
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onMetadataUpdated()V

    :cond_13
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_14

    .line 507
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onQueueStatusUpdated()V

    :cond_14
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_15

    .line 509
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onPreloadStatusUpdated()V

    :cond_15
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_16

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    .line 513
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    if-eqz v4, :cond_16

    .line 514
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxn:Lcom/google/android/gms/internal/cast/zzdj;

    invoke-interface {v4}, Lcom/google/android/gms/internal/cast/zzdj;->onAdBreakStatusUpdated()V

    :cond_16
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_17

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxk:J

    .line 517
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onStatusUpdated()V

    .line 518
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcg;->zzdd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/cast/zzdn;

    .line 519
    invoke-virtual {v4, v5, v6, v3, v13}, Lcom/google/android/gms/internal/cast/zzdn;->zzc(JILjava/lang/Object;)Z

    goto :goto_a

    :cond_18
    return-void

    .line 522
    :cond_19
    iput-object v13, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzxl:Lcom/google/android/gms/cast/MediaStatus;

    .line 523
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onStatusUpdated()V

    .line 524
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onMetadataUpdated()V

    .line 525
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onQueueStatusUpdated()V

    .line 526
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdh;->onPreloadStatusUpdated()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1a
    :goto_b
    return-void

    :catch_0
    move-exception v2

    .line 583
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzdh;->zzvq:Lcom/google/android/gms/internal/cast/zzdg;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    const-string p1, "Message is malformed (%s); ignoring: %s"

    invoke-virtual {v4, p1, v0}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_7
        -0x6ab4c52e -> :sswitch_6
        -0x430e23f9 -> :sswitch_5
        -0xfa7664a -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
        0x5330afee -> :sswitch_8
    .end sparse-switch
.end method
