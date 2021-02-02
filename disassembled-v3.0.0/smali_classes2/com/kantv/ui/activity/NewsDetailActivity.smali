.class public Lcom/kantv/ui/activity/NewsDetailActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field allCommentTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004a
    .end annotation
.end field

.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private auAppId:Ljava/lang/String;

.field private auPhoto:Ljava/lang/String;

.field commNums:Ljava/lang/String;

.field emptyNewsCommentTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090252
    .end annotation
.end field

.field is_collect:Ljava/lang/String;

.field private like:I

.field likeImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e9
    .end annotation
.end field

.field likeTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ea
    .end annotation
.end field

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/CommentChildBean;",
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

.field private mNewsCommentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CommentChildBean;",
            ">;"
        }
    .end annotation
.end field

.field private mNewsData:Ljava/lang/String;

.field mNewsDetailSource:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090258
    .end annotation
.end field

.field mNewsWeb:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025b
    .end annotation
.end field

.field mProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090256
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090251
    .end annotation
.end field

.field private mShareDialog:Lcom/kantv/ui/view/ShareDialog;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field mTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090259
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025a
    .end annotation
.end field

.field mWeb:Landroid/webkit/WebView;

.field private mWebSettings:Landroid/webkit/WebSettings;

.field newsCommentBottomBarIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024f
    .end annotation
.end field

.field newsCommentEt:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024e
    .end annotation
.end field

.field newsCommentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090250
    .end annotation
.end field

.field newsCommentNumLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09026d
    .end annotation
.end field

.field newsCommentNumTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09026e
    .end annotation
.end field

.field newsDetailLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090255
    .end annotation
.end field

.field newsDetailRateImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090270
    .end annotation
.end field

.field newsDetailRateLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090271
    .end annotation
.end field

.field newsDetailRateTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090272
    .end annotation
.end field

.field newsLoadErrorLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09025e
    .end annotation
.end field

.field private newsMoreDialog:Lcom/kantv/ui/view/NewsMoreDialog;

.field newsPageStartLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090277
    .end annotation
.end field

.field private news_id:Ljava/lang/String;

.field qBadgeView:Lq/rorbin/badgeview/QBadgeView;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const-string v0, "NewsDetailActivity"

    .line 117
    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->TAG:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsCommentData:Ljava/util/List;

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->qBadgeView:Lq/rorbin/badgeview/QBadgeView;

    const-string v0, "0"

    .line 197
    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->is_collect:Ljava/lang/String;

    const-string v0, ""

    .line 198
    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/NewsDetailActivity;)Landroid/webkit/WebSettings;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->showNewsPage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/List;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsCommentData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initNewsCommentRequest()V

    return-void
.end method

