.class Lcom/kantv/ui/activity/VideoFullScreenActivity$14$2;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity$14;->onDeviceRemoved(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$14;

.field final synthetic val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$14;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$14;

    iput-object p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$2;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 788
    sget-object v0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$2;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    check-cast v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceRemoved mBrowseRegistryListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$2;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFullScreenActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$2;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$14;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    iput-object v1, v0, Lcom/kantv/ui/manager/UpnpManager;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method
