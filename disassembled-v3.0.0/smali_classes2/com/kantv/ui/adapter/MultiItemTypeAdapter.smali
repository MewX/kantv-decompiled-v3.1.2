.class public Lcom/kantv/ui/adapter/MultiItemTypeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MultiItemTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/kantv/ui/adapter/ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mItemViewDelegateManager:Lcom/kantv/ui/adapter/ItemViewDelegateManager;

.field protected mOnItemClickListener:Lcom/kantv/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    .line 24
    new-instance p1, Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    invoke-direct {p1}, Lcom/kantv/ui/adapter/ItemViewDelegateManager;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    return-void
.end method


# virtual methods
.method public addItemViewDelegate(ILcom/kantv/ui/adapter/ItemViewDelegate;)Lcom/kantv/ui/adapter/MultiItemTypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kantv/ui/adapter/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/kantv/ui/adapter/MultiItemTypeAdapter;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0, p1, p2}, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->addDelegate(ILcom/kantv/ui/adapter/ItemViewDelegate;)Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    return-object p0
.end method

.method public addItemViewDelegate(Lcom/kantv/ui/adapter/ItemViewDelegate;)Lcom/kantv/ui/adapter/MultiItemTypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/kantv/ui/adapter/MultiItemTypeAdapter;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->addDelegate(Lcom/kantv/ui/adapter/ItemViewDelegate;)Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    return-object p0
.end method

.method public convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ViewHolder;",
            "TT;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->useItemViewDelegateManager()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    iget-object v1, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/kantv/ui/adapter/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->onBindViewHolder(Lcom/kantv/ui/adapter/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kantv/ui/adapter/ViewHolder;I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/ViewHolder;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0, p2}, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/kantv/ui/adapter/ItemViewDelegate;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/kantv/ui/adapter/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/kantv/ui/adapter/ViewHolder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->onViewHolderCreated(Lcom/kantv/ui/adapter/ViewHolder;Landroid/view/View;)V

    .line 40
    invoke-virtual {p0, p1, v0, p2}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/kantv/ui/adapter/ViewHolder;I)V

    return-object v0
.end method

.method public onViewHolderCreated(Lcom/kantv/ui/adapter/ViewHolder;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected setListener(Landroid/view/ViewGroup;Lcom/kantv/ui/adapter/ViewHolder;I)V
    .locals 0

    .line 58
    invoke-virtual {p0, p3}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p2}, Lcom/kantv/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$1;-><init>(Lcom/kantv/ui/adapter/MultiItemTypeAdapter;Lcom/kantv/ui/adapter/ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p2}, Lcom/kantv/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$2;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter$2;-><init>(Lcom/kantv/ui/adapter/MultiItemTypeAdapter;Lcom/kantv/ui/adapter/ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/kantv/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/kantv/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;

    return-void
.end method

.method protected useItemViewDelegateManager()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lcom/kantv/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
