.class Lcom/kantv/ui/activity/NewsCommentActivity$8;
.super Ljava/lang/Object;
.source "NewsCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsCommentActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsCommentActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsCommentActivity;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity$8;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 506
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity$8;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    const-class v0, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->gotoActivity(Ljava/lang/Class;)V

    return-void
.end method
