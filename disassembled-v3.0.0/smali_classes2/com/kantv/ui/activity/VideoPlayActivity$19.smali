.class Lcom/kantv/ui/activity/VideoPlayActivity$19;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initAdRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 1249
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    const-string v0, "seconds"

    .line 1252
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1253
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2300(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1254
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1255
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1257
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "200"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "data"

    .line 1258
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "play_preplay"

    .line 1260
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1261
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p2, "ads"

    .line 1263
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1264
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2402(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 1265
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2400(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1266
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$19$1;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$19$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$19;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1276
    :try_start_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2502(Lcom/kantv/ui/activity/VideoPlayActivity;I)I

    const/4 p1, 0x0

    .line 1277
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2400(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 1278
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2400(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2602(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1279
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 1280
    :cond_4
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isStr2Num(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1281
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2500(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2502(Lcom/kantv/ui/activity/VideoPlayActivity;I)I

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1284
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2702(Lcom/kantv/ui/activity/VideoPlayActivity;I)I

    .line 1285
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2400(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONArray;

    move-result-object p2

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2700(Lcom/kantv/ui/activity/VideoPlayActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2602(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1286
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2400(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2802(Lcom/kantv/ui/activity/VideoPlayActivity;I)I

    .line 1287
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 1288
    :cond_7
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {p1}, Lcom/kantv/video/util/AudioUtil;->getMediaVolume()I

    move-result p1

    if-lez p1, :cond_8

    .line 1289
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adSoundImg:Landroid/widget/ImageView;

    const p2, 0x7f080069

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1291
    :cond_8
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adSoundImg:Landroid/widget/ImageView;

    const p2, 0x7f080068

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1293
    :goto_2
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "photo"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1294
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 1295
    :cond_9
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2900(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1296
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2900(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1298
    :cond_a
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1299
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$19;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1348
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$19$3;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$19;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1403
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$19$4;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$19;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1413
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 1414
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1416
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_3
    return-void
.end method