.method static synthetic access$2400(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->auAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/kantv/ui/activity/NewsDetailActivity;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->wxShare(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/tencent/tauth/Tencent;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->parseDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/kantv/ui/activity/NewsDetailActivity;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->showErrorPage()V

    return-void
.end method

.method static synthetic access$5000(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/kantv/ui/activity/NewsDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$5300(Lcom/kantv/ui/activity/NewsDetailActivity;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->like:I

    return p0
.end method

.method static synthetic access$5302(Lcom/kantv/ui/activity/NewsDetailActivity;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->like:I

    return p1
.end method

.method static synthetic access$5400(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kantv/ui/activity/NewsDetailActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/activity/NewsDetailActivity;->initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/NewsDetailActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->initRateParse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1661
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

.method private static getNewsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1700
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x6

    const-string v4, "/"

    if-gt v0, v3, :cond_1

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1706
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1684
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1685
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$23;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$23;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$22;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$22;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    const-string v0, "\u786e\u5b9a"

    .line 1690
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 1696
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initNewsClick()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 330
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->newsClick(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/NewsDetailActivity$2;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initNewsCommentRequest()V
    .locals 4

    .line 1328
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1329
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1330
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->newsExtraInfo(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$19;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/NewsDetailActivity$19;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initNewsCommentView()V
    .locals 4

    .line 1467
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1468
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity$20;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsCommentData:Ljava/util/List;

    const v3, 0x7f0c0089

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/activity/NewsDetailActivity$20;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 1577
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 1579
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsCommentData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 1584
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1585
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->emptyNewsCommentTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initNewsMoreDialog()V
    .locals 3

    .line 1132
    new-instance v0, Lcom/kantv/ui/view/NewsMoreDialog;

    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$14;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$14;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    iget-object v2, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->is_collect:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/kantv/ui/view/NewsMoreDialog;-><init>(Landroid/content/Context;Lcom/kantv/ui/view/NewsMoreDialog$onClickback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsMoreDialog:Lcom/kantv/ui/view/NewsMoreDialog;

    .line 1169
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsMoreDialog:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-virtual {v0}, Lcom/kantv/ui/view/NewsMoreDialog;->show()V

    return-void
.end method

.method private initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1789
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1790
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$28;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$28;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$27;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$27;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 1794
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 1811
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1755
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1756
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$26;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$26;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$25;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$25;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 1760
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 1779
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initRate(Ljava/lang/String;)V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 583
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "seo"

    const-string v2, "news"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getWeatherRateAd(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2, p1}, Lcom/kantv/ui/activity/NewsDetailActivity$5;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRateParse(Ljava/lang/String;)V
    .locals 6

    .line 620
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 621
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 623
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "rateInfo"

    .line 625
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "weatherInfo"

    .line 626
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "rate"

    .line 627
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "weather"

    .line 628
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 630
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 632
    iget-object v3, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateTv:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'#1F93EA\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    iget-object v3, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateTv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "label"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :cond_2
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 639
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 640
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 641
    invoke-static {p1, v1}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "photo"

    .line 642
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 643
    iget-object v3, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateImg:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 644
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateImg:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/kantv/ui/utils/GlideUtils;->loadimage3(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 645
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    :cond_3
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 651
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 652
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private initRequest(Ljava/lang/String;)V
    .locals 4

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mData:Ljava/util/List;

    .line 484
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 485
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v3, "0"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v3, "interfaceVersion"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/kantv/common/api/ApiService;->getNewsDetails(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity$4;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestLikeThis(Ljava/lang/String;)V
    .locals 3

    .line 1263
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1264
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1265
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "tvid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v0, "type"

    const-string v1, "5"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->likethis(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity$17;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity$17;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1293
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1294
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1295
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "cid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v0, "tvid"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string p2, "type"

    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string p2, "devicetype"

    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object p2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v0, "interfaceVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/kantv/common/api/ApiService;->likethis(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$18;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p0, v0, p3}, Lcom/kantv/ui/activity/NewsDetailActivity$18;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;ZI)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initShareDialog()V
    .locals 2

    .line 1035
    new-instance v0, Lcom/kantv/ui/view/ShareDialog;

    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$13;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$13;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/view/ShareDialog;-><init>(Landroid/content/Context;Lcom/kantv/ui/view/ShareDialog$onClickback;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mShareDialog:Lcom/kantv/ui/view/ShareDialog;

    .line 1128
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mShareDialog:Lcom/kantv/ui/view/ShareDialog;

    invoke-virtual {v0}, Lcom/kantv/ui/view/ShareDialog;->show()V

    return-void
.end method

.method private initWebView()V
    .locals 5

    .line 512
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    .line 513
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    .line 518
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$KanTv;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    const-string v3, "KanTv"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 522
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "2"

    const-string v4, "texttype"

    invoke-static {v0, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "1"

    .line 523
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v3, 0x4b

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 526
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_0

    :cond_1
    const-string v3, "3"

    .line 527
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v3, 0x96

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 549
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 551
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 552
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 553
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 554
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 555
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 556
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 557
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 559
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 560
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    .line 566
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 568
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->showLoadingPage()V

    .line 570
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v3, "rateweather_json"

    invoke-static {v0, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 571
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "rateweather_time"

    invoke-static {v3, v4, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 572
    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 574
    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initRateParse(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v1, v2, :cond_5

    .line 576
    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initRate(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private jumpNewsLink(Ljava/lang/String;)V
    .locals 4

    .line 1665
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    .line 1666
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1667
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 1669
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v2, v0, -0x2

    .line 1670
    aget-object v2, p1, v2

    const-string v3, "seo"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    .line 1671
    aget-object p1, p1, v0

    const-string v0, "tid"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-class p1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p0, v1, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private parseDetail(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    .line 357
    invoke-static/range {p1 .. p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 358
    invoke-static/range {p1 .. p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 360
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getNewsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0f0056

    .line 362
    invoke-virtual {v1, v4}, Lcom/kantv/ui/activity/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsPageStartLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    invoke-direct {v1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->todayAuNewsProcess(Ljava/lang/String;)V

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->showTodayAuDialog()V

    :cond_0
    return-void

    :cond_1
    const-string v4, "status"

    .line 370
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "data"

    .line 371
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    const-string v0, "title"

    .line 373
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->title:Ljava/lang/String;

    .line 374
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mTitle:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "_id"

    .line 383
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 384
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    :cond_3
    const-string v0, "comm_nums"

    .line 386
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->commNums:Ljava/lang/String;

    .line 387
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->commNums:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->commNums:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 388
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentNumTv:Landroid/widget/TextView;

    const v6, 0x7f0f0094

    invoke-virtual {v1, v6}, Lcom/kantv/ui/activity/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->commNums:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentNumLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 390
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->qBadgeView:Lq/rorbin/badgeview/QBadgeView;

    iget-object v6, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentBottomBarIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lq/rorbin/badgeview/QBadgeView;->bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;

    .line 391
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->qBadgeView:Lq/rorbin/badgeview/QBadgeView;

    invoke-virtual {v0, v3}, Lq/rorbin/badgeview/QBadgeView;->setExactMode(Z)Lq/rorbin/badgeview/Badge;

    .line 392
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->commNums:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->qBadgeView:Lq/rorbin/badgeview/QBadgeView;

    iget-object v3, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->commNums:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lq/rorbin/badgeview/QBadgeView;->setBadgeNumber(I)Lq/rorbin/badgeview/Badge;

    .line 395
    :cond_4
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->qBadgeView:Lq/rorbin/badgeview/QBadgeView;

    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f06005e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lq/rorbin/badgeview/QBadgeView;->setBadgeBackgroundColor(I)Lq/rorbin/badgeview/Badge;

    :cond_5
    const-string v0, "uniShareUrl"

    .line 397
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->url:Ljava/lang/String;

    .line 398
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsDetailSource:Landroid/widget/TextView;

    const-string v3, "source"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mTime:Landroid/widget/TextView;

    const-string v3, "posttime"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "yyyy-MM-dd"

    invoke-static {v3, v6}, Lcom/kantv/ui/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "comment"

    .line 400
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 401
    invoke-static {v6}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_7

    .line 404
    :try_start_0
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "info"

    .line 405
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 407
    :cond_6
    iget-object v7, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mData:Ljava/util/List;

    new-instance v15, Lcom/kantv/ui/bean/String8Bean;

    const-string v8, "tvid"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "islike"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "time"

    .line 408
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v8, "nickname"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "headimg"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v8, "like"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v15

    move-object/from16 p1, v3

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    :try_start_1
    invoke-direct/range {v8 .. v16}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 p1, v3

    .line 410
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p1

    goto :goto_0

    .line 427
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f0e0000

    invoke-static {v0, v2}, Lcom/kantv/ui/utils/RawReader;->readRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "artice"

    .line 428
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kantv/ui/activity/NewsDetailActivity;->translation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "css"

    .line 429
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->translation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{\u63d0\u53ca\u5f71\u89c6\u6837\u5f0f}"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "{\u65b0\u95fb\u5185\u5bb9}"

    .line 430
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 431
    iget-object v4, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v7, "text/html"

    const-string v8, "utf-8"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity$3;

    invoke-direct {v2, v1}, Lcom/kantv/ui/activity/NewsDetailActivity$3;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_8
    return-void
.end method

.method private replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1594
    new-instance p2, Lcom/tandong/bottomview/view/BottomView;

    const v0, 0x7f1000ae

    const v1, 0x7f0c003f

    invoke-direct {p2, p0, v0, v1}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 1595
    invoke-virtual {p2}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1596
    invoke-virtual {p2}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    new-instance p4, Lcom/kantv/ui/activity/NewsDetailActivity$21;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/kantv/ui/activity/NewsDetailActivity$21;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Lcom/tandong/bottomview/view/BottomView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1000ad

    .line 1607
    invoke-virtual {p2, p1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 1608
    invoke-virtual {p2, p1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    return-void
.end method

.method private showEmptyPage()V
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showErrorPage()V
    .locals 2

    .line 1628
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsLoadErrorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showLoadingPage()V
    .locals 2

    .line 1615
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showNewsPage()V
    .locals 2

    .line 1637
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1639
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsLoadErrorLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showTodayAuDialog()V
    .locals 7

    .line 887
    new-instance v0, Lcom/kantv/ui/view/BottomNotBackView;

    const v1, 0x7f1000b0

    const v2, 0x7f0c0040

    invoke-direct {v0, p0, v1, v2}, Lcom/kantv/ui/view/BottomNotBackView;-><init>(Landroid/content/Context;II)V

    .line 888
    invoke-virtual {v0}, Lcom/kantv/ui/view/BottomNotBackView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09037c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 889
    invoke-virtual {v0}, Lcom/kantv/ui/view/BottomNotBackView;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09037b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 890
    invoke-virtual {v0}, Lcom/kantv/ui/view/BottomNotBackView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 892
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "855"

    .line 893
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const-string v6, "2460"

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v5, v6

    .line 894
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v5, v6

    .line 895
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 896
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 898
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 900
    :goto_0
    iget-object v4, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->auPhoto:Ljava/lang/String;

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 901
    iget-object v4, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->auPhoto:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 903
    :cond_0
    new-instance v4, Lcom/kantv/ui/activity/NewsDetailActivity$8;

    invoke-direct {v4, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$8;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$9;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$9;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$10;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1000ad

    .line 935
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/BottomNotBackView;->setAnimation(I)V

    const/4 v1, 0x0

    .line 936
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/BottomNotBackView;->showBottomView(Z)V

    return-void
.end method

.method private todayAuNewsProcess(Ljava/lang/String;)V
    .locals 2

    .line 1711
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$24;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private translation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&lt;"

    const-string v1, "<"

    .line 1815
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&gt;"

    const-string v1, ">"

    .line 1816
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&amp;"

    const-string v1, "&"

    .line 1817
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&quot;"

    const-string v1, "\""

    .line 1818
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&copy;"

    const-string v1, "\u00a9"

    .line 1819
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private wxShare(I)V
    .locals 4

    .line 1644
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 1645
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 1646
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 1647
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->title:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    const v0, 0x7f0f00c1

    .line 1648
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 1649
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08011f

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x96

    .line 1650
    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1651
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1652
    invoke-static {v3, v2}, Lcom/kantv/common/utils/Utils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 1653
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v2, "webpage"

    .line 1654
    invoke-direct {p0, v2}, Lcom/kantv/ui/activity/NewsDetailActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 1655
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 1656
    iput p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 1657
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method


# virtual methods
.method public commentDialog()V
    .locals 4

    .line 805
    new-instance v0, Lcom/tandong/bottomview/view/BottomView;

    const v1, 0x7f1000ae

    const v2, 0x7f0c003d

    invoke-direct {v0, p0, v1, v2}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 806
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 807
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 808
    new-instance v3, Lcom/kantv/ui/activity/NewsDetailActivity$6;

    invoke-direct {v3, p0, v2, v0}, Lcom/kantv/ui/activity/NewsDetailActivity$6;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/widget/EditText;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1000ad

    .line 862
    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 v1, 0x1

    .line 863
    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 864
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 865
    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$7;

    invoke-direct {v1, p0, v2}, Lcom/kantv/ui/activity/NewsDetailActivity$7;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090253,
            0x7f090254,
            0x7f090257,
            0x7f090262,
            0x7f090263,
            0x7f090264,
            0x7f090252,
            0x7f0901e9,
            0x7f09004a,
            0x7f09026e,
            0x7f09024f,
            0x7f090261,
            0x7f09025e,
            0x7f09024e
        }
    .end annotation

    .line 699
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Login_State"

    invoke-static {v0, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v2, "\u60a8\u8fd8\u672a\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    const/4 v3, 0x1

    const-string v4, "\u60a8\u5f53\u524d\u8fd8\u672a\u767b\u5f55\uff0c\u662f\u5426\u524d\u5f80\u767b\u5f55\uff1f"

    const-string v5, "\u63d0\u793a"

    const-string v6, "tid"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 784
    :sswitch_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 785
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-class v0, Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 736
    :sswitch_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initShareDialog()V

    goto/16 :goto_0

    .line 727
    :sswitch_2
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 728
    invoke-static {v2}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 731
    :cond_0
    invoke-direct {p0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->wxShare(I)V

    goto/16 :goto_0

    .line 719
    :sswitch_3
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 720
    invoke-static {v2}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 723
    :cond_1
    invoke-direct {p0, v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->wxShare(I)V

    goto/16 :goto_0

    .line 739
    :sswitch_4
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initNewsMoreDialog()V

    goto/16 :goto_0

    .line 796
    :sswitch_5
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->initRequest(Ljava/lang/String;)V

    .line 797
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initNewsCommentRequest()V

    goto/16 :goto_0

    .line 716
    :sswitch_6
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initShareDialog()V

    goto/16 :goto_0

    .line 705
    :sswitch_7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 706
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "1"

    .line 707
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u8d44\u8baf_\u5217\u8868_\u8be6\u60c5"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 702
    :sswitch_8
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->finish()V

    goto/16 :goto_0

    :sswitch_9
    if-eqz v0, :cond_2

    .line 743
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->commentDialog()V

    goto/16 :goto_0

    .line 745
    :cond_2
    invoke-direct {p0, v5, v4}, Lcom/kantv/ui/activity/NewsDetailActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    :sswitch_a
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->commNums:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->commNums:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 790
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 791
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-class v0, Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_b
    if-eqz v0, :cond_4

    .line 750
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/GpsUtil;->isOpen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 751
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 753
    :cond_3
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->commentDialog()V

    goto/16 :goto_0

    .line 756
    :cond_4
    invoke-direct {p0, v5, v4}, Lcom/kantv/ui/activity/NewsDetailActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_c
    if-eqz v0, :cond_6

    .line 761
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->likeImg:Landroid/widget/ImageView;

    const v0, 0x7f0801e5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 762
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->likeImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 764
    iget p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->like:I

    if-lez p1, :cond_5

    .line 765
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 766
    iget p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->like:I

    add-int/2addr p1, v3

    .line 767
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->likeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4eba\u559c\u6b22"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->initRequestLikeThis(Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->likeTv:Landroid/widget/TextView;

    const-string v0, "1\u4eba\u559c\u6b22"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->initRequestLikeThis(Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :cond_6
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0078

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :sswitch_d
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 780
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-class v0, Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :cond_7
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09004a -> :sswitch_d
        0x7f0901e9 -> :sswitch_c
        0x7f09024e -> :sswitch_b
        0x7f09024f -> :sswitch_a
        0x7f090252 -> :sswitch_9
        0x7f090253 -> :sswitch_8
        0x7f090254 -> :sswitch_7
        0x7f090257 -> :sswitch_6
        0x7f09025e -> :sswitch_5
        0x7f090261 -> :sswitch_4
        0x7f090262 -> :sswitch_3
        0x7f090263 -> :sswitch_2
        0x7f090264 -> :sswitch_1
        0x7f09026e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    .line 202
    invoke-super/range {p0 .. p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c002c

    .line 203
    invoke-virtual {v1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->setContentView(I)V

    .line 204
    invoke-static/range {p0 .. p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initWebView()V

    .line 207
    new-instance v0, Lq/rorbin/badgeview/QBadgeView;

    invoke-direct {v0, v1}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->qBadgeView:Lq/rorbin/badgeview/QBadgeView;

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pushtype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v0, "title"

    .line 211
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->title:Ljava/lang/String;

    .line 212
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mTitle:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "uniShareUrl"

    .line 213
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->url:Ljava/lang/String;

    .line 214
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsDetailSource:Landroid/widget/TextView;

    const-string v4, "source"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mTime:Landroid/widget/TextView;

    const-string v4, "time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "comment"

    .line 216
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 217
    invoke-static {v6}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_1

    .line 220
    :try_start_0
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "info"

    .line 221
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v8, "\u6d4b\u8bd5\u53c2\u6570=="

    .line 222
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v8, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mData:Ljava/util/List;

    new-instance v15, Lcom/kantv/ui/bean/String8Bean;

    const-string v9, "tvid"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "_id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v9, "islike"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 224
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v9, "nickname"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v9, "headimg"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v9, "like"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v15

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v0

    invoke-direct/range {v9 .. v17}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f0e0000

    invoke-static {v0, v2}, Lcom/kantv/ui/utils/RawReader;->readRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "artice"

    .line 244
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kantv/ui/activity/NewsDetailActivity;->translation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "css"

    .line 245
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->translation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{\u63d0\u53ca\u5f71\u89c6\u6837\u5f0f}"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "{\u65b0\u95fb\u5185\u5bb9}"

    .line 246
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 247
    iget-object v4, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v7, "text/html"

    const-string v8, "utf-8"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity$1;

    invoke-direct {v2, v1}, Lcom/kantv/ui/activity/NewsDetailActivity$1;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_3

    .line 291
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "detail"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsData:Ljava/lang/String;

    .line 295
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->auAppId:Ljava/lang/String;

    .line 298
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "photo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->auPhoto:Ljava/lang/String;

    .line 301
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initNewsClick()V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NewsDetailActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsData:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->news_id:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initRequest(Ljava/lang/String;)V

    goto :goto_2

    .line 306
    :cond_6
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsData:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->parseDetail(Ljava/lang/String;)V

    .line 310
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initNewsCommentRequest()V

    .line 312
    :goto_3
    iget-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsWeb:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :try_start_1
    const-string v0, "1106453625"

    .line 314
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->mTencent:Lcom/tencent/tauth/Tencent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v0, "wx70cbf5b9aacb0e47"

    const/4 v2, 0x0

    .line 319
    invoke-static {v1, v0, v2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v2

    iput-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 320
    iget-object v2, v1, Lcom/kantv/ui/activity/NewsDetailActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v2, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/kantv/ui/activity/NewsDetailActivity;->initNewsCommentView()V

    .line 324
    :cond_7
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v2, "\u8d44\u8baf_\u5217\u8868"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1824
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 1825
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 1827
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1828
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    .line 1830
    :cond_0
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 1831
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1832
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mData:Ljava/util/List;

    .line 1833
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-void
.end method

.method public replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1173
    new-instance p3, Lcom/tandong/bottomview/view/BottomView;

    const v0, 0x7f1000ae

    const v1, 0x7f0c003d

    invoke-direct {p3, p0, v0, v1}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 1174
    invoke-virtual {p3}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 1175
    invoke-virtual {p3}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 1176
    new-instance v8, Lcom/kantv/ui/activity/NewsDetailActivity$15;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kantv/ui/activity/NewsDetailActivity$15;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1000ad

    .line 1234
    invoke-virtual {p3, p1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 1235
    invoke-virtual {p3, p1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 1237
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 1238
    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$16;

    invoke-direct {p2, p0, v7, p1}, Lcom/kantv/ui/activity/NewsDetailActivity$16;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/widget/EditText;Ljava/util/Timer;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public requestCollect(Ljava/lang/String;)V
    .locals 3

    .line 942
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 943
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 944
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "collect"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v1, "tvid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->doCollect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity$11;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity$11;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public requestCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 981
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 982
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 983
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->is_collect:Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "type"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v3, "collect"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v3, "cannel"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v2, "tvid"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string v0, "cate"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    const-string p2, "devicetype"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    sget-object p2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v0, "interfaceVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity;->request:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/kantv/common/api/ApiService;->doCollect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsDetailActivity$12;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p0, v0}, Lcom/kantv/ui/activity/NewsDetailActivity$12;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
