.class Lcom/kantv/video/KTVideoPlayer$10;
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

    .line 706
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2300(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2500(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u4e0a\u6b21\u89c2\u770b\u81f3\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v2}, Lcom/kantv/video/KTVideoPlayer;->access$2400(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/bean/PlayRecordBean;

    move-result-object v2

    iget-object v2, v2, Lcom/kantv/common/bean/PlayRecordBean;->part:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v1}, Lcom/kantv/video/KTVideoPlayer;->access$2400(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/bean/PlayRecordBean;

    move-result-object v1

    iget v1, v1, Lcom/kantv/common/bean/PlayRecordBean;->time:I

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 713
    iget-object v2, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v2}, Lcom/kantv/video/KTVideoPlayer;->access$2400(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/bean/PlayRecordBean;

    move-result-object v2

    iget v2, v2, Lcom/kantv/common/bean/PlayRecordBean;->time:I

    div-int/lit16 v2, v2, 0x3e8

    rem-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 714
    iget-object v2, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v2}, Lcom/kantv/video/KTVideoPlayer;->access$2600(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2700(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5904\uff0c\u770bTV\u4e3a\u60a8\u81ea\u52a8\u7eed\u64ad"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->access$2802(Lcom/kantv/video/KTVideoPlayer;Landroid/os/Handler;)Landroid/os/Handler;

    .line 717
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2800(Lcom/kantv/video/KTVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$10$1;

    invoke-direct {v1, p0}, Lcom/kantv/video/KTVideoPlayer$10$1;-><init>(Lcom/kantv/video/KTVideoPlayer$10;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
