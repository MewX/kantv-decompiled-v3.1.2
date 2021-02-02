.class Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$11;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 609
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentState()I

    move-result v0

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runOnUiThread currentstate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoFullScreenActivity"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 613
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1100(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 614
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 615
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate arrayJson"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v3, "name"

    .line 618
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 619
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v4, v4, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v4}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "time"

    .line 620
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u60a8\u4e0a\u6b21\u770b\u5728"

    .line 623
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u5904\uff0c\u770bTV\u81ea\u52a8\u4e3a\u4f60\u7eed\u96c6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 626
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x10000

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v5, 0x5

    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x22

    .line 626
    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 629
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1400(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1$1;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/kantv/video/DownloadVideoPlayer;->seekTo(J)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 642
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1500(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    :goto_2
    return-void
.end method
