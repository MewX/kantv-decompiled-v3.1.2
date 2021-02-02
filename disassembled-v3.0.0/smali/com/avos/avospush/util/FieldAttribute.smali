.class public Lcom/avos/avospush/util/FieldAttribute;
.super Ljava/lang/Object;
.source "FieldAttribute.java"


# instance fields
.field aliaName:Ljava/lang/String;

.field fieldName:Ljava/lang/String;

.field fieldType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field getterMethod:Ljava/lang/reflect/Method;

.field setterMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/avos/avospush/util/FieldAttribute;->aliaName:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    .line 25
    iput-object p4, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    .line 26
    iput-object p5, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 77
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to invoke getter:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAliaName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->aliaName:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->aliaName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldType:Ljava/lang/Class;

    return-object v0
.end method

.method public getGetterMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSetterMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 92
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to invoke setter:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAliaName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->aliaName:Ljava/lang/String;

    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldName:Ljava/lang/String;

    return-void
.end method

.method public setFieldType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->fieldType:Ljava/lang/Class;

    return-void
.end method

.method public setGetterMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->getterMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public setSetterMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/avos/avospush/util/FieldAttribute;->setterMethod:Ljava/lang/reflect/Method;

    return-void
.end method
