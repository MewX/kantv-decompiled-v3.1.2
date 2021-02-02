.class public Lcom/kantv/ui/fragment/SoareSubFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "SoareSubFragment.java"


# instance fields
.field callBackUpdateUI:Lcom/kantv/ui/interfaces/CallBackUpdateUI;

.field private hotListBGUrl:Ljava/lang/String;

.field private isFirst:Z

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String15Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String15Bean;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b9
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->isFirst:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->callBackUpdateUI:Lcom/kantv/ui/interfaces/CallBackUpdateUI;

    return-void
.end method

.method static synthetic access$002(Lcom/kantv/ui/fragment/SoareSubFragment;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->isFirst:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/SoareSubFragment;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/SoareSubFragment;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/SoareSubFragment;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->hotListBGUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kantv/ui/fragment/SoareSubFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->hotListBGUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kantv/ui/fragment/SoareSubFragment;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->title:Ljava/lang/String;

    return-object p0
.end method

.method private initRequest(Ljava/lang/String;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    const-string v1, "pagesize"

    const-string v2, "30"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    const-string v1, "seo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    const-string v0, "type"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object p1, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v1, "_token"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->getTop(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/fragment/SoareSubFragment$1;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SoareSubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/kantv/ui/fragment/SoareSubFragment$1;-><init>(Lcom/kantv/ui/fragment/SoareSubFragment;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 119
    new-instance v0, Lcom/kantv/ui/fragment/SoareSubFragment$2;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mData:Ljava/util/List;

    const v3, 0x7f0c0083

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/fragment/SoareSubFragment$2;-><init>(Lcom/kantv/ui/fragment/SoareSubFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 205
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SoareSubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 206
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SoareSubFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "seo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/SoareSubFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->title:Ljava/lang/String;

    .line 69
    iget-boolean v1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->isFirst:Z

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/kantv/ui/fragment/SoareSubFragment;->initView()V

    .line 71
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/SoareSubFragment;->initRequest(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->callBackUpdateUI:Lcom/kantv/ui/interfaces/CallBackUpdateUI;

    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->hotListBGUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kantv/ui/interfaces/CallBackUpdateUI;->updateUi(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c004b

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mRootView:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 217
    iput-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 218
    iput-object v0, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->mData:Ljava/util/List;

    return-void
.end method

.method public setHotBGCallback(Lcom/kantv/ui/interfaces/CallBackUpdateUI;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/kantv/ui/fragment/SoareSubFragment;->callBackUpdateUI:Lcom/kantv/ui/interfaces/CallBackUpdateUI;

    return-void
.end method
