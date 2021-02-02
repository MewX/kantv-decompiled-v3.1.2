.class public Lcom/kantv/ui/fragment/SearchFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "SearchFragment.java"


# instance fields
.field private isFast:Z

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String12Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String12Bean;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011f
    .end annotation
.end field

.field private page:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->isFast:Z

    .line 52
    iput v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->page:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/SearchFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/SearchFragment;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/SearchFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/kantv/ui/fragment/SearchFragment;->page:I

    return p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/fragment/SearchFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/kantv/ui/fragment/SearchFragment;->page:I

    return p1
.end method

.method static synthetic access$208(Lcom/kantv/ui/fragment/SearchFragment;)I
    .locals 2

    .line 44
    iget v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/fragment/SearchFragment;->page:I

    return v0
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/SearchFragment;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/SearchFragment;->initRequest(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/fragment/SearchFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/SearchFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$502(Lcom/kantv/ui/fragment/SearchFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/SearchFragment;->isFast:Z

    return p1
.end method

.method private initRequest(Z)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keywords"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    iget v1, p0, Lcom/kantv/ui/fragment/SearchFragment;->page:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "seo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_3
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/SearchFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->search(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/SearchFragment$3;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/kantv/ui/fragment/SearchFragment$3;-><init>(Lcom/kantv/ui/fragment/SearchFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 71
    new-instance v0, Lcom/kantv/ui/fragment/SearchFragment$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/fragment/SearchFragment;->mData:Ljava/util/List;

    const v3, 0x7f0c007c

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/fragment/SearchFragment$1;-><init>(Lcom/kantv/ui/fragment/SearchFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 107
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/SearchFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/SearchFragment$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/fragment/SearchFragment$2;-><init>(Lcom/kantv/ui/fragment/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->isFast:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/kantv/ui/fragment/SearchFragment;->initView()V

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/SearchFragment;->initRequest(Z)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0067

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/SearchFragment;->mRootView:Landroid/view/View;

    .line 57
    iget-object p1, p0, Lcom/kantv/ui/fragment/SearchFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 216
    iget-object v1, p0, Lcom/kantv/ui/fragment/SearchFragment;->mData:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 218
    iput-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mData:Ljava/util/List;

    .line 220
    :cond_0
    iput-object v0, p0, Lcom/kantv/ui/fragment/SearchFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-void
.end method
