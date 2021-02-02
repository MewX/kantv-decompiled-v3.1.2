.class public Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;
.super Ljava/lang/Object;
.source "ClingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAVTServiceByDevice(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p0

    return-object p0
.end method

.method public static findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 31
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getSelectedDevice()Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/kantv/ui/androidupnpdemo/entity/IDevice;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Device;

    .line 37
    invoke-virtual {v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p0

    return-object p0
.end method

.method public static getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getControlPoint()Lcom/kantv/ui/androidupnpdemo/entity/IControlPoint;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    invoke-interface {v0}, Lcom/kantv/ui/androidupnpdemo/entity/IControlPoint;->getControlPoint()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-object v0
.end method
