.class Lcom/kantv/ui/activity/VideoFullScreenActivity$12;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->initView2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$12;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 654
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 655
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$12;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    const-class v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$12;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1600(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$12;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1600(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tag"

    const-string v2, "full"

    .line 658
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 660
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$12;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    const/16 v1, 0x3ed

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
