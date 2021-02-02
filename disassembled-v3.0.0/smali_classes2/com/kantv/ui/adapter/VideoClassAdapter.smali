.class public Lcom/kantv/ui/adapter/VideoClassAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VideoClassAdapter.java"


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

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/HotClassBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->backupData:Ljava/util/List;

    const/4 v0, 0x6

    .line 44
    iput v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->DISPLAY_NUM:I

    const/16 v0, 0x3e8

    .line 46
    iput v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->TYPE_NORMAL:I

    const/16 v0, 0x3e9

    .line 47
    iput v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->TYPE_HEADER:I

    const/16 v0, 0x3ea

    .line 48
    iput v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->TYPE_FOOTER:I

    .line 51
    iput-object p2, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    .line 52
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/HotClassBean;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 56
    invoke-static {p1, p2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    .line 58
    iget-object v2, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    iput-object p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->backupData:Ljava/util/List;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/adapter/VideoClassAdapter;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/adapter/VideoClassAdapter;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/adapter/VideoClassAdapter;I)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->isHeaderView(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/adapter/VideoClassAdapter;I)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->isFooterView(I)Z

    move-result p0

    return p0
.end method

.method private getLayout(I)Landroid/view/View;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private haveHeaderView()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->VIEW_HEADER:Landroid/view/View;

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

    .line 194
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 196
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 198
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 199
    new-instance v2, Lcom/kantv/ui/adapter/VideoClassAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/kantv/ui/adapter/VideoClassAdapter$2;-><init>(Lcom/kantv/ui/adapter/VideoClassAdapter;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-void
.end method

.method private isFooterView(I)Z
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->haveFooterView()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->getItemCount()I

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

    .line 219
    invoke-direct {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->haveHeaderView()Z

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

    .line 182
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->haveFooterView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iput-object p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->VIEW_FOOTER:Landroid/view/View;

    .line 188
    invoke-direct {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->ifGridLayoutManager()V

    .line 189
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->notifyItemInserted(I)V

    return-void

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "footerView has already exists!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 168
    invoke-direct {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->haveHeaderView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iput-object p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->VIEW_HEADER:Landroid/view/View;

    .line 175
    invoke-direct {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->ifGridLayoutManager()V

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->notifyItemInserted(I)V

    return-void

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "hearview has already exists!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemCount()I
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->VIEW_FOOTER:Landroid/view/View;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->VIEW_HEADER:Landroid/view/View;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 142
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->TYPE_HEADER:I

    return p1

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->isFooterView(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 145
    iget p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->TYPE_FOOTER:I

    return p1

    .line 147
    :cond_1
    iget p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->TYPE_NORMAL:I

    return p1
.end method

.method public haveFooterView()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->VIEW_FOOTER:Landroid/view/View;

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

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, p1, :cond_0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->ifGridLayoutManager()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/kantv/ui/adapter/SingleListVH;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/VideoClassAdapter;->onBindViewHolder(Lcom/kantv/ui/adapter/SingleListVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kantv/ui/adapter/SingleListVH;I)V
    .locals 4

    .line 77
    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/VideoClassAdapter;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/VideoClassAdapter;->isFooterView(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->haveHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/kantv/ui/adapter/SingleListVH;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p1, Lcom/kantv/ui/adapter/SingleListVH;->mDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getDescript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Lcom/kantv/ui/adapter/SingleListVH;->mUpdate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/MovieBean;->getScore()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 88
    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mNumber2:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mNumber1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 91
    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mNumber2:Landroid/widget/TextView;

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mNumber1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/MovieBean;->getPhoto()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mIng:Lcom/kantv/ui/view/ShapedImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 98
    iget-object p1, p1, Lcom/kantv/ui/adapter/SingleListVH;->mBj:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/adapter/VideoClassAdapter$1;-><init>(Lcom/kantv/ui/adapter/VideoClassAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/VideoClassAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/SingleListVH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/SingleListVH;
    .locals 0

    .line 66
    iget p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->TYPE_FOOTER:I

    if-ne p2, p1, :cond_0

    .line 67
    new-instance p1, Lcom/kantv/ui/adapter/SingleListVH;

    iget-object p2, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->VIEW_FOOTER:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/SingleListVH;-><init>(Landroid/view/View;)V

    return-object p1

    .line 68
    :cond_0
    iget p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->TYPE_HEADER:I

    if-ne p2, p1, :cond_1

    .line 69
    new-instance p1, Lcom/kantv/ui/adapter/SingleListVH;

    iget-object p2, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->VIEW_HEADER:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/SingleListVH;-><init>(Landroid/view/View;)V

    return-object p1

    .line 71
    :cond_1
    new-instance p1, Lcom/kantv/ui/adapter/SingleListVH;

    const p2, 0x7f0c0090

    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/VideoClassAdapter;->getLayout(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/SingleListVH;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public switchRefresh()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->backupData:Ljava/util/List;

    iput-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter;->mData:Ljava/util/List;

    :goto_0
    return-void
.end method
