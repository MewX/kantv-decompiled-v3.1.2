.class Lcom/kantv/ui/activity/VideoPlayActivity$53$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$53;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$53;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$53;)V
    .locals 0

    .line 3099
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$53;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3102
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$53;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$8600(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    .line 3103
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$53;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-eqz v0, :cond_0

    .line 3105
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$53;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 3106
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$53;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3111
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$53;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
