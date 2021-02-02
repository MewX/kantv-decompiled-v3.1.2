.class final Lcom/google/android/gms/internal/cast/zzdr;
.super Lcom/google/android/gms/internal/cast/zzeh;


# instance fields
.field private final synthetic zzyq:Lcom/google/android/gms/internal/cast/zzdq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdr;->zzyq:Lcom/google/android/gms/internal/cast/zzdq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzeh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdq;->zzdr()Lcom/google/android/gms/internal/cast/zzdg;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRemoteDisplayEnded"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdr;->zzyq:Lcom/google/android/gms/internal/cast/zzdq;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdq;->zza(Lcom/google/android/gms/internal/cast/zzdq;)V

    return-void
.end method
