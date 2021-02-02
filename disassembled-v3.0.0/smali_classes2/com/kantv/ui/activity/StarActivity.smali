.class public Lcom/kantv/ui/activity/StarActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "StarActivity.java"


# static fields
.field public static isTz:Z = false


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private b:Landroid/os/Bundle;

.field blurBitmap:Landroid/graphics/Bitmap;

.field private fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field private img:Ljava/lang/String;

.field mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/HotClassBean;",
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

.field mHead:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090347
    .end annotation
.end field

.field mShareBt:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09034c
    .end annotation
.end field

.field private mShareDialog:Lcom/kantv/ui/view/ShareDialog;

.field mStarHeadBg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090348
    .end annotation
.end field

.field mStarMsg:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090349
    .end annotation
.end field

.field mStarPlace:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09034a
    .end annotation
.end field

.field mStarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09034e
    .end annotation
.end field

.field mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09034d
    .end annotation
.end field

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090017
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private starAbout:Ljava/lang/String;

.field starAboutLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013c
    .end annotation
.end field

.field starExitImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090346
    .end annotation
.end field

.field private starId:Ljava/lang/String;

.field private starMsg:Ljava/lang/String;

.field private starPlace:Ljava/lang/String;

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mFragmentData:Ljava/util/List;

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->blurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/StarActivity;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/kantv/ui/activity/StarActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/StarActivity;->parsePushData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kantv/ui/activity/StarActivity;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/StarActivity;->wxShare(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/StarActivity;->getTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->img:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kantv/ui/activity/StarActivity;)Lcom/tencent/tauth/Tencent;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->starAbout:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->starAbout:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->starPlace:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->starPlace:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/StarActivity;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->starMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->starMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/StarActivity;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/kantv/ui/activity/StarActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/StarActivity;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/StarActivity;->parseStar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/StarActivity;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->mFragmentData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/StarActivity;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/StarActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/kantv/ui/activity/StarActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object p0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getTitleStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3011\u7684\u4f5c\u54c1\u539f\u6765\u6709\u8fd9\u4e48\u591a\u7528\u770bTV\u770b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u4f5c\u54c1\u96c6\u4e00\u6b21\u770b\u4e2a\u591f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initRequestPusher(Ljava/lang/String;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 224
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    const-string v1, "uid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object p1, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v1, "_token"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->uploaderinfo(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/StarActivity$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/StarActivity$2;-><init>(Lcom/kantv/ui/activity/StarActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestStar(Ljava/lang/String;)V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 302
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    const-string v1, "actor"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object p1, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v1, "_token"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->tvActor(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/StarActivity$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/StarActivity$4;-><init>(Lcom/kantv/ui/activity/StarActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initShareDialog()V
    .locals 2

    .line 371
    new-instance v0, Lcom/kantv/ui/view/ShareDialog;

    new-instance v1, Lcom/kantv/ui/activity/StarActivity$6;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/StarActivity$6;-><init>(Lcom/kantv/ui/activity/StarActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/view/ShareDialog;-><init>(Landroid/content/Context;Lcom/kantv/ui/view/ShareDialog$onClickback;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mShareDialog:Lcom/kantv/ui/view/ShareDialog;

    .line 464
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mShareDialog:Lcom/kantv/ui/view/ShareDialog;

    invoke-virtual {v0}, Lcom/kantv/ui/view/ShareDialog;->show()V

    return-void
.end method

.method private initTabLayout()V
    .locals 5

    const/4 v0, 0x0

    .line 333
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 334
    new-instance v1, Lcom/kantv/ui/fragment/StarFragment;

    invoke-direct {v1}, Lcom/kantv/ui/fragment/StarFragment;-><init>()V

    .line 335
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 336
    iget-object v3, p0, Lcom/kantv/ui/activity/StarActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/HotClassBean;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1, v2}, Lcom/kantv/ui/fragment/StarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 339
    iget-object v2, p0, Lcom/kantv/ui/activity/StarActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    new-instance v0, Lcom/kantv/ui/activity/StarActivity$5;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/activity/StarActivity$5;-><init>(Lcom/kantv/ui/activity/StarActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 358
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 359
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 360
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 361
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    sget-object v1, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorMode(Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;)V

    .line 362
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerColor(I)V

    .line 363
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerPadding(I)V

    .line 364
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorColor(I)V

    .line 365
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColorSelected(I)V

    .line 366
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColor(I)V

    .line 367
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->spToPix(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->setTextSize(I)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f09037e

    .line 176
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/StarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090054

    .line 177
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/StarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const v0, 0x7f0900ad

    .line 178
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/StarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 179
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const v1, 0x7f1001a5

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextAppearance(I)V

    .line 182
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleGravity(I)V

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleGravity(I)V

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    .line 185
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleColor(I)V

    .line 186
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/StarActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    new-instance v1, Lcom/kantv/ui/activity/StarActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/StarActivity$1;-><init>(Lcom/kantv/ui/activity/StarActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private parsePushData(Ljava/lang/String;)V
    .locals 6

    .line 246
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "status"

    .line 248
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data"

    .line 249
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "video"

    .line 251
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 252
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mData:Ljava/util/List;

    const/4 v0, 0x0

    .line 254
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 255
    invoke-static {p1, v0}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/kantv/ui/activity/StarActivity;->mData:Ljava/util/List;

    new-instance v3, Lcom/kantv/ui/bean/HotClassBean;

    const-string v4, "channelname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "list"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-direct {v3, v4, v1, v5}, Lcom/kantv/ui/bean/HotClassBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/kantv/ui/activity/StarActivity;->initTabLayout()V

    :cond_3
    return-void
.end method

.method private parseStar(Ljava/lang/String;)V
    .locals 6

    .line 265
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "status"

    .line 267
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "data"

    .line 268
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "videos"

    .line 270
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "actor"

    .line 271
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 273
    new-instance v1, Lcom/kantv/ui/activity/StarActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/activity/StarActivity$3;-><init>(Lcom/kantv/ui/activity/StarActivity;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/StarActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    :cond_2
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->mData:Ljava/util/List;

    const/4 p1, 0x0

    .line 287
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 288
    invoke-static {v0, p1}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rows"

    .line 289
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 290
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    iget-object v3, p0, Lcom/kantv/ui/activity/StarActivity;->mData:Ljava/util/List;

    new-instance v4, Lcom/kantv/ui/bean/HotClassBean;

    const-string v5, "name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v4, v5, v1, v2}, Lcom/kantv/ui/bean/HotClassBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 294
    :cond_4
    invoke-direct {p0}, Lcom/kantv/ui/activity/StarActivity;->initTabLayout()V

    :cond_5
    return-void
.end method

.method private wxShare(I)V
    .locals 4

    .line 469
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 470
    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 471
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 472
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/StarActivity;->getTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    const v0, 0x7f0f00be

    .line 473
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/StarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 474
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08011f

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x96

    .line 475
    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 476
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 477
    invoke-static {v3, v2}, Lcom/kantv/common/utils/Utils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 478
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v2, "webpage"

    .line 479
    invoke-direct {p0, v2}, Lcom/kantv/ui/activity/StarActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 480
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 481
    iput p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 482
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method


# virtual methods
.method public back(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 324
    sput-boolean v0, Lcom/kantv/ui/activity/StarActivity;->isTz:Z

    .line 325
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tid"

    .line 326
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "seo"

    .line 327
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/StarActivity;->setResult(ILandroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090346,
            0x7f09034c,
            0x7f09013c
        }
    .end annotation

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013c

    if-eq p1, v0, :cond_2

    const v0, 0x7f090346

    if-eq p1, v0, :cond_1

    const v0, 0x7f09034c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/StarActivity;->initShareDialog()V

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->finish()V

    goto :goto_0

    .line 504
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 505
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->img:Ljava/lang/String;

    const-string v1, "star_bg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->starAbout:Ljava/lang/String;

    const-string v1, "star_about"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->starPlace:Ljava/lang/String;

    const-string v1, "star_place"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->starMsg:Ljava/lang/String;

    const-string v1, "star_msg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-class v0, Lcom/kantv/ui/activity/StarAboutActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/StarActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 145
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0034

    .line 146
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/StarActivity;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->initBase()V

    .line 148
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->initStatusBar()V

    .line 149
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "1106453625"

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    const/4 p1, 0x0

    const-string v0, "wx70cbf5b9aacb0e47"

    .line 151
    invoke-static {p0, v0, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 152
    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 153
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/kantv/ui/activity/StarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->b:Landroid/os/Bundle;

    .line 155
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->b:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->name:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->b:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->starId:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->b:Landroid/os/Bundle;

    const-string v1, "img"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->img:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->b:Landroid/os/Bundle;

    const-string v1, "shareUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->url:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->img:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->mStarHeadBg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadImageBlur(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 161
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->b:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "star"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->img:Ljava/lang/String;

    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mHead:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/kantv/ui/utils/GlideUtils;->loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 163
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->starId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/StarActivity;->initRequestStar(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mShareBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->img:Ljava/lang/String;

    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mHead:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/kantv/ui/utils/GlideUtils;->loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 167
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity;->name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/StarActivity;->initRequestPusher(Ljava/lang/String;)V

    .line 170
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/StarActivity;->initView()V

    .line 171
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f71\u89c6_\u660e\u661f_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/StarActivity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 172
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

    .line 517
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 519
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 520
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mStarHeadBg:Landroid/widget/ImageView;

    .line 521
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mHead:Landroid/widget/ImageView;

    .line 522
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mStarTitle:Landroid/widget/TextView;

    .line 523
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 524
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mFragmentData:Ljava/util/List;

    .line 526
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->mData:Ljava/util/List;

    .line 527
    iput-object v0, p0, Lcom/kantv/ui/activity/StarActivity;->b:Landroid/os/Bundle;

    return-void
.end method
