.class Lcom/kantv/ui/fragment/NewsFragment$4;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsFragment;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/fragment/NewsFragment;->access$800(Lcom/kantv/ui/fragment/NewsFragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/fragment/NewsFragment;->access$702(Lcom/kantv/ui/fragment/NewsFragment;I)I

    .line 403
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/fragment/NewsFragment;->access$800(Lcom/kantv/ui/fragment/NewsFragment;Ljava/lang/String;Z)V

    return-void
.end method
