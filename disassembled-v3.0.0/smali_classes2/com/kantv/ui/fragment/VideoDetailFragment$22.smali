.class Lcom/kantv/ui/fragment/VideoDetailFragment$22;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;I)V
    .locals 0

    .line 2208
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$22;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iput p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$22;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2211
    iget p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$22;->val$type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2213
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$22;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-class v0, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->gotoActivity(Ljava/lang/Class;)V

    .line 2214
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$22;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_0
    return-void
.end method
