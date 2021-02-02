.class Lcom/kantv/ui/activity/CommentActivity$4;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CommentActivity;->updatePersonInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CommentActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CommentActivity;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$4;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 386
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$4;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    const-class v0, Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/CommentActivity;->gotoActivity(Ljava/lang/Class;)V

    return-void
.end method
