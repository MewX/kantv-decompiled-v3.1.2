.class public Lcom/kantv/ui/activity/StarAboutActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "StarAboutActivity.java"


# instance fields
.field private b:Landroid/os/Bundle;

.field private imgUrl:Ljava/lang/String;

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private starAbout:Ljava/lang/String;

.field starAboutTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090341
    .end annotation
.end field

.field starDetailImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090345
    .end annotation
.end field

.field private starMsg:Ljava/lang/String;

.field starMsgTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090342
    .end annotation
.end field

.field starNameTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090343
    .end annotation
.end field

.field private starPlace:Ljava/lang/String;

.field starPlaceTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090344
    .end annotation
.end field

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starAboutTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starAbout:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starPlaceTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starPlace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starMsgTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starMsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->stripHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starMsgTv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090376
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090376

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarAboutActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0035

    .line 76
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/StarAboutActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarAboutActivity;->initBase()V

    .line 78
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarAboutActivity;->initStatusBar()V

    .line 79
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarAboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarAboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->b:Landroid/os/Bundle;

    .line 81
    iget-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->b:Landroid/os/Bundle;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->name:Ljava/lang/String;

    .line 82
    iget-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->b:Landroid/os/Bundle;

    const-string v0, "star_about"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starAbout:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->b:Landroid/os/Bundle;

    const-string v0, "star_place"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starPlace:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->b:Landroid/os/Bundle;

    const-string v0, "star_msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starMsg:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->b:Landroid/os/Bundle;

    const-string v0, "star_bg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->imgUrl:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/kantv/ui/activity/StarAboutActivity;->imgUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kantv/ui/activity/StarAboutActivity;->starDetailImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/kantv/ui/utils/GlideUtils;->loadImageBlur(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/StarAboutActivity;->initView()V

    .line 89
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u660e\u661f_\u7b80\u4ecb"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 114
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method
