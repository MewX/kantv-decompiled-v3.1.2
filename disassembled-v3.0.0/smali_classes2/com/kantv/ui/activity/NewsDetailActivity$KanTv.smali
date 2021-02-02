.class public Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KanTv"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KanTv"


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 1

    .line 660
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "KanTv"

    const-string v0, "KanTv \u6784\u9020"

    .line 661
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doCollect(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 682
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Login_State"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$800(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->requestCollect(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$900(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public externalJump(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public internalJump(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "people"

    .line 672
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "seo"

    .line 674
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "tid"

    .line 675
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    const-class p2, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
