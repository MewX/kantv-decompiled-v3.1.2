.class public Lcom/kantv/ui/fragment/LiveFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "LiveFragment.java"


# instance fields
.field mainActivity:Lcom/kantv/ui/MainActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/kantv/ui/fragment/LiveFragment;->mainActivity:Lcom/kantv/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .line 37
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "http://huaren.tv"

    .line 39
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Lcom/kantv/ui/fragment/LiveFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/LiveFragment;->mainActivity:Lcom/kantv/ui/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lcom/kantv/ui/MainActivity;->setTab(I)V

    .line 49
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "\u76f4\u64ad"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/LiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/MainActivity;

    iput-object p1, p0, Lcom/kantv/ui/fragment/LiveFragment;->mainActivity:Lcom/kantv/ui/MainActivity;

    const/4 p1, 0x0

    return-object p1
.end method
