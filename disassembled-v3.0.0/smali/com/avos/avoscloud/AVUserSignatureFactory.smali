.class public Lcom/avos/avoscloud/AVUserSignatureFactory;
.super Ljava/lang/Object;
.source "AVUserSignatureFactory.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureFactory;


# static fields
.field private static final RTM_SIGN_ENDPOINT:Ljava/lang/String; = "rtm/sign"


# instance fields
.field private sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/avos/avoscloud/AVUserSignatureFactory;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method private parseSiparseSignaturegnature(Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1006

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/avos/avoscloud/Signature;

    invoke-direct {v0}, Lcom/avos/avoscloud/Signature;-><init>()V

    .line 73
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "nonce"

    .line 74
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/Signature;->setNonce(Ljava/lang/String;)V

    const-string v3, "signature"

    .line 75
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/Signature;->setSignature(Ljava/lang/String;)V

    const-string v3, "timestamp"

    .line 76
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/Signature;->setTimestamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    new-instance v0, Lcom/avos/avoscloud/SignatureFactory$SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "singnature content parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/SignatureFactory$SignatureException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    new-instance p1, Lcom/avos/avoscloud/SignatureFactory$SignatureException;

    const-string v0, "singnature is empty"

    invoke-direct {p1, v1, v0}, Lcom/avos/avoscloud/SignatureFactory$SignatureException;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createBlacklistSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createConversationSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createGroupSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .line 24
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/avos/avoscloud/AVUserSignatureFactory;->sessionToken:Ljava/lang/String;

    const-string v1, "session_token"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/avos/avoscloud/AVUserSignatureFactory$1;

    invoke-direct {v7, p0, p1}, Lcom/avos/avoscloud/AVUserSignatureFactory$1;-><init>(Lcom/avos/avoscloud/AVUserSignatureFactory;Ljava/lang/StringBuffer;)V

    const-string v3, "rtm/sign"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUserSignatureFactory;->parseSiparseSignaturegnature(Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/SignatureFactory$SignatureException;

    throw p1
.end method
