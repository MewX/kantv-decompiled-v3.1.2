.class public Lcom/kantv/ui/activity/FilterActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "FilterActivity.java"


# instance fields
.field filterHead:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090109
    .end annotation
.end field

.field filterItemRV:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010a
    .end annotation
.end field

.field filterTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010e
    .end annotation
.end field

.field filterToolBarLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010d
    .end annotation
.end field

.field private filterTvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isExpand:Z

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String8Bean;",
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

.field mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010b
    .end annotation
.end field

.field private mHeadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/FilterBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/FilterBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTransitionSet:Landroid/support/transition/TransitionSet;

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

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterTvList:Ljava/util/List;

    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lcom/kantv/ui/activity/FilterActivity;->page:I

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/kantv/ui/activity/FilterActivity;->isExpand:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterTvList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/activity/FilterActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/kantv/ui/activity/FilterActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$102(Lcom/kantv/ui/activity/FilterActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/kantv/ui/activity/FilterActivity;->page:I

    return p1
.end method

.method static synthetic access$108(Lcom/kantv/ui/activity/FilterActivity;)I
    .locals 2

    .line 63
    iget v0, p0, Lcom/kantv/ui/activity/FilterActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/FilterActivity;->page:I

    return v0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/FilterActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/FilterActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/FilterActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/FilterActivity;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/FilterActivity;->requestFilter(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/FilterActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilterActivity;->reduce()V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/FilterActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilterActivity;->expand()V

    return-void
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/FilterActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/kantv/ui/activity/FilterActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/kantv/ui/activity/FilterActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/FilterActivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilterActivity;->initView()V

    return-void
.end method

.method private expand()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterHead:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    new-instance v0, Landroid/support/transition/AutoTransition;

    invoke-direct {v0}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 323
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 324
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterHead:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/support/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-static {v0, v1}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    return-void
.end method

.method private initRequest()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 330
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "seo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->filter(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/FilterActivity$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/FilterActivity$5;-><init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 117
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "seo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tvdrama"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u7535\u89c6\u5267"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "movie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u7535\u5f71"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "anime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u52a8\u6f2b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "variety"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u7efc\u827a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "documentary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u7eaa\u5f55\u7247"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "child"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u5c11\u513f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sportsvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u4f53\u80b2\u5f55\u50cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u7b5b\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->titleRightImg:Landroid/widget/ImageView;

    const v1, 0x7f080241

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initView()V
    .locals 8

    .line 148
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterItemRV:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 149
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterItemRV:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 150
    new-instance v0, Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object v2, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadData:Ljava/util/List;

    const v3, 0x7f0c0071

    invoke-direct {v0, p0, p0, v3, v2}, Lcom/kantv/ui/activity/FilterActivity$1;-><init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 205
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 207
    iget-object v3, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 208
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    const-string v5, "1"

    if-nez v4, :cond_0

    .line 210
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/FilterBean;

    invoke-virtual {v6, v5}, Lcom/kantv/ui/bean/FilterBean;->setType(Ljava/lang/String;)V

    goto :goto_2

    .line 212
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/FilterBean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/FilterBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "0"

    if-eqz v6, :cond_1

    .line 213
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/FilterBean;

    invoke-virtual {v6, v5}, Lcom/kantv/ui/bean/FilterBean;->setType(Ljava/lang/String;)V

    .line 214
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/FilterBean;

    invoke-virtual {v5, v7}, Lcom/kantv/ui/bean/FilterBean;->setType(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/FilterBean;

    invoke-virtual {v5, v7}, Lcom/kantv/ui/bean/FilterBean;->setType(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 222
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterItemRV:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 223
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 224
    new-instance v0, Lcom/kantv/ui/activity/FilterActivity$2;

    const v2, 0x7f0c0090

    iget-object v3, p0, Lcom/kantv/ui/activity/FilterActivity;->mData:Ljava/util/List;

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/kantv/ui/activity/FilterActivity$2;-><init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 262
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v2, p0, Lcom/kantv/ui/activity/FilterActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 263
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/FilterActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/FilterActivity$3;-><init>(Lcom/kantv/ui/activity/FilterActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    .line 280
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/FilterActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/FilterActivity$4;-><init>(Lcom/kantv/ui/activity/FilterActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private reduce()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterHead:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    new-instance v0, Landroid/support/transition/AutoTransition;

    invoke-direct {v0}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mTransitionSet:Landroid/support/transition/TransitionSet;

    .line 314
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mTransitionSet:Landroid/support/transition/TransitionSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 315
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterHead:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/support/transition/Fade;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-static {v0, v1}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    return-void
.end method

.method private requestFilter(Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    const/4 v1, 0x0

    .line 382
    :goto_0
    iget-object v6, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 383
    iget-object v6, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadData:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    .line 384
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 385
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/FilterBean;

    .line 386
    invoke-virtual {v8}, Lcom/kantv/ui/bean/FilterBean;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    if-eq v1, v9, :cond_2

    const/4 v9, 0x2

    if-eq v1, v9, :cond_1

    const/4 v9, 0x3

    if-eq v1, v9, :cond_0

    goto :goto_2

    .line 398
    :cond_0
    invoke-virtual {v8}, Lcom/kantv/ui/bean/FilterBean;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 395
    :cond_1
    invoke-virtual {v8}, Lcom/kantv/ui/bean/FilterBean;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 392
    :cond_2
    invoke-virtual {v8}, Lcom/kantv/ui/bean/FilterBean;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 389
    :cond_3
    invoke-virtual {v8}, Lcom/kantv/ui/bean/FilterBean;->getId()Ljava/lang/String;

    move-result-object v4

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto :goto_0

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 405
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v6, "noncestr"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v6, "timestamp"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v6, "sbID"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v6, "sign"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "seo"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    const-string v1, "class"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    const-string v1, "country"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    const-string v1, "year"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    iget v1, p0, Lcom/kantv/ui/activity/FilterActivity;->page:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    const-string v1, "sort"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_7
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/FilterActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->sfilter(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/FilterActivity$6;

    invoke-direct {v1, p0, p0, p1}, Lcom/kantv/ui/activity/FilterActivity$6;-><init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f090376
        }
    .end annotation

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_1

    const v0, 0x7f090376

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    const-class p1, Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/FilterActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 102
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/FilterActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->initBase()V

    .line 104
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->initStatusBar()V

    .line 105
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilterActivity;->initTitle()V

    .line 106
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity;->mData:Ljava/util/List;

    .line 108
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilterActivity;->initRequest()V

    .line 110
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f71\u89c6_\u7b5b\u9009_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/FilterActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 111
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
    .locals 2

    .line 465
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mData:Ljava/util/List;

    .line 467
    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 468
    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadData:Ljava/util/List;

    .line 469
    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mHeadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 470
    iput-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->mFilterXRV:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 471
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity;->filterTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
