.class Lcom/kantv/ui/adapter/ContentSlideAdapter$2;
.super Ljava/lang/Object;
.source "ContentSlideAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/ContentSlideAdapter;->onBindViewHolder(Lcom/kantv/ui/adapter/ContentSliderVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/ContentSlideAdapter;

.field final synthetic val$holder:Lcom/kantv/ui/adapter/ContentSliderVH;


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/ContentSlideAdapter;Lcom/kantv/ui/adapter/ContentSliderVH;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$2;->this$0:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    iput-object p2, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$2;->val$holder:Lcom/kantv/ui/adapter/ContentSliderVH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$2;->val$holder:Lcom/kantv/ui/adapter/ContentSliderVH;

    iget-object p1, p1, Lcom/kantv/ui/adapter/ContentSliderVH;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->switchRefresh()V

    .line 155
    iget-object p1, p0, Lcom/kantv/ui/adapter/ContentSlideAdapter$2;->val$holder:Lcom/kantv/ui/adapter/ContentSliderVH;

    iget-object p1, p1, Lcom/kantv/ui/adapter/ContentSliderVH;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
