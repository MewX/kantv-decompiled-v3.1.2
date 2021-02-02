.class Lcom/avos/avoscloud/AVSessionCacheHelper$SignatureCache;
.super Ljava/lang/Object;
.source "AVSessionCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSessionCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignatureCache"
.end annotation


# static fields
.field private static final SESSION_SIGNATURE_KEY:Ljava/lang/String; = "com.avos.avoscloud.session.signature"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSessionSignature(Ljava/lang/String;Lcom/avos/avoscloud/Signature;)V
    .locals 3

    .line 93
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper$SignatureCache;->getSessionSignatures()Ljava/util/Map;

    move-result-object v0

    .line 94
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 97
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.avos.avoscloud.session.signature"

    const-string v1, "sessionids"

    .line 95
    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static getSessionSignature(Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .locals 1

    .line 101
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper$SignatureCache;->getSessionSignatures()Ljava/util/Map;

    move-result-object v0

    .line 102
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Signature;

    return-object p0
.end method

.method private static getSessionSignatures()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "com.avos.avoscloud.session.signature"

    const-string v2, "sessionids"

    const-string v3, "{}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-class v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
