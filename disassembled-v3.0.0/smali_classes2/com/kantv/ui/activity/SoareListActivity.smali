.class public Lcom/kantv/ui/activity/SoareListActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "SoareListActivity.java"

# interfaces
.implements Lcom/kantv/ui/interfaces/CallBackUpdateUI;


# instance fields
.field private fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field hotListBg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090148
    .end annotation
.end field

.field mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String2Bean;",
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

.field private mPosition:Ljava/lang/String;

.field mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09035f
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field public mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903d5
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

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/SoareListActivity;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/SoareListActivity;->initAnalysis(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/SoareListActivity;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mFragmentData:Ljava/util/List;

    return-object p0
.end method

.method private initAnalysis(Ljava/lang/String;)V
    .locals 6

    .line 145
    iget-boolean v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->isDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "status"

    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "data"

    .line 150
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "nav"

    .line 152
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 155
    invoke-static {p1, v0}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/kantv/ui/activity/SoareListActivity;->mData:Ljava/util/List;

    new-instance v3, Lcom/kantv/ui/bean/String2Bean;

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "seo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/kantv/ui/bean/String2Bean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/SoareListActivity;->initTab()V

    :cond_4
    return-void
.end method

.method private initRequest()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    const-string v1, "pagesize"

    const-string v2, "30"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    const-string v1, "seo"

    const-string v2, "movie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getTop(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/SoareListActivity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/SoareListActivity$1;-><init>(Lcom/kantv/ui/activity/SoareListActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTab()V
    .locals 6

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mFragmentData:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/activity/SoareListActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 168
    new-instance v2, Lcom/kantv/ui/fragment/SoareSubFragment;

    invoke-direct {v2}, Lcom/kantv/ui/fragment/SoareSubFragment;-><init>()V

    .line 169
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 170
    iget-object v4, p0, Lcom/kantv/ui/activity/SoareListActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String2Bean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/String2Bean;->getText2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "seo"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/kantv/ui/activity/SoareListActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String2Bean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/String2Bean;->getText1()Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v3}, Lcom/kantv/ui/fragment/SoareSubFragment;->setArguments(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {v2, p0}, Lcom/kantv/ui/fragment/SoareSubFragment;->setHotBGCallback(Lcom/kantv/ui/interfaces/CallBackUpdateUI;)V

    .line 175
    iget-object v3, p0, Lcom/kantv/ui/activity/SoareListActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-instance v1, Lcom/kantv/ui/activity/SoareListActivity$2;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SoareListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/kantv/ui/activity/SoareListActivity$2;-><init>(Lcom/kantv/ui/activity/SoareListActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 195
    iget-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/kantv/ui/activity/SoareListActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 196
    iget-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v2, p0, Lcom/kantv/ui/activity/SoareListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/kantv/ui/view/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 204
    iget-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    sget-object v2, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    invoke-virtual {v1, v2}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorMode(Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;)V

    .line 205
    iget-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerColor(I)V

    .line 206
    iget-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerPadding(I)V

    .line 207
    iget-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SoareListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorColor(I)V

    .line 208
    iget-object v1, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {v1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorHeight(I)V

    .line 209
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SoareListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColorSelected(I)V

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SoareListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->spToPix(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextSize(I)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u98d9\u5347\u699c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SoareListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->titleRightImg:Landroid/widget/ImageView;

    const v1, 0x7f08024e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0900ad

    .line 111
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/SoareListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f0600a2

    .line 115
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f090376
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SoareListActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 91
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SoareListActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SoareListActivity;->initBase()V

    .line 93
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SoareListActivity;->initStatusBar()V

    .line 94
    invoke-direct {p0}, Lcom/kantv/ui/activity/SoareListActivity;->initTitle()V

    .line 95
    invoke-direct {p0}, Lcom/kantv/ui/activity/SoareListActivity;->initRequest()V

    .line 96
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u7cbe\u9009_\u70ed\u64ad\u699c"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 97
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

    .line 228
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 230
    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 231
    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 232
    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mFragmentData:Ljava/util/List;

    .line 233
    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mType:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mPosition:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->mData:Ljava/util/List;

    return-void
.end method

.method public updateUi(Ljava/lang/String;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity;->hotListBg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/kantv/ui/utils/GlideUtils;->loadImageBlur(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
