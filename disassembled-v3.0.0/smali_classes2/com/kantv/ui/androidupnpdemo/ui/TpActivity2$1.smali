.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 136
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mUpnpServiceConnection onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    check-cast p2, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;

    .line 139
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService$LocalBinder;->getService()Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    move-result-object p1

    .line 141
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p2

    .line 142
    invoke-virtual {p2, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setUpnpService(Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;)V

    .line 143
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;

    invoke-direct {p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/DeviceManager;-><init>()V

    invoke-virtual {p2, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setDeviceManager(Lcom/kantv/ui/androidupnpdemo/service/manager/IDeviceManager;)V

    .line 145
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 147
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->searchDevices()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 152
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mUpnpServiceConnection onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setUpnpService(Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;)V

    return-void
.end method
