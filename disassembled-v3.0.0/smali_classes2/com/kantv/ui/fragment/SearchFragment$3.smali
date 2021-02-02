.class Lcom/kantv/ui/fragment/SearchFragment$3;
.super Lcom/kantv/common/api/CommonCallBack;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/SearchFragment;->initRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/SearchFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/SearchFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 26
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

    move-object/from16 v1, p0

    .line 147
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 148
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$400(Lcom/kantv/ui/fragment/SearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/SearchFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/SearchFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 151
    :cond_1
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->json:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 153
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->json:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v2, "status"

    .line 155
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 156
    iget-object v2, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kantv/ui/fragment/SearchFragment;->access$502(Lcom/kantv/ui/fragment/SearchFragment;Z)Z

    const-string v2, "data"

    .line 157
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v2, "rows"

    .line 159
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const-string v2, "row"

    .line 161
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 162
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v4, ""

    move-object v0, v4

    move-object v6, v0

    const/4 v5, 0x0

    .line 165
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_c

    .line 166
    invoke-static {v2, v5}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_5

    return-void

    :cond_5
    const-string v8, "actor"

    .line 168
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 169
    invoke-static {v8}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v9

    const-string v10, "/"

    const-string v11, "name"

    if-eqz v9, :cond_7

    move-object v12, v0

    const/4 v9, 0x0

    .line 170
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_8

    .line 171
    invoke-static {v8, v9}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 174
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    move-object v12, v0

    :cond_8
    const-string v0, "director"

    .line 181
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 182
    invoke-static {v8}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v9, v6

    const/4 v6, 0x0

    .line 183
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_a

    .line 184
    invoke-static {v8, v6}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 187
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 189
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    move-object v6, v9

    .line 194
    :cond_b
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$000(Lcom/kantv/ui/fragment/SearchFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lcom/kantv/ui/bean/String12Bean;

    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v9, "photo"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "title"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v9, "year"

    .line 195
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v9, "score"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v9, "totalcount"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v9, "seo"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v9, "url"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v9, "tvclass_name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v13, v8

    move-object/from16 v17, v12

    move-object/from16 v18, v6

    invoke-direct/range {v13 .. v25}, Lcom/kantv/ui/bean/String12Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object v0, v12

    goto/16 :goto_0

    .line 197
    :cond_c
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$100(Lcom/kantv/ui/fragment/SearchFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 198
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$100(Lcom/kantv/ui/fragment/SearchFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 200
    :cond_d
    iget-object v0, v1, Lcom/kantv/ui/fragment/SearchFragment$3;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$200(Lcom/kantv/ui/fragment/SearchFragment;)I

    :cond_e
    :goto_5
    return-void
.end method
