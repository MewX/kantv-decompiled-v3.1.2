.class public Lcom/tencent/open/web/security/SecureJsInterface;
.super Lcom/tencent/open/a$b;
.source "ProGuard"


# static fields
.field public static isPWDEdit:Z = false


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/tencent/open/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllEdit()V
    .locals 4

    const-string v0, "openSDK_LOG.SecureJsInterface"

    const-string v1, "-->clear all edit."

    .line 92
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-static {}, Lcom/tencent/open/web/security/JniInterface;->clearAllPWD()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->clear all edit exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public curPosFromJS(Ljava/lang/String;)V
    .locals 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->curPosFromJS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.SecureJsInterface"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "-->curPosFromJS number format exception."

    .line 31
    invoke-static {v1, v0, p1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 41
    sget-boolean v0, Lcom/tencent/open/web/security/a;->c:Z

    .line 45
    sget-boolean v0, Lcom/tencent/open/web/security/a;->b:Z

    if-eqz v0, :cond_0

    .line 46
    sget-boolean v0, Lcom/tencent/open/web/security/a;->b:Z

    invoke-static {v0, p1}, Lcom/tencent/open/web/security/JniInterface;->BackSpaceChar(ZI)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 49
    sput-boolean p1, Lcom/tencent/open/web/security/a;->b:Z

    goto :goto_1

    .line 52
    :cond_0
    sget-object v0, Lcom/tencent/open/web/security/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/open/web/security/SecureJsInterface;->a:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/tencent/open/web/security/SecureJsInterface;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/tencent/open/web/security/JniInterface;->insetTextToArray(ILjava/lang/String;I)Z

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "curPosFromJS mKey: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/open/web/security/SecureJsInterface;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "position is illegal."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public customCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMD5FromNative()Ljava/lang/String;
    .locals 4

    const-string v0, "openSDK_LOG.SecureJsInterface"

    const-string v1, "-->get md5 form native"

    .line 108
    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 111
    :try_start_0
    invoke-static {v1}, Lcom/tencent/open/web/security/JniInterface;->getPWDKeyToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->getMD5FromNative, MD5= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->get md5 form native exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isPasswordEdit(Ljava/lang/String;)V
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->is pswd edit, flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.SecureJsInterface"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->is pswd edit exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "is pswd edit flag is illegal."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 80
    sput-boolean p1, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    goto :goto_2

    :cond_2
    if-ne p1, v0, :cond_3

    .line 82
    sput-boolean v0, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    :cond_3
    :goto_2
    return-void
.end method
