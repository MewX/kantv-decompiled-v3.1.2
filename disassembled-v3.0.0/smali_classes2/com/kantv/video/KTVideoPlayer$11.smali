.class Lcom/kantv/video/KTVideoPlayer$11;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->setRecord(Lcom/kantv/common/bean/PlayRecordBean;ZLjava/lang/String;Ljava/lang/String;)V
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

    .line 742
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$11;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$11;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2300(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$11;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2500(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5df2\u4e3a\u60a8\u8df3\u8fc7\u7247\u5934\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$11;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2600(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$11;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2700(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$11;->this$0:Lcom/kantv/video/KTVideoPlayer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->access$2802(Lcom/kantv/video/KTVideoPlayer;Landroid/os/Handler;)Landroid/os/Handler;

    .line 750
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$11;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2800(Lcom/kantv/video/KTVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$11$1;

    invoke-direct {v1, p0}, Lcom/kantv/video/KTVideoPlayer$11$1;-><init>(Lcom/kantv/video/KTVideoPlayer$11;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
