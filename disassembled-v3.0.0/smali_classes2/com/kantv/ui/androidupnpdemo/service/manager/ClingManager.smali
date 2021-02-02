.class public Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;
.super Ljava/lang/Object;
.source "ClingManager.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/service/manager/IClingManager;


# static fields
.field public static final AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

.field public static final DMR_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

.field private static INSTANCE:Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

.field public static final RENDERING_CONTROL_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;


# instance fields
.field private mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

.field private mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "AVTransport"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    .line 37
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "RenderingControl"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->RENDERING_CONTROL_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    .line 38
    new-instance v0, Lorg/fourthline/cling/model/types/UDADeviceType;

    const-string v1, "MediaRenderer"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->DMR_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;-><init>()V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    return-object v0
.end method


# virtual methods
.method public cleanSelectedDevice()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-interface {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;->cleanSelectedDevice()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->onDestroy()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    if-eqz v0, :cond_1

    .line 152
    invoke-interface {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;->destroy()V

    :cond_1
    return-void
.end method

.method public getControlPoint()Lcom/kantv/ui/androidupnpdemo/entity/IControlPoint;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-virtual {v1}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->setControlPoint(Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 93
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;

    move-result-object v0

    return-object v0
.end method

.method public getDmrDevices()Ljava/util/Collection;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    sget-object v2, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->DMR_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->getDevices(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/Device;

    .line 79
    new-instance v3, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-direct {v3, v2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;-><init>(Lorg/fourthline/cling/model/meta/Device;)V

    .line 80
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDevice()Lcom/kantv/ui/androidupnpdemo/entity/IDevice;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-interface {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;->getSelectedDevice()Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    move-result-object v0

    return-object v0
.end method

.method public registerAVTransport(Landroid/content/Context;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;->registerAVTransport(Landroid/content/Context;)V

    return-void
.end method

.method public registerRenderingControl(Landroid/content/Context;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;->registerRenderingControl(Landroid/content/Context;)V

    return-void
.end method

.method public searchDevices()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->search()V

    :cond_0
    return-void
.end method

.method public setDeviceManager(Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    return-void
.end method

.method public setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mDeviceManager:Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;->setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    return-void
.end method

.method public setUpnpService(Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->mUpnpService:Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    return-void
.end method
