.class public Lcom/kantv/ui/androidupnpdemo/service/SystemService;
.super Landroid/app/Service;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/androidupnpdemo/service/SystemService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemService"


# instance fields
.field private binder:Landroid/os/Binder;

.field private mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

.field private mDeviceVolume:I

.field private mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/service/SystemService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/kantv/ui/androidupnpdemo/service/SystemService$LocalBinder;-><init>(Lcom/kantv/ui/androidupnpdemo/service/SystemService;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->binder:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public getDeviceVolume()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mDeviceVolume:I

    return v0
.end method

.method public getSelectedDevice()Lcom/kantv/ui/androidupnpdemo/entity/IDevice;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->binder:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->run()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->end()V

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mDeviceVolume:I

    return-void
.end method

.method public setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    if-ne p1, v0, :cond_0

    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->TAG:Ljava/lang/String;

    const-string v1, "Change selected device."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    check-cast p1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 78
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->end()V

    .line 82
    :cond_1
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mSelectedDevice:Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 83
    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    .line 84
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    invoke-interface {p2, p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;)V

    .line 86
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.zane.androidupnpdemo.action.change_device"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/service/SystemService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public subscribeMediaRender(Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 0

    return-void
.end method
