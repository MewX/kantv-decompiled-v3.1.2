.class public Lcom/kantv/ui/activity/ResetPwdActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "ResetPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/ResetPwdActivity$MyHandler;
    }
.end annotation


# instance fields
.field accountEmail:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09000e
    .end annotation
.end field

.field emailResetPwdLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f3
    .end annotation
.end field

.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field phoneResetPwdLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090297
    .end annotation
.end field

.field resetArea:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c3
    .end annotation
.end field

.field resetBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c4
    .end annotation
.end field

.field resetEmailPwd:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c5
    .end annotation
.end field

.field resetPassword:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c7
    .end annotation
.end field

.field resetPhone:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c6
    .end annotation
.end field

.field resetPwdLoginType:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902cc
    .end annotation
.end field

.field resetPwdSafe:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c8
    .end annotation
.end field

.field resetVercode:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902cb
    .end annotation
.end field

.field rmEmailImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c9
    .end annotation
.end field

.field rmPhoneImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ca
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
        value = 0x7f0903a6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/kantv/ui/activity/ResetPwdActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/ResetPwdActivity$MyHandler;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3c

    .line 86
    iput v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/ResetPwdActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->checkResetPhone()V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/ResetPwdActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->checkResetEmail()V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/ResetPwdActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->checkResetPwd()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/ResetPwdActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->checkResetVercode()V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/ResetPwdActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/ResetPwdActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/ResetPwdActivity;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/ResetPwdActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->isDestroy:Z

    return p0
.end method

.method private checkResetEmail()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->accountEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetEmailPwd:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->rmEmailImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetEmailPwd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->rmEmailImg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkResetPhone()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->rmPhoneImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->rmPhoneImg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkResetPwd()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdSafe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdSafe:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkResetVercode()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getVercode()V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetArea:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 351
    iget-object v2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v3, "code"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "iso_code"

    const-string v4, "AU"

    invoke-static {v2, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v2, "mobile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801="

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getPwdCodeSms(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/ResetPwdActivity$7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/ResetPwdActivity$7;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u91cd\u8bbe\u5bc6\u7801"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, ""

    const-string v4, "area_country"

    invoke-static {v0, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetArea:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "ACCOUNTID"

    invoke-static {v0, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->checkResetPhone()V

    .line 112
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->checkResetVercode()V

    .line 113
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->checkResetPwd()V

    .line 114
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->checkResetEmail()V

    .line 117
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    new-instance v3, Lcom/kantv/ui/activity/ResetPwdActivity$1;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/ResetPwdActivity$1;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->accountEmail:Landroid/widget/EditText;

    new-instance v3, Lcom/kantv/ui/activity/ResetPwdActivity$2;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/ResetPwdActivity$2;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/kantv/ui/activity/ResetPwdActivity$3;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/ResetPwdActivity$3;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetVercode:Landroid/widget/EditText;

    new-instance v3, Lcom/kantv/ui/activity/ResetPwdActivity$4;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/ResetPwdActivity$4;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdSafe:Landroid/widget/CheckBox;

    new-instance v3, Lcom/kantv/ui/activity/ResetPwdActivity$5;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/ResetPwdActivity$5;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "type"

    .line 194
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "email"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->phoneResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->emailResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdLoginType:Landroid/widget/TextView;

    const-string v2, "\u901a\u8fc7\u624b\u673a\u53f7\u627e\u56de\u5bc6\u7801"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetEmailPwd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->phoneResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->emailResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdLoginType:Landroid/widget/TextView;

    const-string v2, "\u901a\u8fc7\u90ae\u7bb1\u627e\u56de\u5bc6\u7801"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private resetPwd()V
    .locals 7

    .line 303
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetVercode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetArea:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u533a\u53f7"

    .line 307
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "\u8bf7\u9009\u62e9\u624b\u673a\u533a\u53f7"

    .line 308
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 311
    :cond_0
    iget-object v4, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 312
    iget-object v4, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v5, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v6, "noncestr"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v4, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v5, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v6, "timestamp"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v4, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v5, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v6, "sbID"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v4, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v5, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v6, "sign"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v4, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v5, "code"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v3, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "iso_code"

    const-string v6, "AU"

    invoke-static {v4, v5, v6}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v3, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v4, "mobile"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v3, "verifyCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->resetPwd(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/ResetPwdActivity$6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/ResetPwdActivity$6;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private resetPwdSendEmail()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 383
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->accountEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "resetpwd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->sendEmail(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/ResetPwdActivity$8;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/ResetPwdActivity$8;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 414
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/ui/PackageActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 417
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "area"

    .line 418
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 419
    iget-object p2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetArea:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f0902c3,
            0x7f0902cb,
            0x7f0902ca,
            0x7f0902c4,
            0x7f0903a6,
            0x7f0902cc,
            0x7f0902c5
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 273
    :sswitch_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->getVercode()V

    goto/16 :goto_0

    .line 260
    :sswitch_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->finish()V

    goto/16 :goto_0

    .line 276
    :sswitch_2
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->phoneResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->phoneResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->emailResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdLoginType:Landroid/widget/TextView;

    const-string v0, "\u901a\u8fc7\u624b\u673a\u53f7\u627e\u56de\u5bc6\u7801"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetEmailPwd:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->phoneResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->emailResetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdLoginType:Landroid/widget/TextView;

    const-string v0, "\u901a\u8fc7\u90ae\u7bb1\u627e\u56de\u5bc6\u7801"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 267
    :sswitch_3
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPhone:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :sswitch_4
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->accountEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 291
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->accountEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u8bf7\u8f93\u5165\u5408\u6cd5\u7684\u90ae\u7bb1"

    .line 292
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwdSendEmail()V

    goto :goto_0

    .line 270
    :sswitch_5
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPwd()V

    goto :goto_0

    .line 263
    :sswitch_6
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kantv/ui/activity/AreaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xa

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/ResetPwdActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902c3 -> :sswitch_6
        0x7f0902c4 -> :sswitch_5
        0x7f0902c5 -> :sswitch_4
        0x7f0902ca -> :sswitch_3
        0x7f0902cc -> :sswitch_2
        0x7f090374 -> :sswitch_1
        0x7f0903a6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a2

    .line 91
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->initBase()V

    .line 93
    invoke-direct {p0}, Lcom/kantv/ui/activity/ResetPwdActivity;->initView()V

    .line 94
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u767b\u5f55_\u91cd\u7f6e\u5bc6\u7801"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 95
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

    .line 456
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method

.method public todo()V
    .locals 4

    .line 425
    iget v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mCount:I

    .line 426
    iget v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mCount:I

    if-lez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->vercodeTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->vercodeTip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->vercodeTip:Landroid/widget/TextView;

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3c

    .line 432
    iput v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->mCount:I

    .line 433
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity;->vercodeTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
