.class Lcom/kantv/ui/activity/HistoryActivity$8;
.super Lcom/kantv/common/api/CommonCallBack;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HistoryActivity;->initRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HistoryActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 24
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

    .line 375
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 376
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$1000(Lcom/kantv/ui/activity/HistoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/HistoryActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/HistoryActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 379
    :cond_1
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->json:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 381
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->json:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v2, "status"

    .line 383
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v2, "data"

    .line 384
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v2, "historyContent"

    .line 386
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 387
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 389
    iget-object v2, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/HistoryActivity;->access$200(Lcom/kantv/ui/activity/HistoryActivity;)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 390
    iget-object v2, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v4, 0x0

    .line 392
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 393
    invoke-static {v1, v4}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 394
    iget-object v6, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v6}, Lcom/kantv/ui/activity/HistoryActivity;->access$400(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dateLabel"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 395
    iget-object v6, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/kantv/ui/activity/HistoryActivity;->access$402(Lcom/kantv/ui/activity/HistoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v8, "4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v7, 0x3

    goto :goto_1

    :pswitch_1
    const-string v8, "3"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v7, 0x2

    goto :goto_1

    :pswitch_2
    const-string v8, "2"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :pswitch_3
    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v7, 0x0

    :cond_5
    :goto_1
    if-eqz v7, :cond_9

    if-eq v7, v3, :cond_8

    if-eq v7, v10, :cond_7

    if-eq v7, v9, :cond_6

    goto/16 :goto_2

    .line 407
    :cond_6
    iget-object v6, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v6}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v15, Lcom/kantv/ui/bean/String15Bean;

    const-string v8, "0"

    const-string v9, "\u66f4\u65e9"

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    move-object v7, v15

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    invoke-direct/range {v7 .. v22}, Lcom/kantv/ui/bean/String15Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 404
    :cond_7
    iget-object v2, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v15, Lcom/kantv/ui/bean/String15Bean;

    const-string v7, "0"

    const-string v8, "\u672c\u5468"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    move-object v6, v15

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    invoke-direct/range {v6 .. v21}, Lcom/kantv/ui/bean/String15Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 401
    :cond_8
    iget-object v2, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/kantv/ui/bean/String15Bean;

    const-string v7, "0"

    const-string v8, "\u6628\u5929"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    move-object v6, v3

    invoke-direct/range {v6 .. v21}, Lcom/kantv/ui/bean/String15Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 398
    :cond_9
    iget-object v2, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/kantv/ui/bean/String15Bean;

    const-string v7, "0"

    const-string v8, "\u4eca\u5929"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    move-object v6, v3

    invoke-direct/range {v6 .. v21}, Lcom/kantv/ui/bean/String15Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/kantv/ui/bean/String15Bean;

    const-string v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "see"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "seo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "url"

    .line 412
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "photo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "descript"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "totalcount"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "score"

    .line 413
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v6, "tvid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v6, "part_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v6, "videoTag"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v7, "1"

    const-string v17, "0"

    const-string v18, "0"

    move-object v6, v3

    invoke-direct/range {v6 .. v21}, Lcom/kantv/ui/bean/String15Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 415
    :cond_b
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 416
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kantv/ui/adapter/HistoryAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 418
    :cond_c
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$200(Lcom/kantv/ui/activity/HistoryActivity;)I

    goto :goto_3

    .line 424
    :cond_d
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "401"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "\u767b\u9646\u72b6\u6001\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646"

    .line 425
    invoke-static {v1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 426
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    .line 427
    iget-object v1, v0, Lcom/kantv/ui/activity/HistoryActivity$8;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/HistoryActivity;->finish()V

    :cond_e
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
