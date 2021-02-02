.class public Lcom/kantv/ui/activity/EditNicknameActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "EditNicknameActivity.java"


# instance fields
.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field nickName:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020b
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

.field titleRightTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method private checkIllegalChar(Ljava/lang/String;)Z
    .locals 1

    .line 126
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkNickname()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->nickName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->nickName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/EditNicknameActivity;->checkIllegalChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->nickName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nick_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 114
    invoke-virtual {p0, v1, v0}, Lcom/kantv/ui/activity/EditNicknameActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/kantv/ui/activity/EditNicknameActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "\u8f93\u5165\u4e86\u975e\u6cd5\u5b57\u7b26\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 117
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "\u8bf7\u8f93\u5165\u6635\u79f0"

    .line 120
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u6635\u79f0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/EditNicknameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u4fdd\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/EditNicknameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f090395,
            0x7f0902d2
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902d2

    if-eq p1, v0, :cond_2

    const v0, 0x7f090374

    if-eq p1, v0, :cond_1

    const v0, 0x7f090395

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/EditNicknameActivity;->checkNickname()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/EditNicknameActivity;->finish()V

    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/EditNicknameActivity;->nickName:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a0

    .line 68
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/EditNicknameActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/kantv/ui/activity/EditNicknameActivity;->initBase()V

    .line 70
    invoke-virtual {p0}, Lcom/kantv/ui/activity/EditNicknameActivity;->initStatusBar()V

    .line 71
    invoke-direct {p0}, Lcom/kantv/ui/activity/EditNicknameActivity;->initView()V

    .line 72
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u6211_\u7f16\u8f91_\u6635\u79f0"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 73
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

    .line 135
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method
