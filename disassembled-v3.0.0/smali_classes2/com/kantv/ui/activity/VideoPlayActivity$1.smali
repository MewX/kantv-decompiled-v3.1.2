.class Lcom/kantv/ui/activity/VideoPlayActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$1;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "VideoPlayActivity"

    const-string v0, "mUpnpServiceConnection onServiceConnected"

    .line 345
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    check-cast p2, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;

    .line 348
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;->getService()Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    move-result-object p1

    .line 350
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p2

    .line 351
    invoke-virtual {p2, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setUpnpService(Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;)V

    .line 352
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;

    invoke-direct {p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;-><init>()V

    invoke-virtual {p2, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setDeviceManager(Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;)V

    .line 354
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$1;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$100(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 356
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->searchDevices()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "VideoPlayActivity"

    const-string v0, "mUpnpServiceConnection onServiceDisconnected"

    .line 361
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setUpnpService(Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;)V

    return-void
.end method
