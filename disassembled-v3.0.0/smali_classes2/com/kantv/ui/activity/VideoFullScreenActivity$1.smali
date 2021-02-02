.class Lcom/kantv/ui/activity/VideoFullScreenActivity$1;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$1;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "VideoFullScreenActivity"

    const-string v0, "mUpnpServiceConnection onServiceConnected"

    .line 179
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    check-cast p2, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;

    .line 182
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;->getService()Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    move-result-object p1

    .line 184
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p2

    .line 185
    invoke-virtual {p2, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setUpnpService(Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;)V

    .line 186
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;

    invoke-direct {p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;-><init>()V

    invoke-virtual {p2, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setDeviceManager(Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;)V

    .line 188
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$1;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$100(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 190
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->searchDevices()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "VideoFullScreenActivity"

    const-string v0, "mUpnpServiceConnection onServiceDisconnected"

    .line 195
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setUpnpService(Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;)V

    return-void
.end method
