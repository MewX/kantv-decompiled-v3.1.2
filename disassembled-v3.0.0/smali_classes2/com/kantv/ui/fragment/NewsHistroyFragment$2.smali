.class Lcom/kantv/ui/fragment/NewsHistroyFragment$2;
.super Ljava/lang/Object;
.source "NewsHistroyFragment.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsHistroyFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsHistroyFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 216
    sget-object v0, Lcom/kantv/ui/fragment/NewsHistroyFragment;->TAG:Ljava/lang/String;

    const-string v1, "onLoadMore"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String12Bean;->getStr5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$200(Lcom/kantv/ui/fragment/NewsHistroyFragment;ZLjava/lang/String;)V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 206
    sget-object v0, Lcom/kantv/ui/fragment/NewsHistroyFragment;->TAG:Ljava/lang/String;

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$100(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$100(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$200(Lcom/kantv/ui/fragment/NewsHistroyFragment;ZLjava/lang/String;)V

    return-void
.end method
