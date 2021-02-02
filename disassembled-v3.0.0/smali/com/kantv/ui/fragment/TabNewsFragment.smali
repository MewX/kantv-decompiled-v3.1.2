.class public Lcom/kantv/ui/fragment/TabNewsFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "TabNewsFragment.java"

# interfaces
.implements Lcom/kantv/ui/interfaces/ScrollEffect;


# instance fields
.field private adPopHandler:Landroid/os/Handler;

.field adPopRunnable:Ljava/lang/Runnable;

.field private first:Z

.field private fragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

.field private indicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

.field isExpand:Z

.field private mBottomView:Lcom/tandong/bottomview/view/BottomView;

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
        value = 0x7f09022c
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
        value = 0x7f090362
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->first:Z

    .line 108
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->isExpand:Z

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->adPopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mMeasuredHeight:I

    .line 428
    new-instance v0, Lcom/kantv/ui/fragment/TabNewsFragment$4;

    invoke-direct {v0, p0}, Lcom/kantv/ui/fragment/TabNewsFragment$4;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->adPopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/TabNewsFragment;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/TabNewsFragment;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/TabNewsFragment;->initParse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/TabNewsFragment;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mFragmentData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/TabNewsFragment;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/fragment/TabNewsFragment;)Lcom/tandong/bottomview/view/BottomView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kantv/ui/fragment/TabNewsFragment;Lcom/tandong/bottomview/view/BottomView;)Lcom/tandong/bottomview/view/BottomView;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/fragment/TabNewsFragment;)Landroid/os/Handler;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->adPopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initCacheData()V
    .locals 4

    .line 147
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "news_nav_json"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "news_nav_time"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/TabNewsFragment;->initRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/TabNewsFragment;->initParse(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 525
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/TabNewsFragment$8;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/TabNewsFragment$8;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/TabNewsFragment$7;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/TabNewsFragment$7;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 530
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initParse(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\u5934\u90e8\u5bfc\u822a\u4fe1\u606f"

    .line 161
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 164
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "class"

    .line 168
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 170
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 171
    invoke-static {p1, v0}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 176
    sget-object v2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    const-string v4, ""

    if-ge v2, v3, :cond_2

    .line 177
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    new-instance v3, Lcom/kantv/ui/bean/NavBean;

    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v5, v1, v4}, Lcom/kantv/ui/bean/NavBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    new-instance v3, Lcom/kantv/ui/bean/NavBean;

    const-string v5, "_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v5, v1, v4}, Lcom/kantv/ui/bean/NavBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->initTopNavi()V

    :cond_4
    return-void
.end method

.method private initRequest(Ljava/lang/String;)V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getNewsNav(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/TabNewsFragment$1;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/kantv/ui/fragment/TabNewsFragment$1;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestPopAd()V
    .locals 4

    .line 321
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 324
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    const-string v2, "getPop"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    const-string v1, "seo"

    const-string v2, "news"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getPop(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/TabNewsFragment$3;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/TabNewsFragment$3;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTopNavi()V
    .locals 7

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mFragmentData:Ljava/util/List;

    const/4 v0, 0x0

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 228
    new-instance v2, Lcom/kantv/ui/fragment/NewsFragment;

    invoke-direct {v2}, Lcom/kantv/ui/fragment/NewsFragment;-><init>()V

    .line 229
    iget-object v3, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/NavBean;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/NavBean;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :try_start_0
    iget-object v3, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/NavBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_0

    const-string v3, "default"

    const-string v4, "1"

    .line 235
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 238
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    :cond_0
    :goto_1
    invoke-virtual {v2, v1}, Lcom/kantv/ui/fragment/NewsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {v2, p0}, Lcom/kantv/ui/fragment/NewsFragment;->setScrollEffect(Lcom/kantv/ui/interfaces/ScrollEffect;)V

    .line 243
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mFragmentData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Lcom/kantv/ui/fragment/TabNewsFragment$2;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/fragment/TabNewsFragment$2;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->fragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    const/high16 v0, 0x41880000    # 17.0f

    const v1, 0x41a33334    # 20.400002f

    .line 298
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    new-instance v3, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    invoke-direct {v3}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;-><init>()V

    const/high16 v4, -0x1000000

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setColor(II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setSize(FF)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->setOnTransitionListener(Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;)V

    .line 300
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mFragmentData:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mFragmentData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 302
    :cond_2
    new-instance v0, Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->scrollIndicatorView:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    iget-object v2, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1, v2}, Lcom/kantv/lib/indicator/IndicatorViewPager;-><init>(Lcom/kantv/lib/indicator/Indicator;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->indicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

    .line 303
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->indicatorViewPager:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->fragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/indicator/IndicatorViewPager;->setAdapter(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public EventBusAccept(Lcom/kantv/ui/bean/EventBusBean;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getClassname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabNewsFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc23

    if-eq v2, v3, :cond_1

    const v3, 0xba31

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "ad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->tvSearch:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/EventBusBean;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public expand()V
    .locals 8

    .line 441
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->isExpand:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 444
    :try_start_0
    iget v5, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mMeasuredHeight:I

    if-eqz v5, :cond_0

    .line 445
    new-array v5, v3, [I

    iget-object v6, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    aput v6, v5, v4

    iget v6, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mMeasuredHeight:I

    aput v6, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x12c

    .line 446
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 447
    new-instance v6, Lcom/kantv/ui/fragment/TabNewsFragment$5;

    invoke-direct {v6, p0}, Lcom/kantv/ui/fragment/TabNewsFragment$5;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 458
    new-instance v5, Landroid/support/transition/AutoTransition;

    invoke-direct {v5}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v5, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 459
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v5, v1, v2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 460
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/support/transition/Fade;

    invoke-direct {v6, v3}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-static {v5, v6}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    iget-object v5, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    new-instance v4, Landroid/support/transition/AutoTransition;

    invoke-direct {v4}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v4, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 467
    iget-object v4, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v4, v1, v2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 468
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/support/transition/Fade;

    invoke-direct {v2, v3}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-static {v1, v2}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 470
    :goto_0
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->isExpand:Z

    :cond_1
    return-void
.end method

.method public initData()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->first:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->first:Z

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    .line 127
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->initCacheData()V

    .line 128
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0069

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mRootView:Landroid/view/View;

    .line 118
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->initRequestPopAd()V

    .line 119
    iget-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901fe
        }
    .end annotation

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901fe

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00a0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TabNewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/fragment/TabNewsFragment;->initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_1
    const-class p1, Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/TabNewsFragment;->gotoActivity(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 554
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    .line 555
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mFragmentData:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 557
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mFragmentData:Ljava/util/List;

    .line 559
    :cond_0
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->fragmentPagerAdapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    .line 560
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 561
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->adPopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 562
    iget-object v2, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->adPopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-eqz v0, :cond_2

    .line 564
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 565
    iput-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 567
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 509
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroyView()V

    .line 510
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->adPopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 515
    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->adPopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public reduce()V
    .locals 5

    .line 475
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mMeasuredHeight:I

    .line 478
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->isExpand:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    :try_start_0
    new-array v0, v0, [I

    iget-object v3, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    aput v3, v0, v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    .line 482
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 483
    new-instance v3, Lcom/kantv/ui/fragment/TabNewsFragment$6;

    invoke-direct {v3, p0}, Lcom/kantv/ui/fragment/TabNewsFragment$6;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 489
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    new-instance v0, Landroid/support/transition/AutoTransition;

    invoke-direct {v0}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 494
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 495
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/support/transition/Fade;

    invoke-direct {v3, v1}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-static {v0, v3}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 497
    :goto_0
    iput-boolean v2, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->isExpand:Z

    :cond_1
    return-void
.end method

.method public setVisiableHeight(I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 503
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 504
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 505
    iget-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment;->searchbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
