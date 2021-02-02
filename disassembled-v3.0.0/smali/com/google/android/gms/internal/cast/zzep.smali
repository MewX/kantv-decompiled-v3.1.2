.class final Lcom/google/android/gms/internal/cast/zzep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzzh:Lcom/google/android/gms/internal/cast/zzen;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzep;->zzzh:Lcom/google/android/gms/internal/cast/zzen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzep;->zzzh:Lcom/google/android/gms/internal/cast/zzen;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzen;->doFrame(J)V

    return-void
.end method
