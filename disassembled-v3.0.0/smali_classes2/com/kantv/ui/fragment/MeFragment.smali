.class public Lcom/kantv/ui/fragment/MeFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "MeFragment.java"


# static fields
.field static final COUNTS:I = 0x5

.field static final DURATION:J = 0xbb8L


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private isFastLoad:Z

.field private isFirst:Z

.field private isMsg:Z

.field mHead:Lcom/kantv/ui/view/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090220
    .end annotation
.end field

.field mHistoryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field

.field mHits:[J

.field mInlogin:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090221
    .end annotation
.end field

.field mName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090222
    .end annotation
.end field

.field mNologin:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090223
    .end annotation
.end field

.field private mShareDialog:Lcom/kantv/ui/view/ShareDialog;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field mWatchHistoryAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/MovieBean;",
            ">;"
        }
    .end annotation
.end field

.field mWaveView:Lcom/kantv/ui/view/WaveView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903df
    .end annotation
.end field

.field private page:I

.field versionTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903aa
    .end annotation
.end field

.field watchHistoryRV:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903db
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/MeFragment;->isMsg:Z

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mWatchHistoryAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->mHistoryData:Ljava/util/List;

    const/4 v1, 0x1

    .line 114
    iput v1, p0, Lcom/kantv/ui/fragment/MeFragment;->page:I

    .line 115
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/MeFragment;->isFastLoad:Z

    .line 120
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/MeFragment;->isFirst:Z

    .line 124
    iput-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mHits:[J

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/MeFragment;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/MeFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/MeFragment;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/MeFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/MeFragment;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/kantv/ui/fragment/MeFragment;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/MeFragment;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->wxShare(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/fragment/MeFragment;)Lcom/tencent/tauth/Tencent;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/kantv/ui/fragment/MeFragment;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object p0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 565
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

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 577
    new-instance v1, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v1, v0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-virtual {v1}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/MeFragment$6;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/MeFragment$6;-><init>(Lcom/kantv/ui/fragment/MeFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/MeFragment$5;

    invoke-direct {p2, p0, p3}, Lcom/kantv/ui/fragment/MeFragment$5;-><init>(Lcom/kantv/ui/fragment/MeFragment;I)V

    const-string p3, "\u786e\u5b9a"

    .line 587
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 596
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initRequest(Z)V
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "token"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    const-string v2, "0"

    const-string v3, "type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/kantv/ui/fragment/MeFragment;->page:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "page"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->history(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/MeFragment$2;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/kantv/ui/fragment/MeFragment$2;-><init>(Lcom/kantv/ui/fragment/MeFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequestMyInfo()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->uinfo(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/MeFragment$1;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/MeFragment$1;-><init>(Lcom/kantv/ui/fragment/MeFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initShareDialog()V
    .locals 3

    .line 415
    new-instance v0, Lcom/kantv/ui/view/ShareDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/fragment/MeFragment$4;

    invoke-direct {v2, p0}, Lcom/kantv/ui/fragment/MeFragment$4;-><init>(Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/kantv/ui/view/ShareDialog;-><init>(Landroid/content/Context;Lcom/kantv/ui/view/ShareDialog$onClickback;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mShareDialog:Lcom/kantv/ui/view/ShareDialog;

    .line 543
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mShareDialog:Lcom/kantv/ui/view/ShareDialog;

    invoke-virtual {v0}, Lcom/kantv/ui/view/ShareDialog;->show()V

    return-void
.end method

.method private wxShare(I)V
    .locals 4

    .line 548
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    const v1, 0x7f0f00bf

    .line 549
    invoke-virtual {p0, v1}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 550
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    const v0, 0x7f0f00bd

    .line 551
    invoke-virtual {p0, v0}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    const v0, 0x7f0f00be

    .line 552
    invoke-virtual {p0, v0}, Lcom/kantv/ui/fragment/MeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 553
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08011f

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x96

    .line 554
    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 555
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 556
    invoke-static {v3, v2}, Lcom/kantv/common/utils/Utils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 557
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v2, "webpage"

    .line 558
    invoke-direct {p0, v2}, Lcom/kantv/ui/fragment/MeFragment;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 559
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 560
    iput p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 561
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 4

    .line 169
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/MeFragment;->isFirst:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1106453625"

    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 172
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wx70cbf5b9aacb0e47"

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 173
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 174
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/MeFragment;->isFirst:Z

    .line 177
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 179
    :try_start_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->versionTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 188
    :goto_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "\u6211"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0065

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->mRootView:Landroid/view/View;

    .line 129
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public initWatchHistory()V
    .locals 4

    .line 293
    new-instance v0, Lcom/kantv/ui/fragment/MeFragment$3;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment;->mHistoryData:Ljava/util/List;

    const v3, 0x7f0c009a

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/fragment/MeFragment$3;-><init>(Lcom/kantv/ui/fragment/MeFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mWatchHistoryAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 322
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->watchHistoryRV:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 324
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->watchHistoryRV:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->mWatchHistoryAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 327
    invoke-direct {p0, v2}, Lcom/kantv/ui/fragment/MeFragment;->initRequest(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09011d,
            0x7f090224,
            0x7f090323,
            0x7f0903dd,
            0x7f0900e5,
            0x7f09000b,
            0x7f0903a9,
            0x7f090329,
            0x7f09024a,
            0x7f0903df,
            0x7f090322,
            0x7f090249
        }
    .end annotation

    .line 333
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

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0f007a

    const v3, 0x7f0f0078

    const-string v4, "url"

    const-string v5, "title"

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 397
    :sswitch_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->mHits:[J

    if-nez p1, :cond_0

    const/4 p1, 0x5

    .line 398
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->mHits:[J

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->mHits:[J

    array-length v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->mHits:[J

    array-length v0, p1

    sub-int/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->mHits:[J

    aget-wide v0, p1, v1

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xbb8

    cmp-long p1, v2, v0

    if-gtz p1, :cond_6

    const/4 p1, 0x0

    .line 403
    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment;->mHits:[J

    const-string p1, "egg"

    const-string v0, "***test***"

    .line 404
    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "test egg"

    .line 405
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 406
    new-instance p1, Lcom/kantv/common/api/Api;

    invoke-direct {p1}, Lcom/kantv/common/api/Api;-><init>()V

    const-string v0, "kvtestapp.tvkan.net"

    .line 407
    invoke-virtual {p1, v0}, Lcom/kantv/common/api/Api;->setDomain(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lcom/kantv/common/api/Api;->setSingletonNull()V

    goto/16 :goto_0

    :sswitch_1
    if-eqz v0, :cond_1

    .line 361
    const-class p1, Lcom/kantv/ui/activity/HistoryActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "\u63d0\u793a"

    const-string v0, "\u60a8\u5f53\u524d\u8fd8\u672a\u767b\u5f55\uff0c\u662f\u5426\u524d\u5f80\u767b\u5f55\uff1f"

    .line 363
    invoke-direct {p0, p1, v0, v6}, Lcom/kantv/ui/fragment/MeFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 351
    :sswitch_2
    const-class p1, Lcom/kantv/ui/activity/VersionupActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 379
    :sswitch_3
    invoke-direct {p0}, Lcom/kantv/ui/fragment/MeFragment;->initShareDialog()V

    goto/16 :goto_0

    .line 357
    :sswitch_4
    const-class p1, Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_5
    if-eqz v0, :cond_2

    .line 391
    const-class p1, Lcom/kantv/ui/activity/MessageActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 393
    :cond_2
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Lcom/kantv/ui/fragment/MeFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_6
    if-eqz v0, :cond_3

    .line 383
    const-class p1, Lcom/kantv/ui/activity/CollectActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 385
    :cond_3
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v6}, Lcom/kantv/ui/fragment/MeFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_7
    if-eqz v0, :cond_4

    .line 337
    const-class p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 340
    :cond_4
    const-class p1, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 354
    :sswitch_8
    const-class p1, Lcom/kantv/ui/activity/SetActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_9
    if-eqz v0, :cond_5

    .line 345
    const-class p1, Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 347
    :cond_5
    const-class p1, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 367
    :sswitch_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "\u514d\u8d23\u58f0\u660e"

    .line 368
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/common/api/Api;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notice/disclaimer.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-class v0, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_0

    .line 373
    :sswitch_b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "\u5173\u4e8e\u6211\u4eec"

    .line 374
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/common/api/Api;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notice/aboutus.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-class v0, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/fragment/MeFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :cond_6
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09000b -> :sswitch_b
        0x7f0900e5 -> :sswitch_a
        0x7f09011d -> :sswitch_9
        0x7f090224 -> :sswitch_8
        0x7f090249 -> :sswitch_7
        0x7f09024a -> :sswitch_6
        0x7f090322 -> :sswitch_5
        0x7f090323 -> :sswitch_4
        0x7f090329 -> :sswitch_3
        0x7f0903a9 -> :sswitch_2
        0x7f0903dd -> :sswitch_1
        0x7f0903df -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 601
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    .line 602
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mHistoryData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 603
    iput-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mHistoryData:Ljava/util/List;

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 134
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onResume()V

    .line 135
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

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u5f53\u524d\u767b\u5f55\u72b6\u6001=="

    invoke-static {v4, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mNologin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mInlogin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v0, v1, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "name_time"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 144
    invoke-static {v1, v2}, Lcom/kantv/ui/utils/DateUtil;->isCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/fragment/MeFragment;->initRequestMyInfo()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/kantv/ui/fragment/MeFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/kantv/ui/fragment/MeFragment;->mHead:Lcom/kantv/ui/view/CircleImageView;

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimageRoundness(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->initWatchHistory()V

    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mNologin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mInlogin:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->watchHistoryRV:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment;->mHead:Lcom/kantv/ui/view/CircleImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/MeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
