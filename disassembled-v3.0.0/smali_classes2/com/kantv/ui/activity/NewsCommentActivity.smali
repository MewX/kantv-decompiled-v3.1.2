.class public Lcom/kantv/ui/activity/NewsCommentActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "NewsCommentActivity.java"


# instance fields
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
            "Lcom/kantv/ui/bean/CommentChildBean;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004d
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field private page:I

.field private pagesize:I

.field tid:Ljava/lang/String;

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

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->page:I

    const/4 v0, 0x5

    .line 84
    iput v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->pagesize:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/NewsCommentActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/NewsCommentActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/kantv/ui/activity/NewsCommentActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/kantv/ui/activity/NewsCommentActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/NewsCommentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/NewsCommentActivity;->initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/NewsCommentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kantv/ui/activity/NewsCommentActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/NewsCommentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/NewsCommentActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/NewsCommentActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/activity/NewsCommentActivity;->initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$702(Lcom/kantv/ui/activity/NewsCommentActivity;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->page:I

    return p1
.end method

.method static synthetic access$708(Lcom/kantv/ui/activity/NewsCommentActivity;)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->page:I

    return v0
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/NewsCommentActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->initRequest()V

    return-void
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 497
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 498
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsCommentActivity$9;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsCommentActivity$9;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsCommentActivity$8;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsCommentActivity$8;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;)V

    const-string v0, "\u786e\u5b9a"

    .line 503
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 554
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 555
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsCommentActivity$12;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsCommentActivity$12;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsCommentActivity$11;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsCommentActivity$11;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 559
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 576
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initRequest()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->tid:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->tid:Ljava/lang/String;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string v1, "1"

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string v1, "sort"

    const-string v2, "new"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getComments(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/NewsCommentActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/NewsCommentActivity$1;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 515
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 516
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string v1, "cid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string v0, "tvid"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string p2, "type"

    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    const-string p2, "devicetype"

    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    sget-object p2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v0, "interfaceVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->request:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/kantv/common/api/ApiService;->likethis(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsCommentActivity$10;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p0, v0, p3}, Lcom/kantv/ui/activity/NewsCommentActivity$10;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;Landroid/content/Context;ZI)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 105
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6240\u6709\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 222
    new-instance v0, Lcom/kantv/ui/activity/NewsCommentActivity$2;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mData:Ljava/util/List;

    const v2, 0x7f0c0089

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/kantv/ui/activity/NewsCommentActivity$2;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 331
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 332
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/NewsCommentActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewsCommentActivity$3;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    return-void
.end method

.method private replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 391
    new-instance p2, Lcom/tandong/bottomview/view/BottomView;

    const v0, 0x7f1000ae

    const v1, 0x7f0c003f

    invoke-direct {p2, p0, v0, v1}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 392
    invoke-virtual {p2}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    invoke-virtual {p2}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    new-instance p4, Lcom/kantv/ui/activity/NewsCommentActivity$5;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/kantv/ui/activity/NewsCommentActivity$5;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;Lcom/tandong/bottomview/view/BottomView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1000ad

    .line 404
    invoke-virtual {p2, p1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 405
    invoke-virtual {p2, p1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    return-void
.end method

.method private updatePersonInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 376
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setCancelable(Z)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/NewsCommentActivity$4;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/NewsCommentActivity$4;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;)V

    const-string v0, "\u7acb\u5373\u4fee\u6539"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkPersonalInfo()Z
    .locals 3

    .line 359
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "name"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0f006c

    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/NewsCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4fee\u6539\u8d44\u6599\u63d0\u793a"

    const-string v1, "\u4e3a\u4e86\u8ba9\u5927\u5bb6\u66f4\u597d\u7684\u8bb0\u4f4f\u4f60\uff0c\n\u4e30\u5bcc\u4f60\u7684\u4e2a\u4eba\u8d44\u6599\u5427\uff01"

    .line 361
    invoke-direct {p0, v0, v1}, Lcom/kantv/ui/activity/NewsCommentActivity;->updatePersonInfoDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003c

    .line 89
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/NewsCommentActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->initBase()V

    .line 91
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->initStatusBar()V

    .line 92
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->initTitle()V

    .line 93
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity;->tid:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->initView()V

    .line 96
    invoke-direct {p0}, Lcom/kantv/ui/activity/NewsCommentActivity;->initRequest()V

    .line 98
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u5168\u90e8\u8bc4\u8bba"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 409
    new-instance v6, Lcom/tandong/bottomview/view/BottomView;

    const v0, 0x7f1000ae

    const v1, 0x7f0c003d

    invoke-direct {v6, p0, v0, v1}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 410
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 411
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u590d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 413
    new-instance p3, Lcom/kantv/ui/activity/NewsCommentActivity$6;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kantv/ui/activity/NewsCommentActivity$6;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1000ad

    .line 471
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 472
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 474
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 475
    new-instance p2, Lcom/kantv/ui/activity/NewsCommentActivity$7;

    invoke-direct {p2, p0, v8}, Lcom/kantv/ui/activity/NewsCommentActivity$7;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;Landroid/widget/EditText;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
