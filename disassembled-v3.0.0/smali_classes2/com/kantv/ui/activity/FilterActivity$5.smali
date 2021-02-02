.class Lcom/kantv/ui/activity/FilterActivity$5;
.super Lcom/kantv/common/api/CommonCallBack;
.source "FilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity;->initRequest()V
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

    .line 338
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$5;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
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

    .line 341
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 342
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$5;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$700(Lcom/kantv/ui/activity/FilterActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$5;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 345
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$5;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/FilterActivity;->access$802(Lcom/kantv/ui/activity/FilterActivity;Ljava/util/List;)Ljava/util/List;

    .line 346
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$5;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 348
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "data"

    .line 349
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "filter"

    .line 351
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 352
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 353
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-static {p1, v0}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "childs"

    .line 356
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 357
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 358
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 359
    invoke-static {v2, v3}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 360
    new-instance v5, Lcom/kantv/ui/bean/FilterBean;

    const-string v6, "tid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lcom/kantv/ui/bean/FilterBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 363
    :cond_3
    iget-object v2, p0, Lcom/kantv/ui/activity/FilterActivity$5;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/FilterActivity;->access$800(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$5;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FilterActivity;->access$900(Lcom/kantv/ui/activity/FilterActivity;)V

    .line 366
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$5;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/FilterActivity;->access$400(Lcom/kantv/ui/activity/FilterActivity;Z)V

    goto :goto_2

    :cond_5
    const-string p1, "\u670d\u52a1\u5668\u6ca1\u6709\u54cd\u5e94\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 370
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method
