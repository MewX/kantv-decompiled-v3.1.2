.class Lcom/kantv/ui/fragment/TvDefaultFragment$2;
.super Lcom/kantv/common/api/CommonCallBack;
.source "TvDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;->initTodayUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
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

    .line 232
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 233
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$100(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 235
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 237
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :try_start_0
    const-string p2, "data"

    .line 239
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "update"

    .line 241
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 243
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    const-string v0, "all"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$202(Lcom/kantv/ui/fragment/TvDefaultFragment;I)I

    .line 244
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$200(Lcom/kantv/ui/fragment/TvDefaultFragment;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 245
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz p1, :cond_4

    .line 246
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$200(Lcom/kantv/ui/fragment/TvDefaultFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$300(Lcom/kantv/ui/fragment/TvDefaultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setHeaderRefresh(ILjava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$2;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
