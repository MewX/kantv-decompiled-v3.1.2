.class public Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceManager"


# instance fields
.field private mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

.field private mSubscriptionControl:Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSubscriptionControl:Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;

    return-void
.end method


# virtual methods
.method public cleanSelectedDevice()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->setSelected(Z)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSubscriptionControl:Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSubscriptionControl:Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->destroy()V

    :cond_0
    return-void
.end method

.method public getSelectedDevice()Lcom/kantv/ui/androidupnpdemo/entity/IDevice;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    return-object v0
.end method

.method public registerAVTransport(Landroid/content/Context;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSubscriptionControl:Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-virtual {v0, v1, p1}, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->registerAVTransport(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;Landroid/content/Context;)V

    return-void
.end method

.method public registerRenderingControl(Landroid/content/Context;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSubscriptionControl:Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-virtual {v0, v1, p1}, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->registerRenderingControl(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;Landroid/content/Context;)V

    return-void
.end method

.method public setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "Change selected device."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    check-cast p1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 50
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getClingDeviceList()Ljava/util/Collection;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 53
    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->setSelected(Z)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->setSelected(Z)V

    .line 59
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/Config;->getInstance()Lcom/kantv/ui/androidupnpdemo/Config;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kantv/ui/androidupnpdemo/Config;->setHasRelTimePosCallback(Z)V

    return-void
.end method
