.class Lcom/kantv/ui/activity/EmailRegisterActivity$10$1$1;
.super Ljava/lang/Object;
.source "EmailRegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1$1;->this$2:Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1$1;->this$2:Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/EmailRegisterActivity$10$1;->this$1:Lcom/kantv/ui/activity/EmailRegisterActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/activity/EmailRegisterActivity$10;->this$0:Lcom/kantv/ui/activity/EmailRegisterActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/EmailRegisterActivity;->pwdPopImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
