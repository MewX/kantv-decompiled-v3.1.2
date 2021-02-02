.class Lcom/kantv/ui/fragment/TvDefaultFragment$4;
.super Lcom/kantv/common/api/CommonCallBack;
.source "TvDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;->initWeatherRate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

.field final synthetic val$Data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iput-object p4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->val$Data:Ljava/lang/String;

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

    .line 323
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 324
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$600(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 326
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 328
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 330
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->json:Ljava/lang/String;

    const-string v0, "video_rateweather_json"

    invoke-static {p1, v0, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "video_rateweather_time"

    invoke-static {p1, v0, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->json:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$700(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->val$Data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 335
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->val$Data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$700(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->val$Data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 340
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$4;->val$Data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$700(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
