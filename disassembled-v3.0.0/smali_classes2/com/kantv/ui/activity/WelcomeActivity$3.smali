.class Lcom/kantv/ui/activity/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/WelcomeActivity;->initView()V
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

    .line 165
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$3;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$3;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    .line 169
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$3;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$300(Lcom/kantv/ui/activity/WelcomeActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$3;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$300(Lcom/kantv/ui/activity/WelcomeActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$3;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$302(Lcom/kantv/ui/activity/WelcomeActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 177
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u542f\u52a8_\u5f00\u5c4f_\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
