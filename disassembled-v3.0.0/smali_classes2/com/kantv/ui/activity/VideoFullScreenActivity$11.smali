.class Lcom/kantv/ui/activity/VideoFullScreenActivity$11;
.super Ljava/util/TimerTask;
.source "VideoFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->initView2()V
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

    .line 603
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
