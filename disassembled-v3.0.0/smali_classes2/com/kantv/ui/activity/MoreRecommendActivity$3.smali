.class Lcom/kantv/ui/activity/MoreRecommendActivity$3;
.super Ljava/lang/Object;
.source "MoreRecommendActivity.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MoreRecommendActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MoreRecommendActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$3;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$3;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/MoreRecommendActivity;->access$108(Lcom/kantv/ui/activity/MoreRecommendActivity;)I

    .line 197
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$3;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->access$200(Lcom/kantv/ui/activity/MoreRecommendActivity;Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$3;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->access$102(Lcom/kantv/ui/activity/MoreRecommendActivity;I)I

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$3;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/MoreRecommendActivity;->todayRDAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$3;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/MoreRecommendActivity;->todayRDAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$3;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->access$200(Lcom/kantv/ui/activity/MoreRecommendActivity;Z)V

    return-void
.end method
