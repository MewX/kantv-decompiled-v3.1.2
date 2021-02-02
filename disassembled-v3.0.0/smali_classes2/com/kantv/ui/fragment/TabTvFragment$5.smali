.class Lcom/kantv/ui/fragment/TabTvFragment$5;
.super Ljava/lang/Object;
.source "TabTvFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TabTvFragment;->initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TabTvFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TabTvFragment;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabTvFragment$5;->this$0:Lcom/kantv/ui/fragment/TabTvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 413
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 416
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 418
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    const-string v0, "android.intent.action.VIEW"

    .line 419
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.InstalledAppDetails"

    .line 421
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.ApplicationPkgName"

    .line 424
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment$5;->this$0:Lcom/kantv/ui/fragment/TabTvFragment;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/fragment/TabTvFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
