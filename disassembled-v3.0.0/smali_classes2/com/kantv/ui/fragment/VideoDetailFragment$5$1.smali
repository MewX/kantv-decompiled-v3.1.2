.class Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment$5;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$5;

.field final synthetic val$string8Bean:Lcom/kantv/ui/bean/String8Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment$5;Lcom/kantv/ui/bean/String8Bean;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$5;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 779
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 780
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "part_id"

    const-string v1, ""

    .line 781
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "seo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$5;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 784
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$5;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 785
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$5;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    .line 786
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 787
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$5$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
