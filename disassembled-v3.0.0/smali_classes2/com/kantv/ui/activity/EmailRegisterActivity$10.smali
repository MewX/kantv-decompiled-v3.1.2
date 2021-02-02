.class Lcom/kantv/ui/activity/EmailRegisterActivity$10;
.super Ljava/lang/Object;
.source "EmailRegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/EmailRegisterActivity;->showPwdPop()V
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

    .line 223
    iput-object p1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity$10;->this$0:Lcom/kantv/ui/activity/EmailRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity$10;->this$0:Lcom/kantv/ui/activity/EmailRegisterActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->pwdPopImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity$10;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
