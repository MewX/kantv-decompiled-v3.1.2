.class Lcom/kantv/video/KTVideoPlayer$8;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->moreHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/video/KTVideoPlayer;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$8;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 314
    new-instance v0, Lcom/tandong/bottomview/view/BottomView;

    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$8;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/kantv/video/R$style;->BottomViewTheme_Defalut:I

    sget v3, Lcom/kantv/video/R$layout;->video_guide:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 315
    sget v1, Lcom/kantv/video/R$style;->BottomToTopAnim:I

    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 v1, 0x1

    .line 316
    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 317
    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$8;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/kantv/video/R$id;->guide_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/kantv/video/KTVideoPlayer;->access$1502(Lcom/kantv/video/KTVideoPlayer;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 318
    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$8;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v1}, Lcom/kantv/video/KTVideoPlayer;->access$1500(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/kantv/video/KTVideoPlayer$8$1;

    invoke-direct {v2, p0, v0}, Lcom/kantv/video/KTVideoPlayer$8$1;-><init>(Lcom/kantv/video/KTVideoPlayer$8;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$8;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->onVideoPause()V

    .line 331
    invoke-static {}, Lcom/kantv/video/KTVideoPlayer;->access$1600()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/kantv/video/KTVideoPlayer;->access$1600()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method
