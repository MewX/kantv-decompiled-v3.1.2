.class public Lcom/kantv/ui/adapter/ContentSlideAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ContentSlideAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/kantv/ui/adapter/ContentSliderVH;",
        ">;"
    }
.end annotation


# instance fields
.field private IndexData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private TYPE_FOOTER:I

.field private TYPE_HEADER:I

.field private TYPE_NORMAL:I

.field private VIEW_FOOTER:Landroid/view/View;

.field private VIEW_HEADER:Landroid/view/View;

.field adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private random_look_flag:Z

.field private str:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;>;",
            "Landroid/content/Context;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x3e8

    .line 38
    iput v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_NORMAL:I

    const/16 v0, 0x3e9

    .line 39
    iput v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_HEADER:I

    const/16 v0, 0x3ea

    .line 40
    iput v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_FOOTER:I

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->random_look_flag:Z

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->data:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->IndexData:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->str:Ljava/util/List;

    .line 53
    invoke-static {p3}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 55
    invoke-static {p3, v0}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "name"

    .line 56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->str:Ljava/util/List;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;>;",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Z)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x3e8

    .line 38
    iput v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_NORMAL:I

    const/16 v0, 0x3e9

    .line 39
    iput v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_HEADER:I

    const/16 v0, 0x3ea

    .line 40
    iput v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_FOOTER:I

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->random_look_flag:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->data:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->IndexData:Ljava/util/List;

    .line 68
    iput-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mContext:Landroid/content/Context;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->str:Ljava/util/List;

    .line 70
    iput-boolean p4, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->random_look_flag:Z

    if-eqz p3, :cond_0

    const-string p1, "name"

    .line 72
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 73
    iget-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->str:Ljava/util/List;

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/adapter/ContentSlideAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/adapter/ContentSlideAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->str:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/adapter/ContentSlideAdapter;I)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->isHeaderView(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/adapter/ContentSlideAdapter;I)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->isFooterView(I)Z

    move-result p0

    return p0
.end method

.method private getLayout(I)Landroid/view/View;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private haveHeaderView()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->VIEW_HEADER:Landroid/view/View;

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

    .line 236
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 238
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 239
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 240
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 241
    new-instance v2, Lcom/kantv/ui/adapter/ContentSlideAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/kantv/ui/adapter/ContentSlideAdapter$3;-><init>(Lcom/kantv/ui/adapter/ContentSlideAdapter;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-void
.end method

.method private isFooterView(I)Z
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->haveFooterView()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->getItemCount()I

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

    .line 261
    invoke-direct {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->haveHeaderView()Z

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

    .line 224
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->haveFooterView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->VIEW_FOOTER:Landroid/view/View;

    .line 230
    invoke-direct {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->ifGridLayoutManager()V

    .line 231
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->notifyItemInserted(I)V

    return-void

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "footerView has already exists!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 210
    invoke-direct {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->haveHeaderView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->VIEW_HEADER:Landroid/view/View;

    .line 217
    invoke-direct {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->ifGridLayoutManager()V

    const/4 p1, 0x0

    .line 218
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->notifyItemInserted(I)V

    return-void

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "hearview has already exists!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSingleAdapterData(Lcom/kantv/ui/bean/MovieBean;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->IndexData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->IndexData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->VIEW_FOOTER:Landroid/view/View;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->VIEW_HEADER:Landroid/view/View;

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 184
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_HEADER:I

    return p1

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->isFooterView(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_FOOTER:I

    return p1

    .line 189
    :cond_1
    iget p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_NORMAL:I

    return p1
.end method

.method public getSingleAdapter()Lcom/kantv/ui/adapter/SingleListAdatper;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    return-object v0
.end method

.method public haveFooterView()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->VIEW_FOOTER:Landroid/view/View;

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

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, p1, :cond_0

    .line 197
    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->ifGridLayoutManager()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/kantv/ui/adapter/ContentSliderVH;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->onBindViewHolder(Lcom/kantv/ui/adapter/ContentSliderVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kantv/ui/adapter/ContentSliderVH;I)V
    .locals 7

    .line 106
    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->isFooterView(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 107
    invoke-direct {p0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->haveHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/kantv/ui/adapter/ContentSliderVH;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object v0, p1, Lcom/kantv/ui/adapter/ContentSliderVH;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 111
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->IndexData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->IndexData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->data:Ljava/util/List;

    .line 115
    :cond_1
    new-instance v0, Lcom/kantv/ui/adapter/SingleListAdatper;

    iget-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->data:Ljava/util/List;

    iget-object v2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/kantv/ui/adapter/SingleListAdatper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c0062

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901c2

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0901c3

    .line 120
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0901c1

    .line 121
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 122
    iget-object v5, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->str:Ljava/util/List;

    const-string v6, "\u70ed\u64ad\u699c\u5355"

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, p2, :cond_2

    const-string v5, "\u968f\u4fbf\u770b\u770b"

    .line 123
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-boolean v3, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->random_look_flag:Z

    if-eqz v3, :cond_4

    .line 125
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v5, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->str:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-boolean v3, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->random_look_flag:Z

    if-eqz v3, :cond_3

    .line 130
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u66f4\u591a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->str:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_4
    :goto_0
    new-instance v3, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/kantv/ui/adapter/ContentSlideAdapter$1;-><init>(Lcom/kantv/ui/adapter/ContentSlideAdapter;I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance p2, Lcom/kantv/ui/adapter/ContentSlideAdapter$2;

    invoke-direct {p2, p0, p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter$2;-><init>(Lcom/kantv/ui/adapter/ContentSlideAdapter;Lcom/kantv/ui/adapter/ContentSliderVH;)V

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-virtual {p2, v0}, Lcom/kantv/ui/adapter/SingleListAdatper;->addHeaderView(Landroid/view/View;)V

    .line 159
    iget-boolean p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->random_look_flag:Z

    if-nez p2, :cond_5

    .line 160
    iget-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-virtual {p2, v1}, Lcom/kantv/ui/adapter/SingleListAdatper;->addFooterView(Landroid/view/View;)V

    .line 162
    :cond_5
    iget-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    iget-boolean v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->random_look_flag:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kantv/ui/adapter/SingleListAdatper;->setRandomLookType(Ljava/lang/Boolean;)V

    .line 163
    iget-object p1, p1, Lcom/kantv/ui/adapter/ContentSliderVH;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/ContentSliderVH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/ContentSliderVH;
    .locals 0

    .line 95
    iget p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_FOOTER:I

    if-ne p2, p1, :cond_0

    .line 96
    new-instance p1, Lcom/kantv/ui/adapter/ContentSliderVH;

    iget-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->VIEW_FOOTER:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/ContentSliderVH;-><init>(Landroid/view/View;)V

    return-object p1

    .line 97
    :cond_0
    iget p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->TYPE_HEADER:I

    if-ne p2, p1, :cond_1

    .line 98
    new-instance p1, Lcom/kantv/ui/adapter/ContentSliderVH;

    iget-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->VIEW_HEADER:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/ContentSliderVH;-><init>(Landroid/view/View;)V

    return-object p1

    .line 100
    :cond_1
    new-instance p1, Lcom/kantv/ui/adapter/ContentSliderVH;

    const p2, 0x7f0c004b

    invoke-direct {p0, p2}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->getLayout(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/kantv/ui/adapter/ContentSliderVH;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setAdapterNull()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    iput-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->adapter:Lcom/kantv/ui/adapter/SingleListAdatper;

    .line 272
    :cond_0
    iput-object v1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
