.class Lcom/kantv/ui/activity/SearchActivity$3$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchActivity$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String4Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/SearchActivity$3;

.field final synthetic val$string4Bean:Lcom/kantv/ui/bean/String4Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchActivity$3;Lcom/kantv/ui/bean/String4Bean;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$3$1;->this$1:Lcom/kantv/ui/activity/SearchActivity$3;

    iput-object p2, p0, Lcom/kantv/ui/activity/SearchActivity$3$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 166
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity$3$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String4Bean;->getText2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity$3$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String4Bean;->getText2()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 169
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity$3$1;->this$1:Lcom/kantv/ui/activity/SearchActivity$3;

    iget-object v0, v0, Lcom/kantv/ui/activity/SearchActivity$3;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "part_id"

    const-string v1, ""

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity$3$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String4Bean;->getText3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "seo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity$3$1;->this$1:Lcom/kantv/ui/activity/SearchActivity$3;

    iget-object v0, v0, Lcom/kantv/ui/activity/SearchActivity$3;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/activity/SearchActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 187
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u5f71\u89c6_\u641c\u7d22"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SearchActivity$3$1;->val$string4Bean:Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/String4Bean;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
