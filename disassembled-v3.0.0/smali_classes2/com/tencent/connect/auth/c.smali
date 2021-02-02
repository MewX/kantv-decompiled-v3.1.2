.class public Lcom/tencent/connect/auth/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/connect/auth/AuthAgent;

.field private b:Lcom/tencent/connect/auth/QQToken;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "new QQAuth() --start"

    .line 39
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/tencent/connect/auth/QQToken;

    invoke-direct {v1, p1}, Lcom/tencent/connect/auth/QQToken;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    .line 41
    new-instance p1, Lcom/tencent/connect/auth/AuthAgent;

    iget-object v1, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct {p1, v1}, Lcom/tencent/connect/auth/AuthAgent;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    iput-object p1, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    .line 42
    iget-object p1, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {p2, p1}, Lcom/tencent/connect/a/a;->c(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    const-string p1, "new QQAuth() --end"

    .line 43
    invoke-static {v0, p1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 181
    invoke-direct/range {v0 .. v6}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I
    .locals 11

    const-string v1, "openSDK_LOG.QQAuth"

    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x80

    .line 199
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 200
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 201
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :cond_1
    if-eqz v3, :cond_2

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/open/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 208
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->login channelId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, ""

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, v9

    .line 210
    invoke-virtual/range {v4 .. v10}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "-->login get channel id exception."

    .line 214
    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const-string v0, "-->login channelId is null "

    .line 217
    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 219
    sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    move-object v1, p0

    .line 220
    iget-object v2, v1, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p2

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/c;
    .locals 6

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/e;->a(Landroid/content/Context;)V

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "QQAuth -- createInstance() --start"

    .line 57
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.tauth.AuthActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 65
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    new-instance v1, Lcom/tencent/connect/auth/c;

    invoke-direct {v1, p0, p1}, Lcom/tencent/connect/auth/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const-string p0, "QQAuth -- createInstance()  --end"

    .line 79
    invoke-static {v0, p0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "createInstance() error --end"

    .line 70
    invoke-static {v0, v1, p0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "\u8bf7\u53c2\u7167\u6587\u6863\u5728Androidmanifest.xml\u52a0\u4e0aAuthActivity\u548cAssitActivity\u7684\u5b9a\u4e49 "

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 2

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "login()"

    .line 102
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 103
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 8

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->login activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.QQAuth"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 132
    invoke-direct/range {v2 .. v7}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "loginWithOEM"

    .line 237
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 238
    sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    const-string v0, ""

    .line 240
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "null"

    if-eqz v1, :cond_0

    move-object p4, v2

    .line 243
    :cond_0
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p5, v2

    .line 246
    :cond_1
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p6, v2

    .line 249
    :cond_2
    sput-object p5, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;

    .line 250
    sput-object p4, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;

    .line 251
    sput-object p6, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;

    .line 252
    iget-object p4, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-virtual {p4, p1, p2, p3}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 9

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "login()"

    .line 107
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v7, ""

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p4

    .line 108
    invoke-direct/range {v2 .. v8}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 6

    .line 156
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->login activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "openSDK_LOG.QQAuth"

    invoke-static {v2, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I
    .locals 7

    .line 166
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->login activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "openSDK_LOG.QQAuth"

    invoke-static {v2, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 168
    invoke-direct/range {v0 .. v6}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthAgent;->a(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "setOpenId() --start"

    .line 359
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1, p2}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 361
    iget-object p2, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {p1, p2}, Lcom/tencent/connect/a/a;->d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    const-string p1, "setOpenId() --end"

    .line 362
    invoke-static {v0, p1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-virtual {v0, p1}, Lcom/tencent/connect/auth/AuthAgent;->b(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccessToken(), validTimeInSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.QQAuth"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 8

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "reAuth()"

    .line 275
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/tencent/connect/auth/QQToken;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSessionValid(), result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.QQAuth"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v0

    return v0
.end method
