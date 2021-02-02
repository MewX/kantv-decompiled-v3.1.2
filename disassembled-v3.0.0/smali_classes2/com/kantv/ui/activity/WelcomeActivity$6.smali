.class Lcom/kantv/ui/activity/WelcomeActivity$6;
.super Lcom/kantv/common/api/CommonCallBack;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/WelcomeActivity;->pullDomain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/WelcomeActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
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

    const-string v0, "### getDomain ###"

    const-string v1, "onFailure"

    .line 447
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    .line 449
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 450
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
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

    const-string v0, "jsondomain"

    const-string v1, "domain"

    .line 367
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    const-string p1, "### getDomain ###"

    .line 368
    iget-object p2, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->json:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 370
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "status"

    .line 372
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "200"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "http://"

    const/4 v3, 0x1

    if-eqz p2, :cond_b

    :try_start_1
    const-string p2, "data"

    .line 373
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 375
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/log/AILog;->json(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v4, 0x0

    if-nez p2, :cond_9

    .line 378
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 381
    :cond_1
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "https"

    const-string v6, "http"

    const-string v7, ""

    if-nez v1, :cond_4

    :try_start_2
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 387
    :cond_3
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v8, "*** currentDomain ***"

    .line 389
    invoke-static {v8, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "current_domain"

    invoke-static {v8, v9, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move-object v1, v7

    .line 392
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-le v8, v3, :cond_7

    .line 393
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 395
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 396
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "https://"

    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 397
    :cond_5
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 398
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 400
    :cond_6
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    const-string v2, "*** backupDomain ***"

    .line 402
    invoke-static {v2, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "backup_domain"

    invoke-static {v2, v3, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    :cond_7
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 407
    new-instance p2, Lcom/kantv/common/api/Api;

    invoke-direct {p2}, Lcom/kantv/common/api/Api;-><init>()V

    .line 408
    invoke-virtual {p2, v1}, Lcom/kantv/common/api/Api;->setDomain(Ljava/lang/String;)V

    .line 410
    :cond_8
    iget-object p2, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iget-boolean p2, p2, Lcom/kantv/ui/activity/WelcomeActivity;->isFirstPullDomain:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/WelcomeActivity;->access$900(Lcom/kantv/ui/activity/WelcomeActivity;)V

    .line 415
    :cond_9
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/kantv/common/utils/StringUtils;->isJSONKeyAndValueEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p2, :cond_a

    .line 417
    :try_start_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 418
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "json_domain"

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 420
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    :cond_a
    :goto_3
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "first_pull_domain"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 427
    :cond_b
    invoke-static {}, Lcom/kantv/common/api/Api;->getDomain()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/kantv/common/api/Api;->nativeDomain:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 428
    new-instance p1, Lcom/kantv/common/api/Api;

    invoke-direct {p1}, Lcom/kantv/common/api/Api;-><init>()V

    .line 429
    sget-object p2, Lcom/kantv/common/api/Api;->nativeDomain:[Ljava/lang/String;

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Lcom/kantv/common/api/Api;->setDomain(Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$700(Lcom/kantv/ui/activity/WelcomeActivity;)V

    goto :goto_4

    :cond_c
    const-string p1, "*** PULL DOMAIN ERROR***"

    .line 432
    invoke-static {p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    goto :goto_4

    .line 436
    :cond_d
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    const-string p1, "*** PULL DOMAIN EMPTY***"

    .line 437
    invoke-static {p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 440
    iget-object p2, p0, Lcom/kantv/ui/activity/WelcomeActivity$6;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    .line 441
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_4
    return-void
.end method
