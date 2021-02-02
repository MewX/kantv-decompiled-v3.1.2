.class public Lcom/kantv/ui/activity/CollectActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "CollectActivity.java"


# instance fields
.field allCollectChoice:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090048
    .end annotation
.end field

.field collectEditLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b0
    .end annotation
.end field

.field private isAll:I

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

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b1
    .end annotation
.end field

.field private mType:I

.field private page:I

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/kantv/ui/activity/CollectActivity;->page:I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mType:I

    .line 77
    iput v0, p0, Lcom/kantv/ui/activity/CollectActivity;->isAll:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/CollectActivity;Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/CollectActivity;->removeCollect(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/CollectActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/kantv/ui/activity/CollectActivity;->page:I

    return p0
.end method

.method static synthetic access$102(Lcom/kantv/ui/activity/CollectActivity;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/kantv/ui/activity/CollectActivity;->page:I

    return p1
.end method

.method static synthetic access$108(Lcom/kantv/ui/activity/CollectActivity;)I
    .locals 2

    .line 49
    iget v0, p0, Lcom/kantv/ui/activity/CollectActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/CollectActivity;->page:I

    return v0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kantv/ui/activity/CollectActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/CollectActivity;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/CollectActivity;->initRequest(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/CollectActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/kantv/ui/activity/CollectActivity;->mType:I

    return p0
.end method

.method static synthetic access$502(Lcom/kantv/ui/activity/CollectActivity;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/kantv/ui/activity/CollectActivity;->mType:I

    return p1
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/CollectActivity;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/CollectActivity;->initFor(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/CollectActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kantv/ui/activity/CollectActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/CollectActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kantv/ui/activity/CollectActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/CollectActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kantv/ui/activity/CollectActivity;->isDestroy:Z

    return p0
.end method

.method private initFor(I)V
    .locals 7

    const/4 v0, 0x1

    .line 231
    iput v0, p0, Lcom/kantv/ui/activity/CollectActivity;->page:I

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 233
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v2, v3, :cond_6

    const-string v3, "1"

    if-eqz p1, :cond_4

    const-string v5, "0"

    if-eq p1, v0, :cond_3

    const/4 v6, 0x3

    if-eq p1, v6, :cond_2

    const/4 v6, 0x4

    if-eq p1, v6, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/String15Bean;->getStr13()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v3, v5}, Lcom/kantv/ui/bean/String15Bean;->setStr13(Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_2
    iget-object v4, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v4, v3}, Lcom/kantv/ui/bean/String15Bean;->setStr13(Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_3
    iget-object v3, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v3, v5}, Lcom/kantv/ui/bean/String15Bean;->setStr12(Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_4
    iget-object v4, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v4, v3}, Lcom/kantv/ui/bean/String15Bean;->setStr12(Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_7
    if-ne p1, v4, :cond_9

    .line 257
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_8

    .line 258
    invoke-direct {p0}, Lcom/kantv/ui/activity/CollectActivity;->removeBatch()V

    goto :goto_2

    :cond_8
    const-string p1, "\u8bf7\u9009\u62e9\u60a8\u8981\u5220\u9664\u7684\u6536\u85cf\uff01"

    .line 260
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private initRequest(Z)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 344
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "token"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kantv/ui/activity/CollectActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->Collect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/CollectActivity$7;

    invoke-direct {v1, p0, p0, p1}, Lcom/kantv/ui/activity/CollectActivity$7;-><init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 172
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/CollectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/CollectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/activity/CollectActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/CollectActivity$3;-><init>(Lcom/kantv/ui/activity/CollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/activity/CollectActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/CollectActivity$4;-><init>(Lcom/kantv/ui/activity/CollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 90
    invoke-direct {p0}, Lcom/kantv/ui/activity/CollectActivity;->initTitle()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 93
    new-instance v0, Lcom/kantv/ui/activity/CollectActivity$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    const v3, 0x7f0c007a

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/activity/CollectActivity$1;-><init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 149
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/CollectActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 150
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/CollectActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/CollectActivity$2;-><init>(Lcom/kantv/ui/activity/CollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    return-void
.end method

.method private removeBatch()V
    .locals 7

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    move-object v4, v2

    const/4 v3, 0x0

    .line 269
    :goto_0
    iget-object v5, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 270
    iget-object v5, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v5}, Lcom/kantv/ui/bean/String15Bean;->getStr13()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v4}, Lcom/kantv/ui/bean/String15Bean;->getStr1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "token"

    invoke-static {v0, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v5, "noncestr"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v5, "timestamp"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v2, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v5, "sbID"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v2, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v5, "sign"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v2, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v2, "type"

    const-string v3, "cannel"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v3, "interfaceVersion"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v2, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v2}, Lcom/kantv/common/api/ApiService;->doCollect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Lcom/kantv/ui/activity/CollectActivity$5;

    invoke-direct {v2, p0, p0, v1}, Lcom/kantv/ui/activity/CollectActivity$5;-><init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private removeCollect(Ljava/lang/String;I)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 313
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "cannel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v1, "tvid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->doCollect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/CollectActivity$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1, p2}, Lcom/kantv/ui/activity/CollectActivity$6;-><init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/content/Context;ZI)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090048,
            0x7f0900af
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090048

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900af

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 225
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/CollectActivity;->initFor(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget p1, p0, Lcom/kantv/ui/activity/CollectActivity;->isAll:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 215
    iput p1, p0, Lcom/kantv/ui/activity/CollectActivity;->isAll:I

    .line 216
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity;->allCollectChoice:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    .line 217
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/CollectActivity;->initFor(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 219
    iput p1, p0, Lcom/kantv/ui/activity/CollectActivity;->isAll:I

    .line 220
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity;->allCollectChoice:Landroid/widget/TextView;

    const-string v0, "\u5168\u9009"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 221
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/CollectActivity;->initFor(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 82
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/CollectActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/kantv/ui/activity/CollectActivity;->initBase()V

    .line 84
    invoke-virtual {p0}, Lcom/kantv/ui/activity/CollectActivity;->initStatusBar()V

    .line 85
    invoke-direct {p0}, Lcom/kantv/ui/activity/CollectActivity;->initView()V

    const/4 p1, 0x1

    .line 86
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/CollectActivity;->initRequest(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 396
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 398
    iput-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mData:Ljava/util/List;

    .line 399
    iput-object v0, p0, Lcom/kantv/ui/activity/CollectActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-void
.end method
