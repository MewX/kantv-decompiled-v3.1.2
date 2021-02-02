.class Lcom/kantv/ui/fragment/VideoClassFragment$3$4;
.super Ljava/lang/Object;
.source "VideoClassFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoClassFragment$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

.field final synthetic val$holder:Lcom/kantv/ui/adapter/ViewHolder;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment$3;Lcom/kantv/ui/adapter/ViewHolder;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$4;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$4;->val$holder:Lcom/kantv/ui/adapter/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 425
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$4;->val$holder:Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901d3

    invoke-virtual {p1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/adapter/VideoClassAdapter;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->switchRefresh()V

    .line 426
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$4;->val$holder:Lcom/kantv/ui/adapter/ViewHolder;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
