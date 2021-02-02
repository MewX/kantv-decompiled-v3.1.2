.class public Lcom/kantv/ui/fragment/NewsFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "NewsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewsFragment"


# instance fields
.field private auAppId:Ljava/lang/String;

.field private auPhoto:Ljava/lang/String;

.field private defaultFlag:Z

.field private isFirst:Z

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String8Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String8Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/view/View;

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011e
    .end annotation
.end field

.field newsAdImg:Lcom/kantv/ui/view/ShapedImageView;

.field newsRateImg:Landroid/widget/ImageView;

.field newsRateTv:Landroid/widget/TextView;

.field newsWeatherImg:Landroid/widget/ImageView;

.field newsWeatherRateLayout:Landroid/widget/LinearLayout;

.field newsWeatherTv:Landroid/widget/TextView;

.field private newsbiaoqian:Ljava/lang/String;

.field private page:I

.field private scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

.field private search_title:Ljava/lang/String;

.field private todayUpateNum:I

.field private todaynews_city:Ljava/lang/String;

.field private todaynews_click:Ljava/lang/String;

.field private todaynews_content:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->page:I

    .line 88
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->isFirst:Z

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->todayUpateNum:I

    .line 96
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->defaultFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/NewsFragment;)Lcom/kantv/ui/interfaces/ScrollEffect;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/kantv/ui/fragment/NewsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/fragment/NewsFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->todayUpateNum:I

    return p0
.end method

