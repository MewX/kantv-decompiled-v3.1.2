.class public Lcom/kantv/ui/fragment/VideoCommentFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "VideoCommentFragment.java"


# instance fields
.field private isFirst:Z

.field private iserror:Z

.field private mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

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

.field private mFoot:Landroid/view/View;

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903c1
    .end annotation
.end field

.field private page:I

.field private pagesize:I

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->page:I

    const/4 v1, 0x5

    .line 69
    iput v1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->pagesize:I

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->iserror:Z

    .line 77
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->isFirst:Z

    return-void
.end method

.method private InItView()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 212
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 213
    new-instance v0, Lcom/kantv/ui/fragment/VideoCommentFragment$2;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mData:Ljava/util/List;

    const v3, 0x7f0c0092

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/fragment/VideoCommentFragment$2;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 329
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 330
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/VideoCommentFragment$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/fragment/VideoCommentFragment$3;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/VideoCommentFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/VideoCommentFragment;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/fragment/VideoCommentFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->initRequest()V

    return-void
.end method

.method static synthetic access$1100(Lcom/kantv/ui/fragment/VideoCommentFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/VideoCommentFragment;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/VideoCommentFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kantv/ui/fragment/VideoCommentFragment;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->iserror:Z

    return p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/VideoCommentFragment;->initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kantv/ui/fragment/VideoCommentFragment;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/kantv/ui/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/VideoCommentFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/kantv/ui/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoCommentFragment;->initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$902(Lcom/kantv/ui/fragment/VideoCommentFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->page:I

    return p1
.end method

.method static synthetic access$908(Lcom/kantv/ui/fragment/VideoCommentFragment;)I
    .locals 2

    .line 57
    iget v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->page:I

    return v0
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 376
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoCommentFragment$6;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoCommentFragment$6;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoCommentFragment$5;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoCommentFragment$5;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;)V

    const-string v0, "\u786e\u5b9a"

    .line 382
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 433
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoCommentFragment$9;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoCommentFragment$9;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoCommentFragment$8;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoCommentFragment$8;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 438
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 455
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initRequest()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "token"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v2, v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    const-string v3, "tvid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->pagesize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pagesize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string v1, "0"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string v2, "sort"

    const-string v3, "new"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getComments(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/VideoCommentFragment$1;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/VideoCommentFragment$1;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 394
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string v1, "cid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string v0, "tvid"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string p2, "0"

    const-string v0, "type"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    sget-object p2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v0, "interfaceVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->request:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/kantv/common/api/ApiService;->likethis(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoCommentFragment$7;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, p0, v0, v1, p3}, Lcom/kantv/ui/fragment/VideoCommentFragment$7;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;Landroid/content/Context;ZI)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 352
    new-instance v6, Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1000ae

    const v2, 0x7f0c003f

    invoke-direct {v6, v0, v1, v2}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 353
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 354
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0902bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    new-instance p4, Lcom/kantv/ui/fragment/VideoCommentFragment$4;

    move-object v0, p4

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kantv/ui/fragment/VideoCommentFragment$4;-><init>(Lcom/kantv/ui/fragment/VideoCommentFragment;Lcom/tandong/bottomview/view/BottomView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1000ad

    .line 365
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 366
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/activity/VideoPlayActivity;

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "num"

    const-string v2, "1"

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->InItView()V

    .line 95
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->initRequest()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->isFirst:Z

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006d

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mRootView:Landroid/view/View;

    .line 82
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public refreshCommentsData()V
    .locals 1

    const/4 v0, 0x1

    .line 459
    iput v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->page:I

    .line 460
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment;->mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

    if-eqz v0, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->initRequest()V

    :cond_1
    return-void
.end method
