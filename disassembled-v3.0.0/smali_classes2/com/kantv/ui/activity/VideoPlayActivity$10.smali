.class Lcom/kantv/ui/activity/VideoPlayActivity$10;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initListeners()V
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

    .line 644
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity$10$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$10;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$10;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$10$2;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity$10$2;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$10;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
