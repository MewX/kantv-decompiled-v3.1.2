.class Lcom/kantv/ui/fragment/MeFragment$2;
.super Lcom/kantv/common/api/CommonCallBack;
.source "MeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/MeFragment;->initRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/MeFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/MeFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 19
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

    .line 256
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 257
    iget-object v1, v0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/MeFragment;->access$100(Lcom/kantv/ui/fragment/MeFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v1, v0, Lcom/kantv/ui/fragment/MeFragment$2;->json:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 260
    iget-object v1, v0, Lcom/kantv/ui/fragment/MeFragment$2;->json:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "status"

    .line 262
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "data"

    .line 263
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v2, "historyContent"

    .line 265
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 266
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 268
    iget-object v2, v0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/MeFragment;->mHistoryData:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 269
    iget-object v2, v0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/MeFragment;->mHistoryData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    const/4 v3, 0x0

    .line 270
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 271
    invoke-static {v1, v3}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 273
    iget-object v5, v0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object v5, v5, Lcom/kantv/ui/fragment/MeFragment;->mHistoryData:Ljava/util/List;

    new-instance v15, Lcom/kantv/ui/bean/MovieBean;

    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "score"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "photo"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "descript"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "totalcount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "msg"

    .line 274
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v6, "seo"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v6, "videoTag"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    move-object v6, v15

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v4

    invoke-direct/range {v6 .. v18}, Lcom/kantv/ui/bean/MovieBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    :cond_4
    iget-object v1, v0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/MeFragment;->mHistoryData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 277
    iget-object v1, v0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/MeFragment;->watchHistoryRV:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 279
    :cond_5
    iget-object v1, v0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/MeFragment;->mWatchHistoryAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v1, :cond_7

    .line 280
    iget-object v1, v0, Lcom/kantv/ui/fragment/MeFragment$2;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/MeFragment;->mWatchHistoryAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 283
    :cond_6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "401"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\u767b\u9646\u72b6\u6001\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646"

    .line 284
    invoke-static {v1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 285
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    :cond_7
    :goto_1
    return-void
.end method
