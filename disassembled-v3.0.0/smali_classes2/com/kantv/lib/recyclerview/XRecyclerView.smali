.class public Lcom/kantv/lib/recyclerview/XRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;
    }
.end annotation


# static fields
.field private static final DRAG_RATE:F = 1.75f


# instance fields
.field private isLoadingData:Z

.field private isOther:Z

.field public isnomore:Z

.field private loadingMoreEnabled:Z

.field private mContext:Landroid/content/Context;

.field private final mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mFootViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLastY:F

.field private mLoadingListener:Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;

.field private mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

.field private mWrapAdapter:Lcom/kantv/lib/recyclerview/WrapAdapter;

.field public previousTotal:I

.field private pullRefreshEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    .line 26
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->pullRefreshEnabled:Z

    .line 28
    iput-boolean p2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->loadingMoreEnabled:Z

    const/high16 p2, -0x40800000    # -1.0f

    .line 33
    iput p2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLastY:F

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isOther:Z

    .line 296
    new-instance p2, Lcom/kantv/lib/recyclerview/XRecyclerView$2;

    invoke-direct {p2, p0}, Lcom/kantv/lib/recyclerview/XRecyclerView$2;-><init>(Lcom/kantv/lib/recyclerview/XRecyclerView;)V

    iput-object p2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 50
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLoadingListener:Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/WrapAdapter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mWrapAdapter:Lcom/kantv/lib/recyclerview/WrapAdapter;

    return-object p0
.end method

.method private findMax([I)I
    .locals 4

    const/4 v0, 0x0

    .line 263
    aget v1, p1, v0

    .line 264
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private findMin([I)I
    .locals 4

    const/4 v0, 0x0

    .line 273
    aget v1, p1, v0

    .line 274
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 55
    iget-boolean v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->pullRefreshEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-direct {v0, p1}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;-><init>(Landroid/content/Context;)V

    .line 57
    iget-object v2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    iput-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    .line 61
    :cond_0
    new-instance v0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    invoke-direct {v0, p1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addFootView(Landroid/view/View;Z)V

    .line 63
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "connectivity"

    .line 392
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 393
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 395
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addFootView(Landroid/view/View;Z)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 73
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    iput-boolean p2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isOther:Z

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;-><init>(Landroid/content/Context;)V

    .line 102
    iget-object v2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iput-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 108
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addHeaderView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addHeaderView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public clearHeader()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 87
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 92
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 93
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public isOnTop()Z
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public loadMoreComplete()V
    .locals 5

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isLoadingData:Z

    .line 116
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 117
    iget v2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->previousTotal:I

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v2, v3, :cond_1

    .line 118
    instance-of v2, v1, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    if-eqz v2, :cond_0

    .line 119
    check-cast v1, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    invoke-virtual {v1, v4}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 124
    :cond_1
    instance-of v2, v1, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    if-eqz v2, :cond_2

    .line 125
    check-cast v1, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_0
    iput-boolean v4, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isnomore:Z

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->previousTotal:I

    return-void
.end method

.method public noMoreLoading()V
    .locals 4

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isLoadingData:Z

    .line 136
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    .line 137
    iput-boolean v2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isnomore:Z

    .line 138
    instance-of v2, v1, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    if-eqz v2, :cond_0

    .line 139
    move-object v2, v1

    check-cast v2, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :goto_0
    iget-boolean v2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isOther:Z

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .line 167
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_5

    .line 168
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLoadingListener:Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isLoadingData:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->loadingMoreEnabled:Z

    if-eqz p1, :cond_5

    .line 169
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 171
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 172
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 173
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 174
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 175
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 176
    invoke-direct {p0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->findMax([I)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 188
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 189
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-le v0, p1, :cond_5

    iget-boolean p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isnomore:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {p1}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_5

    .line 191
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_2

    return-void

    .line 194
    :cond_2
    iput-boolean v2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isLoadingData:Z

    .line 195
    instance-of v1, p1, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_3

    .line 196
    check-cast p1, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    invoke-virtual {p1, v0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_1
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 201
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLoadingListener:Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;

    invoke-interface {p1}, Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;->onLoadMore()V

    goto :goto_2

    .line 203
    :cond_4
    new-instance p1, Lcom/kantv/lib/recyclerview/XRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/kantv/lib/recyclerview/XRecyclerView$1;-><init>(Lcom/kantv/lib/recyclerview/XRecyclerView;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 216
    iget v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLastY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLastY:F

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 234
    iput v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLastY:F

    .line 235
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->releaseAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLoadingListener:Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;

    if-eqz v0, :cond_3

    .line 238
    invoke-interface {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;->onRefresh()V

    .line 239
    iput-boolean v3, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isnomore:Z

    .line 240
    iput v3, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->previousTotal:I

    .line 241
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 242
    instance-of v1, v0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 244
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLastY:F

    sub-float/2addr v0, v1

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLastY:F

    .line 226
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->isOnTop()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->pullRefreshEnabled:Z

    if-eqz v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    const/high16 v4, 0x3fe00000    # 1.75f

    div-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->onMove(F)V

    .line 228
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getVisiableHeight()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getState()I

    move-result v0

    if-ge v0, v2, :cond_3

    return v3

    .line 221
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLastY:F

    .line 252
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public refreshComplete()V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isLoadingData:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->loadMoreComplete()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->refreshComplate()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isnomore:Z

    .line 403
    iput v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->previousTotal:I

    .line 404
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 405
    instance-of v1, v0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 406
    check-cast v0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->reSet()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 3

    .line 160
    new-instance v0, Lcom/kantv/lib/recyclerview/WrapAdapter;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mHeaderViews:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2, p1}, Lcom/kantv/lib/recyclerview/WrapAdapter;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mWrapAdapter:Lcom/kantv/lib/recyclerview/WrapAdapter;

    .line 161
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mWrapAdapter:Lcom/kantv/lib/recyclerview/WrapAdapter;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public setHeaderRefresh(ILjava/lang/String;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    invoke-virtual {v0, p1, p2}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setTodayUpdate(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->isLoadingData:Z

    .line 258
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    const/high16 p2, 0x43020000    # 130.0f

    invoke-virtual {p1, p2}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->onMove(F)V

    .line 259
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mRefreshHeader:Lcom/kantv/lib/recyclerview/YunRefreshHeader;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setState(I)V

    return-void
.end method

.method public setLoadMoreGone()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 357
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 358
    instance-of v0, v0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method public setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mLoadingListener:Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;

    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 2

    .line 339
    iput-boolean p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->loadingMoreEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    .line 342
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    .line 346
    new-instance p1, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {p0, p1, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addFootView(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->pullRefreshEnabled:Z

    return-void
.end method

.method public setloadMoreVisible(Z)V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView;->mFootViews:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 367
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 368
    instance-of v2, v0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 370
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 372
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
