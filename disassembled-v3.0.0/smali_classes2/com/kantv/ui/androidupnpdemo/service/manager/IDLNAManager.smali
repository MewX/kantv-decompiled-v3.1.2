.class public interface abstract Lcom/kantv/ui/androidupnpdemo/service/manager/IDLNAManager;
.super Ljava/lang/Object;
.source "IDLNAManager.java"


# virtual methods
.method public abstract cleanSelectedDevice()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getControlPoint()Lcom/kantv/ui/androidupnpdemo/entity/IControlPoint;
.end method

.method public abstract getDmrDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/kantv/ui/androidupnpdemo/entity/IDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedDevice()Lcom/kantv/ui/androidupnpdemo/entity/IDevice;
.end method

.method public abstract registerAVTransport(Landroid/content/Context;)V
.end method

.method public abstract registerRenderingControl(Landroid/content/Context;)V
.end method

.method public abstract searchDevices()V
.end method

.method public abstract setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
.end method
