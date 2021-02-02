.class Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveToNormal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 278
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$502(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Z)Z

    .line 279
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$200(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 280
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 284
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 285
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$200(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 286
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$800(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v3}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$700(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getEnlargeImageRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 290
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$900(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "onQuitFullscreen"

    .line 291
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$900(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    move-result-object v0

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v4}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1100(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v4}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1200(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1300(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1400(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->showNavKey(Landroid/content/Context;I)V

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1300(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1500(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z

    move-result v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;->this$0:Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->access$1600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->showSupportActionBar(Landroid/content/Context;ZZ)V

    return-void
.end method
