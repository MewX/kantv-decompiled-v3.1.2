.class Lcom/kantv/ui/fragment/NewsFragment$3$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsFragment$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

.field final synthetic val$string8Bean:Lcom/kantv/ui/bean/String8Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsFragment$3;Lcom/kantv/ui/bean/String8Bean;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iput-object p2, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 356
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 357
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr6()Ljava/lang/String;

    move-result-object v0

    const-string v1, "detail"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/kantv/ui/fragment/NewsFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v3, v3, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v3}, Lcom/kantv/ui/fragment/NewsFragment;->access$200(Lcom/kantv/ui/fragment/NewsFragment;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v3, v3, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v3}, Lcom/kantv/ui/fragment/NewsFragment;->access$300(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v2, v2, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/NewsFragment;->access$400(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-static {v0, v1}, Lcom/kantv/ui/fragment/NewsFragment;->access$500(Lcom/kantv/ui/fragment/NewsFragment;Lcom/kantv/ui/bean/String8Bean;)V

    .line 363
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsFragment;->access$200(Lcom/kantv/ui/fragment/NewsFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsFragment;->access$300(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsFragment;->access$400(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsFragment;->access$300(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsFragment;->access$400(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsFragment;->access$600(Lcom/kantv/ui/fragment/NewsFragment;)V

    .line 369
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/Utils;->isTodayAuClientAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isTodayAuClientAvailableToDetail(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "au.com.nexty.today"

    if-eqz p1, :cond_1

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.sydneytoday.com/content/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "au.com.nexty.today.activity.welcome.WelcomeActivity"

    .line 373
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object p1, p1, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-virtual {p1, v1}, Lcom/kantv/ui/fragment/NewsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    :cond_1
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 378
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/fragment/NewsFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->this$1:Lcom/kantv/ui/fragment/NewsFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    const-class v1, Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/fragment/NewsFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 392
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u8d44\u8baf"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment$3$1;->val$string8Bean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
