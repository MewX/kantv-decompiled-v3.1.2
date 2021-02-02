.class public Lcom/kantv/ui/adapter/ContentSliderVH;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ContentSliderVH.java"


# instance fields
.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900b9

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kantv/ui/adapter/ContentSliderVH;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0901c3

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSliderVH;->mTitle:Landroid/widget/TextView;

    return-void
.end method
