.class final Lcom/google/android/gms/internal/cast/zzcj;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/cast/zzcl;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzow:Ljava/util/List;

.field private final synthetic zzvo:[Ljava/lang/String;

.field private final synthetic zzvp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzch;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzcj;->zzvo:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcj;->zzvp:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzcj;->zzow:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/cast/zzcl;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/zzck;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/cast/zzck;-><init>(Lcom/google/android/gms/internal/cast/zzcj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzcl;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzdd;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzcj;->zzvo:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcj;->zzvp:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzcj;->zzow:Ljava/util/List;

    .line 6
    invoke-interface {p1, v0, p2, v1, v2}, Lcom/google/android/gms/internal/cast/zzdd;->zza(Lcom/google/android/gms/common/api/internal/IStatusCallback;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
