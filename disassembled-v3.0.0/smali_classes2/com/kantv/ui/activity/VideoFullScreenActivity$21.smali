.class Lcom/kantv/ui/activity/VideoFullScreenActivity$21;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->onClick()V
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

    .line 1086
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$21;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1089
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "tag"

    const-string v1, "full"

    .line 1090
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$21;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    const-class v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1092
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1093
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$21;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    const/16 v1, 0x3ed

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
