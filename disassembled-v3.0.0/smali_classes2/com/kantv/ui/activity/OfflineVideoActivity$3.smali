.class Lcom/kantv/ui/activity/OfflineVideoActivity$3;
.super Ljava/lang/Object;
.source "OfflineVideoActivity.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/OfflineVideoActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/OfflineVideoActivity;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->loadMoreComplete()V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$400(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$400(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$500(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$300(Lcom/kantv/ui/activity/OfflineVideoActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$300(Lcom/kantv/ui/activity/OfflineVideoActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    .line 419
    :cond_3
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 420
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->clearHeader()V

    :cond_4
    return-void
.end method
