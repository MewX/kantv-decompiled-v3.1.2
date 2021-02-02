.class Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;
.super Ljava/lang/Object;
.source "AVSessionCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSessionCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IMSessionTokenCache"
.end annotation


# static fields
.field private static final SESSION_TOKEN_KEY:Ljava/lang/String; = "com.avos.avoscloud.session.token"

.field private static imSessionTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->imSessionTokenMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addIMSessionToken(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 157
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->isAutoOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "com.avos.avoscloud.session.token"

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object p1

    .line 161
    invoke-static {p0}, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->getSessionTokenExpiredAtKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-virtual {p1, v1, p0, p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    sget-object p2, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->imSessionTokenMap:Ljava/util/Map;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method static getIMSessionToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 123
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->isAutoOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v2, "com.avos.avoscloud.session.token"

    invoke-virtual {v0, v2, p0, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    .line 129
    invoke-static {p0}, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->getSessionTokenExpiredAtKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-virtual {v3, v2, p0, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    return-object v0

    .line 141
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->imSessionTokenMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->imSessionTokenMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method private static getSessionTokenExpiredAtKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".expiredAt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static removeIMSessionToken(Ljava/lang/String;)V
    .locals 2

    .line 174
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->isAutoOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "com.avos.avoscloud.session.token"

    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    .line 177
    invoke-static {p0}, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->getSessionTokenExpiredAtKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;->imSessionTokenMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
