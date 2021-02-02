.class public Lcom/kantv/ui/activity/AreaActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "AreaActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AreaActivity"


# instance fields
.field deleteImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090377
    .end annotation
.end field

.field mSelectStateRV:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031a
    .end annotation
.end field

.field private mStateAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/StateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mStateData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/StateBean;",
            ">;"
        }
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field private state:[Ljava/lang/String;

.field private stateImg:[I

.field private stateName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 46
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateData:Ljava/util/List;

    const/4 v0, 0x3

    .line 59
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/kantv/ui/activity/AreaActivity;->stateImg:[I

    .line 61
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u6fb3\u5927\u5229\u4e9a"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "\u65b0\u897f\u5170"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "\u6590\u6d4e"

    aput-object v5, v1, v4

    iput-object v1, p0, Lcom/kantv/ui/activity/AreaActivity;->stateName:[Ljava/lang/String;

    .line 63
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "+61"

    aput-object v1, v0, v2

    const-string v1, "+64"

    aput-object v1, v0, v3

    const-string v1, "+679"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->state:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f080076
        0x7f0801de
        0x7f0800e5
    .end array-data
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/AreaActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/kantv/ui/activity/AreaActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/AreaActivity;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/AreaActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/kantv/ui/activity/AreaActivity;->initDefaultData()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/AreaActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method private initDefaultData()V
    .locals 6

    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/AreaActivity;->stateImg:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateData:Ljava/util/List;

    new-instance v3, Lcom/kantv/ui/bean/StateBean;

    aget v1, v1, v0

    iget-object v4, p0, Lcom/kantv/ui/activity/AreaActivity;->state:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/kantv/ui/activity/AreaActivity;->stateName:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v3, v1, v4, v5}, Lcom/kantv/ui/bean/StateBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initRequest()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    invoke-static {v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/AreaActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getCountry(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/AreaActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/AreaActivity$1;-><init>(Lcom/kantv/ui/activity/AreaActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u56fd\u5bb6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->mSelectStateRV:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 130
    new-instance v0, Lcom/kantv/ui/activity/AreaActivity$2;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateData:Ljava/util/List;

    const v3, 0x7f0c008e

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/activity/AreaActivity$2;-><init>(Lcom/kantv/ui/activity/AreaActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 155
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->mSelectStateRV:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f01000c

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/activity/AreaActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090376
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090376

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/AreaActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f01000d

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/activity/AreaActivity;->overridePendingTransition(II)V

    .line 68
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001b

    .line 69
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/AreaActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/kantv/ui/activity/AreaActivity;->initBase()V

    .line 71
    invoke-direct {p0}, Lcom/kantv/ui/activity/AreaActivity;->initRequest()V

    .line 72
    invoke-direct {p0}, Lcom/kantv/ui/activity/AreaActivity;->initView()V

    .line 73
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u7528\u6237\u4fe1\u606f_\u533a\u57df\u9009\u62e9"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 74
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

    .line 176
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->mSelectStateRV:Landroid/support/v7/widget/RecyclerView;

    .line 178
    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateData:Ljava/util/List;

    .line 179
    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->mStateAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 180
    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->stateImg:[I

    .line 181
    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->stateName:[Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/kantv/ui/activity/AreaActivity;->state:[Ljava/lang/String;

    return-void
.end method
