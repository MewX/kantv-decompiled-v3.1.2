.class public Lcom/avos/avoscloud/AVCloud;
.super Ljava/lang/Object;
.source "AVCloud.java"


# static fields
.field private static isProduction:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callFunction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 59
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "functions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {}, Lcom/avos/avoscloud/AVCloud;->getProductionHeader()Ljava/util/Map;

    move-result-object v4

    new-instance v6, Lcom/avos/avoscloud/AVCloud$1;

    invoke-direct {v6, v0}, Lcom/avos/avoscloud/AVCloud$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v5, 0x1

    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 72
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FunctionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/avos/avoscloud/FunctionCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "functions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {}, Lcom/avos/avoscloud/AVCloud;->getProductionHeader()Ljava/util/Map;

    move-result-object v3

    new-instance v5, Lcom/avos/avoscloud/AVCloud$2;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVCloud$2;-><init>(Lcom/avos/avoscloud/FunctionCallback;)V

    const/4 v4, 0x0

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static convertCloudResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 123
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "result"

    .line 124
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 126
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 127
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 129
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error during response parse"

    .line 135
    invoke-static {v0, p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static getProductionHeader()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    sget-boolean v1, Lcom/avos/avoscloud/AVCloud;->isProduction:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "X-LC-Prod"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static isProductionMode()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/avos/avoscloud/AVCloud;->isProduction:Z

    return v0
.end method

.method public static rpcFunction(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 148
    new-instance v1, Lcom/avos/avoscloud/AVCloud$3;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVCloud$3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v1}, Lcom/avos/avoscloud/AVCloud;->rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;ZLcom/avos/avoscloud/FunctionCallback;)V

    .line 163
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;Lcom/avos/avoscloud/FunctionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/avos/avoscloud/FunctionCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVCloud;->rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;ZLcom/avos/avoscloud/FunctionCallback;)V

    return-void
.end method

.method private static rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;ZLcom/avos/avoscloud/FunctionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/avos/avoscloud/FunctionCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 175
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulCloudData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->cloudInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/avos/avoscloud/AVCloud;->getProductionHeader()Ljava/util/Map;

    move-result-object v3

    new-instance v5, Lcom/avos/avoscloud/AVCloud$4;

    invoke-direct {v5, p3}, Lcom/avos/avoscloud/AVCloud$4;-><init>(Lcom/avos/avoscloud/FunctionCallback;)V

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static setProductionMode(Z)V
    .locals 0

    .line 43
    sput-boolean p0, Lcom/avos/avoscloud/AVCloud;->isProduction:Z

    return-void
.end method
