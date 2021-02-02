.class Lcom/kantv/video/KTVideoPlayer$8$1;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$8;

.field final synthetic val$mBottomView:Lcom/tandong/bottomview/view/BottomView;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$8;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$8$1;->this$1:Lcom/kantv/video/KTVideoPlayer$8;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$8$1;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 321
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$8$1;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 323
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "video_guide"

    invoke-static {p1, v1, v0}, Lcom/kantv/video/util/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$8$1;->this$1:Lcom/kantv/video/KTVideoPlayer$8;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$8;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->onVideoResume()V

    .line 325
    invoke-static {}, Lcom/kantv/video/KTVideoPlayer;->access$1600()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 326
    invoke-static {}, Lcom/kantv/video/KTVideoPlayer;->access$1600()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_1
    return-void
.end method
