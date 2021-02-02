.class Lcom/kantv/ui/activity/AccountLoginActivity$1;
.super Ljava/util/TimerTask;
.source "AccountLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/AccountLoginActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/AccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/AccountLoginActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$1;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity$1;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    iget-object v1, v0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPwd:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/AccountLoginActivity;->access$000(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/widget/TextView;)V

    return-void
.end method
