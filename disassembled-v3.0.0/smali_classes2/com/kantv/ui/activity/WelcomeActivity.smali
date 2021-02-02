.class public Lcom/kantv/ui/activity/WelcomeActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "WelcomeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WelcomeActivity"


# instance fields
.field bottomImg:Landroid/widget/ImageView;

.field private isClick:Z

.field private isDestroy:Z

.field isFirstPullDomain:Z

.field private mCircularProgressBar:Lcom/kantv/ui/view/CircularProgressBar;

.field private mExitLayout:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private progress:I

.field private time:I

.field welcomeImg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->progress:I

    .line 67
    iput-boolean v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isClick:Z

    .line 69
    iput-boolean v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isDestroy:Z

    .line 70
    iput-boolean v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isFirstPullDomain:Z

    .line 72
    new-instance v0, Lcom/kantv/ui/activity/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/WelcomeActivity$1;-><init>(Lcom/kantv/ui/activity/WelcomeActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/WelcomeActivity;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->progress:I

    return p0
.end method

.method static synthetic access$008(Lcom/kantv/ui/activity/WelcomeActivity;)I
    .locals 2

    .line 58
    iget v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->progress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/WelcomeActivity;->progress:I

    return v0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/WelcomeActivity;)Lcom/kantv/ui/view/CircularProgressBar;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mCircularProgressBar:Lcom/kantv/ui/view/CircularProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/WelcomeActivity;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->time:I

    return p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/activity/WelcomeActivity;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/kantv/ui/activity/WelcomeActivity;->time:I

    return p1
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/WelcomeActivity;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kantv/ui/activity/WelcomeActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/WelcomeActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isClick:Z

    return p0
.end method

.method static synthetic access$402(Lcom/kantv/ui/activity/WelcomeActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isClick:Z

    return p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->jumpMainActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/WelcomeActivity;Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/WelcomeActivity;->checkDomain(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/WelcomeActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->pullDomain()V

    return-void
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/WelcomeActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mExitLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/WelcomeActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->initRequest()V

    return-void
.end method

.method private checkDomain(Ljava/lang/String;)Z
    .locals 4

    .line 456
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/WelcomeActivity;->parseHostGetIPAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "aaaaaaa.com.com.kliewi.com.pi"

    .line 457
    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/WelcomeActivity;->parseHostGetIPAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 460
    aget-object v0, v0, v3

    aget-object v1, v1, v3

    if-ne v0, v1, :cond_0

    const-string v0, "### DOMAIN ERROR ###"

    .line 461
    invoke-static {v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 462
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "current_domain"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 463
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "backup_domain"

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 464
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, p1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v0, Lcom/kantv/common/api/Api;

    invoke-direct {v0}, Lcom/kantv/common/api/Api;-><init>()V

    .line 466
    invoke-virtual {v0, p1}, Lcom/kantv/common/api/Api;->setDomain(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "### DOMAIN NORMAL ###"

    .line 469
    invoke-static {p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    return v2

    .line 473
    :cond_1
    new-instance p1, Lcom/kantv/common/api/Api;

    invoke-direct {p1}, Lcom/kantv/common/api/Api;-><init>()V

    .line 474
    sget-object v0, Lcom/kantv/common/api/Api;->nativeDomain:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/kantv/common/api/Api;->setDomain(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v3
.end method

.method private initRequest()V
    .locals 5

    .line 197
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ad_data"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/kantv/ui/viewmodel/CommonViewModel;->getAdData()V

    .line 200
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget-object v0, Lcom/kantv/ui/activity/WelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "initRequest:no ad"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->jumpMainActivity()V

    .line 203
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->finish()V

    goto :goto_0

    .line 205
    :cond_0
    sget-object v1, Lcom/kantv/ui/activity/WelcomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "initRequest:has ad"

    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/kantv/ui/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->parse(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0903e4

    .line 161
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->welcomeImg:Landroid/widget/ImageView;

    const v0, 0x7f09007b

    .line 162
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->bottomImg:Landroid/widget/ImageView;

    const v0, 0x7f09001d

    .line 163
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/CircularProgressBar;

    iput-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mCircularProgressBar:Lcom/kantv/ui/view/CircularProgressBar;

    const v0, 0x7f0903e3

    .line 164
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mExitLayout:Landroid/widget/RelativeLayout;

    .line 165
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mExitLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/kantv/ui/activity/WelcomeActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/WelcomeActivity$3;-><init>(Lcom/kantv/ui/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->welcomeImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/kantv/ui/activity/WelcomeActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/WelcomeActivity$4;-><init>(Lcom/kantv/ui/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private jumpMainActivity()V
    .locals 3

    .line 214
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isfirst"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "1"

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kantv/ui/activity/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->finish()V

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->getInstance()Lcom/kantv/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/common/base/BaseApplication;->getActivityStackNum()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->bringToFrontFlag:I

    if-ne v0, v1, :cond_2

    .line 224
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kantv/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->finish()V

    :goto_0
    return-void
.end method

.method private parse(Ljava/lang/String;)V
    .locals 4

    .line 234
    sget-object v0, Lcom/kantv/ui/activity/WelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->jumpMainActivity()V

    return-void

    :cond_0
    const-string v0, "status"

    .line 240
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data"

    .line 241
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 242
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kantv/ui/activity/WelcomeActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/activity/WelcomeActivity$5;-><init>(Lcom/kantv/ui/activity/WelcomeActivity;Lorg/json/JSONArray;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->jumpMainActivity()V

    goto :goto_0

    .line 345
    :cond_2
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->jumpMainActivity()V

    :goto_0
    return-void
.end method

.method private parseDeepLink(Landroid/net/Uri;)Z
    .locals 3

    .line 144
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string v2, "tid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "seo"

    const-string v2, ""

    .line 151
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private pullDomain()V
    .locals 4

    .line 352
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 356
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "_token"

    .line 360
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "devicetype"

    const-string v2, "0"

    .line 361
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getDomain(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/WelcomeActivity$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/WelcomeActivity$6;-><init>(Lcom/kantv/ui/activity/WelcomeActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003a

    .line 92
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/WelcomeActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->finish()V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/WelcomeActivity;->parseDeepLink(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->initView()V

    .line 114
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "first_pull_domain"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isFirstPullDomain:Z

    .line 115
    iget-boolean p1, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isFirstPullDomain:Z

    if-nez p1, :cond_2

    .line 116
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "current_domain"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    new-instance v0, Lcom/kantv/common/api/Api;

    invoke-direct {v0}, Lcom/kantv/common/api/Api;-><init>()V

    .line 119
    invoke-virtual {v0, p1}, Lcom/kantv/common/api/Api;->setDomain(Ljava/lang/String;)V

    .line 122
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/kantv/ui/activity/WelcomeActivity$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/WelcomeActivity$2;-><init>(Lcom/kantv/ui/activity/WelcomeActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 135
    iget-boolean p1, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isFirstPullDomain:Z

    if-nez p1, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/kantv/ui/activity/WelcomeActivity;->initRequest()V

    .line 138
    :cond_3
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u542f\u52a8_\u6b22\u8fce"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 139
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

    .line 504
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->isDestroy:Z

    .line 506
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 507
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 508
    iput-object v1, p0, Lcom/kantv/ui/activity/WelcomeActivity;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public parseHostGetIPAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 488
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 489
    array-length v1, p1

    if-lez v1, :cond_1

    .line 490
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 491
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 492
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    return-object v0
.end method
