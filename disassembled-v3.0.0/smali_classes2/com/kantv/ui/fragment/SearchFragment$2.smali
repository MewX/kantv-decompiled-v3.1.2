.class Lcom/kantv/ui/fragment/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/SearchFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/SearchFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/SearchFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/kantv/ui/fragment/SearchFragment$2;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment$2;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$208(Lcom/kantv/ui/fragment/SearchFragment;)I

    .line 121
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment$2;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/fragment/SearchFragment;->access$300(Lcom/kantv/ui/fragment/SearchFragment;Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment$2;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$000(Lcom/kantv/ui/fragment/SearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment$2;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$100(Lcom/kantv/ui/fragment/SearchFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment$2;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/SearchFragment;->access$100(Lcom/kantv/ui/fragment/SearchFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment$2;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/fragment/SearchFragment;->access$202(Lcom/kantv/ui/fragment/SearchFragment;I)I

    .line 115
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment$2;->this$0:Lcom/kantv/ui/fragment/SearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/fragment/SearchFragment;->access$300(Lcom/kantv/ui/fragment/SearchFragment;Z)V

    return-void
.end method
