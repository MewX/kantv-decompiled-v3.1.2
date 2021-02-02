.class Lcom/kantv/video/KTVideoPlayer$9$1;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$9;

.field final synthetic val$on_close:Landroid/view/View;

.field final synthetic val$play_over:Landroid/view/View;

.field final synthetic val$play_over_30:Landroid/view/View;

.field final synthetic val$play_over_60:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$9;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->val$play_over:Landroid/view/View;

    iput-object p3, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->val$play_over_30:Landroid/view/View;

    iput-object p4, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->val$play_over_60:Landroid/view/View;

    iput-object p5, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->val$on_close:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->val$play_over:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 354
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->val$play_over_30:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 355
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->val$play_over_60:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 356
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->val$on_close:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 357
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kantv/video/KTVideoPlayer;->setPlay_delay_state(I)V

    .line 358
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$9$1;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setCurrent_play_delay(I)V

    const/4 v0, 0x1

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9009\u62e9\u9000\u51fa\u64ad\u653e\u6a21\u5f0f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayActivity"

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
