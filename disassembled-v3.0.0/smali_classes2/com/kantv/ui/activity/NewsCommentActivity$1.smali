.class Lcom/kantv/ui/activity/NewsCommentActivity$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsCommentActivity;->initRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsCommentActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsCommentActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity$1;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

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

    .line 135
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 136
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$000(Lcom/kantv/ui/activity/NewsCommentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->json:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 140
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 142
    :try_start_0
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->json:Ljava/lang/String;

    const-string v3, "\\[\\]"

    const-string v4, "null"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->json:Ljava/lang/String;

    .line 143
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->json:Ljava/lang/String;

    const-class v3, Lcom/kantv/ui/bean/CommentReqBean;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/CommentReqBean;

    .line 144
    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean;->getStatus()I

    move-result v2

    const-string v3, "200"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 145
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/NewsCommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/NewsCommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean;->getData()Lcom/kantv/ui/bean/CommentReqBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 150
    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->getCommentList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 151
    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->getCommentList()Ljava/util/List;

    move-result-object v2

    .line 152
    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->getCommentUserIDList()Ljava/util/HashMap;

    move-result-object v3

    .line 153
    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->getMyLikeIDList()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 156
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v5, v6, :cond_a

    const-string v6, ""

    if-eqz v3, :cond_2

    .line 163
    :try_start_1
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 164
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v7}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getUid()Ljava/lang/String;

    move-result-object v7

    .line 165
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 166
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v8}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getName()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v7}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getPhoto()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v7

    move-object v15, v8

    goto :goto_1

    :cond_2
    move-object v15, v6

    move-object/from16 v16, v15

    :goto_1
    const-string v7, "0"

    if-eqz v0, :cond_5

    .line 170
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    move-object v8, v7

    const/4 v7, 0x0

    .line 171
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 172
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->get_id()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "1"

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object v13, v8

    goto :goto_3

    :cond_5
    move-object v13, v7

    .line 179
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v8}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v8}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    const/4 v8, 0x0

    .line 181
    :goto_4
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 182
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;

    if-eqz v3, :cond_8

    .line 186
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 187
    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getToUser()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 188
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 189
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getName()Ljava/lang/String;

    move-result-object v11

    .line 190
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getPhoto()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_6
    move-object v10, v6

    move-object v11, v10

    .line 192
    :goto_5
    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getUid()Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 194
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v12}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v10

    move-object/from16 v19, v11

    move-object/from16 v18, v12

    goto :goto_6

    :cond_7
    move-object/from16 v18, v6

    move-object/from16 v21, v10

    move-object/from16 v19, v11

    goto :goto_6

    :cond_8
    move-object/from16 v18, v6

    move-object/from16 v19, v18

    move-object/from16 v21, v19

    .line 197
    :goto_6
    new-instance v10, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getComment()Ljava/lang/String;

    move-result-object v20

    .line 198
    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->get_id()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getTvid()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getPid()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    const-string v25, "0"

    move-object/from16 v17, v10

    invoke-direct/range {v17 .. v25}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 201
    :cond_9
    iget-object v6, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v6}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$100(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v8, Lcom/kantv/ui/bean/CommentChildBean;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->get_id()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getTvid()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getComment()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getCreated()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 202
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getLike()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    const-string v24, "0"

    move-object v9, v8

    move-object/from16 v18, v7

    invoke-direct/range {v9 .. v24}, Lcom/kantv/ui/bean/CommentChildBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 206
    :cond_a
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$200(Lcom/kantv/ui/activity/NewsCommentActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$200(Lcom/kantv/ui/activity/NewsCommentActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_7
    return-void
.end method
