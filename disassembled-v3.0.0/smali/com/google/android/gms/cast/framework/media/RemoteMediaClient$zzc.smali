.class abstract Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;
.super Lcom/google/android/gms/internal/cast/zzcf;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzcf<",
        "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field zzgd:Lcom/google/android/gms/internal/cast/zzdm;

.field private final synthetic zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzpa:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzcf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->zzpa:Z

    .line 6
    new-instance p2, Lcom/google/android/gms/cast/framework/media/zzaw;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzaw;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->zzgd:Lcom/google/android/gms/internal/cast/zzdm;

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 19
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzax;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzax;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/cast/zzcn;

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->zzpa:Z

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;->onSendingRemoteMediaRequest()V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->zzoq:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->onSendingRemoteMediaRequest()V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->zzb(Lcom/google/android/gms/internal/cast/zzcn;)V

    return-void
.end method

.method abstract zzb(Lcom/google/android/gms/internal/cast/zzcn;)V
.end method
