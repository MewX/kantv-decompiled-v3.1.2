.class public Lcom/kantv/ui/activity/SearchResultActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "SearchResultActivity.java"


# instance fields
.field private fragmentPagerAdapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

.field private mFragmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mLoadErrorLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090201
    .end annotation
.end field

.field public mSearchData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String2Bean;",
            ">;"
        }
    .end annotation
.end field

.field mSearchResultLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030f
    .end annotation
.end field

.field mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09035f
    .end annotation
.end field

.field public mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903d5
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field searchDeleteImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090302
    .end annotation
.end field

.field searchEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090303
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/SearchResultActivity;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/SearchResultActivity;->recordSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/SearchResultActivity;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/SearchResultActivity;->initRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/SearchResultActivity;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/SearchResultActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->initTab()V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/SearchResultActivity;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mFragmentData:Ljava/util/List;

    return-object p0
.end method

.method private initRequest(Ljava/lang/String;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchData:Ljava/util/List;

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    const-string v1, "keywords"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    const-string v0, "page"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object p1, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v1, "_token"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->search(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/SearchResultActivity$3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/SearchResultActivity$3;-><init>(Lcom/kantv/ui/activity/SearchResultActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTab()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mFragmentData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mFragmentData:Ljava/util/List;

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v0, 0x0

    .line 281
    :goto_1
    iget-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 282
    new-instance v1, Lcom/kantv/ui/fragment/SearchFragment;

    invoke-direct {v1}, Lcom/kantv/ui/fragment/SearchFragment;-><init>()V

    .line 283
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 284
    iget-object v3, p0, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String2Bean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/String2Bean;->getText1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "seo"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1, v2}, Lcom/kantv/ui/fragment/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 287
    iget-object v2, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** mFragmentData size **** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 290
    new-instance v0, Lcom/kantv/ui/activity/SearchResultActivity$4;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/activity/SearchResultActivity$4;-><init>(Lcom/kantv/ui/activity/SearchResultActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    .line 312
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 313
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 314
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 315
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    sget-object v1, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorMode(Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;)V

    .line 316
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerColor(I)V

    .line 317
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerPadding(I)V

    .line 318
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorColor(I)V

    .line 319
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColorSelected(I)V

    .line 320
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColor(I)V

    .line 321
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->spToPix(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextSize(I)V

    return-void
.end method

.method private recordSearch(Ljava/lang/String;)V
    .locals 6

    .line 125
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u641c\u7d22\u5185\u5bb9\uff01"

    .line 126
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Search"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 134
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 136
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 138
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 143
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-nez v3, :cond_6

    const-string v1, "\u63d2\u5165\u6570\u636e=="

    .line 149
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x9

    if-le p1, v1, :cond_4

    const/16 p1, 0xa

    .line 152
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 153
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 156
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_5

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d4b\u8bd5\u53c2\u6570"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 159
    :cond_5
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 160
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902ff,
            0x7f090302,
            0x7f0902c0
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902c0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0902ff

    if-eq p1, v0, :cond_1

    const v0, 0x7f090302

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->finish()V

    goto :goto_0

    .line 334
    :cond_2
    const-class p1, Lcom/kantv/ui/activity/ForumActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SearchResultActivity;->gotoActivity(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0032

    .line 79
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SearchResultActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->initBase()V

    .line 81
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->initStatusBar()V

    .line 82
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    new-instance v0, Lcom/kantv/ui/activity/SearchResultActivity$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/SearchResultActivity$1;-><init>(Lcom/kantv/ui/activity/SearchResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->name:Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 104
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    new-instance v0, Lcom/kantv/ui/activity/SearchResultActivity$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/SearchResultActivity$2;-><init>(Lcom/kantv/ui/activity/SearchResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity;->name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/SearchResultActivity;->initRequest(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u641c\u7d22_\u7ed3\u679c\u5217\u8868"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 121
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

    .line 342
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 344
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 345
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    .line 346
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mFragmentData:Ljava/util/List;

    .line 347
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchResultActivity;->mSearchData:Ljava/util/List;

    return-void
.end method
