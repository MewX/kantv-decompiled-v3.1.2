.class Lcom/kantv/ui/activity/VideoPlayActivity$19$2;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$19;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$19;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1313
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1314
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 1315
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1402(Lcom/kantv/ui/activity/VideoPlayActivity;Z)Z

    .line 1316
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3002(Lcom/kantv/ui/activity/VideoPlayActivity;Z)Z

    .line 1317
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$19$2$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$19$2$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$19$2;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1324
    :try_start_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "seconds"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isStr2Num(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1326
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "opentype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3102(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1327
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3202(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1328
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3300(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1329
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3300(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1330
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3300(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1332
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2700(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result p1

    if-nez p1, :cond_2

    .line 1333
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adExitTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2500(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adExitLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1338
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
