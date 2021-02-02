.class public Lcom/kantv/lib/recyclerview/WrapAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_FOOTER:I = -0x3

.field private static final TYPE_HEADER:I = -0x4

.field private static final TYPE_NORMAL:I = 0x0

.field private static final TYPE_REFRESH_HEADER:I = -0x5


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private headerPosition:I

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


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->headerPosition:I

    .line 27
    iput-object p3, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 28
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    .line 29
    iput-object p2, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mFootViews:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getFootersCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getFootersCount()I

    move-result v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getHeadersCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 144
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 120
    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/WrapAdapter;->isRefreshHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x5

    return p1

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/WrapAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x4

    return p1

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/WrapAdapter;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, -0x3

    return p1

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 131
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isFooter(I)Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHeader(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRefreshHeader(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 35
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 36
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    .line 38
    new-instance v0, Lcom/kantv/lib/recyclerview/WrapAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/lib/recyclerview/WrapAdapter$1;-><init>(Lcom/kantv/lib/recyclerview/WrapAdapter;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 94
    invoke-virtual {p0, p2}, Lcom/kantv/lib/recyclerview/WrapAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 99
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x5

    if-ne p2, v1, :cond_0

    .line 83
    new-instance p1, Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;

    iget-object p2, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;-><init>(Lcom/kantv/lib/recyclerview/WrapAdapter;Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v1, -0x4

    if-ne p2, v1, :cond_1

    .line 85
    new-instance p1, Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;

    iget-object p2, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mHeaderViews:Landroid/util/SparseArray;

    iget v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->headerPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->headerPosition:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;-><init>(Lcom/kantv/lib/recyclerview/WrapAdapter;Landroid/view/View;)V

    return-object p1

    :cond_1
    const/4 v1, -0x3

    if-ne p2, v1, :cond_2

    .line 87
    new-instance p1, Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;

    iget-object p2, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/kantv/lib/recyclerview/WrapAdapter$SimpleViewHolder;-><init>(Lcom/kantv/lib/recyclerview/WrapAdapter;Landroid/view/View;)V

    return-object p1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 51
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kantv/lib/recyclerview/WrapAdapter;->isHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/WrapAdapter;->isFooter(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    :cond_0
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    .line 56
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method
