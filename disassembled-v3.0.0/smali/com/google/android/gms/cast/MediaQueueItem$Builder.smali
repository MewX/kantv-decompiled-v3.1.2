.class public Lcom/google/android/gms/cast/MediaQueueItem$Builder;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzee:Lcom/google/android/gms/cast/MediaQueueItem;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/zzam;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaQueueItem;Lcom/google/android/gms/cast/zzam;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->zzi()V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    return-object v0
.end method

.method public clearItemId()Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaQueueItem;->zza(I)V

    return-object p0
.end method

.method public setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->zza([J)V

    return-object p0
.end method

.method public setAutoplay(Z)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->zze(Z)V

    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->setCustomData(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public setPlaybackDuration(D)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueItem;->zzb(D)V

    return-object p0
.end method

.method public setPreloadTime(D)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueItem;->zzc(D)V

    return-object p0
.end method

.method public setStartTime(D)Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->zzee:Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueItem;->zza(D)V

    return-object p0
.end method
