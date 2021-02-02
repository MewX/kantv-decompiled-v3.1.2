.class Lcom/kantv/ui/activity/CommentActivity$5;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CommentActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CommentActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$tvid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CommentActivity;Lcom/tandong/bottomview/view/BottomView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$5;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/CommentActivity$5;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    iput-object p3, p0, Lcom/kantv/ui/activity/CommentActivity$5;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/kantv/ui/activity/CommentActivity$5;->val$tvid:Ljava/lang/String;

    iput-object p5, p0, Lcom/kantv/ui/activity/CommentActivity$5;->val$nickName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 404
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$5;->val$mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 405
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$5;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$5;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$5;->val$tvid:Ljava/lang/String;

    iget-object v2, p0, Lcom/kantv/ui/activity/CommentActivity$5;->val$nickName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kantv/ui/activity/CommentActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
