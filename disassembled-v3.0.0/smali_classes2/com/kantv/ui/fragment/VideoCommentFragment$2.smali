.class Lcom/kantv/ui/fragment/VideoCommentFragment$2;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "VideoCommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoCommentFragment;->InItView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/CommentChildBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoCommentFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/CommentChildBean;I)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 216
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr15()Ljava/lang/String;

    move-result-object v0

    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0901a2

    .line 217
    invoke-virtual {v7, v0, v11}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    const v1, 0x7f0901a4

    .line 218
    invoke-virtual {v7, v1, v10}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 219
    new-instance v1, Lcom/kantv/ui/fragment/VideoCommentFragment$2$1;

    invoke-direct {v1, v6}, Lcom/kantv/ui/fragment/VideoCommentFragment$2$1;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment$2;)V

    invoke-virtual {v7, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 240
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getListBean()Ljava/util/List;

    move-result-object v0

    const v12, 0x7f0901ab

    if-eqz v0, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getListBean()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 241
    invoke-virtual {v7, v12, v11}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getListBean()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x6

    const/4 v1, 0x5

    if-ge v5, v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 254
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getListBean()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-le v5, v1, :cond_3

    .line 257
    new-instance v0, Lcom/kantv/ui/bean/String8Bean;

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, "1"

    move-object v13, v0

    invoke-direct/range {v13 .. v21}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_3
    new-instance v13, Lcom/kantv/ui/fragment/VideoCommentFragment$2$2;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c008b

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kantv/ui/fragment/VideoCommentFragment$2$2;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment$2;Landroid/content/Context;ILjava/util/List;I)V

    .line 270
    iget-object v0, v6, Lcom/kantv/ui/fragment/VideoCommentFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v7, v12, v13, v0, v11}, Lcom/kantv/ui/adapter/ViewHolder;->setAdapter(ILcom/kantv/ui/adapter/CommonAdapter;Landroid/content/Context;I)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {v7, v12, v10}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    :goto_2
    const v0, 0x7f0901a9

    .line 274
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr7()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setCircleImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901a8

    .line 275
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901ad

    .line 276
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/kantv/ui/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901a3

    .line 277
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr3()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901a7

    .line 278
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901aa

    .line 279
    new-instance v1, Lcom/kantv/ui/fragment/VideoCommentFragment$2$3;

    invoke-direct {v1, v6, v8}, Lcom/kantv/ui/fragment/VideoCommentFragment$2$3;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment$2;Lcom/kantv/ui/bean/CommentChildBean;)V

    invoke-virtual {v7, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901ac

    .line 306
    invoke-virtual {v7, v0, v10}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 307
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0901a6

    if-eqz v0, :cond_5

    .line 308
    iget-object v0, v6, Lcom/kantv/ui/fragment/VideoCommentFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_3

    .line 309
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr4()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    iget-object v0, v6, Lcom/kantv/ui/fragment/VideoCommentFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_6
    :goto_3
    const v0, 0x7f0901a5

    .line 312
    new-instance v1, Lcom/kantv/ui/fragment/VideoCommentFragment$2$4;

    move/from16 v2, p3

    invoke-direct {v1, v6, v8, v2}, Lcom/kantv/ui/fragment/VideoCommentFragment$2$4;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment$2;Lcom/kantv/ui/bean/CommentChildBean;I)V

    invoke-virtual {v7, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 213
    check-cast p2, Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoCommentFragment$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/CommentChildBean;I)V

    return-void
.end method
