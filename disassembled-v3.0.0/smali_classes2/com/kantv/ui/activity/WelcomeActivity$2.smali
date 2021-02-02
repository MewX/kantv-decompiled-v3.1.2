.class Lcom/kantv/ui/activity/WelcomeActivity$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/WelcomeActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$2;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$2;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    iget-boolean v0, v0, Lcom/kantv/ui/activity/WelcomeActivity;->isFirstPullDomain:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$2;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    sget-object v1, Lcom/kantv/common/api/Api;->nativeDomain:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$600(Lcom/kantv/ui/activity/WelcomeActivity;Ljava/lang/String;)Z

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$2;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$700(Lcom/kantv/ui/activity/WelcomeActivity;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$2;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "current_domain"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$600(Lcom/kantv/ui/activity/WelcomeActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$2;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$700(Lcom/kantv/ui/activity/WelcomeActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
