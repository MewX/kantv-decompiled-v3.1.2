.class final Lcom/google/android/gms/cast/framework/media/zzag;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;


# instance fields
.field private final synthetic zzfk:Lorg/json/JSONObject;

.field private final synthetic zzfu:I

.field private final synthetic zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzfu:I

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzfk:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/cast/zzcn;)V
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzfu:I

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzag;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzgd:Lcom/google/android/gms/internal/cast/zzdm;

    const/4 v3, 0x1

    new-array v3, v3, [I

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzfu:I

    aput v4, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzfk:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Lcom/google/android/gms/internal/cast/zzdm;[ILorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/cast/zzdk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzag;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 10
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
