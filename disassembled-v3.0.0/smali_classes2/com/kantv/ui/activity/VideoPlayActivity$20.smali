.class Lcom/kantv/ui/activity/VideoPlayActivity$20;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

.field final synthetic val$part:Ljava/lang/String;

.field final synthetic val$part_id:Ljava/lang/String;

.field final synthetic val$parttype:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1456
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput-object p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->val$part:Ljava/lang/String;

    iput-object p5, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->val$part_id:Ljava/lang/String;

    iput-object p6, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->val$parttype:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1576
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 1577
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4200(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 9
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

    .line 1459
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1460
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3600(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1461
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 1462
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->json:Ljava/lang/String;

    const-string p2, "\u64ad\u653e\u63a5\u53e3\u8fd4\u56de\u53c2\u6570"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1465
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p2, "data"

    .line 1466
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 1468
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v0, "playinfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$502(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string p2, "userInfo"

    .line 1469
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "info"

    .line 1470
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "other_video"

    .line 1471
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1473
    :try_start_0
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v3, "kafka_domain"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$602(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1475
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_3

    .line 1478
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v3, "comm_nums"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3702(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    :cond_3
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$700(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)V

    .line 1481
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "url"

    const-string v4, "0"

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 1482
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    .line 1483
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "shareUrl"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->shareurl:Ljava/lang/String;

    .line 1484
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "uniShareUrl"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->uniShareUrl:Ljava/lang/String;

    .line 1485
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "history"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$802(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1486
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1487
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "part"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1488
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1489
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->scoreTV:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 1490
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->scoreTV:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    const-string v6, "uid"

    .line 1495
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1496
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1497
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput-boolean v2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    goto :goto_1

    .line 1499
    :cond_5
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput-boolean v5, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    :cond_6
    :goto_1
    const-string p2, "photo"

    const-string v6, "title"

    if-eqz v0, :cond_8

    .line 1504
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v8, "user_score"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$3802(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1505
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$902(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1506
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/kantv/ui/activity/VideoPlayActivity;->filmImgUrl:Ljava/lang/String;

    .line 1507
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v7, v7, Lcom/kantv/ui/activity/VideoPlayActivity;->filmImgUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1508
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/kantv/ui/activity/VideoPlayActivity$20$1;

    invoke-direct {v8, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$20$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$20;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1513
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1516
    :cond_7
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v8, "show_partinfoSort"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/kantv/ui/activity/VideoPlayActivity;->showInfoSort:Ljava/lang/String;

    .line 1517
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->showInfoSort:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->showInfoSort:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1518
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v0, :cond_8

    .line 1519
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v0, v5}, Lcom/kantv/ui/fragment/VideoDetailFragment;->setOrder(Z)V

    .line 1523
    :cond_8
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1524
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "must_shared"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 1525
    invoke-static {}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1526
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/kantv/ui/activity/VideoPlayActivity$20$2;

    invoke-direct {v4, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$20$2;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$20;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1535
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "share"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1536
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1538
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1539
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/VideoPlayActivity;->shareImg:Landroid/widget/ImageView;

    invoke-static {p2, v4}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1541
    :cond_9
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v4, "letters_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1102(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1544
    :cond_a
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "share_plan"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 1545
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 1547
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1548
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4002(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    const-string v0, "desc"

    .line 1550
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1551
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4102(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1555
    :cond_c
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1556
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1559
    :cond_d
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1560
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v2, p2, :cond_e

    .line 1561
    invoke-static {v1, v2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 1562
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tvid"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "circuit"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v5, v6, v7, p2}, Lcom/kantv/ui/bean/String4Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1566
    :cond_e
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz p2, :cond_f

    .line 1567
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->val$part:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->val$part_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->val$parttype:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initInfoView(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_f
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$20;->val$parttype:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1200(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)V

    :cond_10
    return-void
.end method
