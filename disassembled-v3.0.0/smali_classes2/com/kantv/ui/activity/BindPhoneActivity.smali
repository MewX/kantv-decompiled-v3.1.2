.class public Lcom/kantv/ui/activity/BindPhoneActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "BindPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/BindPhoneActivity$MyHandler;
    }
.end annotation


# instance fields
.field bindArea:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090068
    .end annotation
.end field

.field bindPhone:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006c
    .end annotation
.end field

.field bindPhoneBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090075
    .end annotation
.end field

.field bindVercode:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090071
    .end annotation
.end field

.field private mCount:I

.field private mCountCloud:I

.field private mHandler:Landroid/os/Handler;

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field rmBindPhone:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090070
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

    .line 49
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/kantv/ui/activity/BindPhoneActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/BindPhoneActivity$MyHandler;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x78

    .line 70
    iput v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/BindPhoneActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity;->showKeyboard(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/BindPhoneActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->checkBindPhone()V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/BindPhoneActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->checkBindVercode()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/BindPhoneActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/BindPhoneActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/BindPhoneActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCountCloud:I

    return p0
.end method

.method static synthetic access$502(Lcom/kantv/ui/activity/BindPhoneActivity;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCountCloud:I

    return p1
.end method

.method static synthetic access$602(Lcom/kantv/ui/activity/BindPhoneActivity;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/BindPhoneActivity;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private bindPhone()V
    .locals 6

    .line 250
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindArea:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindVercode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u7535\u8bdd\u53f7\u7801"

    .line 254
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v3, "\u533a\u53f7"

    .line 257
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "\u8bf7\u9009\u62e9\u624b\u673a\u533a\u53f7"

    .line 258
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 262
    :cond_1
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    .line 263
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 266
    :cond_2
    iget-object v3, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 267
    iget-object v3, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v5, "noncestr"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v3, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v5, "timestamp"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v3, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v5, "sbID"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v3, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v4, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v5, "sign"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v3, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v4, "code"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "iso_code"

    const-string v5, "AU"

    invoke-static {v3, v4, v5}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v3, "mobile"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v1, "verifyCode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->updateMobile(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/BindPhoneActivity$5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/BindPhoneActivity$5;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private checkBindPhone()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhoneBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->rmBindPhone:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhoneBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->rmBindPhone:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkBindVercode()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhoneBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhoneBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getVercode()V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindArea:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 304
    iget-object v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v3, "code"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "iso_code"

    const-string v4, "AU"

    invoke-static {v2, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v2, "mobile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "bind"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getCode(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/BindPhoneActivity$6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/BindPhoneActivity$6;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u65b0\u624b\u673a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "area_country"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindArea:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 93
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ACCOUNTID"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "@"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_1
    new-instance v1, Lcom/kantv/ui/activity/BindPhoneActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/BindPhoneActivity$1;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 114
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->checkBindPhone()V

    .line 115
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->checkBindVercode()V

    .line 118
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/BindPhoneActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/BindPhoneActivity$2;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindVercode:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/BindPhoneActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/BindPhoneActivity$3;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private showKeyboard(Landroid/widget/TextView;)V
    .locals 1

    .line 152
    new-instance v0, Lcom/kantv/ui/activity/BindPhoneActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity$4;-><init>(Lcom/kantv/ui/activity/BindPhoneActivity;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/BindPhoneActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/ui/PackageActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 341
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "area"

    .line 342
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 343
    iget-object p2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindArea:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f090068,
            0x7f090071,
            0x7f090070,
            0x7f090075,
            0x7f090398
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 214
    :sswitch_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->getVercode()V

    goto :goto_0

    .line 201
    :sswitch_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->finish()V

    goto :goto_0

    .line 211
    :sswitch_2
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone()V

    goto :goto_0

    .line 208
    :sswitch_3
    iget-object p1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kantv/ui/activity/AreaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xa

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/BindPhoneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090068 -> :sswitch_4
        0x7f090070 -> :sswitch_3
        0x7f090075 -> :sswitch_2
        0x7f090374 -> :sswitch_1
        0x7f090398 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00be

    .line 76
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/BindPhoneActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->initBase()V

    .line 78
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindPhoneActivity;->initView()V

    .line 79
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u767b\u5f55_\u6ce8\u518c"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 80
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

    .line 350
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 351
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 352
    iput-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public todo()V
    .locals 4

    .line 236
    iget v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCount:I

    .line 237
    iget v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCount:I

    if-lez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->vercodeTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 240
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->vercodeTip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->vercodeTip:Landroid/widget/TextView;

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCountCloud:I

    iput v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->mCount:I

    .line 244
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity;->vercodeTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
