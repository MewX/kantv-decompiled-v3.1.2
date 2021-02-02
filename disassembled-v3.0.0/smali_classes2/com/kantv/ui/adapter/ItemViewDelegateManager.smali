.class public Lcom/kantv/ui/adapter/ItemViewDelegateManager;
.super Ljava/lang/Object;
.source "ItemViewDelegateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field delegates:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Lcom/kantv/ui/adapter/ItemViewDelegate<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public addDelegate(ILcom/kantv/ui/adapter/ItemViewDelegate;)Lcom/kantv/ui/adapter/ItemViewDelegateManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kantv/ui/adapter/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/kantv/ui/adapter/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-object p0

    .line 33
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An ItemViewDelegate is already registered for the viewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Already registered ItemViewDelegate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    .line 37
    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addDelegate(Lcom/kantv/ui/adapter/ItemViewDelegate;)Lcom/kantv/ui/adapter/ItemViewDelegateManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/kantv/ui/adapter/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-eqz p1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 89
    iget-object v2, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/adapter/ItemViewDelegate;

    .line 91
    invoke-interface {v2, p2, p3}, Lcom/kantv/ui/adapter/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {v2, p1, p2, p3}, Lcom/kantv/ui/adapter/ItemViewDelegate;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No ItemViewDelegateManager added that matches position="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " in data source"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getItemViewDelegate(I)Lcom/kantv/ui/adapter/ItemViewDelegate;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/adapter/ItemViewDelegate;

    return-object p1
.end method

.method public getItemViewDelegateCount()I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewLayoutId(I)I
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/kantv/ui/adapter/ItemViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/kantv/ui/adapter/ItemViewDelegate;->getItemViewLayoutId()I

    move-result p1

    return p1
.end method

.method public getItemViewType(Lcom/kantv/ui/adapter/ItemViewDelegate;)I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemViewType(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/adapter/ItemViewDelegate;

    .line 75
    invoke-interface {v1, p1, p2}, Lcom/kantv/ui/adapter/ItemViewDelegate;->isForViewType(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No ItemViewDelegate added that matches position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in data source"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeDelegate(I)Lcom/kantv/ui/adapter/ItemViewDelegateManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/kantv/ui/adapter/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    :cond_0
    return-object p0
.end method

.method public removeDelegate(Lcom/kantv/ui/adapter/ItemViewDelegate;)Lcom/kantv/ui/adapter/ItemViewDelegateManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ItemViewDelegate<",
            "TT;>;)",
            "Lcom/kantv/ui/adapter/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/kantv/ui/adapter/ItemViewDelegateManager;->delegates:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    :cond_0
    return-object p0

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ItemViewDelegate is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
