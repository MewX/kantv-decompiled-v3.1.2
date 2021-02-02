.class final Lcom/google/android/gms/internal/cast/zzdi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdm;


# instance fields
.field private final synthetic zzyg:Lcom/google/android/gms/internal/cast/zzdm;

.field private final synthetic zzyh:Lcom/google/android/gms/internal/cast/zzdh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdh;Lcom/google/android/gms/internal/cast/zzdm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyh:Lcom/google/android/gms/internal/cast/zzdh;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyg:Lcom/google/android/gms/internal/cast/zzdm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyh:Lcom/google/android/gms/internal/cast/zzdh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;->zza(Lcom/google/android/gms/internal/cast/zzdh;Ljava/lang/Long;)Ljava/lang/Long;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyg:Lcom/google/android/gms/internal/cast/zzdm;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/cast/zzdm;->zza(JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdi;->zzyg:Lcom/google/android/gms/internal/cast/zzdm;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdm;->zzb(J)V

    :cond_0
    return-void
.end method
