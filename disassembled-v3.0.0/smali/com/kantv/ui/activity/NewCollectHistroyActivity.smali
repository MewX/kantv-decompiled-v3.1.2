.class public Lcom/kantv/ui/activity/NewCollectHistroyActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "NewCollectHistroyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final EDIT:Ljava/lang/String; = "edit"


# instance fields
.field allCollectChoice:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090048
    .end annotation
.end field

.field collectEditLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b0
    .end annotation
.end field

.field private isAll:I

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String15Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFragment:Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String15Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

.field private mIndicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

.field mScrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f0
    .end annotation
.end field

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903d2
    .end annotation
.end field

.field private page:I

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->page:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mType:I

    .line 104
    iput v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->isAll:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mTitles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mFragmentData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mTitles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mCurrentFragment:Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/activity/NewCollectHistroyActivity;Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;)Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mCurrentFragment:Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mType:I

    return p0
.end method

.method static synthetic access$302(Lcom/kantv/ui/activity/NewCollectHistroyActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mType:I

    return p1
.end method

.method private initTitle()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 241
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 242
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 252
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;-><init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/activity/NewCollectHistroyActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$4;-><init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTopNavi()V
    .locals 4

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mFragmentData:Ljava/util/List;

    .line 150
    new-instance v0, Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-direct {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;-><init>()V

    .line 151
    new-instance v1, Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-direct {v1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;-><init>()V

    .line 152
    iget-object v2, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iput-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mCurrentFragment:Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    .line 156
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mTitles:Ljava/util/List;

    const v1, 0x7f0f0091

    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mTitles:Ljava/util/List;

    const v1, 0x7f0f0093

    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$1;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$1;-><init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mFragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    .line 212
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mScrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    invoke-direct {v1}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;-><init>()V

    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setColor(II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    const v3, 0x41a33334    # 20.400002f

    invoke-virtual {v1, v3, v2}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setSize(FF)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->setOnTransitionListener(Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;)V

    .line 218
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/kantv/ui/activity/NewCollectHistroyActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$2;-><init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 234
    new-instance v0, Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mScrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    iget-object v2, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1, v2}, Lcom/kantv/lib/indicator/IndicatorViewPager;-><init>(Lcom/kantv/lib/indicator/Indicator;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mIndicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

    .line 235
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mIndicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mFragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/indicator/IndicatorViewPager;->setAdapter(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->initTitle()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public EventBusAccept(Lcom/kantv/ui/bean/EventBusBean;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getClassname()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/fragment/NewsCollectFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "\u7f16\u8f91"

    const-string v3, "default"

    const v4, 0x5c13d641

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    goto :goto_2

    .line 126
    :cond_2
    iput v6, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mType:I

    .line 127
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getClassname()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/kantv/ui/fragment/NewsHistroyFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v5, 0x0

    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    goto :goto_2

    .line 134
    :cond_6
    iput v6, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mType:I

    .line 135
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090048,
            0x7f0900af
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090048

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900af

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mCurrentFragment:Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;->initFor(I)V

    goto :goto_0

    .line 292
    :cond_1
    iget p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->isAll:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 293
    iput p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->isAll:I

    .line 294
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->allCollectChoice:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mCurrentFragment:Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;->initFor(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 297
    iput p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->isAll:I

    .line 298
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->allCollectChoice:Landroid/widget/TextView;

    const-string v0, "\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mCurrentFragment:Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;->initFor(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    .line 111
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->initBase()V

    .line 113
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->initStatusBar()V

    .line 114
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->initView()V

    .line 115
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->initTopNavi()V

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u6211_\u6211\u7684\u8d44\u8baf"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 118
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
    .locals 1

    .line 310
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 311
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mData:Ljava/util/List;

    .line 313
    iput-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-void
.end method
