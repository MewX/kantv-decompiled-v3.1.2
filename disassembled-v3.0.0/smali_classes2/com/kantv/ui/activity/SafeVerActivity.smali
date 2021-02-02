.class public Lcom/kantv/ui/activity/SafeVerActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "SafeVerActivity.java"


# instance fields
.field safeVerNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902db
    .end annotation
.end field

.field sendVerBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031b
    .end annotation
.end field

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

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field

.field titleRightTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field type:Ljava/lang/String;

.field verMailNum:Ljava/lang/String;

.field verPhoneNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/SafeVerActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/SafeVerActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->isDestroy:Z

    return p0
.end method

.method private initTitle()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u5b89\u5168\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->type:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->type:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobile"

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->verPhoneNum:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->safeVerNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->verPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->sendVerBtn:Landroid/widget/TextView;

    const-string v1, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->type:Ljava/lang/String;

    const-string v2, "mail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->verMailNum:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->safeVerNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->verMailNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->sendVerBtn:Landroid/widget/TextView;

    const-string v1, "\u53d1\u9001\u9a8c\u8bc1\u90ae\u7bb1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private verMail()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "change"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->sendEmail(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/SafeVerActivity$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/SafeVerActivity$2;-><init>(Lcom/kantv/ui/activity/SafeVerActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private verPhone()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "change"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getCode(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/SafeVerActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/SafeVerActivity$1;-><init>(Lcom/kantv/ui/activity/SafeVerActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f09031b
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09031b

    if-eq p1, v0, :cond_1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->finish()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->type:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->verPhone()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerActivity;->type:Ljava/lang/String;

    const-string v0, "mail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 106
    invoke-direct {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->verMail()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    .line 64
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SafeVerActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->initBase()V

    .line 66
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->initStatusBar()V

    .line 67
    invoke-direct {p0}, Lcom/kantv/ui/activity/SafeVerActivity;->initTitle()V

    return-void
.end method
