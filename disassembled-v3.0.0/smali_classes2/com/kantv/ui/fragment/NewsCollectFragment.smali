.class public Lcom/kantv/ui/fragment/NewsCollectFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "NewsCollectFragment.java"

# interfaces
.implements Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;


# static fields
.field public static final TAG:Ljava/lang/String; = "NewsCollectFragment"


# instance fields
.field private isDestroy:Z

.field private isFirst:Z

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

.field mEmptyTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f4
    .end annotation
.end field

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011e
    .end annotation
.end field

.field mTop_margin:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090382
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->isFirst:Z

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->isDestroy:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/NewsCollectFragment;ZLjava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/NewsCollectFragment;->initRequest(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/NewsCollectFragment;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->isDestroy:Z

    return p0
.end method

.method private initCacheData()V
    .locals 0

    return-void
.end method

.method private initRequest(ZLjava/lang/String;)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 368
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v1, "lastTime"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p2

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    invoke-interface {p2, v0}, Lcom/kantv/common/api/ApiService;->Collect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    new-instance v0, Lcom/kantv/ui/fragment/NewsCollectFragment$5;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/kantv/ui/fragment/NewsCollectFragment$5;-><init>(Lcom/kantv/ui/fragment/NewsCollectFragment;Landroid/content/Context;Z)V

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 8

    .line 138
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    .line 139
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 140
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 141
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 147
    new-instance v0, Lcom/kantv/ui/fragment/NewsCollectFragment$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    const v5, 0x7f0c0087

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/kantv/ui/fragment/NewsCollectFragment$1;-><init>(Lcom/kantv/ui/fragment/NewsCollectFragment;Landroid/content/Context;ILjava/util/List;I)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 222
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 223
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/fragment/NewsCollectFragment$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/fragment/NewsCollectFragment$2;-><init>(Lcom/kantv/ui/fragment/NewsCollectFragment;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    .line 244
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mTop_margin:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .line 100
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->isFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->isFirst:Z

    .line 102
    invoke-direct {p0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->initView()V

    .line 103
    invoke-direct {p0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->initCacheData()V

    const/4 v0, 0x1

    const-string v1, ""

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->initRequest(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initFor(I)V
    .locals 6

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v1, v2, :cond_6

    const-string v2, "1"

    if-eqz p1, :cond_4

    const-string v4, "0"

    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/String12Bean;->getStr12()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v2, v4}, Lcom/kantv/ui/bean/String12Bean;->setStr12(Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v3, v2}, Lcom/kantv/ui/bean/String12Bean;->setStr12(Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v2, v4}, Lcom/kantv/ui/bean/String12Bean;->setStr11(Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_4
    iget-object v3, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v3, v2}, Lcom/kantv/ui/bean/String12Bean;->setStr11(Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_6
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v1, :cond_7

    .line 271
    invoke-virtual {v1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_7
    if-ne p1, v3, :cond_9

    .line 273
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_8

    .line 274
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->removeBatch()V

    goto :goto_2

    :cond_8
    const-string p1, "\u8bf7\u9009\u62e9\u60a8\u8981\u5220\u9664\u7684\u6536\u85cf\uff01"

    .line 276
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0066

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRootView:Landroid/view/View;

    .line 95
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 491
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    .line 493
    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 494
    iput-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->isDestroy:Z

    return-void
.end method

.method public removeBatch()V
    .locals 7

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    move-object v4, v2

    const/4 v3, 0x0

    .line 285
    :goto_0
    iget-object v5, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "1"

    if-ge v3, v5, :cond_1

    .line 286
    iget-object v5, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v5}, Lcom/kantv/ui/bean/String12Bean;->getStr12()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->mData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/String12Bean;->getStr1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "token"

    invoke-static {v0, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v5, "noncestr"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v5, "timestamp"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v5, "sbID"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v5, "sign"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v2, "type"

    const-string v3, "cannel"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v2, "cate"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v3, "interfaceVersion"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v2}, Lcom/kantv/common/api/ApiService;->doCollect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Lcom/kantv/ui/fragment/NewsCollectFragment$3;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/kantv/ui/fragment/NewsCollectFragment$3;-><init>(Lcom/kantv/ui/fragment/NewsCollectFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public removeCollect(Ljava/lang/String;I)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 336
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "cannel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v1, "tvid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->doCollect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/kantv/ui/fragment/NewsCollectFragment$4;-><init>(Lcom/kantv/ui/fragment/NewsCollectFragment;Landroid/content/Context;ZI)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
