.class Lcom/kantv/ui/activity/VideoPlayActivity$19$3;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 1348
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 11

    .line 1352
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2708(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    .line 1353
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3300(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3300(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1354
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2700(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result p1

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2800(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 1356
    :try_start_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2400(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2700(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2602(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1357
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1358
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1359
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1360
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1361
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 1363
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 1366
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1367
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3002(Lcom/kantv/ui/activity/VideoPlayActivity;Z)Z

    .line 1368
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {p1}, Lcom/kantv/video/util/AudioUtil;->getMediaVolume()I

    move-result p1

    if-gtz p1, :cond_4

    .line 1369
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3400(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result p1

    if-lez p1, :cond_4

    .line 1370
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3400(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/kantv/video/util/AudioUtil;->setMediaVolume(I)V

    .line 1375
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentState()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 1382
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getStartButton()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 1383
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 1384
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1385
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p1, v0, v1, v1}, Lcom/kantv/video/KTVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto/16 :goto_2

    .line 1388
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    const-string v0, "https://www.youtube.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1389
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3500(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    .line 1395
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 1398
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v2, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string v0, "prologue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    const-string p1, ""

    :goto_1
    move-object v8, p1

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "huawei"

    const-string v9, ""

    invoke-virtual/range {v2 .. v10}, Lcom/kantv/ui/activity/VideoPlayActivity;->switchPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method
