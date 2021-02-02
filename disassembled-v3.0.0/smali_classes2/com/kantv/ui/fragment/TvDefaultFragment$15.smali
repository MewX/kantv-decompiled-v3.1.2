.class Lcom/kantv/ui/fragment/TvDefaultFragment$15;
.super Ljava/lang/Object;
.source "TvDefaultFragment.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;->fillDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$15;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 807
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$15;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1208(Lcom/kantv/ui/fragment/TvDefaultFragment;)I

    .line 808
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$15;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1300(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$15;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1202(Lcom/kantv/ui/fragment/TvDefaultFragment;I)I

    .line 801
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$15;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomMovieList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 802
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$15;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1300(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;Z)V

    return-void
.end method
