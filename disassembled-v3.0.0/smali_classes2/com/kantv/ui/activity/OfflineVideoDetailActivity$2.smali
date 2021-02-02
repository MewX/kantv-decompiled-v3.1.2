.class Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;
.super Ljava/lang/Object;
.source "OfflineVideoDetailActivity.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->loadMoreComplete()V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$300(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$300(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$100(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$100(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$400(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    :cond_3
    return-void
.end method
