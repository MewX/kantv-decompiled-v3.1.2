.class public Lcom/kantv/ui/activity/CommentActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "CommentActivity.java"


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

    .line 63
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 82
    iput v0, p0, Lcom/kantv/ui/activity/CommentActivity;->page:I

    const/4 v0, 0x5

    .line 83
    iput v0, p0, Lcom/kantv/ui/activity/CommentActivity;->pagesize:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/CommentActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/kantv/ui/activity/CommentActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/CommentActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/kantv/ui/activity/CommentActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/kantv/ui/activity/CommentActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/kantv/ui/activity/CommentActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/kantv/ui/activity/CommentActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/CommentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/CommentActivity;->initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/CommentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kantv/ui/activity/CommentActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/CommentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/CommentActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/CommentActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/activity/CommentActivity;->initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$702(Lcom/kantv/ui/activity/CommentActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/kantv/ui/activity/CommentActivity;->page:I

    return p1
.end method

.method static synthetic access$708(Lcom/kantv/ui/activity/CommentActivity;)I
    .locals 2

    .line 63
    iget v0, p0, Lcom/kantv/ui/activity/CommentActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/CommentActivity;->page:I

    return v0
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/CommentActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/kantv/ui/activity/CommentActivity;->initRequest()V

    return-void
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/Map;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 505
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 506
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/CommentActivity$9;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/CommentActivity$9;-><init>(Lcom/kantv/ui/activity/CommentActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/CommentActivity$8;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/CommentActivity$8;-><init>(Lcom/kantv/ui/activity/CommentActivity;)V

    const-string v0, "\u786e\u5b9a"

    .line 511
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 517
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 562
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 563
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/CommentActivity$12;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/CommentActivity$12;-><init>(Lcom/kantv/ui/activity/CommentActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/CommentActivity$11;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/CommentActivity$11;-><init>(Lcom/kantv/ui/activity/CommentActivity;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 567
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 584
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initRequest()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "token"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v2, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    iget-object v2, p0, Lcom/kantv/ui/activity/CommentActivity;->tid:Ljava/lang/String;

    const-string v3, "tvid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kantv/ui/activity/CommentActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string v1, "0"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string v2, "sort"

    const-string v3, "new"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getComments(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/CommentActivity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/CommentActivity$1;-><init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 523
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string v1, "cid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object p2, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string v0, "tvid"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string p2, "0"

    const-string v0, "type"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object p1, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    sget-object p2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v0, "interfaceVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/CommentActivity;->request:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/kantv/common/api/ApiService;->likethis(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/CommentActivity$10;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p0, v0, p3}, Lcom/kantv/ui/activity/CommentActivity$10;-><init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/content/Context;ZI)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6240\u6709\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/CommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 225
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 226
    new-instance v0, Lcom/kantv/ui/activity/CommentActivity$2;

    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity;->mData:Ljava/util/List;

    const v2, 0x7f0c0092

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/kantv/ui/activity/CommentActivity$2;-><init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 337
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 338
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/CommentActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/CommentActivity$3;-><init>(Lcom/kantv/ui/activity/CommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    return-void
.end method

.method private replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 397
    new-instance v6, Lcom/tandong/bottomview/view/BottomView;

    const v0, 0x7f1000ae

    const v1, 0x7f0c003f

    invoke-direct {v6, p0, v0, v1}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 398
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 399
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    new-instance p4, Lcom/kantv/ui/activity/CommentActivity$5;

    move-object v0, p4

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kantv/ui/activity/CommentActivity$5;-><init>(Lcom/kantv/ui/activity/CommentActivity;Lcom/tandong/bottomview/view/BottomView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1000ad

    .line 408
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 409
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    return-void
.end method

.method private updatePersonInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 382
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 383
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setCancelable(Z)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/CommentActivity$4;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/CommentActivity$4;-><init>(Lcom/kantv/ui/activity/CommentActivity;)V

    const-string v0, "\u7acb\u5373\u4fee\u6539"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkPersonalInfo()Z
    .locals 3

    .line 365
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "name"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0f006c

    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/CommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4fee\u6539\u8d44\u6599\u63d0\u793a"

    const-string v1, "\u4e3a\u4e86\u8ba9\u5927\u5bb6\u66f4\u597d\u7684\u8bb0\u4f4f\u4f60\uff0c\n\u4e30\u5bcc\u4f60\u7684\u4e2a\u4eba\u8d44\u6599\u5427\uff01"

    .line 367
    invoke-direct {p0, v0, v1}, Lcom/kantv/ui/activity/CommentActivity;->updatePersonInfoDialog(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/CommentActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003b

    .line 88
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/CommentActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/kantv/ui/activity/CommentActivity;->initBase()V

    .line 90
    invoke-virtual {p0}, Lcom/kantv/ui/activity/CommentActivity;->initStatusBar()V

    .line 91
    invoke-direct {p0}, Lcom/kantv/ui/activity/CommentActivity;->initTitle()V

    .line 92
    invoke-virtual {p0}, Lcom/kantv/ui/activity/CommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/kantv/ui/activity/CommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/CommentActivity;->tid:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/kantv/ui/activity/CommentActivity;->initView()V

    .line 95
    invoke-direct {p0}, Lcom/kantv/ui/activity/CommentActivity;->initRequest()V

    .line 97
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u5168\u90e8\u8bc4\u8bba"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 98
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

    .line 413
    new-instance v6, Lcom/tandong/bottomview/view/BottomView;

    const v0, 0x7f1000ae

    const v1, 0x7f0c003d

    invoke-direct {v6, p0, v0, v1}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 414
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 415
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    .line 416
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

    .line 417
    new-instance p3, Lcom/kantv/ui/activity/CommentActivity$6;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kantv/ui/activity/CommentActivity$6;-><init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1000ad

    .line 479
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 480
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 482
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 483
    new-instance p2, Lcom/kantv/ui/activity/CommentActivity$7;

    invoke-direct {p2, p0, v8}, Lcom/kantv/ui/activity/CommentActivity$7;-><init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/widget/EditText;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
