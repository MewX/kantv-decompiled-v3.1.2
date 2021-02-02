.class public Lcom/avos/avoscloud/AVSMSOption;
.super Ljava/lang/Object;
.source "AVSMSOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;
    }
.end annotation


# instance fields
.field private applicationName:Ljava/lang/String;

.field private envMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private operation:Ljava/lang/String;

.field private signatureName:Ljava/lang/String;

.field private smsType:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

.field private templateName:Ljava/lang/String;

.field private ttl:I

.field private validationToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/avos/avoscloud/AVSMSOption;->smsType:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    return-void
.end method

.method private fillMap(Ljava/lang/String;ILjava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_0

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method private fillMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method


# virtual methods
.method getOptionMaps()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/avos/avoscloud/AVSMSOption;->applicationName:Ljava/lang/String;

    const-string v2, "name"

    invoke-direct {p0, v2, v1, v0}, Lcom/avos/avoscloud/AVSMSOption;->fillMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 31
    iget-object v1, p0, Lcom/avos/avoscloud/AVSMSOption;->operation:Ljava/lang/String;

    const-string v2, "op"

    invoke-direct {p0, v2, v1, v0}, Lcom/avos/avoscloud/AVSMSOption;->fillMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 32
    iget-object v1, p0, Lcom/avos/avoscloud/AVSMSOption;->templateName:Ljava/lang/String;

    const-string v2, "template"

    invoke-direct {p0, v2, v1, v0}, Lcom/avos/avoscloud/AVSMSOption;->fillMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 33
    iget-object v1, p0, Lcom/avos/avoscloud/AVSMSOption;->signatureName:Ljava/lang/String;

    const-string v2, "sign"

    invoke-direct {p0, v2, v1, v0}, Lcom/avos/avoscloud/AVSMSOption;->fillMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 34
    iget v1, p0, Lcom/avos/avoscloud/AVSMSOption;->ttl:I

    const-string v2, "ttl"

    invoke-direct {p0, v2, v1, v0}, Lcom/avos/avoscloud/AVSMSOption;->fillMap(Ljava/lang/String;ILjava/util/Map;)Ljava/util/Map;

    .line 35
    iget-object v1, p0, Lcom/avos/avoscloud/AVSMSOption;->validationToken:Ljava/lang/String;

    const-string v2, "validate_token"

    invoke-direct {p0, v2, v1, v0}, Lcom/avos/avoscloud/AVSMSOption;->fillMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 37
    iget-object v1, p0, Lcom/avos/avoscloud/AVSMSOption;->smsType:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smsType"

    invoke-direct {p0, v2, v1, v0}, Lcom/avos/avoscloud/AVSMSOption;->fillMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVSMSOption;->envMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/avos/avoscloud/AVSMSOption;->envMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/avos/avoscloud/AVSMSOption;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setEnvMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/avos/avoscloud/AVSMSOption;->envMap:Ljava/util/Map;

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/avos/avoscloud/AVSMSOption;->operation:Ljava/lang/String;

    return-void
.end method

.method public setSignatureName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/avos/avoscloud/AVSMSOption;->signatureName:Ljava/lang/String;

    return-void
.end method

.method public setSmsType(Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/avos/avoscloud/AVSMSOption;->smsType:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    return-void
.end method

.method public setTemplateName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/avos/avoscloud/AVSMSOption;->templateName:Ljava/lang/String;

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/avos/avoscloud/AVSMSOption;->ttl:I

    return-void
.end method

.method public setValidationToken(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/avos/avoscloud/AVSMSOption;->validationToken:Ljava/lang/String;

    return-void
.end method
