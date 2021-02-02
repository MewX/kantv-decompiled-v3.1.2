.class public Lcom/kantv/ui/fragment/VideoClassFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "VideoClassFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoClassFragment"


# instance fields
.field private biaoqian:Ljava/lang/String;

.field galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

.field private isFirstLoad:Z

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/HotClassBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/HotClassBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFoot:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mHotClassData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/HotClassBean;",
            ">;"
        }
    .end annotation
.end field

.field private mImgData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/SlideImgBean;",
            ">;"
        }
    .end annotation
.end field

.field private mImgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903b5
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

.field private scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

.field private scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

.field scrollImgSum:I

.field private search_title:Ljava/lang/String;

.field private seo:Ljava/lang/String;

.field private todayUpateNum:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mData:Ljava/util/List;

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->isFirstLoad:Z

    const/4 v1, 0x6

    .line 94
    iput v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrollImgSum:I

    .line 98
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    .line 100
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->todayUpateNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/VideoClassFragment;)Lcom/kantv/ui/interfaces/ScrollEffect;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/VideoClassFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/VideoClassFragment;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->todayUpateNum:I

    return p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/fragment/VideoClassFragment;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->todayUpateNum:I

    return p1
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/VideoClassFragment;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/fragment/VideoClassFragment;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->seo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/fragment/VideoClassFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->initRequest(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/fragment/VideoClassFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/fragment/VideoClassFragment;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/VideoClassFragment;->initParse(Ljava/lang/String;)V

    return-void
.end method

.method private fillDataView()V
    .locals 4

    .line 254
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->isFirstLoad:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 256
    new-instance v0, Lcom/kantv/ui/fragment/VideoClassFragment$3;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c0091

    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mData:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kantv/ui/fragment/VideoClassFragment$3;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 439
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addHeaderView(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 441
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/VideoClassFragment$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/fragment/VideoClassFragment$4;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->isFirstLoad:Z

    return-void
.end method

.method private initCacheData()V
    .locals 5

    .line 170
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/VideoClassFragment;->initParse(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->initTodayUpdate()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->initTodayUpdate()V

    .line 178
    invoke-direct {p0, v0, v2}, Lcom/kantv/ui/fragment/VideoClassFragment;->initRequest(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initParse(Ljava/lang/String;)V
    .locals 5

    .line 225
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mImgList:Ljava/util/List;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mTitles:Ljava/util/List;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mImgData:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mHotClassData:Ljava/util/List;

    .line 230
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "status"

    .line 232
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "data"

    .line 233
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "info"

    .line 235
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "seo"

    .line 237
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->seo:Ljava/lang/String;

    const-string v1, "search_title"

    .line 239
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->search_title:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->search_title:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/bean/EventBusBean;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->search_title:Ljava/lang/String;

    const-string v3, "TabTvFragment"

    const-string v4, "001"

    invoke-direct {v1, v3, v4, v2}, Lcom/kantv/ui/bean/EventBusBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 245
    :cond_3
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/VideoClassFragment;->parseScrollImgData(Lorg/json/JSONObject;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/VideoClassFragment;->parseVideoClassData(Lorg/json/JSONObject;)V

    :cond_4
    return-void
.end method

.method private initRequest(Ljava/lang/String;Z)V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 544
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->type:Ljava/lang/String;

    const-string v2, "seo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->channel(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/VideoClassFragment$5;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/kantv/ui/fragment/VideoClassFragment$5;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTodayUpdate()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 185
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->type:Ljava/lang/String;

    const-string v2, "seo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->todayUpdate(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/VideoClassFragment$2;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/VideoClassFragment$2;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private parseScrollImgData(Lorg/json/JSONObject;)V
    .locals 5

    .line 468
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mHeader:Landroid/view/View;

    const v1, 0x7f0903b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/gallery/GalleryViewPager;

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    const-string v0, "top"

    .line 469
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 470
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 471
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 472
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 473
    invoke-static {p1, v1}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 475
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mTitles:Ljava/util/List;

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mImgList:Ljava/util/List;

    const-string v4, "photo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/SlideImgBean;

    .line 478
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mImgData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    if-nez p1, :cond_1

    .line 485
    new-instance p1, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mImgData:Ljava/util/List;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    .line 487
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    invoke-virtual {p1, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 488
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mImgData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->setCurrentItem(I)V

    .line 489
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    new-instance v0, Lcom/kantv/lib/gallery/ScaleGalleryTransformer;

    invoke-direct {v0}, Lcom/kantv/lib/gallery/ScaleGalleryTransformer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 490
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Lcom/kantv/lib/gallery/GalleryViewPager;->setDuration(J)V

    .line 491
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-virtual {p1}, Lcom/kantv/lib/gallery/GalleryViewPager;->startAutoCycle()V

    .line 492
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    const/16 v0, 0x5dc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kantv/lib/gallery/GalleryViewPager;->setSliderTransformDuration(ILandroid/view/animation/Interpolator;)V

    return-void

    .line 481
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->setVisibility(I)V

    return-void
.end method

.method private parseVideoClassData(Lorg/json/JSONObject;)V
    .locals 11

    .line 496
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const-string v0, "hot_label"

    .line 499
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 500
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "name"

    const-string v4, "tid"

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 501
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 502
    invoke-static {v0, v1}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 503
    iget-object v6, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mHotClassData:Ljava/util/List;

    new-instance v7, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v9, v5}, Lcom/kantv/ui/bean/HotClassBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mData:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 506
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mHotClassData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_3

    .line 508
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_3
    const-string v0, "recommend"

    .line 510
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 511
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 512
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-static {p1, v2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    const-string v5, "seo"

    .line 517
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "list"

    if-eqz v6, :cond_6

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 518
    new-instance v5, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v8, v9, v7}, Lcom/kantv/ui/bean/HotClassBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "url"

    .line 519
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/kantv/ui/bean/HotClassBean;->setUrl(Ljava/lang/String;)V

    const-string v7, "photo"

    .line 520
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/kantv/ui/bean/HotClassBean;->setPhoto(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v5, v6}, Lcom/kantv/ui/bean/HotClassBean;->setSeo(Ljava/lang/String;)V

    const-string v6, "opentype"

    .line 522
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kantv/ui/bean/HotClassBean;->setOpenType(Ljava/lang/String;)V

    const-string v6, "photo_size"

    .line 523
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v6, "width"

    .line 525
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kantv/ui/bean/HotClassBean;->setPhotoWidth(Ljava/lang/String;)V

    const-string v6, "height"

    .line 526
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/kantv/ui/bean/HotClassBean;->setPhotoHeight(Ljava/lang/String;)V

    .line 528
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 530
    :cond_6
    new-instance v5, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v8, v1}, Lcom/kantv/ui/bean/HotClassBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :goto_2
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mData:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 533
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_7
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_8

    .line 535
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 5

    .line 111
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->type:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->biaoqian:Ljava/lang/String;

    .line 116
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f71\u89c6_\u7248\u5757_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->biaoqian:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 117
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->search_title:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/bean/EventBusBean;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->search_title:Ljava/lang/String;

    const-string v3, "TabTvFragment"

    const-string v4, "001"

    invoke-direct {v1, v3, v4, v2}, Lcom/kantv/ui/bean/EventBusBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->isFirstLoad:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mHeader:Landroid/view/View;

    .line 123
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->fillDataView()V

    .line 124
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoClassFragment;->initCacheData()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/VideoClassFragment$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/fragment/VideoClassFragment$1;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006c

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRootView:Landroid/view/View;

    .line 106
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 598
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 599
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mData:Ljava/util/List;

    .line 600
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v1, :cond_0

    .line 601
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 602
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 604
    :cond_0
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    .line 605
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    .line 606
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public setScrollEffect(Lcom/kantv/ui/interfaces/ScrollEffect;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    return-void
.end method
