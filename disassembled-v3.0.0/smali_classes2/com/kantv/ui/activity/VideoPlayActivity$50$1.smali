.class Lcom/kantv/ui/activity/VideoPlayActivity$50$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$50;->receive(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

.field final synthetic val$finalCurettime:I

.field final synthetic val$stTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$50;ILjava/lang/String;)V
    .locals 0

    .line 3001
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iput p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->val$finalCurettime:I

    iput-object p3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->val$stTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3004
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->progressBarSb:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->val$finalCurettime:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3006
    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->val$finalCurettime:I

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    const-string v2, "\u64ad\u653e\u7ed3\u675f"

    const-string v3, "\u6b63\u5728\u6295\u5c4f\u4e2d"

    if-ne v0, v1, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3011
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-boolean v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    if-eqz v0, :cond_2

    .line 3012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPositionInfo isnotshow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-boolean v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->val$finalCurettime:I

    if-nez v0, :cond_1

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPositionInfo isnotshow9"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-boolean v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3017
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3020
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$50;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$50;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentTimeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$50$1;->val$stTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
