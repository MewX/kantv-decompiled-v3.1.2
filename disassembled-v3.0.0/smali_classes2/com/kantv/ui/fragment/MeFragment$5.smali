.class Lcom/kantv/ui/fragment/MeFragment$5;
.super Ljava/lang/Object;
.source "MeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/MeFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/MeFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/MeFragment;I)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$5;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    iput p2, p0, Lcom/kantv/ui/fragment/MeFragment$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 590
    iget p1, p0, Lcom/kantv/ui/fragment/MeFragment$5;->val$type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 593
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment$5;->this$0:Lcom/kantv/ui/fragment/MeFragment;

    const-class v0, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    :cond_1
    :goto_0
    return-void
.end method
