.class final synthetic Lcom/google/firebase/iid/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcj:Lcom/google/firebase/iid/zzac;

.field private final zzck:Lcom/google/firebase/iid/zzal;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzac;Lcom/google/firebase/iid/zzal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzag;->zzcj:Lcom/google/firebase/iid/zzac;

    iput-object p2, p0, Lcom/google/firebase/iid/zzag;->zzck:Lcom/google/firebase/iid/zzal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzag;->zzcj:Lcom/google/firebase/iid/zzac;

    iget-object v1, p0, Lcom/google/firebase/iid/zzag;->zzck:Lcom/google/firebase/iid/zzal;

    .line 2
    iget v1, v1, Lcom/google/firebase/iid/zzal;->zzcm:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzac;->zza(I)V

    return-void
.end method
