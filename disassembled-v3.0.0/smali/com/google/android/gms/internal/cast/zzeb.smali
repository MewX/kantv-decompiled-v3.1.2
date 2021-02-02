.class final Lcom/google/android/gms/internal/cast/zzeb;
.super Lcom/google/android/gms/internal/cast/zzeh;


# instance fields
.field private final synthetic zzyw:Lcom/google/android/gms/internal/cast/zzeg;

.field private final synthetic zzyx:Lcom/google/android/gms/internal/cast/zzea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzea;Lcom/google/android/gms/internal/cast/zzeg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzeb;->zzyx:Lcom/google/android/gms/internal/cast/zzea;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzeb;->zzyw:Lcom/google/android/gms/internal/cast/zzeg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzeh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzea;->zzdr()Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRemoteDisplayEnded"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzeb;->zzyw:Lcom/google/android/gms/internal/cast/zzeg;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzeg;->zzr(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzeb;->zzyx:Lcom/google/android/gms/internal/cast/zzea;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzea;->zzb(Lcom/google/android/gms/internal/cast/zzea;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzeb;->zzyx:Lcom/google/android/gms/internal/cast/zzea;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzea;->zzb(Lcom/google/android/gms/internal/cast/zzea;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
