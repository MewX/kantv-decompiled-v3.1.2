.class Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;
.super Ljava/util/TimerTask;
.source "EmailRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/EmailRegisterActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/EmailRegisterActivity$10;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/EmailRegisterActivity$10;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;->this$1:Lcom/kantv/ui/activity/EmailRegisterActivity$10;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;->this$1:Lcom/kantv/ui/activity/EmailRegisterActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/activity/EmailRegisterActivity$10;->this$0:Lcom/kantv/ui/activity/EmailRegisterActivity;

    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1$1;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/EmailRegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
