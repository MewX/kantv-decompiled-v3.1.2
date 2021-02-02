.class Lcom/kantv/ui/activity/VideoPlayActivity$38;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;I)V
    .locals 0

    .line 2481
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$38;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$38;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2484
    iget p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$38;->val$type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2486
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$38;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-class v0, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->gotoActivity(Ljava/lang/Class;)V

    .line 2487
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$38;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    :goto_0
    return-void
.end method
