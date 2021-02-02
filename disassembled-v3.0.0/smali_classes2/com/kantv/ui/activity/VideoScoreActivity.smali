.class public Lcom/kantv/ui/activity/VideoScoreActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "VideoScoreActivity.java"


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field public b:Landroid/os/Bundle;

.field commentEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b3
    .end annotation
.end field

.field mFilmHead:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ea
    .end annotation
.end field

.field public mFilmImg:Ljava/lang/String;

.field mRatingBar:Landroid/widget/RatingBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public mScore:Ljava/lang/String;

.field mScoreHeadBg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e3
    .end annotation
.end field

.field mScoreShareImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e7
    .end annotation
.end field

.field private mShareDialog:Lcom/kantv/ui/view/ShareDialog;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field public mTitle:Ljava/lang/String;

.field scoreExitImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e2
    .end annotation
.end field

.field scoreOk:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e5
    .end annotation
.end field

.field scoreTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e8
    .end annotation
.end field

.field socoreMsgTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/VideoScoreActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->isDestroy:Z

    return p0
.end method

.method private initView()V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->b:Landroid/os/Bundle;

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->b:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mTitle:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->b:Landroid/os/Bundle;

    const-string v1, "film"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mFilmImg:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->b:Landroid/os/Bundle;

    const-string v1, "score"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mScore:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mFilmImg:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mFilmImg:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mScoreHeadBg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadImageBlur(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mFilmImg:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mFilmHead:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mScore:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mScore:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setRating(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mRatingBar:Landroid/widget/RatingBar;

    new-instance v1, Lcom/kantv/ui/activity/VideoScoreActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoScoreActivity$1;-><init>(Lcom/kantv/ui/activity/VideoScoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    return-void
.end method

.method private requestGrade(Ljava/lang/String;)V
    .locals 4

    .line 153
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    const-string v1, "score"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    const-string v0, "0"

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->doComment(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/VideoScoreActivity$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/VideoScoreActivity$2;-><init>(Lcom/kantv/ui/activity/VideoScoreActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902e2,
            0x7f0902e7,
            0x7f0902e5
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902e2

    if-eq p1, v0, :cond_2

    const v0, 0x7f0902e5

    if-eq p1, v0, :cond_0

    const v0, 0x7f0902e7

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    .line 142
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result p1

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoScoreActivity;->requestGrade(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u8bf7\u8bc4\u5206\u540e\u518d\u63d0\u4ea4"

    .line 145
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoScoreActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0030

    .line 76
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/VideoScoreActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoScoreActivity;->initBase()V

    .line 78
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoScoreActivity;->initStatusBar()V

    .line 79
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoScoreActivity;->initView()V

    .line 80
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "1106453625"

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string p1, "wx70cbf5b9aacb0e47"

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 84
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u8bc4\u5206"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 85
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
    .locals 0

    .line 309
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method
