.class public Lcom/kantv/ui/fragment/TabTvFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "TabTvFragment.java"

# interfaces
.implements Lcom/kantv/ui/interfaces/ScrollEffect;


# instance fields
.field feedBackImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090101
    .end annotation
.end field

.field private first:Z

.field private fragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

.field private indicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

.field isExpand:Z

.field private mFragmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredHeight:I

.field public mNavData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/NavBean;",
            ">;"
        }
    .end annotation
.end field

.field mSearchLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fe
    .end annotation
.end field

.field private mTransitionSet:Landroid/support/transition/TransitionSet;

.field scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09022b
    .end annotation
.end field

.field searchbar:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030b
    .end annotation
.end field

.field tvSearch:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090396
    .end annotation
.end field

.field public viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090363
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->first:Z

    .line 109
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->isExpand:Z

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mMeasuredHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/TabTvFragment;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/TabTvFragment;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/TabTvFragment;->initParse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/TabTvFragment;)Ljava/util/List;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mFragmentData:Ljava/util/List;

    return-object p0
.end method

.method private dip2px(F)I
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private initCacheData()V
    .locals 4

    .line 143
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "nav_json"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "nav_time"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/TabTvFragment;->initRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/TabTvFragment;->initParse(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 405
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 406
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/TabTvFragment$6;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/TabTvFragment$6;-><init>(Lcom/kantv/ui/fragment/TabTvFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/TabTvFragment$5;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/TabTvFragment$5;-><init>(Lcom/kantv/ui/fragment/TabTvFragment;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 410
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initParse(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\u5934\u90e8\u5bfc\u822a\u4fe1\u606f"

    .line 157
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 160
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "nav"

    .line 164
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 166
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 167
    invoke-static {p1, v0}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "value"

    const-string v3, "id"

    if-nez v0, :cond_2

    .line 169
    iget-object v4, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    new-instance v5, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-direct {v5, v3, v1, v2}, Lcom/kantv/ui/bean/NavBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_2
    iget-object v4, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    new-instance v5, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v3, v2, v1}, Lcom/kantv/ui/bean/NavBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->initTopNavi()V

    :cond_4
    return-void
.end method

.method private initRequest(Ljava/lang/String;)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5934\u90e8\u5bfc\u822a\u4fe1\u606f\u4f20\u53c2"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getNav(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/TabTvFragment$1;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/kantv/ui/fragment/TabTvFragment$1;-><init>(Lcom/kantv/ui/fragment/TabTvFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTopNavi()V
    .locals 7

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mFragmentData:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_5

    .line 224
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/NavBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x30

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const/16 v5, 0x31

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    const-string v2, "id"

    const-string v4, "value"

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    goto :goto_2

    .line 235
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 236
    new-instance v5, Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-direct {v5}, Lcom/kantv/ui/fragment/VideoClassFragment;-><init>()V

    .line 237
    iget-object v6, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/NavBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/NavBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v5, v3}, Lcom/kantv/ui/fragment/VideoClassFragment;->setArguments(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {v5, p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->setScrollEffect(Lcom/kantv/ui/interfaces/ScrollEffect;)V

    .line 241
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mFragmentData:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 226
    :cond_4
    new-instance v3, Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-direct {v3}, Lcom/kantv/ui/fragment/TvDefaultFragment;-><init>()V

    .line 227
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 228
    iget-object v6, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/NavBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/NavBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3, v5}, Lcom/kantv/ui/fragment/TvDefaultFragment;->setArguments(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {v3, p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->setScrollEffect(Lcom/kantv/ui/interfaces/ScrollEffect;)V

    .line 232
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mFragmentData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 246
    :cond_5
    new-instance v0, Lcom/kantv/ui/fragment/TabTvFragment$2;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/fragment/TabTvFragment$2;-><init>(Lcom/kantv/ui/fragment/TabTvFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->fragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    const/high16 v0, 0x41880000    # 17.0f

    const v1, 0x41a33334    # 20.400002f

    .line 298
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabTvFragment;->scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    new-instance v4, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    invoke-direct {v4}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;-><init>()V

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setColor(II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setSize(FF)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->setOnTransitionListener(Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;)V

    .line 301
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mFragmentData:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 302
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mFragmentData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 303
    :cond_6
    new-instance v0, Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    iget-object v2, p0, Lcom/kantv/ui/fragment/TabTvFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1, v2}, Lcom/kantv/lib/indicator/IndicatorViewPager;-><init>(Lcom/kantv/lib/indicator/Indicator;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->indicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

    .line 304
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->indicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->fragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/indicator/IndicatorViewPager;->setAdapter(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public EventBusAccept(Lcom/kantv/ui/bean/EventBusBean;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 132
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getClassname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabTvFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xba31

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->tvSearch:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public expand()V
    .locals 8

    .line 324
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->isExpand:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 327
    :try_start_0
    iget v5, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mMeasuredHeight:I

    if-eqz v5, :cond_0

    .line 328
    new-array v5, v3, [I

    iget-object v6, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    aput v6, v5, v4

    iget v6, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mMeasuredHeight:I

    aput v6, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x12c

    .line 329
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    new-instance v6, Lcom/kantv/ui/fragment/TabTvFragment$3;

    invoke-direct {v6, p0}, Lcom/kantv/ui/fragment/TabTvFragment$3;-><init>(Lcom/kantv/ui/fragment/TabTvFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    new-instance v5, Landroid/support/transition/AutoTransition;

    invoke-direct {v5}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v5, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 342
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v5, v1, v2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 343
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/support/transition/Fade;

    invoke-direct {v6, v3}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-static {v5, v6}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 349
    new-instance v5, Landroid/support/transition/AutoTransition;

    invoke-direct {v5}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v5, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 350
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v5, v1, v2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 351
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/support/transition/Fade;

    invoke-direct {v2, v3}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-static {v1, v2}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 353
    :goto_0
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->isExpand:Z

    .line 354
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->feedBackImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public initData()V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->first:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->first:Z

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mNavData:Ljava/util/List;

    .line 125
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->initCacheData()V

    .line 126
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006a

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mRootView:Landroid/view/View;

    .line 117
    iget-object p1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901fe,
            0x7f090101
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090101

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901fe

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00a0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabTvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/fragment/TabTvFragment;->initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    const-class p1, Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/TabTvFragment;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 318
    :cond_2
    const-class p1, Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/TabTvFragment;->gotoActivity(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 434
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    .line 435
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mFragmentData:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 436
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mFragmentData:Ljava/util/List;

    .line 439
    :cond_0
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->fragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    .line 440
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->indicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

    .line 441
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 442
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public reduce()V
    .locals 6

    .line 359
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mMeasuredHeight:I

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->isExpand:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 365
    :try_start_0
    new-array v0, v0, [I

    iget-object v4, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    aput v4, v0, v3

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    .line 366
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 367
    new-instance v4, Lcom/kantv/ui/fragment/TabTvFragment$4;

    invoke-direct {v4, p0}, Lcom/kantv/ui/fragment/TabTvFragment$4;-><init>(Lcom/kantv/ui/fragment/TabTvFragment;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 373
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 377
    new-instance v0, Landroid/support/transition/AutoTransition;

    invoke-direct {v0}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 378
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 379
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/support/transition/Fade;

    invoke-direct {v4, v1}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-static {v0, v4}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 381
    :goto_0
    iput-boolean v3, p0, Lcom/kantv/ui/fragment/TabTvFragment;->isExpand:Z

    .line 382
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment;->feedBackImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setVisiableHeight(I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 388
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 389
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 390
    iget-object p1, p0, Lcom/kantv/ui/fragment/TabTvFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
