.class public Lcom/kantv/ui/activity/SafeCenterActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "SafeCenterActivity.java"


# instance fields
.field public b:Landroid/os/Bundle;

.field bindEmailTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090072
    .end annotation
.end field

.field bindPhoneTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090074
    .end annotation
.end field

.field mail:Ljava/lang/String;

.field mobile:Ljava/lang/String;

.field mobileCode:Ljava/lang/String;

.field public partId:Ljava/lang/String;

.field safecenter_phone:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902da
    .end annotation
.end field

.field titleLeftImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090375
    .end annotation
.end field

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRelateLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900be
    .end annotation
.end field

.field titleRightImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090377
    .end annotation
.end field

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field

.field titleRightTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field public tvId:Ljava/lang/String;

.field verMail:Ljava/lang/String;

.field verPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 69
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u5b89\u5168\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "mobile_code"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mobileCode:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mobile"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mobile:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mail"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mail:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mobileCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mobileCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mobile:Ljava/lang/String;

    const-string v2, "(\\d{3})\\d{4}(\\d{4})"

    const-string v3, "$1****$2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->verPhone:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->bindPhoneTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->verPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mail:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->mail:Ljava/lang/String;

    const-string v1, "(\\w?)(\\w+)(\\w)(@\\w+\\.[a-z]+(\\.[a-z]+)?)"

    const-string v2, "$1****$3$4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->verMail:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->bindEmailTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->verMail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f0902da,
            0x7f0902d9
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "type"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 97
    :sswitch_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeCenterActivity;->finish()V

    goto :goto_0

    .line 100
    :sswitch_1
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->verPhone:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phone"

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->verPhone:Ljava/lang/String;

    const-string v1, "mobile"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-class v0, Lcom/kantv/ui/activity/SafeVerActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/SafeCenterActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_0

    .line 106
    :cond_0
    const-class p1, Lcom/kantv/ui/activity/BindPhoneActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SafeCenterActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 110
    :sswitch_2
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->verMail:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mail"

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity;->verMail:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-class v0, Lcom/kantv/ui/activity/SafeVerActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/SafeCenterActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_0

    .line 116
    :cond_1
    const-class p1, Lcom/kantv/ui/activity/BindEmailActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SafeCenterActivity;->gotoActivity(Ljava/lang/Class;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0902d9 -> :sswitch_2
        0x7f0902da -> :sswitch_1
        0x7f090374 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002e

    .line 59
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SafeCenterActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeCenterActivity;->initBase()V

    .line 61
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeCenterActivity;->initStatusBar()V

    .line 62
    invoke-direct {p0}, Lcom/kantv/ui/activity/SafeCenterActivity;->initTitle()V

    .line 63
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u6c42\u7247"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
