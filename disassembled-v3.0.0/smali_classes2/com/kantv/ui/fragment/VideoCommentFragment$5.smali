.class Lcom/kantv/ui/fragment/VideoCommentFragment$5;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoCommentFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoCommentFragment;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 385
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$5;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    const-class v0, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->gotoActivity(Ljava/lang/Class;)V

    return-void
.end method
