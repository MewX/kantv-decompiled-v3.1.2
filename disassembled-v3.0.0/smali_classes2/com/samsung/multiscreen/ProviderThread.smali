.class abstract Lcom/samsung/multiscreen/ProviderThread;
.super Ljava/lang/Thread;
.source "ProviderThread.java"


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method isTerminate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract terminate()V
.end method
