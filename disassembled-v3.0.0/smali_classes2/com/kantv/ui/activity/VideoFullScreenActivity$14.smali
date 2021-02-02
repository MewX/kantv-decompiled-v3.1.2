.class Lcom/kantv/ui/activity/VideoFullScreenActivity$14;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->initListeners()V
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

    .line 757
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$1;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$14;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$14;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$2;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity$14$2;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$14;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
