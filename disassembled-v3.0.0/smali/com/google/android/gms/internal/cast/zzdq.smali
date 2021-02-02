.class public final Lcom/google/android/gms/internal/cast/zzdq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplayApi;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdg;


# instance fields
.field private zzbf:Landroid/hardware/display/VirtualDisplay;

.field private zzyo:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzyp:Lcom/google/android/gms/internal/cast/zzeg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "CastRemoteDisplayApiImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdq;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Api;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzdr;-><init>(Lcom/google/android/gms/internal/cast/zzdq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzyp:Lcom/google/android/gms/internal/cast/zzeg;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzyo:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzdq;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzbf:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzdq;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdq;->zzb()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzdq;)Lcom/google/android/gms/internal/cast/zzeg;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzyp:Lcom/google/android/gms/internal/cast/zzeg;

    return-object p0
.end method

.method private final zzb()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzbf:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdq;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzbf:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "releasing virtual display: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzbf:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzbf:Landroid/hardware/display/VirtualDisplay;

    :cond_1
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/cast/zzdq;)Lcom/google/android/gms/common/api/Api;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzyo:Lcom/google/android/gms/common/api/Api;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/cast/zzdq;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzdq;->zzbf:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static synthetic zzdr()Lcom/google/android/gms/internal/cast/zzdg;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdq;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    return-object v0
.end method


# virtual methods
.method public final startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdq;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startRemoteDisplay"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/cast/zzds;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzds;-><init>(Lcom/google/android/gms/internal/cast/zzdq;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdq;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "stopRemoteDisplay"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/cast/zzdg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(Lcom/google/android/gms/internal/cast/zzdq;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method
