.class Lcom/kantv/ui/activity/FeedBackActivity$1;
.super Ljava/util/TimerTask;
.source "FeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FeedBackActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FeedBackActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FeedBackActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$1;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity$1;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 117
    iget-object v1, p0, Lcom/kantv/ui/activity/FeedBackActivity$1;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    iget-object v1, v1, Lcom/kantv/ui/activity/FeedBackActivity;->mEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
