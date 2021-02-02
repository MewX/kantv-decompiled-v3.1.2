.class public Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;
.super Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;
.source "ClingUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;
    }
.end annotation


# instance fields
.field private mLocalDevice:Lorg/fourthline/cling/model/meta/LocalDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->mLocalDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDevice()Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->mLocalDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->onCreate()V

    .line 26
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;-><init>(Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;->binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 31
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->onDestroy()V

    return-void
.end method
