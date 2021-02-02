.class public Lcom/kantv/ui/activity/AccountLoginActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "AccountLoginActivity.java"


# instance fields
.field accountArea:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09000c
    .end annotation
.end field

.field accountBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09000d
    .end annotation
.end field

.field accountId:Ljava/lang/String;

.field accountLoginEmail:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09000f
    .end annotation
.end field

.field accountLoginType:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090010
    .end annotation
.end field

.field accountPhone:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090011
    .end annotation
.end field

.field accountPwd:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090012
    .end annotation
.end field

.field pwdSafe:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090013
    .end annotation
.end field

.field rmAccountImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d1
    .end annotation
.end field

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRightImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090377
    .end annotation
.end field

.field titleRightTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field titleTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->showKeyboard(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/AccountLoginActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->checkAccountPhone()V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/AccountLoginActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->checkAccountPwd()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/AccountLoginActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/AccountLoginActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->isDestroy:Z

    return p0
.end method

.method private accountDefaultLogin()V
    .locals 5

    .line 387
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 390
    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v3, "mail"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v3, "password"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v2, "type"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v3, "interfaceVersion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/kantv/common/api/ApiService;->Login(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/activity/AccountLoginActivity$8;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/kantv/ui/activity/AccountLoginActivity$8;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private accountLogin()V
    .locals 6

    .line 316
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u533a\u53f7"

    .line 319
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u8bf7\u9009\u62e9\u624b\u673a\u533a\u53f7"

    .line 320
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 324
    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v5, "noncestr"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v5, "timestamp"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v5, "sbID"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v5, "sign"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v4, "code"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "iso_code"

    const-string v5, "AU"

    invoke-static {v3, v4, v5}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v3, "mobile"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v3, "password"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v2, "type"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v3, "interfaceVersion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->request:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/kantv/common/api/ApiService;->Login(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/activity/AccountLoginActivity$7;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/kantv/ui/activity/AccountLoginActivity$7;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private checkAccountPhone()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->rmAccountImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->rmAccountImg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkAccountPwd()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->pwdSafe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->pwdSafe:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleTxt:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleRightTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->titleRightTxt:Landroid/widget/TextView;

    const-string v3, "\u6ce8\u518c"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, ""

    const-string v4, "area_country"

    invoke-static {v0, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 101
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ACCOUNTID"

    invoke-static {v4, v5, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0xc8

    if-nez v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v3, Lcom/kantv/ui/activity/AccountLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/AccountLoginActivity$1;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v3, Lcom/kantv/ui/activity/AccountLoginActivity$2;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/AccountLoginActivity$2;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 120
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->checkAccountPhone()V

    .line 121
    invoke-direct {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->checkAccountPwd()V

    .line 123
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    new-instance v3, Lcom/kantv/ui/activity/AccountLoginActivity$3;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/AccountLoginActivity$3;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPwd:Landroid/widget/EditText;

    new-instance v3, Lcom/kantv/ui/activity/AccountLoginActivity$4;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/AccountLoginActivity$4;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->pwdSafe:Landroid/widget/CheckBox;

    new-instance v3, Lcom/kantv/ui/activity/AccountLoginActivity$5;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/AccountLoginActivity$5;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    invoke-virtual {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "\u90ae\u7bb1\u767b\u5f55"

    const/4 v4, 0x3

    const-string v5, "\u624b\u673a\u53f7\u7801"

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "type"

    .line 168
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "phone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 174
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginType:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    const-string v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginType:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private showKeyboard(Landroid/widget/TextView;)V
    .locals 1

    .line 191
    new-instance v0, Lcom/kantv/ui/activity/AccountLoginActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity$6;-><init>(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/AccountLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 446
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/ui/PackageActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 449
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "area"

    .line 450
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    iget-object p2, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f09000c,
            0x7f0902d1,
            0x7f090395,
            0x7f090114,
            0x7f09000d,
            0x7f090010
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ""

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 249
    :sswitch_0
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 250
    const-class p1, Lcom/kantv/ui/activity/EmailRegisterActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 252
    :cond_0
    const-class p1, Lcom/kantv/ui/activity/RegisterActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 236
    :sswitch_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->finish()V

    goto/16 :goto_1

    .line 243
    :sswitch_2
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 246
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto/16 :goto_1

    .line 256
    :sswitch_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 257
    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-string v1, "type"

    if-nez v0, :cond_1

    const-string v0, "email"

    .line 258
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "phone"

    .line 260
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    const-class v0, Lcom/kantv/ui/activity/ResetPwdActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/AccountLoginActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 276
    :sswitch_4
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const-string v2, "@"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez p1, :cond_3

    .line 277
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    const-string v3, "\u624b\u673a\u53f7\u7801"

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 281
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginType:Landroid/widget/TextView;

    const-string v3, "\u90ae\u7bb1\u767b\u5f55"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 283
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 284
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 289
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 290
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 294
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountArea:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    const-string v3, "\u90ae\u7bb1\u8d26\u53f7"

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 298
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginType:Landroid/widget/TextView;

    const-string v3, "\u624b\u673a\u53f7\u767b\u5f55"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 300
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 301
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 304
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 305
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 307
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 265
    :sswitch_5
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLoginEmail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 266
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity;->accountPhone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "\u8bf7\u8f93\u5165\u5408\u6cd5\u7684\u90ae\u7bb1"

    .line 267
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 270
    :cond_5
    invoke-direct {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->accountDefaultLogin()V

    goto :goto_1

    .line 272
    :cond_6
    invoke-direct {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->accountLogin()V

    goto :goto_1

    .line 239
    :sswitch_6
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kantv/ui/activity/AreaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xa

    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/AccountLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_7
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09000c -> :sswitch_6
        0x7f09000d -> :sswitch_5
        0x7f090010 -> :sswitch_4
        0x7f090114 -> :sswitch_3
        0x7f0902d1 -> :sswitch_2
        0x7f090374 -> :sswitch_1
        0x7f090395 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c009e

    .line 81
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->initBase()V

    .line 83
    invoke-direct {p0}, Lcom/kantv/ui/activity/AccountLoginActivity;->initView()V

    .line 84
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u767b\u5f55_\u8d26\u6237\u767b\u5f55"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 85
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
    .locals 0

    .line 458
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method
