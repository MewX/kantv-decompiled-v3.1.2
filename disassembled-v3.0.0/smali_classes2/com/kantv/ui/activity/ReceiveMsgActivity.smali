.class public Lcom/kantv/ui/activity/ReceiveMsgActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "ReceiveMsgActivity.java"


# instance fields
.field private fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field private mFragmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09035f
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090247
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

.field titleRightTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mFragmentData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/ReceiveMsgActivity;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mFragmentData:Ljava/util/List;

    return-object p0
.end method

.method private initTab()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 93
    new-instance v1, Lcom/kantv/ui/fragment/SearchFragment;

    invoke-direct {v1}, Lcom/kantv/ui/fragment/SearchFragment;-><init>()V

    .line 94
    iget-object v2, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lcom/kantv/ui/activity/ReceiveMsgActivity$2;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/activity/ReceiveMsgActivity$2;-><init>(Lcom/kantv/ui/activity/ReceiveMsgActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v1, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 118
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    sget-object v1, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_WEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorMode(Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;)V

    .line 119
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerColor(I)V

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerPadding(I)V

    .line 121
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorColor(I)V

    .line 122
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColorSelected(I)V

    .line 123
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->spToPix(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextSize(I)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 69
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

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
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u6211\u6536\u5230\u7684\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/ReceiveMsgActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/activity/ReceiveMsgActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity$1;-><init>(Lcom/kantv/ui/activity/ReceiveMsgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->initTitle()V

    .line 64
    invoke-direct {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->initTab()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 56
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->initBase()V

    .line 58
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->initStatusBar()V

    .line 59
    invoke-direct {p0}, Lcom/kantv/ui/activity/ReceiveMsgActivity;->initView()V

    return-void
.end method
