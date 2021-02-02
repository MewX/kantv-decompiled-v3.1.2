.class public Lcom/tencent/connect/auth/AuthAgent;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/AuthAgent$b;,
        Lcom/tencent/connect/auth/AuthAgent$a;,
        Lcom/tencent/connect/auth/AuthAgent$c;
    }
.end annotation


# static fields
.field public static final SECURE_LIB_ARM64_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_64"

.field public static final SECURE_LIB_ARM_FILE_NAME:Ljava/lang/String; = "libwbsafeedit"

.field public static SECURE_LIB_FILE_NAME:Ljava/lang/String; = "libwbsafeedit"

.field public static SECURE_LIB_NAME:Ljava/lang/String; = null

.field public static final SECURE_LIB_X86_64_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_x86_64"

.field public static final SECURE_LIB_X86_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_x86"


# instance fields
.field private c:Lcom/tencent/tauth/IUiListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 96
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "is arm(default) architecture"

    const-string v3, "libwbsafeedit"

    const-string v4, "openSDK_LOG.AuthAgent"

    if-eqz v0, :cond_3

    const-string v5, ""

    .line 97
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "arm64-v8a"

    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "libwbsafeedit_64"

    .line 99
    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v0, "is arm64-v8a architecture"

    .line 101
    invoke-static {v4, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v5, "x86"

    .line 102
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "libwbsafeedit_x86"

    .line 103
    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v0, "is x86 architecture"

    .line 105
    invoke-static {v4, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "x86_64"

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "libwbsafeedit_x86_64"

    .line 107
    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v0, "is x86_64 architecture"

    .line 109
    invoke-static {v4, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    sput-object v3, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 113
    invoke-static {v4, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    sput-object v3, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 118
    invoke-static {v4, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method private a(ZLcom/tencent/tauth/IUiListener;Z)I
    .locals 7

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, showDialog -- start"

    .line 250
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 253
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "1"

    if-eqz p1, :cond_0

    const-string p1, "isadd"

    .line 255
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    const-string v3, "scope"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "client_id"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-boolean p1, Lcom/tencent/connect/auth/AuthAgent;->isOEM:Z

    const-string v3, "pf"

    if-eqz p1, :cond_1

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desktop_m_qq-"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/connect/auth/AuthAgent;->installChannel:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/connect/auth/AuthAgent;->registerChannel:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/connect/auth/AuthAgent;->businessId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "openmobile_android"

    .line 262
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/tencent/open/utils/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sign"

    .line 268
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "time"

    .line 269
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "display"

    const-string v3, "mobile"

    .line 272
    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "response_type"

    const-string v3, "token"

    .line 273
    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "redirect_uri"

    const-string v3, "auth://tauth.qq.com/"

    .line 274
    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cancel_display"

    .line 276
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "switch"

    .line 277
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/tencent/open/utils/k;->a()Ljava/lang/String;

    move-result-object p1

    const-string v2, "status_userip"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string p1, "style"

    const-string p3, "qr"

    .line 281
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object p3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-virtual {p3, v2, v3}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {v1}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    new-instance p3, Lcom/tencent/connect/auth/AuthAgent$c;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/connect/auth/AuthAgent$c;-><init>(Lcom/tencent/connect/auth/AuthAgent;Landroid/content/Context;Lcom/tencent/tauth/IUiListener;ZZ)V

    const-string p2, "OpenUi, showDialog TDialog"

    .line 291
    invoke-static {v0, p2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance p2, Lcom/tencent/connect/auth/AuthAgent$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/tencent/connect/auth/AuthAgent$1;-><init>(Lcom/tencent/connect/auth/AuthAgent;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    invoke-static {p2}, Lcom/tencent/open/utils/i;->a(Ljava/lang/Runnable;)V

    const-string p1, "OpenUi, showDialog -- end"

    .line 325
    invoke-static {v0, p1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/tencent/connect/auth/AuthAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z
    .locals 11

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "startActionActivity() -- start"

    .line 330
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.tencent.open.agent.AgentActivity"

    .line 331
    invoke-virtual {p0, v1}, Lcom/tencent/connect/auth/AuthAgent;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "1"

    if-eqz p3, :cond_0

    const-string p3, "isadd"

    .line 337
    invoke-virtual {v2, p3, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object p3, p0, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    const-string v4, "scope"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object p3, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object p3

    const-string v4, "client_id"

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-boolean p3, Lcom/tencent/connect/auth/AuthAgent;->isOEM:Z

    const-string v4, "pf"

    if-eqz p3, :cond_1

    .line 343
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "desktop_m_qq-"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/connect/auth/AuthAgent;->installChannel:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tencent/connect/auth/AuthAgent;->registerChannel:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/connect/auth/AuthAgent;->businessId:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "openmobile_android"

    .line 345
    invoke-virtual {v2, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p3, "need_pay"

    .line 347
    invoke-virtual {v2, p3, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "oauth_app_name"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "key_action"

    const-string v3, "action_login"

    .line 349
    invoke-virtual {v1, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "key_params"

    .line 350
    invoke-virtual {v1, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 351
    iget-object p3, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object p3

    const-string v2, "appid"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v1}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 355
    new-instance p3, Lcom/tencent/connect/auth/AuthAgent$b;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p3, p0, v2}, Lcom/tencent/connect/auth/AuthAgent$b;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    .line 356
    iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    .line 358
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object p3

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    const/16 v3, 0x2b5d

    invoke-virtual {p3, v3, v2}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p1, "startAssitActivity fragment"

    .line 360
    invoke-static {v0, p1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, p2, v1, v3}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    const-string p2, "startAssitActivity activity"

    .line 363
    invoke-static {v0, p2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, p1, v1, v3}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :goto_1
    const-string p1, "startActionActivity() -- end, found activity for loginIntent"

    .line 366
    invoke-static {v0, p1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v3, "LOGIN_CHECK_SDK"

    const-string v4, "1000"

    const-string v6, ""

    const-string v10, ""

    invoke-virtual/range {v1 .. v10}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 372
    :cond_3
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v3, "LOGIN_CHECK_SDK"

    const-string v4, "1000"

    const-string v6, ""

    const-string v10, "startActionActivity fail"

    invoke-virtual/range {v1 .. v10}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    const-string p1, "startActionActivity() -- end, no target activity for loginIntent"

    .line 374
    invoke-static {v0, p1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/connect/auth/AuthAgent;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic j(Lcom/tencent/connect/auth/AuthAgent;)Landroid/os/Bundle;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->b()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/tencent/tauth/IUiListener;)V
    .locals 7

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string v0, "reportDAU() -- start"

    .line 384
    invoke-static {p1, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tencent&sdk&qazxc***14969%%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "qzone3.4"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 394
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "reportDAU -- encrytoken is null"

    .line 395
    invoke-static {p1, v0}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v4

    const-string v1, "encrytoken"

    .line 400
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v6, 0x0

    const-string v3, "https://openmobile.qq.com/user/user_login_statis"

    const-string v5, "POST"

    invoke-static/range {v1 .. v6}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    const-string v0, "reportDAU() -- end"

    .line 402
    invoke-static {p1, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/tencent/tauth/IUiListener;)V
    .locals 6

    .line 412
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "reqType"

    const-string v1, "checkLogin"

    .line 413
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    new-instance v0, Lcom/tencent/connect/auth/AuthAgent$a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/connect/auth/AuthAgent$a;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    invoke-direct {v5, p0, v0}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    .line 415
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "https://openmobile.qq.com/v3/user/get_info"

    const-string v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    return-void
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I

    move-result p1

    return p1
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 211
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I

    move-result p1

    return p1
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I
    .locals 9

    .line 215
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    .line 216
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent;->e:Ljava/lang/ref/WeakReference;

    .line 217
    iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    .line 219
    iget-object p2, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object p2

    const-string p3, "C_LoginWeb"

    invoke-virtual {p2, p3}, Lcom/tencent/open/utils/f;->b(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "openSDK_LOG.AuthAgent"

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p5, p4}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OpenUi, showUi, return Constants.UI_ACTIVITY"

    .line 223
    invoke-static {p3, p1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v0

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    const-string v4, "1"

    const-string v5, "5"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 229
    :cond_0
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v0

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    const-string v4, "1"

    const-string v5, "5"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "0"

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "doLogin startActivity fail show dialog."

    .line 232
    invoke-static {p3, p1}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance p1, Lcom/tencent/connect/auth/AuthAgent$b;

    iget-object p2, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p1, p0, p2}, Lcom/tencent/connect/auth/AuthAgent$b;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    .line 234
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    .line 235
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0, p4, p1, p6}, Lcom/tencent/connect/auth/AuthAgent;->a(ZLcom/tencent/tauth/IUiListener;Z)I

    move-result p1

    return p1
.end method

.method public releaseResource()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    return-void
.end method
