.class public Lcom/kantv/ui/activity/RegisterActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/RegisterActivity$MyHandler;
    }
.end annotation


# instance fields
.field private mCount:I

.field private mCountCloud:I

.field private mHandler:Landroid/os/Handler;

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field regArea:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b4
    .end annotation
.end field

.field regBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902bc
    .end annotation
.end field

.field regPhone:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b7
    .end annotation
.end field

.field regPwd:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b8
    .end annotation
.end field

.field regPwdSafe:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a8
    .end annotation
.end field

.field regVercode:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902bb
    .end annotation
.end field

.field rmRegPhone:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ba
    .end annotation
.end field

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field

.field vercodeTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090398
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/kantv/ui/activity/RegisterActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/RegisterActivity$MyHandler;-><init>(Lcom/kantv/ui/activity/RegisterActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x78

    .line 77
    iput v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/RegisterActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/RegisterActivity;->showKeyboard(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/RegisterActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->checkRegPhone()V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/RegisterActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->checkRegPwd()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/RegisterActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->checkRegVercode()V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/RegisterActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/kantv/ui/activity/RegisterActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/RegisterActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/kantv/ui/activity/RegisterActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/RegisterActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCountCloud:I

    return p0
.end method

.method static synthetic access$602(Lcom/kantv/ui/activity/RegisterActivity;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCountCloud:I

    return p1
.end method

.method static synthetic access$702(Lcom/kantv/ui/activity/RegisterActivity;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/RegisterActivity;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkRegPhone()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->rmRegPhone:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->rmRegPhone:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkRegPwd()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkRegVercode()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getVercode()V
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regArea:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 361
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 362
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    const-string v3, "code"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "iso_code"

    const-string v4, "AU"

    invoke-static {v2, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    const-string v2, "mobile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getCode(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/RegisterActivity$9;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/RegisterActivity$9;-><init>(Lcom/kantv/ui/activity/RegisterActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "area_country"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->regArea:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 100
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ACCOUNTID"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-nez v2, :cond_2

    const-string v2, "@"

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_1
    new-instance v1, Lcom/kantv/ui/activity/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/RegisterActivity$1;-><init>(Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 113
    :cond_2
    new-instance v1, Lcom/kantv/ui/activity/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/RegisterActivity$2;-><init>(Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->checkRegPhone()V

    .line 122
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->checkRegVercode()V

    .line 123
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->checkRegPwd()V

    .line 126
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/RegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/RegisterActivity$3;-><init>(Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/RegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/RegisterActivity$4;-><init>(Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regVercode:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/RegisterActivity$5;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/RegisterActivity$5;-><init>(Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    new-instance v1, Lcom/kantv/ui/activity/RegisterActivity$6;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/RegisterActivity$6;-><init>(Lcom/kantv/ui/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private regAccount()V
    .locals 7

    .line 298
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity;->regArea:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 300
    iget-object v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 301
    iget-object v3, p0, Lcom/kantv/ui/activity/RegisterActivity;->regVercode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u7535\u8bdd\u53f7\u7801"

    .line 303
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v4, "\u533a\u53f7"

    .line 306
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "\u8bf7\u9009\u62e9\u624b\u673a\u533a\u53f7"

    .line 307
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 311
    :cond_1
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    .line 312
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 315
    :cond_2
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u767b\u5f55\u5bc6\u7801"

    .line 316
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 319
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_4

    const-string v0, "\u8bf7\u8f93\u51656-16\u4f4d\u767b\u5f55\u5bc6\u7801"

    .line 320
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 323
    :cond_4
    iget-object v4, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 324
    iget-object v4, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v5, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v6, "noncestr"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v4, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v5, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v6, "timestamp"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v4, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v5, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v6, "sbID"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v4, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v5, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v6, "sign"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v4, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    const-string v5, "code"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "iso_code"

    const-string v6, "AU"

    invoke-static {v4, v5, v6}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    const-string v4, "mobile"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    const-string v1, "verifyCode"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->Register(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/RegisterActivity$8;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/RegisterActivity$8;-><init>(Lcom/kantv/ui/activity/RegisterActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private showKeyboard(Landroid/widget/TextView;)V
    .locals 1

    .line 189
    new-instance v0, Lcom/kantv/ui/activity/RegisterActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/RegisterActivity$7;-><init>(Lcom/kantv/ui/activity/RegisterActivity;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/RegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/ui/PackageActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 396
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "area"

    .line 397
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    iget-object p2, p0, Lcom/kantv/ui/activity/RegisterActivity;->regArea:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f0902b4,
            0x7f0902bb,
            0x7f0902ba,
            0x7f0902bc,
            0x7f090398
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 262
    :sswitch_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->getVercode()V

    goto :goto_0

    .line 249
    :sswitch_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/RegisterActivity;->finish()V

    goto :goto_0

    .line 259
    :sswitch_2
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->regAccount()V

    goto :goto_0

    .line 256
    :sswitch_3
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kantv/ui/activity/AreaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xa

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/RegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902b4 -> :sswitch_4
        0x7f0902ba -> :sswitch_3
        0x7f0902bc -> :sswitch_2
        0x7f090374 -> :sswitch_1
        0x7f090398 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a1

    .line 83
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/RegisterActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/kantv/ui/activity/RegisterActivity;->initBase()V

    .line 85
    invoke-direct {p0}, Lcom/kantv/ui/activity/RegisterActivity;->initView()V

    .line 86
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u767b\u5f55_\u6ce8\u518c"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 87
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

    .line 405
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 406
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 407
    iput-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public todo()V
    .locals 4

    .line 284
    iget v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCount:I

    .line 285
    iget v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCount:I

    if-lez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->vercodeTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 288
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->vercodeTip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->vercodeTip:Landroid/widget/TextView;

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCountCloud:I

    iput v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->mCount:I

    .line 292
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity;->vercodeTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
