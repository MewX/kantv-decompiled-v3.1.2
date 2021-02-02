.class public interface abstract Lcom/kantv/ui/androidupnpdemo/control/ISubscriptionControl;
.super Ljava/lang/Object;
.source "ISubscriptionControl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract registerAVTransport(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/androidupnpdemo/entity/IDevice<",
            "TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerRenderingControl(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/androidupnpdemo/entity/IDevice<",
            "TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method
