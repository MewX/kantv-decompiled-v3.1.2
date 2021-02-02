.class public Lcom/kantv/ui/activity/LoginActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "LoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field loginBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090209
    .end annotation
.end field

.field loginType:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020e
    .end annotation
.end field

.field mLoginArea:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090208
    .end annotation
.end field

.field mLoginEmail:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020a
    .end annotation
.end field

.field mLoginPhone:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020c
    .end annotation
.end field

.field rmMobileImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09020d
    .end annotation
.end field

.field statusUserExit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/kantv/ui/activity/LoginActivity;->statusUserExit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/LoginActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/kantv/ui/activity/LoginActivity;->checkLoginPhone()V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/LoginActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/kantv/ui/activity/LoginActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/LoginActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/kantv/ui/activity/LoginActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/LoginActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/kantv/ui/activity/LoginActivity;->isDestroy:Z

    return p0
.end method

.method private checkLoginPhone()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->loginBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->rmMobileImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->loginBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->rmMobileImg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private emailIsExistHandle()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u5408\u6cd5\u7684\u90ae\u7bb1"

    .line 254
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 258
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->mailExist(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/LoginActivity$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/LoginActivity$4;-><init>(Lcom/kantv/ui/activity/LoginActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initRequest()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    invoke-static {v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getCountry(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/LoginActivity$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/LoginActivity$2;-><init>(Lcom/kantv/ui/activity/LoginActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/kantv/ui/activity/LoginActivity;->checkLoginPhone()V

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/LoginActivity$1;-><init>(Lcom/kantv/ui/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "area_country"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginArea:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private userIsExistHandle()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginArea:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u533a\u53f7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u9009\u62e9\u624b\u673a\u533a\u53f7"

    .line 211
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginArea:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/LoginActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->userExist(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/LoginActivity$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/LoginActivity$3;-><init>(Lcom/kantv/ui/activity/LoginActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/ui/PackageActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 150
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "area"

    .line 151
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginArea:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090208,
            0x7f09020d,
            0x7f09020e,
            0x7f0901dd,
            0x7f090209
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 170
    :sswitch_0
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginArea:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    const-string v0, "\u624b\u673a\u53f7\u7801"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->loginType:Landroid/widget/TextView;

    const-string v0, "\u90ae\u7bb1\u767b\u5f55"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginArea:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    const-string v0, "\u90ae\u7bb1\u8d26\u53f7"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->loginType:Landroid/widget/TextView;

    const-string v0, "\u624b\u673a\u53f7\u767b\u5f55"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 167
    :sswitch_1
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 188
    :sswitch_2
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "ACCOUNTID"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 189
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/kantv/ui/activity/LoginActivity;->statusUserExit:Z

    if-eqz p1, :cond_2

    .line 190
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 191
    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-string v1, "type"

    if-nez v0, :cond_1

    const-string v0, "email"

    .line 192
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "phone"

    .line 194
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    const-class v0, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/LoginActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_1

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity;->mLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/kantv/ui/activity/LoginActivity;->emailIsExistHandle()V

    goto :goto_1

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/LoginActivity;->userIsExistHandle()V

    goto :goto_1

    .line 163
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kantv/ui/activity/AreaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xa

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 185
    :sswitch_4
    const-class p1, Lcom/kantv/ui/MainActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/LoginActivity;->gotoActivity(Ljava/lang/Class;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901dd -> :sswitch_4
        0x7f090208 -> :sswitch_3
        0x7f090209 -> :sswitch_2
        0x7f09020d -> :sswitch_1
        0x7f09020e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0025

    .line 64
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/LoginActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/kantv/ui/activity/LoginActivity;->initBase()V

    .line 66
    invoke-direct {p0}, Lcom/kantv/ui/activity/LoginActivity;->initView()V

    .line 67
    invoke-direct {p0}, Lcom/kantv/ui/activity/LoginActivity;->initRequest()V

    .line 68
    invoke-static {}, Ldebug/KanApplication;->clearTvDefaultIndexJson()V

    .line 69
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u767b\u5f55_\u9996\u6b21\u767b\u5f55"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
