.class public abstract Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final zzms:Lcom/google/android/gms/cast/framework/media/MediaQueue;

.field private final zzmt:Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzms:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 3
    new-instance p1, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter$zza;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter$zza;-><init>(Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;Lcom/google/android/gms/cast/framework/media/zzn;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzmt:Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzms:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzmt:Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->registerCallback(Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzms:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzmt:Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->unregisterCallback(Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;)V

    return-void
.end method

.method public getItem(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzms:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->getItemAtIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzms:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzms:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->itemIdAtIndex(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMediaQueue()Lcom/google/android/gms/cast/framework/media/MediaQueue;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaQueueRecyclerViewAdapter;->zzms:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    return-object v0
.end method
