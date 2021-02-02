.class Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;
.super Ljava/lang/Object;
.source "MoreRecommendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MoreRecommendActivity$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/MovieBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/MoreRecommendActivity$2;

.field final synthetic val$movieBean:Lcom/kantv/ui/bean/MovieBean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MoreRecommendActivity$2;Lcom/kantv/ui/bean/MovieBean;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;->this$1:Lcom/kantv/ui/activity/MoreRecommendActivity$2;

    iput-object p2, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;->val$movieBean:Lcom/kantv/ui/bean/MovieBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 173
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 174
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;->val$movieBean:Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/MovieBean;->getSeo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "seo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;->val$movieBean:Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/MovieBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;->val$movieBean:Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/MovieBean;->getCurpart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preview"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;->this$1:Lcom/kantv/ui/activity/MoreRecommendActivity$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/MoreRecommendActivity$2;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    return-void
.end method
