.class Lcom/kantv/ui/activity/VideoPlayActivity$10$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$10;->onDeviceAdded(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$10;

.field final synthetic val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$10;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$10;

    iput-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 649
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    check-cast v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceAdded mBrowseRegistryListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$10;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v0

    sget-object v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    iput-object v2, v0, Lcom/kantv/ui/manager/UpnpManager;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    const/4 v0, 0x0

    .line 653
    :goto_0
    sget-object v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 654
    sget-object v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "       "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-object v3, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 658
    invoke-virtual {v2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    .line 659
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$10;

    iget-object v4, v4, Lcom/kantv/ui/activity/VideoPlayActivity$10;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v4}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v4

    iget-object v4, v4, Lcom/kantv/ui/manager/UpnpManager;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 660
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    .line 661
    invoke-static {v2}, Lcom/kantv/common/utils/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 664
    :cond_0
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$10;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity$10;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->setingProgress()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
