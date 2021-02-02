.class final Lcom/google/android/gms/cast/framework/media/zzai;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;


# instance fields
.field private final synthetic zzfk:Lorg/json/JSONObject;

.field private final synthetic zzfu:I

.field private final synthetic zzfv:I

.field private final synthetic zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;IILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfu:I

    iput p4, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfv:I

    iput-object p5, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfk:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/cast/zzcn;)V
    .locals 7

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfu:I

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzai;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 6
    monitor-exit p1

    return-void

    .line 7
    :cond_0
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfv:I

    const/4 v3, 0x1

    if-gez v1, :cond_1

    .line 8
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Invalid request: Invalid newIndex %d."

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfv:I

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 10
    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzai;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 13
    monitor-exit p1

    return-void

    .line 14
    :cond_1
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfv:I

    if-ne v0, v1, :cond_2

    .line 15
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzai;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 16
    monitor-exit p1

    return-void

    .line 17
    :cond_2
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfv:I

    if-le v1, v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfv:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfv:I

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItem(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 23
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzgd:Lcom/google/android/gms/internal/cast/zzdm;

    new-array v3, v3, [I

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfu:I

    aput v5, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzfk:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Lcom/google/android/gms/internal/cast/zzdm;[IILorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/cast/zzdk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 26
    :catch_0
    :try_start_2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzai;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 27
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