.method static synthetic access$1002(Lcom/kantv/ui/fragment/NewsFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/kantv/ui/fragment/NewsFragment;->todayUpateNum:I

    return p1
.end method

.method static synthetic access$1100(Lcom/kantv/ui/fragment/NewsFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/fragment/NewsFragment;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/NewsFragment;->initParse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/kantv/ui/fragment/NewsFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/kantv/ui/fragment/NewsFragment;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/NewsFragment;->initWeatherRateParse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/kantv/ui/fragment/NewsFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/NewsFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->defaultFlag:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->auAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/fragment/NewsFragment;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->auPhoto:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/fragment/NewsFragment;Lcom/kantv/ui/bean/String8Bean;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/NewsFragment;->getContentDetail(Lcom/kantv/ui/bean/String8Bean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/fragment/NewsFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/kantv/ui/fragment/NewsFragment;->initTodayNewsClick()V

    return-void
.end method

.method static synthetic access$700(Lcom/kantv/ui/fragment/NewsFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->page:I

    return p0
.end method

.method static synthetic access$702(Lcom/kantv/ui/fragment/NewsFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/kantv/ui/fragment/NewsFragment;->page:I

    return p1
.end method

.method static synthetic access$708(Lcom/kantv/ui/fragment/NewsFragment;)I
    .locals 2

    .line 73
    iget v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->page:I

    return v0
.end method

.method static synthetic access$800(Lcom/kantv/ui/fragment/NewsFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/NewsFragment;->initRequest(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/kantv/ui/fragment/NewsFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/NewsFragment;->isonDestroy:Z

    return p0
.end method

.method private getContentDetail(Lcom/kantv/ui/bean/String8Bean;)V
    .locals 3

    .line 652
    sget-object v0, Lcom/kantv/ui/fragment/NewsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContentDetail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->hotcommentDetail(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/NewsFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/fragment/NewsFragment$9;-><init>(Lcom/kantv/ui/fragment/NewsFragment;Lcom/kantv/ui/bean/String8Bean;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initCacheData()V
    .locals 5

    .line 154
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsFragment;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kantv/ui/fragment/NewsFragment;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/NewsFragment;->initParse(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/kantv/ui/fragment/NewsFragment;->initTodayUpdate()V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/kantv/ui/fragment/NewsFragment;->initTodayUpdate()V

    .line 162
    invoke-direct {p0, v0, v3}, Lcom/kantv/ui/fragment/NewsFragment;->initRequest(Ljava/lang/String;Z)V

    .line 165
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->defaultFlag:Z

    if-eqz v0, :cond_3

    .line 166
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rateweather_json"

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "rateweather_time"

    invoke-static {v1, v4, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 170
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/NewsFragment;->initWeatherRateParse(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    .line 172
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/NewsFragment;->initWeatherRate(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private initParse(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "totalcount"

    .line 179
    invoke-static/range {p1 .. p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v3, "status"

    .line 182
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "data"

    .line 183
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v3, "search_title"

    .line 185
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/NewsFragment;->search_title:Ljava/lang/String;

    const-string v3, "appid"

    .line 186
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/NewsFragment;->auAppId:Ljava/lang/String;

    const-string v3, "photo"

    .line 187
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/kantv/ui/fragment/NewsFragment;->auPhoto:Ljava/lang/String;

    const-string v4, "adtongji"

    .line 188
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "todaynews_city"

    .line 190
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_city:Ljava/lang/String;

    const-string v5, "todaynews_click"

    .line 191
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_click:Ljava/lang/String;

    const-string v5, "todaynews_content"

    .line 192
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_content:Ljava/lang/String;

    .line 194
    :cond_2
    iget-object v4, v1, Lcom/kantv/ui/fragment/NewsFragment;->search_title:Ljava/lang/String;

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 195
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/kantv/ui/bean/EventBusBean;

    iget-object v6, v1, Lcom/kantv/ui/fragment/NewsFragment;->search_title:Ljava/lang/String;

    const-string v7, "TabNewsFragment"

    const-string v8, "001"

    invoke-direct {v5, v7, v8, v6}, Lcom/kantv/ui/bean/EventBusBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    const-string v4, "list"

    .line 197
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 199
    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 201
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_c

    .line 202
    invoke-static {v4, v7}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string v0, "seo"

    .line 204
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    if-eqz v9, :cond_8

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "ad"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 208
    :cond_4
    iget-object v8, v1, Lcom/kantv/ui/fragment/NewsFragment;->newsAdImg:Lcom/kantv/ui/view/ShapedImageView;

    new-instance v9, Lcom/kantv/ui/fragment/NewsFragment$2;

    invoke-direct {v9, v1, v0}, Lcom/kantv/ui/fragment/NewsFragment$2;-><init>(Lcom/kantv/ui/fragment/NewsFragment;Lorg/json/JSONObject;)V

    invoke-virtual {v8, v9}, Lcom/kantv/ui/view/ShapedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 233
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "photo_size"

    .line 234
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v9, "width"

    .line 236
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "height"

    .line 237
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v9}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 240
    :try_start_0
    iget-object v11, v1, Lcom/kantv/ui/fragment/NewsFragment;->newsAdImg:Lcom/kantv/ui/view/ShapedImageView;

    invoke-virtual {v11}, Lcom/kantv/ui/view/ShapedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 241
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v9, v0

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/NewsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    int-to-float v0, v0

    div-float/2addr v0, v9

    float-to-int v0, v0

    .line 243
    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsFragment;->newsAdImg:Lcom/kantv/ui/view/ShapedImageView;

    invoke-virtual {v0, v11}, Lcom/kantv/ui/view/ShapedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    :cond_5
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v10, :cond_7

    add-int/lit8 v9, v0, -0x3

    .line 252
    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v9, "gif"

    .line 253
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v0

    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/kantv/ui/fragment/NewsFragment;->newsAdImg:Lcom/kantv/ui/view/ShapedImageView;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_2

    .line 256
    :cond_6
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v8, 0x7f080208

    .line 259
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v8, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 260
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/kantv/ui/fragment/NewsFragment;->newsAdImg:Lcom/kantv/ui/view/ShapedImageView;

    .line 261
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 264
    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsFragment;->newsAdImg:Lcom/kantv/ui/view/ShapedImageView;

    invoke-virtual {v0, v6}, Lcom/kantv/ui/view/ShapedImageView;->setVisibility(I)V

    goto :goto_5

    :cond_8
    const-string v9, "256"

    .line 270
    :try_start_1
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 271
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    const/16 v10, 0x270f

    if-le v0, v10, :cond_9

    .line 273
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "K"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 275
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v9, v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_4
    move-object/from16 v17, v9

    .line 282
    new-instance v0, Lcom/kantv/ui/bean/String8Bean;

    const-string v9, "_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v9, "thumb"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v9, "title"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v9, "source"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v9, "comm_nums"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "isplay"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v16, ""

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 290
    :cond_c
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsFragment;->mData:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    new-instance v0, Lcom/kantv/ui/utils/SharedData;

    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "new_cache"

    invoke-direct {v0, v2, v3}, Lcom/kantv/ui/utils/SharedData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "cache_date"

    .line 292
    invoke-virtual {v0, v2}, Lcom/kantv/ui/utils/SharedData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/kantv/ui/utils/DateUtil;->JudgeTimeWeek(J)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 295
    :cond_d
    sget-object v3, Lcom/kantv/ui/fragment/NewsFragment;->TAG:Ljava/lang/String;

    const-string v4, "clear new cache"

    invoke-static {v3, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Lcom/kantv/ui/utils/SharedData;->clear()V

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kantv/ui/utils/SharedData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String8Bean;

    .line 302
    invoke-virtual {v3}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/kantv/ui/utils/SharedData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 304
    invoke-direct {v1, v3}, Lcom/kantv/ui/fragment/NewsFragment;->getContentDetail(Lcom/kantv/ui/bean/String8Bean;)V

    goto :goto_6

    .line 306
    :cond_f
    invoke-virtual {v3, v4}, Lcom/kantv/ui/bean/String8Bean;->setStr6(Ljava/lang/String;)V

    goto :goto_6

    .line 311
    :cond_10
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_11

    .line 312
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 314
    :cond_11
    iget-object v0, v1, Lcom/kantv/ui/fragment/NewsFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz v0, :cond_12

    .line 315
    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->refreshComplete()V

    :cond_12
    return-void
.end method

.method private initRequest(Ljava/lang/String;Z)V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 461
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kantv/ui/fragment/NewsFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->type:Ljava/lang/String;

    const-string v2, "class"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->newsList(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/NewsFragment$6;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/kantv/ui/fragment/NewsFragment$6;-><init>(Lcom/kantv/ui/fragment/NewsFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTodayNewsClick()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 601
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 602
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->auAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->auAppId:Ljava/lang/String;

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_city:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_city:Ljava/lang/String;

    const-string v2, "todaynews_city"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_click:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_click:Ljava/lang/String;

    const-string v2, "todaynews_click"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_content:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->todaynews_content:Ljava/lang/String;

    const-string v2, "todaynews_content"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->todayAuImageClick(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/NewsFragment$8;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/NewsFragment$8;-><init>(Lcom/kantv/ui/fragment/NewsFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTodayUpdate()V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 421
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    const-string v1, "seo"

    const-string v2, "news"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->todayUpdate(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/NewsFragment$5;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/NewsFragment$5;-><init>(Lcom/kantv/ui/fragment/NewsFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 322
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->isFirst:Z

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mHeader:Landroid/view/View;

    .line 324
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f09024d

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/ShapedImageView;

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsAdImg:Lcom/kantv/ui/view/ShapedImageView;

    .line 326
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mHeader:Landroid/view/View;

    const v1, 0x7f09026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsWeatherRateLayout:Landroid/widget/LinearLayout;

    .line 327
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mHeader:Landroid/view/View;

    const v1, 0x7f090260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsRateTv:Landroid/widget/TextView;

    .line 328
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mHeader:Landroid/view/View;

    const v1, 0x7f09026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsWeatherTv:Landroid/widget/TextView;

    .line 329
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mHeader:Landroid/view/View;

    const v1, 0x7f09025f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsRateImg:Landroid/widget/ImageView;

    .line 330
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mHeader:Landroid/view/View;

    const v1, 0x7f09026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsWeatherImg:Landroid/widget/ImageView;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 333
    new-instance v0, Lcom/kantv/ui/fragment/NewsFragment$3;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0086

    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsFragment;->mData:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kantv/ui/fragment/NewsFragment$3;-><init>(Lcom/kantv/ui/fragment/NewsFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 397
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addHeaderView(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 399
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/NewsFragment$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/fragment/NewsFragment$4;-><init>(Lcom/kantv/ui/fragment/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->isFirst:Z

    return-void
.end method

.method private initWeatherRate(Ljava/lang/String;)V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 504
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    const-string v1, "seo"

    const-string v2, "home"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getWeatherRateAd(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/NewsFragment$7;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/kantv/ui/fragment/NewsFragment$7;-><init>(Lcom/kantv/ui/fragment/NewsFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initWeatherRateParse(Ljava/lang/String;)V
    .locals 8

    .line 541
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 542
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 544
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "rateInfo"

    .line 546
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "weatherInfo"

    .line 547
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rate"

    .line 548
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "weather"

    .line 549
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 551
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 553
    iget-object v5, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsRateTv:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'#1F93EA\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    iget-object v5, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsRateTv:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "label"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_2
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 560
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 562
    iget-object v4, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsWeatherTv:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "low"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u2103~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "high"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2103"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :cond_3
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "photo"

    const/4 v5, 0x0

    if-nez v2, :cond_4

    .line 568
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 569
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 570
    invoke-static {v2, v5}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 571
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 572
    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsRateImg:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 573
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsRateImg:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/kantv/ui/utils/GlideUtils;->loadimage3(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 574
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsRateImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    :cond_4
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 580
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 581
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 582
    invoke-static {p1, v5}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 583
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 584
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsWeatherImg:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 585
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsWeatherImg:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/kantv/ui/utils/GlideUtils;->loadimage3(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 586
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsWeatherImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    :cond_5
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 592
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsWeatherRateLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 593
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 5

    .line 109
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->type:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsbiaoqian:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->defaultFlag:Z

    .line 115
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8d44\u8baf_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsFragment;->newsbiaoqian:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->search_title:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/bean/EventBusBean;

    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsFragment;->search_title:Ljava/lang/String;

    const-string v3, "TabNewsFragment"

    const-string v4, "001"

    invoke-direct {v1, v3, v4, v2}, Lcom/kantv/ui/bean/EventBusBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    :cond_1
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->isFirst:Z

    if-eqz v0, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/kantv/ui/fragment/NewsFragment;->initView()V

    .line 121
    invoke-direct {p0}, Lcom/kantv/ui/fragment/NewsFragment;->initCacheData()V

    .line 122
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "\u8d44\u8baf"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/NewsFragment$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/fragment/NewsFragment$1;-><init>(Lcom/kantv/ui/fragment/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0066

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment;->mRootView:Landroid/view/View;

    .line 104
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 642
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mData:Ljava/util/List;

    .line 644
    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 645
    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    return-void
.end method

.method public setScrollEffect(Lcom/kantv/ui/interfaces/ScrollEffect;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    return-void
.end method
