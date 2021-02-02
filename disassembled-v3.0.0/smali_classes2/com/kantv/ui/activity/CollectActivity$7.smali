.class Lcom/kantv/ui/activity/CollectActivity$7;
.super Lcom/kantv/common/api/CommonCallBack;
.source "CollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity;->initRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CollectActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 21
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

    move-object/from16 v0, p0

    .line 356
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 357
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CollectActivity;->access$900(Lcom/kantv/ui/activity/CollectActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/CollectActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/CollectActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 360
    :cond_1
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->json:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 361
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->json:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v2, "status"

    .line 363
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "data"

    .line 364
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v2, "collect"

    .line 366
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 367
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 369
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 370
    invoke-static {v1, v2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 371
    iget-object v4, v0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v4}, Lcom/kantv/ui/activity/CollectActivity;->access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;

    move-result-object v4

    new-instance v15, Lcom/kantv/ui/bean/String15Bean;

    const-string v5, "_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "photo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "year"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "tvcountry"

    .line 372
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "score"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "seo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "totalcount"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "director"

    .line 373
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "actor"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "is_update"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v17, "0"

    const-string v18, "0"

    const-string v19, ""

    const-string v20, ""

    move-object v5, v15

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    invoke-direct/range {v5 .. v20}, Lcom/kantv/ui/bean/String15Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 375
    :cond_4
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CollectActivity;->access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 376
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CollectActivity;->access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 378
    :cond_5
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/CollectActivity;->access$100(Lcom/kantv/ui/activity/CollectActivity;)I

    goto :goto_1

    .line 384
    :cond_6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "401"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\u767b\u9646\u72b6\u6001\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646"

    .line 385
    invoke-static {v1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 386
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    .line 387
    iget-object v1, v0, Lcom/kantv/ui/activity/CollectActivity$7;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/CollectActivity;->finish()V

    :cond_7
    :goto_1
    return-void
.end method
