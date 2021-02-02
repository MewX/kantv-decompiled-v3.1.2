.class public Lcom/kantv/ui/activity/MoreRecommendActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "MoreRecommendActivity.java"


# instance fields
.field mTodayRDData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field

.field moreRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09022a
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

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field todayRDAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->mTodayRDData:Ljava/util/List;

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->page:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->todayRDAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/MoreRecommendActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/MoreRecommendActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->page:I

    return p0
.end method

.method static synthetic access$102(Lcom/kantv/ui/activity/MoreRecommendActivity;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->page:I

    return p1
.end method

.method static synthetic access$108(Lcom/kantv/ui/activity/MoreRecommendActivity;)I
    .locals 2

    .line 48
    iget v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->page:I

    return v0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/MoreRecommendActivity;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->initRequest(Z)V

    return-void
.end method

.method private initRequest(Z)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->VideoRecommend(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/MoreRecommendActivity$1;

    invoke-direct {v1, p0, p0, p1}, Lcom/kantv/ui/activity/MoreRecommendActivity$1;-><init>(Lcom/kantv/ui/activity/MoreRecommendActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u66f4\u591a\u63a8\u8350"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/MoreRecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->moreRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 153
    new-instance v0, Lcom/kantv/ui/activity/MoreRecommendActivity$2;

    iget-object v1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->mTodayRDData:Ljava/util/List;

    const v2, 0x7f0c008f

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/kantv/ui/activity/MoreRecommendActivity$2;-><init>(Lcom/kantv/ui/activity/MoreRecommendActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->todayRDAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 182
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->moreRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->todayRDAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->moreRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/MoreRecommendActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/MoreRecommendActivity$3;-><init>(Lcom/kantv/ui/activity/MoreRecommendActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MoreRecommendActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 69
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MoreRecommendActivity;->initBase()V

    .line 71
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MoreRecommendActivity;->initStatusBar()V

    .line 72
    invoke-direct {p0}, Lcom/kantv/ui/activity/MoreRecommendActivity;->initTitle()V

    const/4 p1, 0x1

    .line 77
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->initRequest(Z)V

    .line 78
    invoke-direct {p0}, Lcom/kantv/ui/activity/MoreRecommendActivity;->initView()V

    .line 79
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6\u9996\u9875_\u66f4\u591a\u63a8\u8350"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 80
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

    .line 204
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->moreRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 206
    iput-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity;->mTodayRDData:Ljava/util/List;

    return-void
.end method
