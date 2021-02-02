.class public Lcom/kantv/ui/adapter/SingleListAdatper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SingleListAdatper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/kantv/ui/adapter/SingleListVH;",
        ">;"
    }
.end annotation


# instance fields
.field private final DISPLAY_NUM:I

.field private RANDOM_LOOK_FLAG:Z

.field private TYPE_FOOTER:I

.field private TYPE_HEADER:I

.field private TYPE_NORMAL:I

.field private VIEW_FOOTER:Landroid/view/View;

.field private VIEW_HEADER:Landroid/view/View;

.field private backupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mHeight:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->backupData:Ljava/util/List;

    const/4 v0, 0x6

    .line 47
    iput v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->DISPLAY_NUM:I

    const/16 v0, 0x3e8

    .line 50
    iput v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->TYPE_NORMAL:I

    const/16 v0, 0x3e9

    .line 51
    iput v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->TYPE_HEADER:I

    const/16 v0, 0x3ea

    .line 52
    iput v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->TYPE_FOOTER:I

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->RANDOM_LOOK_FLAG:Z

    .line 56
    iput-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->mContext:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->backupData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/adapter/SingleListAdatper;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/adapter/SingleListAdatper;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/adapter/SingleListAdatper;I)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->isHeaderView(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/adapter/SingleListAdatper;I)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->isFooterView(I)Z

    move-result p0

    return p0
.end method

.method private getLayout(I)Landroid/view/View;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private haveHeaderView()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->VIEW_HEADER:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ifGridLayoutManager()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 222
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 223
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 224
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 225
    new-instance v2, Lcom/kantv/ui/adapter/SingleListAdatper$2;

    invoke-direct {v2, p0, v0}, Lcom/kantv/ui/adapter/SingleListAdatper$2;-><init>(Lcom/kantv/ui/adapter/SingleListAdatper;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-void
.end method

.method private isFooterView(I)Z
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->haveFooterView()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isHeaderView(I)Z
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->haveHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->haveFooterView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iput-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->VIEW_FOOTER:Landroid/view/View;

    .line 214
    invoke-direct {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->ifGridLayoutManager()V

    .line 215
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->notifyItemInserted(I)V

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "footerView has already exists!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 194
    invoke-direct {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->haveHeaderView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iput-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->VIEW_HEADER:Landroid/view/View;

    .line 201
    invoke-direct {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->ifGridLayoutManager()V

    const/4 p1, 0x0

    .line 202
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->notifyItemInserted(I)V

    return-void

    .line 195
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "hearview has already exists!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemCount()I
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 152
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->VIEW_FOOTER:Landroid/view/View;

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->VIEW_HEADER:Landroid/view/View;

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_3
    iget-boolean v2, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->RANDOM_LOOK_FLAG:Z

    if-eqz v2, :cond_5

    .line 161
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    :cond_5
    :goto_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->TYPE_HEADER:I

    return p1

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->isFooterView(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    iget p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->TYPE_FOOTER:I

    return p1

    .line 173
    :cond_1
    iget p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->TYPE_NORMAL:I

    return p1
.end method

.method public haveFooterView()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->VIEW_FOOTER:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->ifGridLayoutManager()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/kantv/ui/adapter/SingleListVH;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/SingleListAdatper;->onBindViewHolder(Lcom/kantv/ui/adapter/SingleListVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kantv/ui/adapter/SingleListVH;I)V
    .locals 4

    .line 76
    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/SingleListAdatper;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/SingleListAdatper;->isFooterView(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    invoke-direct {p0}, Lcom/kantv/ui/adapter/SingleListAdatper;->haveHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/MovieBean;->getScore()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 87
    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mNumber2:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mNumber1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 90
    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mNumber2:Landroid/widget/TextView;

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mNumber1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/kantv/ui/adapter/SingleListVH;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p1, Lcom/kantv/ui/adapter/SingleListVH;->mDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getDescript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p1, Lcom/kantv/ui/adapter/SingleListVH;->mUpdate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/MovieBean;->getPhoto()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mIng:Lcom/kantv/ui/view/ShapedImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 118
    iget-object p1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mBj:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/kantv/ui/adapter/SingleListAdatper$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/adapter/SingleListAdatper$1;-><init>(Lcom/kantv/ui/adapter/SingleListAdatper;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/SingleListAdatper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/SingleListVH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/SingleListVH;
    .locals 0

    .line 64
    iget p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->TYPE_FOOTER:I

    if-ne p2, p1, :cond_0

    .line 65
    new-instance p1, Lcom/kantv/ui/adapter/SingleListVH;

    iget-object p2, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->VIEW_FOOTER:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/SingleListVH;-><init>(Landroid/view/View;)V

    return-object p1

    .line 66
    :cond_0
    iget p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->TYPE_HEADER:I

    if-ne p2, p1, :cond_1

    .line 67
    new-instance p1, Lcom/kantv/ui/adapter/SingleListVH;

    iget-object p2, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->VIEW_HEADER:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/SingleListVH;-><init>(Landroid/view/View;)V

    return-object p1

    .line 69
    :cond_1
    new-instance p1, Lcom/kantv/ui/adapter/SingleListVH;

    const p2, 0x7f0c0090

    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/SingleListAdatper;->getLayout(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/SingleListVH;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setRandomLookType(Ljava/lang/Boolean;)V
    .locals 1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->RANDOM_LOOK_FLAG:Z

    :cond_0
    return-void
.end method

.method public setRecyclerViewNull()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public switchRefresh()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->backupData:Ljava/util/List;

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper;->data:Ljava/util/List;

    :goto_0
    return-void
.end method
