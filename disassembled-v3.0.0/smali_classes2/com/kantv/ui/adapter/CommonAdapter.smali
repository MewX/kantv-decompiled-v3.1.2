.class public abstract Lcom/kantv/ui/adapter/CommonAdapter;
.super Lcom/kantv/ui/adapter/MultiItemTypeAdapter;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kantv/ui/adapter/MultiItemTypeAdapter<",
        "TT;>;"
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

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p3}, Lcom/kantv/ui/adapter/MultiItemTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 19
    iput-object p1, p0, Lcom/kantv/ui/adapter/CommonAdapter;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/adapter/CommonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 21
    iput p2, p0, Lcom/kantv/ui/adapter/CommonAdapter;->mLayoutId:I

    .line 22
    iput-object p3, p0, Lcom/kantv/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    .line 24
    new-instance p1, Lcom/kantv/ui/adapter/CommonAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/kantv/ui/adapter/CommonAdapter$1;-><init>(Lcom/kantv/ui/adapter/CommonAdapter;I)V

    invoke-virtual {p0, p1}, Lcom/kantv/ui/adapter/CommonAdapter;->addItemViewDelegate(Lcom/kantv/ui/adapter/ItemViewDelegate;)Lcom/kantv/ui/adapter/MultiItemTypeAdapter;

    return-void
.end method


# virtual methods
.method protected abstract convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/adapter/ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method
