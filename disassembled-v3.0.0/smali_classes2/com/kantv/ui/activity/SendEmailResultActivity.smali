.class public Lcom/kantv/ui/activity/SendEmailResultActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "SendEmailResultActivity.java"


# instance fields
.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field regPwd:Ljava/lang/String;

.field resendEmail:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c1
    .end annotation
.end field

.field resendTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c2
    .end annotation
.end field

.field sendEmailResultTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031d
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

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field

.field titleRightTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field type:Ljava/lang/String;

.field userEmail:Ljava/lang/String;

.field verLoginTipLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903a8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/SendEmailResultActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/SendEmailResultActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->isDestroy:Z

    return p0
.end method

.method private checkMailDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "163"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "http://mail.163.com"

    return-object p1

    :cond_0
    const-string v0, "126"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "http://mail.126.com"

    return-object p1

    :cond_1
    const-string v0, "qq"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "http://mail.qq.com"

    return-object p1

    :cond_2
    const-string v0, "google"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "http://mail.google.com"

    return-object p1

    :cond_3
    const-string v0, "sohu"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "http://mail.sohu.com"

    return-object p1

    :cond_4
    const-string v0, "tom"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "http://mail.tom.com"

    return-object p1

    :cond_5
    const-string v0, "sina"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "http://mail.sina.com.cn"

    return-object p1

    :cond_6
    const-string v0, "yahoo"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "http://login.yahoo.com"

    return-object p1

    :cond_7
    const-string v0, "yeah"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "http://www.yeah.net"

    return-object p1

    :cond_8
    const-string v0, "21cn"

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "http://mail.21cn.com"

    return-object p1

    :cond_9
    const-string v0, "hotmail"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "http://www.hotmail.com"

    return-object p1

    :cond_a
    const-string v0, "outlook"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "http://www.outlook.com"

    return-object p1

    :cond_b
    const-string v0, "188"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "http://www.188.com"

    return-object p1

    :cond_c
    const-string v0, "10086"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "http://mail.10086.cn"

    return-object p1

    :cond_d
    const-string v0, "189"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "http://webmail15.189.cn/webmail"

    return-object p1

    :cond_e
    const-string v0, "aol"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "https://login.aol.com"

    return-object p1

    :cond_f
    const-string v0, "live"

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "https://login.live.com"

    return-object p1

    :cond_10
    const-string v0, "icloud"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "https://www.icloud.com"

    return-object p1

    :cond_11
    const-string v0, "proton"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "https://mail.protonmail.com/login"

    return-object p1

    :cond_12
    const-string p1, ""

    return-object p1
.end method

.method private initView()V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v3, "\u767b\u5f55"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SendEmailResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SendEmailResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "email"

    .line 77
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    const-string v3, "password"

    .line 78
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->regPwd:Ljava/lang/String;

    const-string v3, "type"

    .line 79
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->type:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->type:Ljava/lang/String;

    const-string v4, "resetpwd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->sendEmailResultTv:Landroid/widget/TextView;

    const v2, 0x7f0f00bc

    invoke-virtual {p0, v2}, Lcom/kantv/ui/activity/SendEmailResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v4, 0x7f0f00bb

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->regPwd:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->type:Ljava/lang/String;

    const-string v5, "emailreg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->sendEmailResultTv:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/kantv/ui/activity/SendEmailResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->type:Ljava/lang/String;

    const-string v5, "emailbind"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->sendEmailResultTv:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/kantv/ui/activity/SendEmailResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->verLoginTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->titleRightTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private regAgainSendEmail()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 161
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    const-string v2, "mail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "reg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->regPwd:Ljava/lang/String;

    const-string v2, "password"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->sendEmail(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/SendEmailResultActivity$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/SendEmailResultActivity$2;-><init>(Lcom/kantv/ui/activity/SendEmailResultActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private resetPwdSendEmail()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    const-string v2, "mail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "resetpwd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->sendEmail(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/SendEmailResultActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/SendEmailResultActivity$1;-><init>(Lcom/kantv/ui/activity/SendEmailResultActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f090376,
            0x7f0902c1,
            0x7f09031e
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 101
    :sswitch_0
    const-class p1, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SendEmailResultActivity;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 98
    :sswitch_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SendEmailResultActivity;->finish()V

    goto/16 :goto_0

    .line 117
    :sswitch_2
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/SendEmailResultActivity;->checkMailDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 124
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :sswitch_3
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->type:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "\u5df2\u53d1\u9001"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->type:Ljava/lang/String;

    const-string v2, "resetpwd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/kantv/ui/activity/SendEmailResultActivity;->resetPwdSendEmail()V

    .line 107
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->resendTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->resendEmail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->userEmail:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->regPwd:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->type:Ljava/lang/String;

    const-string v2, "emailreg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/activity/SendEmailResultActivity;->regAgainSendEmail()V

    .line 111
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->resendTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity;->resendEmail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0902c1 -> :sswitch_3
        0x7f09031e -> :sswitch_2
        0x7f090374 -> :sswitch_1
        0x7f090376 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00c3

    .line 64
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SendEmailResultActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SendEmailResultActivity;->initBase()V

    .line 66
    invoke-direct {p0}, Lcom/kantv/ui/activity/SendEmailResultActivity;->initView()V

    return-void
.end method
