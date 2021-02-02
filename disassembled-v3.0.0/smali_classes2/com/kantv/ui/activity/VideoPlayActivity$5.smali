.class Lcom/kantv/ui/activity/VideoPlayActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "share"

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v3, "playinfo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$502(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v2, "userInfo"

    .line 424
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v2, "info"

    .line 425
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 427
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v4, "kafka_domain"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$602(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v4, v4, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$700(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "part"

    const-string v5, "0"

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 430
    :try_start_1
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v7}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    .line 431
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v7}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "shareUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->shareurl:Ljava/lang/String;

    .line 432
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v7}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "uniShareUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->uniShareUrl:Ljava/lang/String;

    .line 433
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v7}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "history"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$802(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 435
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->scoreTV:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->scoreTV:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 442
    :cond_1
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput-boolean v6, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "photo"

    if-eqz v2, :cond_2

    .line 453
    :try_start_2
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v8, "title"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$902(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/kantv/ui/activity/VideoPlayActivity;->filmImgUrl:Ljava/lang/String;

    .line 455
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v8, "show_partinfoSort"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kantv/ui/activity/VideoPlayActivity;->showInfoSort:Ljava/lang/String;

    .line 456
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->showInfoSort:Ljava/lang/String;

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->showInfoSort:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v2, :cond_2

    .line 458
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v2, v6}, Lcom/kantv/ui/fragment/VideoDetailFragment;->setOrder(Z)V

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 463
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "must_shared"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    invoke-static {}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v7, "-1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 465
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/kantv/ui/activity/VideoPlayActivity$5$1;

    invoke-direct {v7, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$5$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$5;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 475
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 477
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 478
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->shareImg:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 480
    :cond_3
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v3, "letters_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1102(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 487
    :cond_5
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v0, :cond_6

    .line 488
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v3, v3, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v4, "part_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initInfoView(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$5;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0, v5}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1200(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
