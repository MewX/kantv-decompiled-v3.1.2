.class public Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;
.super Lorg/fourthline/cling/registry/DefaultRegistryListener;
.source "BrowseRegistryListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowseRegistryListener"


# instance fields
.field private mOnDeviceListChangedListener:Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/fourthline/cling/registry/DefaultRegistryListener;-><init>()V

    return-void
.end method

.method private deviceAdded(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 2

    .line 64
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->TAG:Ljava/lang/String;

    const-string v1, "deviceAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->DMR_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/types/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->TAG:Ljava/lang/String;

    const-string v0, "deviceAdded called, but not match"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->mOnDeviceListChangedListener:Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-direct {v0, p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;-><init>(Lorg/fourthline/cling/model/meta/Device;)V

    .line 72
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->addDevice(Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;)V

    .line 73
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->mOnDeviceListChangedListener:Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;

    invoke-interface {p1, v0}, Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;->onDeviceAdded(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public deviceRemoved(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 2

    .line 78
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->TAG:Ljava/lang/String;

    const-string v1, "deviceRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->mOnDeviceListChangedListener:Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getClingDevice(Lorg/fourthline/cling/model/meta/Device;)Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->removeDevice(Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;)V

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->mOnDeviceListChangedListener:Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;

    invoke-interface {v0, p1}, Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;->onDeviceRemoved(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    :cond_0
    return-void
.end method

.method public localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    return-void
.end method

.method public localDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    return-void
.end method

.method public remoteDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->deviceAdded(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 1

    .line 38
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remoteDeviceDiscoveryFailed device: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDisplayString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0, p2}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->deviceRemoved(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    return-void
.end method

.method public remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p2}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->deviceRemoved(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public setOnDeviceListChangedListener(Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->mOnDeviceListChangedListener:Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;

    return-void
.end method
