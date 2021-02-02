.class public Lcom/kantv/ui/activity/HistoryActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "HistoryActivity.java"


# instance fields
.field allWatchChoiceTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004c
    .end annotation
.end field

.field private dateLabel:Ljava/lang/String;

.field private isAll:I

.field private mAdapter:Lcom/kantv/ui/adapter/HistoryAdapter;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String15Bean;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903de
    .end annotation
.end field

.field private mType:I

.field private page:I

.field private popupWindow:Landroid/widget/PopupWindow;

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

.field titleRightImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090377
    .end annotation
.end field

.field titleRightTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field watchEditLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903da
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mType:I

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    .line 76
    iput v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->isAll:I

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->page:I

    const-string v0, "0"

    .line 79
    iput-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->dateLabel:Ljava/lang/String;

    return-void
.end method

.method private RemoveHisory(Ljava/lang/String;I)V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 323
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v1, "0"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v2, "tvid"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5220\u9664\u5386\u53f2\u8bb0\u5f55\u4f20\u53c2"

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->deleteHistory(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/HistoryActivity$7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1, p2}, Lcom/kantv/ui/activity/HistoryActivity$7;-><init>(Lcom/kantv/ui/activity/HistoryActivity;Landroid/content/Context;ZI)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/HistoryActivity;Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/HistoryActivity;->RemoveHisory(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kantv/ui/activity/HistoryActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kantv/ui/activity/HistoryActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/HistoryActivity;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/ui/activity/HistoryActivity;->page:I

    return p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/activity/HistoryActivity;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->page:I

    return p1
.end method

.method static synthetic access$208(Lcom/kantv/ui/activity/HistoryActivity;)I
    .locals 2

    .line 50
    iget v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/HistoryActivity;->page:I

    return v0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/HistoryActivity;)Lcom/kantv/ui/adapter/HistoryAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mAdapter:Lcom/kantv/ui/adapter/HistoryAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/ui/activity/HistoryActivity;->dateLabel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kantv/ui/activity/HistoryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->dateLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/HistoryActivity;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/HistoryActivity;->initRequest(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/HistoryActivity;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mType:I

    return p0
.end method

.method static synthetic access$602(Lcom/kantv/ui/activity/HistoryActivity;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->mType:I

    return p1
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/HistoryActivity;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/HistoryActivity;->initFor(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/HistoryActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kantv/ui/activity/HistoryActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/HistoryActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kantv/ui/activity/HistoryActivity;->isDestroy:Z

    return p0
.end method

.method private initFor(I)V
    .locals 7

    const/4 v0, 0x1

    .line 236
    iput v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->page:I

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v2, v3, :cond_6

    .line 239
    iget-object v3, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String15Bean;

    .line 240
    invoke-virtual {v3}, Lcom/kantv/ui/bean/String15Bean;->getStr1()Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    const-string v3, "0"

    if-eq p1, v0, :cond_3

    const/4 v6, 0x3

    if-eq p1, v6, :cond_2

    const/4 v6, 0x4

    if-eq p1, v6, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_1

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/String15Bean;->getStr12()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_1
    iget-object v4, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v4, v3}, Lcom/kantv/ui/bean/String15Bean;->setStr12(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v3, v5}, Lcom/kantv/ui/bean/String15Bean;->setStr12(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_3
    iget-object v4, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v4, v3}, Lcom/kantv/ui/bean/String15Bean;->setStr11(Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_4
    iget-object v3, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v3, v5}, Lcom/kantv/ui/bean/String15Bean;->setStr11(Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mAdapter:Lcom/kantv/ui/adapter/HistoryAdapter;

    if-eqz v0, :cond_7

    .line 263
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/HistoryAdapter;->notifyDataSetChanged()V

    :cond_7
    if-ne p1, v4, :cond_9

    .line 265
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_8

    .line 266
    invoke-direct {p0}, Lcom/kantv/ui/activity/HistoryActivity;->removeBatch()V

    goto :goto_2

    :cond_8
    const-string p1, "\u8bf7\u9009\u62e9\u60a8\u8981\u5220\u9664\u7684\u5386\u53f2\u8bb0\u5f55\uff01"

    .line 268
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private initRequest(Z)V
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 361
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "token"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    iget-object v2, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v2, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v2, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v2, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v2, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v2, "0"

    const-string v3, "type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/kantv/ui/activity/HistoryActivity;->page:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "page"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->history(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/HistoryActivity$8;

    invoke-direct {v1, p0, p0, p1}, Lcom/kantv/ui/activity/HistoryActivity$8;-><init>(Lcom/kantv/ui/activity/HistoryActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 143
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 144
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u89c2\u770b\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRightTv:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 154
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleRightTv:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/activity/HistoryActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/HistoryActivity$4;-><init>(Lcom/kantv/ui/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/activity/HistoryActivity$5;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/HistoryActivity$5;-><init>(Lcom/kantv/ui/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 94
    invoke-direct {p0}, Lcom/kantv/ui/activity/HistoryActivity;->initTitle()V

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 97
    new-instance v0, Lcom/kantv/ui/adapter/HistoryAdapter;

    iget-object v1, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    new-instance v2, Lcom/kantv/ui/activity/HistoryActivity$1;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/HistoryActivity$1;-><init>(Lcom/kantv/ui/activity/HistoryActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/kantv/ui/adapter/HistoryAdapter;-><init>(Ljava/util/List;Lcom/kantv/ui/adapter/CallbackInterface;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mAdapter:Lcom/kantv/ui/adapter/HistoryAdapter;

    .line 115
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mAdapter:Lcom/kantv/ui/adapter/HistoryAdapter;

    new-instance v1, Lcom/kantv/ui/activity/HistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/HistoryActivity$2;-><init>(Lcom/kantv/ui/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/adapter/HistoryAdapter;->setDeleteListener(Lcom/kantv/ui/adapter/CallbackInterface;)V

    .line 121
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/HistoryActivity;->mAdapter:Lcom/kantv/ui/adapter/HistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/HistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/HistoryActivity$3;-><init>(Lcom/kantv/ui/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    return-void
.end method

.method private removeBatch()V
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "token"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/String15Bean;->getStr12()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6279\u91cf\u5220\u9664\u6d4b\u8bd5\u53c2\u6570"

    invoke-static {v4, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/String15Bean;->getStr12()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/String15Bean;->getStr13()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v2, "0"

    const-string v3, "type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v3, "tvid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5220\u9664\u5386\u53f2\u8bb0\u5f55\u4f20\u53c2"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/HistoryActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->deleteHistory(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/HistoryActivity$6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/HistoryActivity$6;-><init>(Lcom/kantv/ui/activity/HistoryActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09004c,
            0x7f0903d9
        }
    .end annotation

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09004c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0903d9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 230
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/HistoryActivity;->initFor(I)V

    goto :goto_0

    .line 219
    :cond_1
    iget p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->isAll:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 220
    iput p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->isAll:I

    .line 221
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->allWatchChoiceTv:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 222
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/HistoryActivity;->initFor(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 224
    iput p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->isAll:I

    .line 225
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity;->allWatchChoiceTv:Landroid/widget/TextView;

    const-string v0, "\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 226
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/HistoryActivity;->initFor(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 84
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/HistoryActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/kantv/ui/activity/HistoryActivity;->initBase()V

    .line 86
    invoke-virtual {p0}, Lcom/kantv/ui/activity/HistoryActivity;->initStatusBar()V

    .line 87
    invoke-direct {p0}, Lcom/kantv/ui/activity/HistoryActivity;->initView()V

    const/4 p1, 0x1

    .line 88
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/HistoryActivity;->initRequest(Z)V

    .line 89
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u6211_\u89c2\u770b\u8bb0\u5f55"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 90
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
    .locals 1

    .line 436
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 438
    iput-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mData:Ljava/util/List;

    .line 439
    iput-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity;->mAdapter:Lcom/kantv/ui/adapter/HistoryAdapter;

    return-void
.end method
