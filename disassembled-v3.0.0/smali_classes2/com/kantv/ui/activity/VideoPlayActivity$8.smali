.class Lcom/kantv/ui/activity/VideoPlayActivity$8;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initView()V
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

    .line 588
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$8;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Z)V
    .locals 0

    .line 591
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$8;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$8;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method
