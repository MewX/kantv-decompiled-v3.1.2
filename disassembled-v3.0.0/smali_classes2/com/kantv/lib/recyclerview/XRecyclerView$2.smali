.class Lcom/kantv/lib/recyclerview/XRecyclerView$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/recyclerview/XRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;


# direct methods
.method constructor <init>(Lcom/kantv/lib/recyclerview/XRecyclerView;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$2;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$2;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->access$100(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/WrapAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$2;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->access$100(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/WrapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/WrapAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$2;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->access$100(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/WrapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kantv/lib/recyclerview/WrapAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$2;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->access$100(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/WrapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/lib/recyclerview/WrapAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$2;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->access$100(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/WrapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kantv/lib/recyclerview/WrapAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 325
    iget-object p3, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$2;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-static {p3}, Lcom/kantv/lib/recyclerview/XRecyclerView;->access$100(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/WrapAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/kantv/lib/recyclerview/WrapAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/XRecyclerView$2;->this$0:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->access$100(Lcom/kantv/lib/recyclerview/XRecyclerView;)Lcom/kantv/lib/recyclerview/WrapAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kantv/lib/recyclerview/WrapAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
