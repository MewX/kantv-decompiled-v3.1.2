.class Lcom/kantv/ui/fragment/NewsHistroyFragment$1$2;
.super Ljava/lang/Object;
.source "NewsHistroyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsHistroyFragment$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String12Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/NewsHistroyFragment$1;

.field final synthetic val$string8Bean:Lcom/kantv/ui/bean/String12Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsHistroyFragment$1;Lcom/kantv/ui/bean/String12Bean;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$1$2;->this$1:Lcom/kantv/ui/fragment/NewsHistroyFragment$1;

    iput-object p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$1$2;->val$string8Bean:Lcom/kantv/ui/bean/String12Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 188
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$1$2;->val$string8Bean:Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String12Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$1$2;->this$1:Lcom/kantv/ui/fragment/NewsHistroyFragment$1;

    iget-object v0, v0, Lcom/kantv/ui/fragment/NewsHistroyFragment$1;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    const-class v1, Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 196
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

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$1$2;->val$string8Bean:Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/String12Bean;->getStr3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
