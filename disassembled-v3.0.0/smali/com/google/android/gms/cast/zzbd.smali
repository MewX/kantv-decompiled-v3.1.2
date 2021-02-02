.class final Lcom/google/android/gms/cast/zzbd;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;


# instance fields
.field private final synthetic zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzfe:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final synthetic zzfk:Lorg/json/JSONObject;

.field private final synthetic zzfu:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzbd;->zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput p3, p0, Lcom/google/android/gms/cast/zzbd;->zzfu:I

    iput-object p4, p0, Lcom/google/android/gms/cast/zzbd;->zzfe:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p5, p0, Lcom/google/android/gms/cast/zzbd;->zzfk:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/cast/zzcn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->zza(Lcom/google/android/gms/internal/cast/zzcn;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/cast/zzcn;)V
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbd;->zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zze(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbd;->zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget v1, p0, Lcom/google/android/gms/cast/zzbd;->zzfu:I

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zza(Lcom/google/android/gms/cast/RemoteMediaPlayer;I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/zzbd;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbd;->zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbd;->zzfe:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbd;->zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzg(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/cast/zzbd;->zzgd:Lcom/google/android/gms/internal/cast/zzdm;

    const/4 v4, 0x1

    new-array v4, v4, [I

    iget v5, p0, Lcom/google/android/gms/cast/zzbd;->zzfu:I

    aput v5, v4, v2

    iget-object v2, p0, Lcom/google/android/gms/cast/zzbd;->zzfk:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Lcom/google/android/gms/internal/cast/zzdm;[ILorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/cast/zzdk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbd;->zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 11
    :catch_0
    :try_start_3
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x834

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/zzbd;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbd;->zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 15
    :goto_0
    monitor-exit p1

    return-void

    .line 14
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/cast/zzbd;->zzfd:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 15
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
