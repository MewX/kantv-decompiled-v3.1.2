.class Lcom/kantv/ui/fragment/NewsCollectFragment$5;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsCollectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsCollectFragment;->initRequest(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsCollectFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
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
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$300(Lcom/kantv/ui/fragment/NewsCollectFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 470
    :cond_0
    sget-object p1, Lcom/kantv/ui/fragment/NewsCollectFragment;->TAG:Ljava/lang/String;

    const-string p2, "refreshComplete"

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz p1, :cond_1

    .line 472
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 473
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->loadMoreComplete()V

    .line 476
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 480
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/NewsCollectFragment;->mEmptyTip:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 477
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/NewsCollectFragment;->mEmptyTip:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    const v0, 0x7f0f0058

    invoke-virtual {p2, v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/NewsCollectFragment;->mEmptyTip:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

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

    move-object/from16 v1, p0

    const-string v2, "totalcount"

    const-string v3, ""

    const-string v0, "status"

    .line 382
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 383
    iget-object v4, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v4}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$300(Lcom/kantv/ui/fragment/NewsCollectFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 384
    :cond_0
    sget-object v4, Lcom/kantv/ui/fragment/NewsCollectFragment;->TAG:Ljava/lang/String;

    const-string v5, "refreshComplete"

    invoke-static {v4, v5}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v4, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object v4, v4, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz v4, :cond_1

    .line 386
    iget-object v4, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object v4, v4, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v4}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 387
    iget-object v4, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object v4, v4, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v4}, Lcom/kantv/lib/recyclerview/XRecyclerView;->loadMoreComplete()V

    :cond_1
    const/4 v4, 0x0

    .line 391
    :try_start_0
    iget-object v5, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->json:Ljava/lang/String;

    invoke-static {v5}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 393
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    .line 394
    iget-object v6, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->json:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 395
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    .line 398
    :cond_2
    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "200"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v0, "data"

    .line 400
    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v5, "collect"

    .line 403
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v5

    const-string v6, "newsIDList"

    .line 404
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 405
    invoke-static {v5}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lcom/google/gson/JsonArray;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v7, 0x0

    .line 407
    :goto_0
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 408
    invoke-static {v5, v7}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v0, "news_id"

    .line 409
    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "256"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :try_start_1
    invoke-virtual {v9, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 416
    invoke-virtual {v9, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    const/16 v11, 0x270f

    if-le v0, v11, :cond_4

    .line 418
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "K"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 420
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 424
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "comm_nums"

    invoke-virtual {v9, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v20, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 426
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v20, v3

    :goto_2
    move-object/from16 v18, v10

    .line 428
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v10, Lcom/kantv/ui/bean/String12Bean;

    const-string v11, "_id"

    .line 429
    invoke-virtual {v9, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v11, "thumb"

    .line 430
    invoke-virtual {v9, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    const-string v11, "title"

    .line 431
    invoke-virtual {v9, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    const-string v11, "source"

    .line 432
    invoke-virtual {v9, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    const-string v11, "created"

    .line 433
    invoke-virtual {v8, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    const-string v8, "posttime"

    .line 434
    invoke-virtual {v9, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    const-string v8, "isplay"

    .line 436
    invoke-virtual {v9, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    const-string v21, ""

    const-string v22, "0"

    const-string v23, "0"

    move-object v11, v10

    invoke-direct/range {v11 .. v23}, Lcom/kantv/ui/bean/String12Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 443
    :cond_6
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 444
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 448
    :cond_7
    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "401"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u767b\u9646\u72b6\u6001\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646"

    .line 449
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 450
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    .line 451
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    :cond_8
    :goto_3
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 462
    :cond_9
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mEmptyTip:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 459
    :cond_a
    :goto_4
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mEmptyTip:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Lcom/kantv/ui/fragment/NewsCollectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsCollectFragment$5;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mEmptyTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void
.end method
