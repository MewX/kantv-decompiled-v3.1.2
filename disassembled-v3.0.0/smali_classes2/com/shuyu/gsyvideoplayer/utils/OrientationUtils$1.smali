.class Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$100(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x15e

    if-le p1, v0, :cond_7

    .line 54
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$300(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 55
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$500(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 58
    :cond_3
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$602(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    .line 59
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$302(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    .line 60
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    goto/16 :goto_2

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I

    move-result p1

    if-lez p1, :cond_f

    .line 64
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$702(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    .line 65
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 66
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 67
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 70
    :cond_5
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    .line 74
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$302(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x104

    if-le p1, v0, :cond_b

    const/16 v0, 0x118

    if-ge p1, v0, :cond_b

    .line 80
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$300(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 81
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I

    move-result p1

    if-eq p1, v2, :cond_8

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$600(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 84
    :cond_8
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$502(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    .line 85
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$302(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    .line 86
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    goto/16 :goto_2

    .line 89
    :cond_9
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I

    move-result p1

    if-eq p1, v2, :cond_f

    .line 90
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$702(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    .line 91
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 92
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 93
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_a
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    .line 96
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$302(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    goto/16 :goto_2

    :cond_b
    const/16 v0, 0x50

    if-le p1, v0, :cond_f

    const/16 v0, 0x64

    if-ge p1, v0, :cond_f

    .line 102
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$300(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_d

    .line 103
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I

    move-result p1

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$600(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 106
    :cond_c
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$502(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    .line 107
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$302(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    .line 108
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    goto :goto_2

    .line 110
    :cond_d
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I

    move-result p1

    if-eq p1, v0, :cond_f

    .line 111
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$702(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    .line 112
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Landroid/app/Activity;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 113
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 114
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :cond_e
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I

    .line 117
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->access$302(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z

    :cond_f
    :goto_2
    return-void
.end method
