.class Lcom/kantv/ui/activity/SafeVerInputActivity$2;
.super Ljava/lang/Object;
.source "SafeVerInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SafeVerInputActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SafeVerInputActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$2;->this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$2;->this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

    iget-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->verifyEditText:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iget-object v1, v1, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0, v0, v1}, Lcom/kantv/ui/activity/SafeVerInputActivity;->showSoftInputFromWindow(Landroid/app/Activity;Landroid/widget/EditText;)V

    return-void
.end method
