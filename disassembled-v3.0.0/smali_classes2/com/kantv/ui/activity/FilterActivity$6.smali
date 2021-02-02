.class Lcom/kantv/ui/activity/FilterActivity$6;
.super Lcom/kantv/common/api/CommonCallBack;
.source "FilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity;->requestFilter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 12
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

    .line 422
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 423
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$1000(Lcom/kantv/ui/activity/FilterActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 425
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 427
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "data"

    .line 428
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "rows"

    .line 430
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 431
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 432
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 433
    invoke-static {p1, p2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/FilterActivity;->access$200(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/FilterActivity;->access$200(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v11, Lcom/kantv/ui/bean/String8Bean;

    const-string v2, "descript"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "score"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "photo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "seo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "videoTag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    const-string p1, "\u6ca1\u6709\u7b5b\u9009\u5230\u60a8\u60f3\u8981\u7684\u89c6\u9891\u8d44\u6e90\uff01"

    .line 438
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 440
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$300(Lcom/kantv/ui/activity/FilterActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 441
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$300(Lcom/kantv/ui/activity/FilterActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 442
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz p1, :cond_7

    .line 443
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$6;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    :cond_7
    return-void
.end method
