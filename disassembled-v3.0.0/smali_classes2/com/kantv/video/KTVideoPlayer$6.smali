.class Lcom/kantv/video/KTVideoPlayer$6;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;


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

    .line 246
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClick()V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$300(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->access$400(Lcom/kantv/video/KTVideoPlayer;I)V

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$508(Lcom/kantv/video/KTVideoPlayer;)I

    .line 258
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$600(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 259
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$700(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$string;->prev_tv:I

    invoke-static {v1}, Lcom/kantv/common/utils/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v4}, Lcom/kantv/video/KTVideoPlayer;->access$500(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$800(Lcom/kantv/video/KTVideoPlayer;)V

    :goto_1
    return-void
.end method

.method public onSingleClick()V
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$600(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$508(Lcom/kantv/video/KTVideoPlayer;)I

    .line 268
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$700(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$string;->prev_tv:I

    invoke-static {v1}, Lcom/kantv/common/utils/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v4}, Lcom/kantv/video/KTVideoPlayer;->access$500(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$900(Lcom/kantv/video/KTVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$900(Lcom/kantv/video/KTVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    iget-object v1, v1, Lcom/kantv/video/KTVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$6;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$800(Lcom/kantv/video/KTVideoPlayer;)V

    :cond_0
    return-void
.end method
