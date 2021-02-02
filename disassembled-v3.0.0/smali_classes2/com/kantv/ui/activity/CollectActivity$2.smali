.class Lcom/kantv/ui/activity/CollectActivity$2;
.super Ljava/lang/Object;
.source "CollectActivity.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CollectActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CollectActivity;->access$108(Lcom/kantv/ui/activity/CollectActivity;)I

    .line 164
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/CollectActivity;->access$400(Lcom/kantv/ui/activity/CollectActivity;Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/CollectActivity;->access$102(Lcom/kantv/ui/activity/CollectActivity;I)I

    .line 154
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CollectActivity;->access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CollectActivity;->access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CollectActivity;->access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CollectActivity;->access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$2;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/CollectActivity;->access$400(Lcom/kantv/ui/activity/CollectActivity;Z)V

    return-void
.end method
