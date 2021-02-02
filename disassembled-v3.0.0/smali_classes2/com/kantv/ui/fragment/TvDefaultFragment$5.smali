.class Lcom/kantv/ui/fragment/TvDefaultFragment$5;
.super Lcom/kantv/common/api/CommonCallBack;
.source "TvDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;->initRandomLookRequest(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iput-object p4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->val$data:Ljava/lang/String;

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

    .line 468
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 469
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->val$data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->val$data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$900(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 440
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 441
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$800(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 443
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->json:Ljava/lang/String;

    const-string p2, "\u9996\u9875\u968f\u4fbf\u770b\u770b\u6570\u636e"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 446
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 448
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->val$data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 449
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->json:Ljava/lang/String;

    const-string v0, "randomlook_json"

    invoke-static {p1, v0, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->json:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$900(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz p1, :cond_5

    .line 453
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    goto :goto_0

    .line 455
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->val$data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 456
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->val$data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$900(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->val$data:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 461
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$5;->val$data:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$900(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
