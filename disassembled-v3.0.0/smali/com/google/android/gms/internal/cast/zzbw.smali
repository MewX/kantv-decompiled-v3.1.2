.class final Lcom/google/android/gms/internal/cast/zzbw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;


# instance fields
.field private final zzgf:Lcom/google/android/gms/common/api/Status;

.field private final zzul:Lcom/google/android/gms/cast/games/GameManagerClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzgf:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzul:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-void
.end method


# virtual methods
.method public final getGameManagerClient()Lcom/google/android/gms/cast/games/GameManagerClient;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzul:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzgf:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
