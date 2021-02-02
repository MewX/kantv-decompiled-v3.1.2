.class Lcom/avos/avoscloud/AVSessionCacheHelper;
.super Ljava/lang/Object;
.source "AVSessionCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVSessionCacheHelper$IMSessionTokenCache;,
        Lcom/avos/avoscloud/AVSessionCacheHelper$SignatureCache;,
        Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;
    }
.end annotation


# static fields
.field private static final SESSION_KEY:Ljava/lang/String; = "sessionids"

.field private static tagCacheInstance:Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v1, "sessionids"

    const-string v2, "com.avos.avoscloud.session.version"

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v2, "com.avos.avoscloud.session"

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    const-string v2, "com.avos.avoscloud.session.tag"

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getTagCacheInstance()Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;
    .locals 3

    const-class v0, Lcom/avos/avoscloud/AVSessionCacheHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/AVSessionCacheHelper;->tagCacheInstance:Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;-><init>(Lcom/avos/avoscloud/AVSessionCacheHelper$1;)V

    sput-object v1, Lcom/avos/avoscloud/AVSessionCacheHelper;->tagCacheInstance:Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;

    .line 27
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/AVSessionCacheHelper;->tagCacheInstance:Lcom/avos/avoscloud/AVSessionCacheHelper$SessionTagCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
