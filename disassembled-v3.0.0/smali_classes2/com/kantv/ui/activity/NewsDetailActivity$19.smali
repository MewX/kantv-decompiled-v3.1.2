.class Lcom/kantv/ui/activity/NewsDetailActivity$19;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->initNewsCommentRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 27
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

    .line 1346
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1347
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5200(Lcom/kantv/ui/activity/NewsDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1348
    :cond_0
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->json:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1352
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1354
    :try_start_0
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->json:Ljava/lang/String;

    const-string v3, "\\[\\]"

    const-string v4, "null"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->json:Ljava/lang/String;

    .line 1355
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->json:Ljava/lang/String;

    const-class v3, Lcom/kantv/ui/bean/NewsCommentBean;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/NewsCommentBean;

    .line 1356
    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean;->getStatus()I

    move-result v2

    const-string v3, "200"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 1359
    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean;->getData()Lcom/kantv/ui/bean/NewsCommentBean$DataBean;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1361
    :cond_1
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->getLike()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5302(Lcom/kantv/ui/activity/NewsDetailActivity;I)I

    .line 1363
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5300(Lcom/kantv/ui/activity/NewsDetailActivity;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1364
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/NewsDetailActivity;->likeTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v4}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5300(Lcom/kantv/ui/activity/NewsDetailActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u4eba\u559c\u6b22"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    :cond_2
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->getIs_collect()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kantv/ui/activity/NewsDetailActivity;->is_collect:Ljava/lang/String;

    .line 1368
    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->getIslike()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    .line 1369
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/NewsDetailActivity;->likeImg:Landroid/widget/ImageView;

    const v4, 0x7f0801e5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1370
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/NewsDetailActivity;->likeImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1372
    :cond_3
    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->getCommentList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1374
    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->getCommentList()Ljava/util/List;

    move-result-object v2

    .line 1375
    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->getCommentUserIDList()Ljava/util/HashMap;

    move-result-object v4

    .line 1376
    invoke-virtual {v0}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->getMyLikeIDList()Ljava/util/List;

    move-result-object v0

    .line 1383
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_4

    goto :goto_0

    .line 1386
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_d

    const-string v7, ""

    if-eqz v4, :cond_5

    .line 1395
    :try_start_1
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 1396
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v8}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getUid()Ljava/lang/String;

    move-result-object v8

    .line 1397
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1398
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1399
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;

    invoke-virtual {v8}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->getPhoto()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v8

    move-object/from16 v16, v9

    goto :goto_2

    :cond_5
    move-object/from16 v16, v7

    move-object/from16 v17, v16

    :goto_2
    const-string v8, "0"

    if-eqz v0, :cond_8

    .line 1402
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    move-object v9, v8

    const/4 v8, 0x0

    .line 1403
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 1404
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->get_id()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v9, "1"

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move-object v14, v9

    goto :goto_4

    :cond_8
    move-object v14, v8

    .line 1412
    :goto_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c

    const/4 v9, 0x0

    .line 1414
    :goto_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 1415
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;

    if-eqz v4, :cond_b

    .line 1419
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_b

    .line 1420
    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;->getToUser()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 1421
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 1422
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;

    invoke-virtual {v12}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1423
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->getPhoto()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_9
    move-object v11, v7

    move-object v12, v11

    .line 1425
    :goto_6
    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;->getUid()Ljava/lang/String;

    move-result-object v13

    .line 1426
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 1427
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;

    invoke-virtual {v13}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v22, v11

    move-object/from16 v20, v12

    move-object/from16 v19, v13

    goto :goto_7

    :cond_a
    move-object/from16 v19, v7

    move-object/from16 v22, v11

    move-object/from16 v20, v12

    goto :goto_7

    :cond_b
    move-object/from16 v19, v7

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    .line 1430
    :goto_7
    new-instance v11, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;->getComment()Ljava/lang/String;

    move-result-object v21

    .line 1431
    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;->get_id()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;->getTvid()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;->getPid()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    const-string v26, "0"

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v26}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 1437
    :cond_c
    iget-object v7, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v7}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;

    move-result-object v7

    new-instance v9, Lcom/kantv/ui/bean/CommentChildBean;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->get_id()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getTvid()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getComment()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getCreated()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 1438
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->getLike()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, "0"

    move-object v10, v9

    move-object/from16 v19, v8

    invoke-direct/range {v10 .. v25}, Lcom/kantv/ui/bean/CommentChildBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1441
    :cond_d
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;

    move-result-object v0

    const/16 v4, 0x8

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 1442
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1443
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->emptyNewsCommentTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->allCommentTv:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 1445
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->allCommentTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6761\u8bc4\u8bba"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1448
    :cond_e
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1449
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->emptyNewsCommentTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1452
    :cond_f
    :goto_8
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5100(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1453
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5100(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 1456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_9
    return-void
.end method
