.class Lcom/kantv/ui/activity/HistoryActivity$3;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HistoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HistoryActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$3;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$3;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$208(Lcom/kantv/ui/activity/HistoryActivity;)I

    .line 136
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$3;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$500(Lcom/kantv/ui/activity/HistoryActivity;Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$3;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$202(Lcom/kantv/ui/activity/HistoryActivity;I)I

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$3;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$3;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$3;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$402(Lcom/kantv/ui/activity/HistoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$3;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$500(Lcom/kantv/ui/activity/HistoryActivity;Z)V

    return-void
.end method
