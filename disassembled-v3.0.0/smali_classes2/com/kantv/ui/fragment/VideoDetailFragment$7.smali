.class Lcom/kantv/ui/fragment/VideoDetailFragment$7;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->initCMTRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 28
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

    .line 882
    invoke-super/range {p0 .. p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 883
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$600(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 884
    :cond_0
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->json:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 887
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const/16 v2, 0x8

    .line 889
    :try_start_0
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->json:Ljava/lang/String;

    const-string v4, "\\[\\]"

    const-string v5, "null"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->json:Ljava/lang/String;

    .line 890
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->json:Ljava/lang/String;

    const-class v4, Lcom/kantv/ui/bean/CommentReqBean;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/CommentReqBean;

    .line 891
    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean;->getStatus()I

    move-result v3

    const-string v4, "200"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_d

    .line 893
    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean;->getData()Lcom/kantv/ui/bean/CommentReqBean$DataBean;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 894
    invoke-virtual {v3}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->getCommentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 895
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->allCommentTv:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 897
    :try_start_1
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isStr2Num(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->allCommentTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u67e5\u770b\u5168\u90e8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v5}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u6761\u8bc4\u8bba"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 901
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 905
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->getCommentList()Ljava/util/List;

    move-result-object v0

    .line 906
    invoke-virtual {v3}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->getCommentUserIDList()Ljava/util/HashMap;

    move-result-object v4

    .line 907
    invoke-virtual {v3}, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->getMyLikeIDList()Ljava/util/List;

    move-result-object v3

    .line 909
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_2

    goto :goto_1

    .line 912
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_c

    const-string v8, ""

    if-eqz v4, :cond_3

    .line 919
    :try_start_3
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 920
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getUid()Ljava/lang/String;

    move-result-object v9

    .line 921
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 922
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getName()Ljava/lang/String;

    move-result-object v10

    .line 923
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getPhoto()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v18, v9

    move-object/from16 v17, v10

    goto :goto_3

    :cond_3
    move-object/from16 v17, v8

    move-object/from16 v18, v17

    :goto_3
    const-string v9, "0"

    if-eqz v3, :cond_6

    .line 926
    :try_start_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    move-object v10, v9

    const/4 v9, 0x0

    .line 927
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 928
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v12}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->get_id()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v10, "1"

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    move-object v15, v10

    goto :goto_5

    :cond_6
    move-object v15, v9

    .line 935
    :goto_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 936
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    const/4 v10, 0x0

    .line 937
    :goto_6
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 938
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getChild()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;

    if-eqz v4, :cond_9

    .line 942
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 943
    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getToUser()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 944
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 945
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v13}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getName()Ljava/lang/String;

    move-result-object v13

    .line 946
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v12}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getPhoto()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_7
    move-object v12, v8

    move-object v13, v12

    .line 948
    :goto_7
    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getUid()Ljava/lang/String;

    move-result-object v14

    .line 949
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 950
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;

    invoke-virtual {v14}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v12

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    goto :goto_8

    :cond_8
    move-object/from16 v20, v8

    move-object/from16 v23, v12

    move-object/from16 v21, v13

    goto :goto_8

    :cond_9
    move-object/from16 v20, v8

    move-object/from16 v21, v20

    move-object/from16 v23, v21

    .line 953
    :goto_8
    new-instance v12, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getComment()Ljava/lang/String;

    move-result-object v22

    .line 954
    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->get_id()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getTvid()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->getPid()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    const-string v27, "0"

    move-object/from16 v19, v12

    invoke-direct/range {v19 .. v27}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 957
    :cond_a
    iget-object v8, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v8}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$800(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;

    move-result-object v8

    new-instance v10, Lcom/kantv/ui/bean/CommentChildBean;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->get_id()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getTvid()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getComment()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getCreated()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 958
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;

    invoke-virtual {v11}, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->getLike()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    const-string v26, "0"

    move-object v11, v10

    move-object/from16 v20, v9

    invoke-direct/range {v11 .. v26}, Lcom/kantv/ui/bean/CommentChildBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 964
    :cond_b
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->detailCommentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 965
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->detailCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 966
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 969
    :cond_c
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 970
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 973
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 974
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->detailCommentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    .line 975
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->detailCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 976
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    :goto_9
    return-void
.end method
