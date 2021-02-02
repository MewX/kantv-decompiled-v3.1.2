.class public Lcom/kantv/ui/activity/EmailRegisterActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "EmailRegisterActivity.java"


# instance fields
.field private mCount:I

.field private mCountCloud:I

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field pwdPopImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a7
    .end annotation
.end field

.field regBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902bc
    .end annotation
.end field

.field regEmail:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b5
    .end annotation
.end field

.field regMorePwd:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b6
    .end annotation
.end field

.field regMorePwdSafe:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a6
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

.field rmRegEmail:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b9
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/16 v0, 0x78

    .line 74
    iput v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/EmailRegisterActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/EmailRegisterActivity;->showKeyboard(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/EmailRegisterActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->checkRegEmail()V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/EmailRegisterActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->checkRegPwd()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/EmailRegisterActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->showPwdPop()V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/EmailRegisterActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->checkMorePwd()V

    return-void
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/EmailRegisterActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->isDestroy:Z

    return p0
.end method

.method private checkIllegalChar(Ljava/lang/String;)Z
    .locals 1

    .line 359
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->stringPwdFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkMorePwd()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwdSafe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwdSafe:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkRegEmail()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->rmRegEmail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->rmRegEmail:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkRegPwd()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 93
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ACCOUNTID"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-nez v2, :cond_1

    const-string v2, "@"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$1;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 105
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->showPwdPop()V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$2;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 117
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->checkRegEmail()V

    .line 118
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->checkMorePwd()V

    .line 119
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->checkRegPwd()V

    .line 122
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$3;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$4;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$5;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$5;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwd:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$6;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$6;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwdSafe:Landroid/widget/CheckBox;

    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$7;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$7;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwdSafe:Landroid/widget/CheckBox;

    new-instance v1, Lcom/kantv/ui/activity/EmailRegisterActivity$8;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$8;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private regAccount()V
    .locals 8

    .line 294
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 295
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 296
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regMorePwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v5}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u8d26\u53f7"

    .line 298
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 301
    :cond_0
    invoke-static {v5}, Lcom/kantv/common/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u5408\u6cd5\u7684\u90ae\u7bb1"

    .line 302
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 306
    :cond_1
    invoke-static {v6}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u767b\u5f55\u5bc6\u7801"

    .line 307
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 310
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_6

    invoke-direct {p0, v6}, Lcom/kantv/ui/activity/EmailRegisterActivity;->checkIllegalChar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 315
    :cond_3
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "\u8bf7\u518d\u6b21\u8f93\u5165\u786e\u8ba4\u5bc6\u7801"

    .line 316
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 320
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 321
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 325
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    const-string v1, "mail"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "reg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->sendEmail(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v7, Lcom/kantv/ui/activity/EmailRegisterActivity$11;

    const/4 v4, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/kantv/ui/activity/EmailRegisterActivity$11;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    :cond_6
    :goto_0
    const-string v0, "\u8bf7\u8f93\u51656-16\u4f4d\u5b57\u6bcd\u3001\u6570\u5b57\u6216\u8005\u7b26\u53f7\u5bc6\u7801"

    .line 311
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showKeyboard(Landroid/widget/TextView;)V
    .locals 1

    .line 203
    new-instance v0, Lcom/kantv/ui/activity/EmailRegisterActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/EmailRegisterActivity$9;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showPwdPop()V
    .locals 1

    .line 223
    new-instance v0, Lcom/kantv/ui/activity/EmailRegisterActivity$10;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/EmailRegisterActivity$10;-><init>(Lcom/kantv/ui/activity/EmailRegisterActivity;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f0902b9,
            0x7f0902bc
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902b9

    if-eq p1, v0, :cond_2

    const v0, 0x7f0902bc

    if-eq p1, v0, :cond_1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->finish()V

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->regAccount()V

    goto :goto_0

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/EmailRegisterActivity;->regEmail:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0060

    .line 80
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/EmailRegisterActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->initBase()V

    .line 82
    invoke-direct {p0}, Lcom/kantv/ui/activity/EmailRegisterActivity;->initView()V

    .line 83
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u767b\u5f55_\u6ce8\u518c"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 84
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

    .line 368
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method
