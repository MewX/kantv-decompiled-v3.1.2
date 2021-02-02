.class Lcom/kantv/ui/activity/NewsDetailActivity$21;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

.field final synthetic val$nickName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;Lcom/tandong/bottomview/view/BottomView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1598
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    iput-object p3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->val$nickName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1601
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 1602
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3300(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1603
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->val$id:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$3300(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$21;->val$nickName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kantv/ui/activity/NewsDetailActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
