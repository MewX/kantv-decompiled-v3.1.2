.class public Lcom/kantv/ui/activity/BindEmailActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "BindEmailActivity.java"


# instance fields
.field bindEmail:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090069
    .end annotation
.end field

.field bindEmailBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090073
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field rmBindEmail:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006f
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
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/BindEmailActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindEmailActivity;->checkBindEmail()V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/BindEmailActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->isDestroy:Z

    return p0
.end method

.method private bindEmail()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u90ae\u7bb1\u8d26\u53f7"

    .line 159
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 162
    :cond_0
    invoke-static {v0}, Lcom/kantv/common/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u5408\u6cd5\u7684\u90ae\u7bb1"

    .line 163
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 168
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    const-string v2, "mail"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    const-string v2, "type"

    const-string v3, "bind"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v3, "interfaceVersion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/BindEmailActivity;->request:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/kantv/common/api/ApiService;->sendEmail(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/kantv/ui/activity/BindEmailActivity$3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/kantv/ui/activity/BindEmailActivity$3;-><init>(Lcom/kantv/ui/activity/BindEmailActivity;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private checkBindEmail()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmailBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->rmBindEmail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmailBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->rmBindEmail:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u90ae\u7bb1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 75
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ACCOUNTID"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0xc8

    if-nez v1, :cond_1

    const-string v1, "@"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->mMyHandler:Lcom/kantv/common/view/MyHandler;

    new-instance v1, Lcom/kantv/ui/activity/-$$Lambda$BindEmailActivity$GEMQ4SyIb8tm6_k4vw-L0KOzzks;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/-$$Lambda$BindEmailActivity$GEMQ4SyIb8tm6_k4vw-L0KOzzks;-><init>(Lcom/kantv/ui/activity/BindEmailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kantv/common/view/MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->mMyHandler:Lcom/kantv/common/view/MyHandler;

    new-instance v1, Lcom/kantv/ui/activity/-$$Lambda$BindEmailActivity$RRNkFhocT2--4xQYYaLylLaxD44;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/-$$Lambda$BindEmailActivity$RRNkFhocT2--4xQYYaLylLaxD44;-><init>(Lcom/kantv/ui/activity/BindEmailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kantv/common/view/MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindEmailActivity;->checkBindEmail()V

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/BindEmailActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/BindEmailActivity$1;-><init>(Lcom/kantv/ui/activity/BindEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private showKeyboard(Landroid/widget/TextView;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/kantv/ui/activity/BindEmailActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/BindEmailActivity$2;-><init>(Lcom/kantv/ui/activity/BindEmailActivity;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/BindEmailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$BindEmailActivity()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/BindEmailActivity;->showKeyboard(Landroid/widget/TextView;)V

    return-void
.end method

.method public synthetic lambda$initView$1$BindEmailActivity()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/BindEmailActivity;->showKeyboard(Landroid/widget/TextView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f09006f,
            0x7f090073
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09006f

    if-eq p1, v0, :cond_2

    const v0, 0x7f090073

    if-eq p1, v0, :cond_1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/BindEmailActivity;->finish()V

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail()V

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00bd

    .line 62
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/BindEmailActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/kantv/ui/activity/BindEmailActivity;->initBase()V

    .line 64
    invoke-direct {p0}, Lcom/kantv/ui/activity/BindEmailActivity;->initView()V

    .line 65
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u767b\u5f55_\u6ce8\u518c"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 66
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

    .line 201
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    return-void
.end method
