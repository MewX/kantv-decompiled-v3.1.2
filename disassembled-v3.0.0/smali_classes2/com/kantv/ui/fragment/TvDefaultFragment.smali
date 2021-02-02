.class public Lcom/kantv/ui/fragment/TvDefaultFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "TvDefaultFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TvDefaultFragment"


# instance fields
.field private adJson:Lorg/json/JSONObject;

.field private adPopHandler:Landroid/os/Handler;

.field adPopRunnable:Ljava/lang/Runnable;

.field private adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

.field private contentView:Landroid/view/View;

.field private fillData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;>;"
        }
    .end annotation
.end field

.field galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

.field private isFirstLoad:Z

.field private mBottomView:Lcom/tandong/bottomview/view/BottomView;

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

.field mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

.field mRandomMovieData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field

.field mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090141
    .end annotation
.end field

.field private page:I

.field private randomLookJson:Lorg/json/JSONObject;

.field private randomLookView:Landroid/view/View;

.field randomMovieList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private recommend_channel:Lorg/json/JSONArray;

.field private scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

.field private scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

.field private search_title:Ljava/lang/String;

.field private todayRecommendHead:Landroid/view/View;

.field private todayUpateNum:I

.field private type:Ljava/lang/String;

.field videoRateImg:Landroid/widget/ImageView;

.field videoRateTv:Landroid/widget/TextView;

.field videoWeatherImg:Landroid/widget/ImageView;

.field videoWeatherRateLayout:Landroid/widget/LinearLayout;

.field videoWeatherTv:Landroid/widget/TextView;

.field weatherIconView:Lcom/kantv/ui/view/WeatherIconView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    .line 102
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookJson:Lorg/json/JSONObject;

    .line 103
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adJson:Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->isFirstLoad:Z

    .line 113
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->search_title:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    .line 116
    iput v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->page:I

    .line 117
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adPopHandler:Landroid/os/Handler;

    .line 118
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 120
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomMovieList:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomMovieData:Ljava/util/List;

    .line 123
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayUpateNum:I

    .line 1071
    new-instance v0, Lcom/kantv/ui/fragment/TvDefaultFragment$17;

    invoke-direct {v0, p0}, Lcom/kantv/ui/fragment/TvDefaultFragment$17;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adPopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/kantv/ui/interfaces/ScrollEffect;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lorg/json/JSONObject;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adJson:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/kantv/ui/fragment/TvDefaultFragment;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->page:I

    return p1
.end method

.method static synthetic access$1208(Lcom/kantv/ui/fragment/TvDefaultFragment;)I
    .locals 2

    .line 86
    iget v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->page:I

    return v0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initRandomLookRequest(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/tandong/bottomview/view/BottomView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/kantv/ui/fragment/TvDefaultFragment;Lcom/tandong/bottomview/view/BottomView;)Lcom/tandong/bottomview/view/BottomView;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/kantv/ui/fragment/TvDefaultFragment;)Landroid/os/Handler;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adPopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/TvDefaultFragment;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayUpateNum:I

    return p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/fragment/TvDefaultFragment;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayUpateNum:I

    return p1
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/TvDefaultFragment;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initParse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initWeatherRateParse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/kantv/ui/fragment/TvDefaultFragment;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/fragment/TvDefaultFragment;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initParseRandomLookData(Ljava/lang/String;)V

    return-void
.end method

