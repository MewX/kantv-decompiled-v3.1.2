.class Lcom/kantv/ui/activity/SearchActivity$6;
.super Lcom/kantv/common/api/CommonCallBack;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchActivity;->initRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$6;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
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

    .line 287
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 288
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 289
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "status"

    .line 291
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "data"

    .line 292
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "hots"

    .line 294
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 296
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 297
    invoke-static {p1, p2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/activity/SearchActivity$6;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/SearchActivity;->access$300(Lcom/kantv/ui/activity/SearchActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/kantv/ui/activity/SearchActivity$6;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/SearchActivity;->access$300(Lcom/kantv/ui/activity/SearchActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/bean/String4Bean;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "seo"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/kantv/ui/bean/String4Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 303
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$6;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchActivity;->access$400(Lcom/kantv/ui/activity/SearchActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 304
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$6;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchActivity;->access$400(Lcom/kantv/ui/activity/SearchActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method
