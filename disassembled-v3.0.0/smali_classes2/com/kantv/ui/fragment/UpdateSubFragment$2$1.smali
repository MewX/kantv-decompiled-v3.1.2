.class Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;
.super Ljava/lang/Object;
.source "UpdateSubFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/UpdateSubFragment$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String15Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/UpdateSubFragment$2;

.field final synthetic val$string15Bean:Lcom/kantv/ui/bean/String15Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/UpdateSubFragment$2;Lcom/kantv/ui/bean/String15Bean;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;->this$1:Lcom/kantv/ui/fragment/UpdateSubFragment$2;

    iput-object p2, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 180
    iget-object p1, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String15Bean;->getStr4()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 181
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 185
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 186
    iget-object p1, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;->this$1:Lcom/kantv/ui/fragment/UpdateSubFragment$2;

    iget-object p1, p1, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-virtual {p1}, Lcom/kantv/ui/fragment/UpdateSubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tid"

    .line 189
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String15Bean;->getStr11()Ljava/lang/String;

    move-result-object p1

    const-string v1, "seo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;->this$1:Lcom/kantv/ui/fragment/UpdateSubFragment$2;

    iget-object p1, p1, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/fragment/UpdateSubFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 199
    :goto_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u5f71\u89c6_\u70ed\u64ad\u699c"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;->this$1:Lcom/kantv/ui/fragment/UpdateSubFragment$2;

    iget-object v1, v1, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$400(Lcom/kantv/ui/fragment/UpdateSubFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
