.class public Lcom/kantv/ui/adapter/ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ViewHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 46
    iput-object p1, p0, Lcom/kantv/ui/adapter/ViewHolder;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/kantv/ui/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    .line 48
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    return-void
.end method

.method public static createViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 53
    new-instance v0, Lcom/kantv/ui/adapter/ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public static createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 2

    .line 58
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/kantv/ui/adapter/ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method


# virtual methods
.method public addfoot(ILandroid/view/View;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 326
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p1, p2, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addFootView(Landroid/view/View;Z)V

    return-object p0
.end method

.method public addheader(ILandroid/view/View;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 320
    invoke-virtual {p1, p2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addHeaderView(Landroid/view/View;)V

    return-object p0
.end method

.method public getConvertView()Landroid/view/View;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/kantv/ui/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public linkify(I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 224
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0xf

    .line 225
    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-object p0
.end method

.method public setAdapter(ILcom/kantv/ui/adapter/CommonAdapter;Landroid/content/Context;I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 290
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 291
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 p3, 0x0

    .line 292
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 293
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object p0
.end method

.method public setAdapter2(ILcom/kantv/ui/adapter/VideoClassAdapter;Landroid/content/Context;I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 339
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 340
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 p3, 0x0

    .line 341
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 342
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object p0
.end method

.method public setAdapter4(ILcom/kantv/ui/adapter/CommonAdapter;Landroid/content/Context;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 2

    .line 357
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 358
    new-instance p3, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p3, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 359
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 360
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object p0
.end method

.method public setAdapterX(ILcom/kantv/ui/adapter/CommonAdapter;Landroid/content/Context;I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 309
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 310
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 p3, 0x0

    .line 311
    invoke-virtual {p1, p3}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 312
    invoke-virtual {p1, p3}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setFocusable(Z)V

    .line 313
    invoke-virtual {p1, p2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object p0
.end method

.method public setAlpha(IF)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x1

    .line 205
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object p0
.end method

.method public setBackgroundColor(II)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundRes(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setChecked(IZ)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Checkable;

    .line 284
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object p0
.end method

.method public setCircleImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/view/CircleImageView;

    .line 169
    invoke-static {p2, p1}, Lcom/kantv/ui/utils/GlideUtils;->loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-object p0
.end method

.method public setFocusable(IZ)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 333
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 139
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 145
    invoke-static {p2, p1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-object p0
.end method

.method public setImageURL2(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 151
    invoke-static {p2, p1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-object p0
.end method

.method public setImageURL3(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 157
    invoke-static {p2, p1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage3(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-object p0
.end method

.method public setImageURL4(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 163
    invoke-static {p2, p1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage4(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-object p0
.end method

.method public setInVisible(I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 218
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setLayoutParams(ILandroid/view/ViewGroup$LayoutParams;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setLayoutParamsRelative(ILandroid/view/ViewGroup$LayoutParams;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setMax(II)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 253
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method public setNoRefresh(I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 4

    .line 299
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 301
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 302
    invoke-virtual {p1, v1, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addFootView(Landroid/view/View;Z)V

    .line 303
    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->noMoreLoading()V

    return-object p0
.end method

.method public setOnCheckedChangeListener(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 374
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 375
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 369
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 386
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 387
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 381
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public setPosterWidth(III)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 128
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 129
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 130
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setProgress(II)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 239
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 240
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setProgress(III)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 246
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 247
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setRating(IF)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 259
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setRating(IFI)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 265
    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 266
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 278
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setText2(ILandroid/text/SpannableStringBuilder;)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 187
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 1

    .line 192
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/kantv/ui/adapter/ViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 4

    .line 230
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 231
    invoke-virtual {p0, v2}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 232
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 213
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