.method private fillDataView()V
    .locals 16

    move-object/from16 v7, p0

    .line 541
    iget-boolean v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->isFirstLoad:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_16

    .line 542
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 544
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const-string v9, "ad"

    const-string v10, "seo"

    const/4 v11, 0x1

    if-eqz v0, :cond_8

    const v1, 0x7f090142

    .line 546
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/support/v7/widget/RecyclerView;

    .line 547
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v1, 0x7f0901c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 548
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v2, 0x7f0901c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 549
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v3, 0x7f090039

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/kantv/ui/view/ShapedImageView;

    .line 550
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v4, 0x7f09014c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 551
    iget-object v4, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v5, 0x7f090338

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 552
    iget-object v5, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v6, 0x7f0903a0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 553
    iget-object v6, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v13, 0x7f090143

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 554
    iget-object v13, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v14, 0x7f09008f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 555
    iget-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v15, 0x7f0903c0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    iput-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoWeatherRateLayout:Landroid/widget/LinearLayout;

    .line 556
    iget-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v15, 0x7f0903bd

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoRateTv:Landroid/widget/TextView;

    .line 557
    iget-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v15, 0x7f0903bf

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoWeatherTv:Landroid/widget/TextView;

    .line 558
    iget-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v15, 0x7f0903bc

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoRateImg:Landroid/widget/ImageView;

    .line 559
    iget-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v15, 0x7f0903be

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoWeatherImg:Landroid/widget/ImageView;

    .line 560
    iget-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v15, 0x7f090156

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/kantv/ui/view/WeatherIconView;

    iput-object v14, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->weatherIconView:Lcom/kantv/ui/view/WeatherIconView;

    .line 562
    new-instance v14, Lcom/kantv/ui/fragment/TvDefaultFragment$6;

    invoke-direct {v14, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$6;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    new-instance v0, Lcom/kantv/ui/fragment/TvDefaultFragment$7;

    invoke-direct {v0, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$7;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    new-instance v0, Lcom/kantv/ui/fragment/TvDefaultFragment$8;

    invoke-direct {v0, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$8;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    new-instance v0, Lcom/kantv/ui/fragment/TvDefaultFragment$9;

    invoke-direct {v0, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$9;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    new-instance v0, Lcom/kantv/ui/fragment/TvDefaultFragment$10;

    invoke-direct {v0, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$10;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adJson:Lorg/json/JSONObject;

    const/16 v13, 0x8

    const-string v14, "photo"

    if-eqz v0, :cond_3

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 598
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 599
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adJson:Lorg/json/JSONObject;

    const-string v5, "photo_size"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "width"

    .line 601
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "height"

    .line 602
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {v5}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 605
    :try_start_0
    invoke-virtual {v3}, Lcom/kantv/ui/view/ShapedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 606
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v5, v0

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 608
    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 609
    invoke-virtual {v3, v6}, Lcom/kantv/ui/view/ShapedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    :cond_0
    :goto_0
    new-instance v0, Lcom/kantv/ui/fragment/TvDefaultFragment$11;

    invoke-direct {v0, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$11;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v3, v0}, Lcom/kantv/ui/view/ShapedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x3

    if-lt v0, v5, :cond_2

    add-int/lit8 v5, v0, -0x3

    .line 641
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "gif"

    .line 642
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v0

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 645
    :cond_1
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 646
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 647
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v4, 0x7f080208

    .line 648
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 649
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 650
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 653
    :cond_2
    :goto_1
    invoke-virtual {v3, v8}, Lcom/kantv/ui/view/ShapedImageView;->setVisibility(I)V

    goto :goto_2

    .line 655
    :cond_3
    invoke-virtual {v3, v13}, Lcom/kantv/ui/view/ShapedImageView;->setVisibility(I)V

    :goto_2
    const-string v0, "\u4eca\u65e5\u63a8\u8350"

    .line 658
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u66f4\u591a\u63a8\u8350"

    .line 659
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 661
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 662
    :goto_3
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 663
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 666
    :cond_4
    new-instance v0, Lcom/kantv/ui/fragment/TvDefaultFragment$12;

    invoke-direct {v0, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$12;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v15, 0x2

    invoke-direct {v0, v1, v15}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 674
    new-instance v0, Lcom/kantv/ui/fragment/TvDefaultFragment$13;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c008f

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/kantv/ui/fragment/TvDefaultFragment$13;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    .line 716
    invoke-virtual {v12, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 719
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x64

    .line 720
    sget-object v2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v1, v2, :cond_5

    .line 721
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    :cond_5
    new-instance v1, Lcom/kantv/ui/fragment/TvDefaultFragment$14;

    invoke-direct {v1, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$14;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    if-eqz v1, :cond_8

    .line 731
    :try_start_1
    invoke-static {v1, v8}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 733
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 734
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_4

    .line 736
    :cond_6
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_4

    .line 739
    :cond_7
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 742
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_4
    const/4 v0, 0x0

    .line 749
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookView:Landroid/view/View;

    if-eqz v1, :cond_9

    const v0, 0x7f090140

    .line 750
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 751
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 753
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    iget-object v2, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomMovieList:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 755
    iget-object v2, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomMovieList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 757
    :cond_a
    iget-object v2, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomMovieData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :goto_5
    new-instance v2, Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookJson:Lorg/json/JSONObject;

    invoke-direct {v2, v1, v3, v4, v11}, Lcom/kantv/ui/adapter/ContentSlideAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lorg/json/JSONObject;Z)V

    iput-object v2, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    if-eqz v0, :cond_b

    .line 762
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 765
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    .line 766
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    if-eqz v0, :cond_e

    .line 767
    invoke-static {v0, v8}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 769
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 770
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 772
    :cond_c
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 775
    :cond_d
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 779
    :cond_e
    :goto_6
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_8

    .line 782
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 783
    :goto_7
    iget-object v2, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 784
    iget-object v2, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 787
    :cond_10
    new-instance v1, Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-direct {v1, v0, v2, v3}, Lcom/kantv/ui/adapter/ContentSlideAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lorg/json/JSONArray;)V

    iput-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    .line 789
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 790
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual {v1, v0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->addHeaderView(Landroid/view/View;)V

    .line 791
    :cond_11
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 792
    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual {v1, v0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->addFooterView(Landroid/view/View;)V

    .line 793
    :cond_12
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    if-eqz v0, :cond_13

    .line 794
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->notifyDataSetChanged()V

    .line 795
    :cond_13
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 797
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/TvDefaultFragment$15;

    invoke-direct {v1, v7}, Lcom/kantv/ui/fragment/TvDefaultFragment$15;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    .line 812
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "video_rateweather_json"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 813
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "video_rateweather_time"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 814
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    .line 816
    invoke-direct {v7, v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initWeatherRateParse(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    if-ne v1, v11, :cond_17

    .line 818
    invoke-direct {v7, v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initWeatherRate(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    :goto_8
    return-void

    .line 822
    :cond_16
    iget-object v0, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    if-eqz v0, :cond_17

    .line 823
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->notifyDataSetChanged()V

    .line 825
    :cond_17
    :goto_9
    iput-boolean v8, v7, Lcom/kantv/ui/fragment/TvDefaultFragment;->isFirstLoad:Z

    return-void
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1101
    new-instance v1, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v1, v0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1102
    invoke-virtual {v1}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/TvDefaultFragment$19;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/TvDefaultFragment$19;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/TvDefaultFragment$18;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/TvDefaultFragment$18;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    const-string v0, "\u786e\u5b9a"

    .line 1110
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 1115
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initCacheData()V
    .locals 4

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgData:Ljava/util/List;

    .line 202
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "index_json"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "randomlook_json"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "index_time"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initTodayUpdate()V

    .line 213
    invoke-direct {p0, v0, v2}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initRequest(Ljava/lang/String;Z)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initParse(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initTodayUpdate()V

    :goto_0
    return-void
.end method

.method private initParse(Ljava/lang/String;)V
    .locals 5

    .line 478
    sget-object v0, Lcom/kantv/ui/fragment/TvDefaultFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 483
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 485
    :cond_1
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "status"

    .line 487
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "data"

    .line 488
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "search_title"

    .line 490
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->search_title:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->search_title:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 493
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/bean/EventBusBean;

    iget-object v2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->search_title:Ljava/lang/String;

    const-string v3, "TabTvFragment"

    const-string v4, "001"

    invoke-direct {v1, v3, v4, v2}, Lcom/kantv/ui/bean/EventBusBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 497
    :cond_4
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->parseScrollImgData(Lorg/json/JSONObject;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->parseTVCategoryData(Lorg/json/JSONObject;)V

    .line 501
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->parseRandomLookData(Lorg/json/JSONObject;)V

    .line 503
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillDataView()V

    :cond_5
    return-void
.end method

.method private initParseRandomLookData(Ljava/lang/String;)V
    .locals 9

    const-string v0, "list"

    .line 903
    sget-object v1, Lcom/kantv/ui/fragment/TvDefaultFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***initParseRandomLookData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "status"

    .line 909
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 910
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-string v2, "data"

    .line 912
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v2, "allvideo"

    .line 914
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookJson:Lorg/json/JSONObject;

    .line 915
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookJson:Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    .line 916
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 919
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 920
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v4, v5, :cond_5

    const/4 v5, 0x0

    .line 923
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 925
    :try_start_2
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 930
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 931
    invoke-static {v5, v6}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 932
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/MovieBean;

    .line 933
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 936
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomMovieList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    if-eqz p1, :cond_9

    .line 938
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomMovieList:Ljava/util/List;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomMovieList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_8

    .line 939
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_6

    .line 940
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->addSingleAdapterData(Lcom/kantv/ui/bean/MovieBean;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 942
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->getSingleAdapter()Lcom/kantv/ui/adapter/SingleListAdatper;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 943
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->getSingleAdapter()Lcom/kantv/ui/adapter/SingleListAdatper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->notifyDataSetChanged()V

    :cond_7
    return-void

    .line 947
    :cond_8
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    if-eqz p1, :cond_9

    .line 948
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 952
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    :goto_5
    return-void
.end method

.method private initRandomLookRequest(Ljava/lang/String;Z)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 429
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    iget v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->page:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getRandomLook(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/TvDefaultFragment$5;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment$5;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequest(Ljava/lang/String;Z)V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 262
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->Index(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/TvDefaultFragment$3;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment$3;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestPopAd()V
    .locals 4

    .line 960
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 961
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 963
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    const-string v2, "getPop"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    const-string v1, "seo"

    const-string v2, "home"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getPop(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/TvDefaultFragment$16;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/TvDefaultFragment$16;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTodayUpdate()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->type:Ljava/lang/String;

    const-string v2, "seo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->todayUpdate(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/TvDefaultFragment$2;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/TvDefaultFragment$2;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initWeatherRate(Ljava/lang/String;)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 308
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "seo"

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    iget-object v2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    const-string v2, "news"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_2
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getWeatherRateAd(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/TvDefaultFragment$4;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/kantv/ui/fragment/TvDefaultFragment$4;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initWeatherRateParse(Ljava/lang/String;)V
    .locals 8

    .line 349
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 350
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 352
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "rateInfo"

    .line 354
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "weatherInfo"

    .line 355
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rate"

    .line 356
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "weather"

    .line 357
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 359
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 361
    iget-object v5, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoRateTv:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 362
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

    .line 363
    iget-object v5, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoRateTv:Landroid/widget/TextView;

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

    .line 367
    :cond_2
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 368
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 370
    iget-object v4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoWeatherTv:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 371
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

    .line 375
    :cond_3
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "photo"

    const/4 v5, 0x0

    if-nez v2, :cond_4

    .line 376
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 377
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 378
    invoke-static {v2, v5}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 379
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 380
    iget-object v3, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoRateImg:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 381
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoRateImg:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/kantv/ui/utils/GlideUtils;->loadimage3(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 382
    iget-object v2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoRateImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    :cond_4
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 388
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 389
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 390
    invoke-static {p1, v5}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 391
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 392
    iget-object v2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoWeatherImg:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 393
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoWeatherImg:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/kantv/ui/utils/GlideUtils;->loadimage3(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 394
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoWeatherImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    :cond_5
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 400
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->videoWeatherRateLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 401
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private parseRandomLookData(Lorg/json/JSONObject;)V
    .locals 8

    .line 509
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-string v1, "allvideo"

    .line 511
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 513
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 515
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookJson:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    const-string v1, "list"

    .line 516
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 519
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 522
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 524
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    if-nez v4, :cond_1

    goto :goto_4

    :cond_1
    const/4 v5, 0x0

    .line 530
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 531
    invoke-static {v4, v5}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    .line 532
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v0, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/MovieBean;

    .line 533
    iget-object v7, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomMovieData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private parseScrollImgData(Lorg/json/JSONObject;)V
    .locals 6

    .line 830
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "top"

    .line 831
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgList:Ljava/util/List;

    .line 833
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 834
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 835
    invoke-static {p1, v1}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 836
    invoke-static {p1, v1}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 837
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/SlideImgBean;

    .line 839
    invoke-virtual {v3}, Lcom/kantv/ui/bean/SlideImgBean;->getPhoto()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 840
    iget-object v4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgList:Ljava/util/List;

    const-string v5, "error"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 842
    :cond_0
    iget-object v4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/SlideImgBean;->getPhoto()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    :goto_1
    iget-object v4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgData:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 845
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 849
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    if-eqz p1, :cond_6

    const v0, 0x7f0903d4

    .line 850
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kantv/lib/gallery/GalleryViewPager;

    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    .line 851
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    if-nez p1, :cond_3

    return-void

    .line 852
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    if-nez p1, :cond_4

    .line 853
    new-instance p1, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgData:Ljava/util/List;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    .line 855
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    invoke-virtual {p1, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 856
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgData:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    :cond_5
    invoke-virtual {p1, v2}, Lcom/kantv/lib/gallery/GalleryViewPager;->setCurrentItem(I)V

    .line 857
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    new-instance v0, Lcom/kantv/lib/gallery/ScaleGalleryTransformer;

    invoke-direct {v0}, Lcom/kantv/lib/gallery/ScaleGalleryTransformer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 858
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Lcom/kantv/lib/gallery/GalleryViewPager;->setDuration(J)V

    .line 859
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    invoke-virtual {p1}, Lcom/kantv/lib/gallery/GalleryViewPager;->startAutoCycle()V

    .line 860
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    const/16 v0, 0x5dc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kantv/lib/gallery/GalleryViewPager;->setSliderTransformDuration(ILandroid/view/animation/Interpolator;)V

    :cond_6
    return-void
.end method

.method private parseTVCategoryData(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "seo"

    .line 866
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-string v2, "recommend"

    .line 868
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    .line 869
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 870
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 871
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 872
    iget-object v4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->recommend_channel:Lorg/json/JSONArray;

    invoke-static {v4, v2}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "list"

    .line 874
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_1

    .line 877
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ad"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 878
    iput-object v4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adJson:Lorg/json/JSONObject;

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 882
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 883
    invoke-static {v5, v4}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 885
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/MovieBean;

    .line 886
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 889
    :cond_3
    iget-object v4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 890
    iget-object v4, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 897
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method private setWeatherIcon(Lcom/kantv/ui/view/WeatherIconView;I)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x3

    if-eq p2, v1, :cond_c

    const/4 v1, 0x4

    if-eq p2, v1, :cond_c

    const/16 v1, 0x25

    if-lt p2, v1, :cond_0

    const/16 v1, 0x27

    if-le p2, v1, :cond_c

    :cond_0
    const/16 v1, 0x2d

    if-eq p2, v1, :cond_c

    const/16 v1, 0x2f

    if-ne p2, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x5

    if-lt p2, v1, :cond_2

    const/16 v1, 0xc

    if-le p2, v1, :cond_b

    :cond_2
    const/16 v1, 0x23

    if-eq p2, v1, :cond_b

    const/16 v1, 0x28

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    if-lt p2, v0, :cond_4

    const/16 v1, 0x12

    if-le p2, v1, :cond_6

    :cond_4
    const/16 v1, 0x29

    if-lt p2, v1, :cond_5

    const/16 v1, 0x2b

    if-le p2, v1, :cond_6

    :cond_5
    const/16 v1, 0x2e

    if-ne p2, v1, :cond_7

    .line 414
    :cond_6
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f00da

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->setIconResource(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/16 v1, 0x1a

    if-lt p2, v1, :cond_8

    const/16 v1, 0x1c

    if-gt p2, v1, :cond_8

    .line 416
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f00d7

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->setIconResource(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/16 v1, 0x1d

    if-eq p2, v1, :cond_a

    const/16 v1, 0x1e

    if-eq p2, v1, :cond_a

    const/16 v1, 0x2c

    if-ne p2, v1, :cond_9

    goto :goto_0

    .line 420
    :cond_9
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f00d8

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->setIconResource(Ljava/lang/String;)V

    goto :goto_3

    .line 418
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f00dc

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->setIconResource(Ljava/lang/String;)V

    goto :goto_3

    .line 411
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f00d9

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->setIconResource(Ljava/lang/String;)V

    goto :goto_3

    .line 409
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f00db

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->setIconResource(Ljava/lang/String;)V

    .line 422
    :goto_3
    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/WeatherIconView;->setIconSize(I)V

    .line 423
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600a7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/WeatherIconView;->setIconColor(I)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 5

    .line 141
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->type:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->search_title:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/bean/EventBusBean;

    iget-object v2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->search_title:Ljava/lang/String;

    const-string v3, "TabTvFragment"

    const-string v4, "001"

    invoke-direct {v1, v3, v4, v2}, Lcom/kantv/ui/bean/EventBusBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->isFirstLoad:Z

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    .line 151
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00bc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookView:Landroid/view/View;

    .line 152
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initCacheData()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/TvDefaultFragment$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/fragment/TvDefaultFragment$1;-><init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 194
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "\u5f71\u89c6_\u7cbe\u9009"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006b

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRootView:Landroid/view/View;

    .line 135
    invoke-direct {p0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->initRequestPopAd()V

    .line 136
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1120
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 1121
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->fillData:Ljava/util/List;

    .line 1122
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mImgData:Ljava/util/List;

    .line 1123
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    if-eqz v1, :cond_0

    .line 1124
    invoke-virtual {v1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->setAdapterNull()V

    .line 1125
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    .line 1126
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRecommendRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    if-eqz v1, :cond_1

    .line 1129
    invoke-virtual {v1}, Lcom/kantv/ui/adapter/ContentSlideAdapter;->setAdapterNull()V

    .line 1130
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mRandomLookAdapter:Lcom/kantv/ui/adapter/ContentSlideAdapter;

    .line 1131
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->randomLookView:Landroid/view/View;

    .line 1133
    :cond_1
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->todayRecommendHead:Landroid/view/View;

    .line 1134
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    .line 1135
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adPopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1136
    iget-object v2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adPopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1137
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-eqz v1, :cond_3

    .line 1138
    invoke-virtual {v1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 1139
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 1141
    :cond_3
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    if-eqz v1, :cond_4

    .line 1142
    invoke-virtual {v1}, Lcom/kantv/lib/gallery/GalleryViewPager;->stopAutoCycle()V

    .line 1143
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->galleryViewPager:Lcom/kantv/lib/gallery/GalleryViewPager;

    .line 1145
    :cond_4
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrolGalleryAdapter:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    .line 1146
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1084
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroyView()V

    .line 1085
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    const/4 v0, 0x0

    .line 1087
    iput-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adPopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->adPopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setScrollEffect(Lcom/kantv/ui/interfaces/ScrollEffect;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment;->scrollEffect:Lcom/kantv/ui/interfaces/ScrollEffect;

    return-void
.end method
