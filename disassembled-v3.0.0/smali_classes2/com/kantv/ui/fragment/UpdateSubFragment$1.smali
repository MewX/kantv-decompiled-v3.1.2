.class Lcom/kantv/ui/fragment/UpdateSubFragment$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "UpdateSubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/UpdateSubFragment;->initRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/UpdateSubFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$1;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

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

    .line 92
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 93
    iget-object v1, v0, Lcom/kantv/ui/fragment/UpdateSubFragment$1;->json:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "status"

    .line 95
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    iget-object v2, v0, Lcom/kantv/ui/fragment/UpdateSubFragment$1;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$002(Lcom/kantv/ui/fragment/UpdateSubFragment;Z)Z

    const-string v2, "data"

    .line 97
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "paihang"

    .line 99
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 100
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 102
    invoke-static {v1, v3}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 104
    :cond_2
    iget-object v4, v0, Lcom/kantv/ui/fragment/UpdateSubFragment$1;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-static {v4}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$100(Lcom/kantv/ui/fragment/UpdateSubFragment;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 105
    iget-object v4, v0, Lcom/kantv/ui/fragment/UpdateSubFragment$1;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-static {v4}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$100(Lcom/kantv/ui/fragment/UpdateSubFragment;)Ljava/util/List;

    move-result-object v4

    new-instance v15, Lcom/kantv/ui/bean/String15Bean;

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "score"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "director"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "actor"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "photo"

    .line 106
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "year"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "channel_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "tvclass_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "seo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "totalcount"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v5, "descript"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v19, ""

    const-string v20, ""

    move-object v5, v15

    move-object/from16 p1, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    invoke-direct/range {v5 .. v20}, Lcom/kantv/ui/bean/String15Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    move-object/from16 p1, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 109
    :cond_4
    iget-object v1, v0, Lcom/kantv/ui/fragment/UpdateSubFragment$1;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$200(Lcom/kantv/ui/fragment/UpdateSubFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 110
    iget-object v1, v0, Lcom/kantv/ui/fragment/UpdateSubFragment$1;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$200(Lcom/kantv/ui/fragment/UpdateSubFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method
