.class Lcom/kantv/ui/activity/SetActivity$2;
.super Ljava/lang/Object;
.source "SetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SetActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SetActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SetActivity;Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/kantv/ui/activity/SetActivity$2;->this$0:Lcom/kantv/ui/activity/SetActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/SetActivity$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 229
    iget-object p1, p0, Lcom/kantv/ui/activity/SetActivity$2;->val$type:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    invoke-static {}, Ldebug/KanApplication;->exitLogin()V

    .line 231
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Login_State"

    invoke-static {p1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/kantv/ui/activity/SetActivity$2;->this$0:Lcom/kantv/ui/activity/SetActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/SetActivity;->signOutLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SetActivity$2;->val$type:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 235
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 237
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 238
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity$2;->this$0:Lcom/kantv/ui/activity/SetActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/SetActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "\u68c0\u67e5\u5230\u60a8\u624b\u673a\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5b89\u88c5\u540e\u4f7f\u7528\u8be5\u529f\u80fd"

    .line 242
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
