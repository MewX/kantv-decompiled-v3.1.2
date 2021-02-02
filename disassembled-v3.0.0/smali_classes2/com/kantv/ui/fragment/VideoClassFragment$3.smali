.class Lcom/kantv/ui/fragment/VideoClassFragment$3;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "VideoClassFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoClassFragment;->fillDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Ljava/util/List<",
        "Lcom/kantv/ui/bean/HotClassBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoClassFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 256
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoClassFragment$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/util/List;I)V

    return-void
.end method

.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ViewHolder;",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/HotClassBean;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0901d3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 259
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    .line 260
    new-instance p3, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c0082

    invoke-direct {p3, p0, v1, v3, p2}, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment$3;Landroid/content/Context;ILjava/util/List;)V

    .line 324
    invoke-virtual {p1, v0, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setFocusable(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 325
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-virtual {p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, p3, p2, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setAdapter(ILcom/kantv/ui/adapter/CommonAdapter;Landroid/content/Context;I)Lcom/kantv/ui/adapter/ViewHolder;

    .line 327
    invoke-virtual {p3}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 329
    :cond_0
    new-instance p3, Lcom/kantv/ui/adapter/VideoClassAdapter;

    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-virtual {v3}, Lcom/kantv/ui/fragment/VideoClassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {p3, p2, v3}, Lcom/kantv/ui/adapter/VideoClassAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 330
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0075

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 331
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0c0062

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0901c2

    .line 333
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0901c3

    .line 334
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0901c1

    .line 335
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 336
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v8}, Lcom/kantv/ui/bean/HotClassBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u66f4\u591a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/HotClassBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v8}, Lcom/kantv/ui/bean/HotClassBean;->getName()Ljava/lang/String;

    move-result-object v8

    .line 339
    invoke-static {v8}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "\u7f8e"

    .line 340
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v8, "\u6b27\u7f8e"

    .line 341
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v9, "\u97e9"

    .line 342
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v8, "\u97e9\u56fd"

    .line 343
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v9, "\u65e5"

    .line 344
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "\u65e5\u672c"

    .line 345
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v9, "\u6e2f"

    .line 346
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v8, "\u6e2f\u53f0"

    .line 347
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v9, "\u56fd"

    .line 348
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "\u5185\u5730"

    .line 349
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v8, "\u5168\u90e8"

    .line 351
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    const v8, 0x7f0903b6

    .line 354
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/view/ShapedImageView;

    .line 355
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/HotClassBean;->getSeo()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/HotClassBean;->getSeo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ad"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x8

    .line 356
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/HotClassBean;->getPhotoWidth()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/HotClassBean;->getPhotoHeight()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 361
    :try_start_0
    invoke-virtual {v8}, Lcom/kantv/ui/view/ShapedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 362
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/HotClassBean;->getPhotoWidth()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v10}, Lcom/kantv/ui/bean/HotClassBean;->getPhotoHeight()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float/2addr v9, v10

    .line 363
    iget-object v10, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-virtual {v10}, Lcom/kantv/ui/fragment/VideoClassFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v10

    add-int/lit8 v10, v10, -0x14

    int-to-float v10, v10

    div-float/2addr v10, v9

    float-to-int v9, v10

    .line 364
    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 365
    invoke-virtual {v8, v6}, Lcom/kantv/ui/view/ShapedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 367
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    :cond_7
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/HotClassBean;->getPhoto()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v1, :cond_9

    .line 373
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/HotClassBean;->getPhoto()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v6, -0x3

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v9, "gif"

    .line 374
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 375
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/HotClassBean;->getPhoto()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v6

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v6, v9}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_2

    .line 377
    :cond_8
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 378
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v9}, Lcom/kantv/ui/bean/HotClassBean;->getPhoto()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    .line 379
    invoke-virtual {v6, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    const v9, 0x7f080208

    .line 380
    invoke-virtual {v6, v9}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 381
    invoke-virtual {v6, v9}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    .line 382
    invoke-virtual {v6, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 385
    :cond_9
    :goto_2
    invoke-virtual {v8, v2}, Lcom/kantv/ui/view/ShapedImageView;->setVisibility(I)V

    .line 386
    new-instance v2, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;

    invoke-direct {v2, p0, p2}, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment$3;Ljava/util/List;)V

    invoke-virtual {v8, v2}, Lcom/kantv/ui/view/ShapedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    :cond_a
    new-instance p2, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;

    invoke-direct {p2, p0, v7}, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment$3;Landroid/widget/TextView;)V

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    new-instance p2, Lcom/kantv/ui/fragment/VideoClassFragment$3$4;

    invoke-direct {p2, p0, p1}, Lcom/kantv/ui/fragment/VideoClassFragment$3$4;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment$3;Lcom/kantv/ui/adapter/ViewHolder;)V

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    invoke-virtual {p3, v3}, Lcom/kantv/ui/adapter/VideoClassAdapter;->addHeaderView(Landroid/view/View;)V

    .line 430
    invoke-virtual {p3, v4}, Lcom/kantv/ui/adapter/VideoClassAdapter;->addFooterView(Landroid/view/View;)V

    .line 431
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-virtual {p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v0, p3, p2, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setAdapter2(ILcom/kantv/ui/adapter/VideoClassAdapter;Landroid/content/Context;I)Lcom/kantv/ui/adapter/ViewHolder;

    .line 433
    invoke-virtual {p3}, Lcom/kantv/ui/adapter/VideoClassAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method
