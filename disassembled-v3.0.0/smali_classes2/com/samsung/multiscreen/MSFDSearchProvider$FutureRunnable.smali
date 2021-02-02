.class interface abstract Lcom/samsung/multiscreen/MSFDSearchProvider$FutureRunnable;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FutureRunnable"
.end annotation


# virtual methods
.method public abstract setFuture(Ljava/util/concurrent/ScheduledFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation
.end method
