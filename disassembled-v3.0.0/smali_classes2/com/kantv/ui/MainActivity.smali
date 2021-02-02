.class public Lcom/kantv/ui/MainActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "MainActivity.java"


# static fields
.field public static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_CODE_LOCATION:I = 0x40

.field public static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private fragmentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private highImgArray:[Ljava/lang/String;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mImageViewArray:[I

.field private mTabArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090014
    .end annotation
.end field

.field private mTabTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

.field private normalImgArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 101
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kantv/ui/MainActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 90
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mImageViewArray:[I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    const/16 v0, 0xa

    .line 97
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/kantv/ui/MainActivity;->normalImgArray:[Ljava/lang/String;

    .line 98
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->highImgArray:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f08026b
        0x7f080275
        0x7f080277
        0x7f080276
    .end array-data
.end method

.method static synthetic access$000(Lcom/kantv/ui/MainActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/kantv/ui/MainActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/kantv/ui/MainActivity;->parseFootTab(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kantv/ui/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/MainActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/kantv/ui/MainActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/kantv/ui/MainActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/MainActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/MainActivity;->initUpdateData(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/kantv/ui/MainActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/kantv/ui/MainActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/MainActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->initDefaultFootTabs()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/MainActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/MainActivity;)[Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/kantv/ui/MainActivity;->highImgArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/MainActivity;)[Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/kantv/ui/MainActivity;->normalImgArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/MainActivity;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->initStatusBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/kantv/ui/MainActivity;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->initStatusBar()V

    return-void
.end method

.method static synthetic access$800(Lcom/kantv/ui/MainActivity;)[I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/kantv/ui/MainActivity;->mImageViewArray:[I

    return-object p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/MainActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/kantv/ui/MainActivity;->isDestroy:Z

    return p0
.end method

.method private checkLimitIp()V
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 704
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->limitIp(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/MainActivity$13;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/MainActivity$13;-><init>(Lcom/kantv/ui/MainActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private checkLocationPermission()V
    .locals 5

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "1"

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 134
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "MainActivity"

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "checkLocationPermission:\u6709\u5b9a\u4f4d\u6743\u9650"

    .line 140
    invoke-static {v4, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v1}, Lcom/kantv/ui/MainActivity;->uploadLocation(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "checkLocationPermission:\u65e0\u6743\u5b9a\u4f4d\u6743\u9650"

    .line 137
    invoke-static {v4, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/16 v1, 0x40

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 145
    :cond_2
    invoke-direct {p0, v1}, Lcom/kantv/ui/MainActivity;->uploadLocation(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private checkNotifationPermission()V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/kantv/ui/viewmodel/CommonViewModel;->checkNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultTabItemView(I)Landroid/view/View;
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901da

    const v2, 0x7f0901d9

    if-nez p1, :cond_0

    .line 480
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 481
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mImageViewArray:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 486
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-object v0
.end method

.method private getTabItemView(I)Landroid/view/View;
    .locals 5

    .line 461
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901d9

    const v2, 0x7f0901da

    if-nez p1, :cond_0

    .line 463
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 465
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 466
    iget-object v2, p0, Lcom/kantv/ui/MainActivity;->highImgArray:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 470
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 471
    iget-object v2, p0, Lcom/kantv/ui/MainActivity;->normalImgArray:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-object v0
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 571
    new-instance v1, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v1, v0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 572
    invoke-virtual {v1}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/MainActivity$9;

    invoke-direct {p2, p0}, Lcom/kantv/ui/MainActivity$9;-><init>(Lcom/kantv/ui/MainActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/MainActivity$8;

    invoke-direct {p2, p0}, Lcom/kantv/ui/MainActivity$8;-><init>(Lcom/kantv/ui/MainActivity;)V

    const-string v0, "\u786e\u5b9a"

    .line 576
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 581
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initDefaultFootTabs()V
    .locals 6

    .line 409
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 410
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090210

    invoke-virtual {v0, p0, v1, v2}, Lcom/kantv/ui/view/CustomFragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 411
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    iget-object v3, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kantv/ui/view/CustomFragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/kantv/ui/MainActivity;->getDefaultTabItemView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 415
    iget-object v3, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/kantv/ui/view/CustomFragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 417
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/fragment/TabTvFragment;

    iput-object v2, p0, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    .line 418
    iget-object v2, p0, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    if-nez v2, :cond_0

    .line 419
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/kantv/ui/MainActivity$4;

    invoke-direct {v3, p0}, Lcom/kantv/ui/MainActivity$4;-><init>(Lcom/kantv/ui/MainActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    new-instance v3, Lcom/kantv/ui/MainActivity$5;

    invoke-direct {v3, p0}, Lcom/kantv/ui/MainActivity$5;-><init>(Lcom/kantv/ui/MainActivity;)V

    invoke-virtual {v2, v3}, Lcom/kantv/ui/view/CustomFragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initFootTabs()V
    .locals 5

    .line 335
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 336
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090210

    invoke-virtual {v0, p0, v1, v2}, Lcom/kantv/ui/view/CustomFragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    const/4 v0, 0x0

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    iget-object v2, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kantv/ui/view/CustomFragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/kantv/ui/MainActivity;->getTabItemView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    iget-object v3, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/kantv/ui/view/CustomFragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 343
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/fragment/TabTvFragment;

    iput-object v1, p0, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    .line 344
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kantv/ui/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/kantv/ui/MainActivity$2;-><init>(Lcom/kantv/ui/MainActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    new-instance v2, Lcom/kantv/ui/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/kantv/ui/MainActivity$3;-><init>(Lcom/kantv/ui/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/kantv/ui/view/CustomFragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initLimitIpDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 742
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 743
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/MainActivity$15;

    invoke-direct {p2, p0}, Lcom/kantv/ui/MainActivity$15;-><init>(Lcom/kantv/ui/MainActivity;)V

    const-string v0, "\u9000\u51faAPP"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/MainActivity$14;

    invoke-direct {p2, p0}, Lcom/kantv/ui/MainActivity$14;-><init>(Lcom/kantv/ui/MainActivity;)V

    const-string v0, "\u767b\u5f55/\u6ce8\u518c"

    .line 748
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 753
    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setCancelable(Z)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initOnlineFootTabs()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v1, Lcom/kantv/ui/fragment/TabTvFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v1, Lcom/kantv/ui/fragment/LiveFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v1, Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v1, Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    const-string v1, "\u9996\u9875"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    const-string v1, "\u76f4\u64ad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    const-string v1, "\u8d44\u8baf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    const-string v1, "\u6211"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    const-string v1, "webview"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    const-string v1, "news"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_5
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "foottab_json"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "foottab_time"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, v0, v1}, Lcom/kantv/ui/MainActivity;->requestFootTab(Ljava/lang/String;Z)V

    goto :goto_0

    .line 224
    :cond_7
    invoke-direct {p0, v0}, Lcom/kantv/ui/MainActivity;->parseFootTab(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initOnlineStatus()V
    .locals 4

    .line 493
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 494
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 496
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->onlineStatus(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/MainActivity$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/MainActivity$6;-><init>(Lcom/kantv/ui/MainActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    :goto_0
    return-void
.end method

.method private initPush()V
    .locals 4

    .line 531
    const-class v0, Lcom/kantv/ui/MainActivity;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    const-class v0, Lcom/kantv/ui/MainActivity;

    const-string v1, "public"

    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "uid"

    const-string v1, ""

    .line 533
    invoke-static {p0, v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v2

    .line 536
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 537
    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    :cond_0
    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "app_ver"

    invoke-virtual {v2, v1, v0}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/config/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sbID"

    invoke-virtual {v2, v1, v0}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "apnsTopic"

    const-string v1, "com.imkan.tv"

    .line 541
    invoke-virtual {v2, v0, v1}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    new-instance v0, Lcom/kantv/ui/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/kantv/ui/MainActivity$7;-><init>(Lcom/kantv/ui/MainActivity;)V

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 555
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pushtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-direct {p0, v0, v1, v2}, Lcom/kantv/ui/MainActivity;->pushInfoProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initUpdateData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .line 670
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/downloadapk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    new-instance v1, Lcom/kantv/ui/utils/DownloadUtils;

    invoke-direct {v1, p0, p2}, Lcom/kantv/ui/utils/DownloadUtils;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 672
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 675
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kantv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "version"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".apk"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kantv/common/utils/Utils;->validateApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/kantv/ui/MainActivity$12;

    invoke-direct {p2, p0, v1, v2}, Lcom/kantv/ui/MainActivity$12;-><init>(Lcom/kantv/ui/MainActivity;Lcom/kantv/ui/utils/DownloadUtils;Ljava/io/File;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 691
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 695
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/kantv/ui/utils/DownloadUtils;->downloadAPK(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 698
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/kantv/ui/utils/DownloadUtils;->downloadAPK(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private initVersionUpdate()V
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 587
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    const-string v1, "2"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v2, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v3, "_token"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static {}, Lcom/kantv/common/utils/Utils;->isGooglePlayVersion()Z

    move-result v0

    const-string v2, "canala"

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    const-string v1, "1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->version_up(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/MainActivity$10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/MainActivity$10;-><init>(Lcom/kantv/ui/MainActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private parseFootTab(Ljava/lang/String;)V
    .locals 12

    const-string v0, "@2x.jpg"

    const-string v1, "url"

    .line 272
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "status"

    .line 274
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "data"

    .line 275
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->initDefaultFootTabs()V

    return-void

    :cond_1
    const-string v3, "noplus"

    .line 280
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 281
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 282
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "foottab_json"

    invoke-static {v3, v4, p1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "foottab_time"

    invoke-static {p1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 284
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 286
    :try_start_0
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "title"

    const-string v6, "seo"

    if-lt v3, v4, :cond_2

    .line 287
    :try_start_1
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v5, Lcom/kantv/ui/fragment/LiveFragment;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    :cond_2
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const-string v10, "watchlist"

    const/4 v11, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    :try_start_2
    const-string v6, "webview"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    const-string v6, "video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_2
    const-string v6, "news"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_4
    const-string v6, "account"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x3

    :cond_3
    :goto_2
    if-eqz v5, :cond_9

    if-eq v5, v11, :cond_7

    if-eq v5, v9, :cond_6

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_4

    .line 317
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v5, Lcom/kantv/ui/fragment/LiveFragment;

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 314
    :cond_4
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v5, Lcom/kantv/ui/fragment/KanListFragment;

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 311
    :cond_5
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v5, Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 308
    :cond_6
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v5, Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 299
    :cond_7
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 300
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v5, Lcom/kantv/ui/fragment/KanListFragment;

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->mTabTag:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "watchlist_topic"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 304
    :cond_8
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v5, Lcom/kantv/ui/fragment/LiveFragment;

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 296
    :cond_9
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    const-class v5, Lcom/kantv/ui/fragment/TabTvFragment;

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_3
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->normalImgArray:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "photo_n"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 321
    iget-object v4, p0, Lcom/kantv/ui/MainActivity;->highImgArray:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "photo_h"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 323
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    invoke-static {}, Ldebug/KanApplication;->clearTvDefaultIndexJson()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 327
    :cond_a
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->initFootTabs()V

    goto :goto_5

    .line 329
    :cond_b
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->initDefaultFootTabs()V

    :cond_c
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x462c75d3 -> :sswitch_4
        -0x10af8a13 -> :sswitch_3
        0x338ad3 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x48fb3bf9 -> :sswitch_0
    .end sparse-switch
.end method

.method private pushInfoProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 761
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/MainActivity$16;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/kantv/ui/MainActivity$16;-><init>(Lcom/kantv/ui/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_0
    return-void
.end method

.method private requestFootTab(Ljava/lang/String;Z)V
    .locals 3

    .line 233
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "token"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    const-string v1, "_token"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object p2, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object p2, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p2

    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->request:Ljava/util/Map;

    invoke-interface {p2, v0}, Lcom/kantv/common/api/ApiService;->bottomNav(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    new-instance v0, Lcom/kantv/ui/MainActivity$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/kantv/ui/MainActivity$1;-><init>(Lcom/kantv/ui/MainActivity;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private uploadLocation(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "uploadLocation"

    .line 655
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    .line 656
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-static {p0}, Lcom/kantv/ui/utils/LocationUtils;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/utils/LocationUtils;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/MainActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/MainActivity$11;-><init>(Lcom/kantv/ui/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/utils/LocationUtils;->showLocationAsyn(Lcom/kantv/ui/utils/LocationUtils$ILocation;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 664
    invoke-static {v0, v0, p1}, Lcom/kantv/ui/viewmodel/CommonViewModel;->UploadLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0026

    .line 110
    invoke-virtual {p0, p1}, Lcom/kantv/ui/MainActivity;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->initBase()V

    .line 112
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->initStatusBar()V

    .line 113
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->initOnlineFootTabs()V

    .line 114
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isfirst"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->initOnlineStatus()V

    .line 117
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->initPush()V

    .line 118
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->initVersionUpdate()V

    .line 119
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->checkLimitIp()V

    .line 120
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u9996\u9875"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 123
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->checkLocationPermission()V

    .line 124
    invoke-direct {p0}, Lcom/kantv/ui/MainActivity;->checkNotifationPermission()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 834
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 835
    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    .line 836
    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 837
    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->fragmentArray:Ljava/util/ArrayList;

    .line 838
    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabArray:Ljava/util/ArrayList;

    .line 839
    iput-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    .line 841
    invoke-static {p0}, Lcom/kantv/ui/utils/LocationUtils;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/utils/LocationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/utils/LocationUtils;->removeLocationUpdatesListener()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 177
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/kantv/ui/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pushtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/kantv/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-direct {p0, p1, v0, v1}, Lcom/kantv/ui/MainActivity;->pushInfoProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/ui/PackageActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x40

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    array-length p1, p3

    const-string p2, "MainActivity"

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    const-string p1, "onRequestPermissionsResult:\u6388\u6743\u8bf7\u6c42\u88ab\u5141\u8bb8"

    .line 161
    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    .line 164
    invoke-direct {p0, p1}, Lcom/kantv/ui/MainActivity;->uploadLocation(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "onRequestPermissionsResult:\u6388\u6743\u8bf7\u6c42\u88ab\u62d2\u7edd"

    .line 166
    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "0"

    .line 167
    invoke-direct {p0, p1}, Lcom/kantv/ui/MainActivity;->uploadLocation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 150
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    return-void
.end method

.method public setTab(I)V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/CustomFragmentTabHost;->setCurrentTab(I)V

    return-void
.end method
