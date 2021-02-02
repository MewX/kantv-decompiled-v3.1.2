.class Lcom/kantv/ui/activity/EmailRegisterActivity$1;
.super Ljava/util/TimerTask;
.source "EmailRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/EmailRegisterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/EmailRegisterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity$1;->this$0:Lcom/kantv/ui/activity/EmailRegisterActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity$1;->this$0:Lcom/kantv/ui/activity/EmailRegisterActivity;

    iget-object v1, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/EmailRegisterActivity;->access$000(Lcom/kantv/ui/activity/EmailRegisterActivity;Landroid/widget/TextView;)V

    return-void
.end method
