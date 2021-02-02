.class public Lcom/kantv/ui/activity/SafeVerInputActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "SafeVerInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/SafeVerInputActivity$MyHandler;
    }
.end annotation


# instance fields
.field bindResendTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006e
    .end annotation
.end field

.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field safeVerNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902db
    .end annotation
.end field

.field safeVerTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902dc
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

.field verOkBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903a4
    .end annotation
.end field

.field vercodeTimer:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903a5
    .end annotation
.end field

.field verifyEditText:Lcom/kantv/lib/verifyedittext/VerifyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903a7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/kantv/ui/activity/SafeVerInputActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/SafeVerInputActivity$MyHandler;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12c

    .line 76
    iput v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/SafeVerInputActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/SafeVerInputActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->isDestroy:Z

    return p0
.end method

.method private checkVar()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->verifyEditText:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-virtual {v0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->verifyEditText:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    invoke-virtual {v1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verifyCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "change"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->validPhoneCode(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/SafeVerInputActivity$3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/SafeVerInputActivity$3;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initTitle()V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->safeVerTip:Landroid/widget/TextView;

    const v3, 0x7f0f00b7

    invoke-virtual {p0, v3}, Lcom/kantv/ui/activity/SafeVerInputActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/activity/SafeVerInputActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/SafeVerInputActivity$2;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showKeyboard(Landroid/widget/TextView;)V
    .locals 1

    .line 90
    new-instance v0, Lcom/kantv/ui/activity/SafeVerInputActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeVerInputActivity$1;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private verPhone()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 233
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "change"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getCode(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/SafeVerInputActivity$4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/SafeVerInputActivity$4;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f0903a4,
            0x7f09006e
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09006e

    if-eq p1, v0, :cond_2

    const v0, 0x7f090374

    if-eq p1, v0, :cond_1

    const v0, 0x7f0903a4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->checkVar()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->finish()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->verPhone()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 81
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SafeVerInputActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->initBase()V

    .line 83
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->initStatusBar()V

    .line 84
    invoke-direct {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->initTitle()V

    .line 85
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 258
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 259
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 260
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public showSoftInputFromWindow(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 1

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 135
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 136
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 141
    invoke-virtual {p2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public todo()V
    .locals 4

    .line 217
    iget v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mCount:I

    .line 218
    iget v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mCount:I

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 220
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->vercodeTimer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2\u540e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->bindResendTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->bindResendTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->vercodeTimer:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x12c

    .line 225
    iput v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->mCount:I

    .line 226
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->bindResendTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity;->bindResendTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
