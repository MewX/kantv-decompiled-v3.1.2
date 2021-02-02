.class public Lcom/avos/avoscloud/AVUser;
.super Lcom/avos/avoscloud/AVObject;
.source "AVUser.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    asm = false
    ignores = {
        "query",
        "password"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    }
.end annotation


# static fields
.field private static final AUTHDATA_ATTR_MAIN_ACCOUNT:Ljava/lang/String; = "main_account"

.field private static final AUTHDATA_ATTR_UNIONID:Ljava/lang/String; = "unionid"

.field private static final AUTHDATA_ATTR_UNIONID_PLATFORM:Ljava/lang/String; = "platform"

.field public static final AVUSER_ENDPOINT:Ljava/lang/String; = "users"

.field public static final transient CREATOR:Landroid/os/Parcelable$Creator;

.field public static final FOLLOWEE_TAG:Ljava/lang/String; = "followee"

.field public static final FOLLOWER_TAG:Ljava/lang/String; = "follower"

.field public static final LOG_TAG:Ljava/lang/String; = "AVUser"

.field public static final SESSION_TOKEN_KEY:Ljava/lang/String; = "sessionToken"

.field public static final SMS_PHONE_NUMBER:Ljava/lang/String; = "mobilePhoneNumber"

.field public static final SMS_VALIDATE_TOKEN:Ljava/lang/String; = "validate_token"

.field public static final SNS_SINA_WEIBO:Ljava/lang/String; = "weibo"

.field public static final SNS_TENCENT_WEIBO:Ljava/lang/String; = "qq"

.field public static final SNS_TENCENT_WEIXIN:Ljava/lang/String; = "weixin"

.field private static final accessTokenTag:Ljava/lang/String; = "access_token"

.field private static final anonymousTag:Ljava/lang/String; = "anonymous"

.field private static final authDataTag:Ljava/lang/String; = "authData"

.field private static transient enableAutomatic:Z = false

.field private static final expiresAtTag:Ljava/lang/String; = "expires_at"

.field private static subClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anonymous:Z

.field private email:Ljava/lang/String;

.field private transient facebookToken:Ljava/lang/String;

.field private transient isNew:Z

.field private mobilePhoneNumber:Ljava/lang/String;

.field private transient needTransferFromAnonymousUser:Z

.field private transient password:Ljava/lang/String;

.field private transient qqWeiboToken:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private transient sinaWeiboToken:Ljava/lang/String;

.field private transient twitterToken:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2712
    sget-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    sput-object v0, Lcom/avos/avoscloud/AVUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 16
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$102(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVUser;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object p1
.end method

.method public static alwaysUseSubUserClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .line 2212
    sput-object p0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    return-void
.end method

.method public static associateWithAuthData(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, -0x1

    const-string p1, "NULL userInfo."

    .line 2446
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 2451
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUser;->authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "authData"

    .line 2452
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 2453
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2455
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2456
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    .line 2457
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method private static authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2217
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2218
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    const-string v3, "expires_at"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2221
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->platformUserIdTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    :cond_0
    iget-object p0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static becomeWithSessionToken(Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 774
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->becomeWithSessionToken(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    return-object p0
.end method

.method public static becomeWithSessionToken(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVUser;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 787
    new-array v1, v0, [Lcom/avos/avoscloud/AVUser;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 789
    new-instance v3, Lcom/avos/avoscloud/AVUser$10;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVUser$10;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, v0, v3, p1}, Lcom/avos/avoscloud/AVUser;->becomeWithSessionTokenInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 805
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 808
    aget-object p0, v1, v2

    return-object p0

    .line 806
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static becomeWithSessionTokenInBackground(Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .line 819
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->becomeWithSessionTokenInBackground(Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    return-void
.end method

.method public static becomeWithSessionTokenInBackground(Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 831
    invoke-static {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVUser;->becomeWithSessionTokenInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    return-void
.end method

.method private static becomeWithSessionTokenInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 837
    invoke-static {p3, p2}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 842
    :cond_0
    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVRequestParams;-><init>()V

    const-string v0, "session_token"

    .line 843
    invoke-virtual {v2, v0, p0}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 845
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$11;

    invoke-direct {v5, p3, p2}, Lcom/avos/avoscloud/AVUser$11;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    const-string v1, "users/me"

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Lcom/avos/avoscloud/AVUser;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2198
    :try_start_0
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ClassCast Exception"

    .line 2201
    invoke-static {p1, p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 5

    const-class v0, Lcom/avos/avoscloud/AVUser;

    monitor-enter v0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iput-object v1, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    .line 146
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 150
    :try_start_1
    sget-object p1, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    .line 151
    invoke-static {p0, p1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    :try_start_2
    sget-object v1, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 166
    :cond_3
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/avos/avoscloud/PaasClient;->setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z
    .locals 2

    .line 1856
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/16 v0, 0xce

    const-string v1, "No valid session token, make sure signUp or login has been called."

    .line 1858
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "username"

    .line 430
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 434
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "password"

    .line 435
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "email"

    .line 438
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 432
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank username."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 447
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank username and blank mobile phone number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 450
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "username"

    .line 451
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_2
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "password"

    .line 454
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_3
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "email"

    .line 457
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_4
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "mobilePhoneNumber"

    .line 460
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_5
    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "smsCode"

    .line 463
    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method private static currentUserArchivePath()Ljava/io/File;
    .locals 3

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPaasDocumentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/currentUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static disableAutomaticUser()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    return-void
.end method

.method public static dissociateAuthData(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "authData"

    .line 2579
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2581
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2584
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2585
    new-instance v0, Lcom/avos/avoscloud/AVUser$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVUser$39;-><init>(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2597
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0xce

    const-string v0, "the user object missing a valid session"

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static enableAutomaticUser()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    return-void
.end method

.method public static followeeQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 2042
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2045
    new-instance v0, Lcom/avos/avoscloud/AVFellowshipQuery;

    const-string v1, "_Followee"

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFellowshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string p1, "_User"

    .line 2046
    invoke-static {p1, p0}, Lcom/avos/avoscloud/AVUser;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    const-string p1, "user"

    invoke-virtual {v0, p1, p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    const-string p0, "followee"

    .line 2047
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->setFriendshipTag(Ljava/lang/String;)V

    return-object v0

    .line 2043
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank user objectId."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static followerQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 2002
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    new-instance v0, Lcom/avos/avoscloud/AVFellowshipQuery;

    const-string v1, "_Follower"

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFellowshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string p1, "_User"

    .line 2006
    invoke-static {p1, p0}, Lcom/avos/avoscloud/AVUser;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    const-string p1, "user"

    invoke-virtual {v0, p1, p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    const-string p0, "follower"

    .line 2007
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVFellowshipQuery;->setFriendshipTag(Ljava/lang/String;)V

    return-object v0

    .line 2003
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank user objectId."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static friendshipQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .line 2097
    new-instance v0, Lcom/avos/avoscloud/AVFriendshipQuery;

    sget-object v1, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    :cond_0
    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static friendshipQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .line 2110
    new-instance v0, Lcom/avos/avoscloud/AVFriendshipQuery;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getCurrentUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .line 176
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUser;->getCurrentUser(Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser(Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 188
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 191
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    goto :goto_2

    .line 193
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userArchiveExist()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    const-class v2, Lcom/avos/avoscloud/AVUser;

    monitor-enter v2

    .line 195
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "@type"

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_2

    .line 202
    :try_start_1
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVUser;

    .line 203
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 204
    invoke-static {v4, p0}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 209
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/avos/avoscloud/PaasClient;->setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 211
    :try_start_2
    sget-object v5, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 215
    :cond_2
    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 216
    invoke-static {v3, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    const/4 v3, 0x1

    .line 218
    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 222
    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 224
    :cond_4
    :goto_2
    sget-boolean v2, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 225
    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    const/4 p0, 0x0

    .line 226
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    :cond_5
    return-object v0
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .line 258
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUser;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getUserQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static isEnableAutomatic()Z
    .locals 1

    .line 134
    sget-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    return v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 347
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    return-object p0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 368
    new-array v1, v0, [Lcom/avos/avoscloud/AVUser;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 370
    new-instance v3, Lcom/avos/avoscloud/AVUser$2;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVUser$2;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v0, v3, p2}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 387
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 390
    aget-object p0, v1, v2

    return-object p0

    .line 388
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .line 405
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    return-void
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 425
    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    return-void
.end method

.method private static logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, ""

    .line 470
    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 472
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "username"

    .line 476
    invoke-virtual {p4, v1, p0, v0}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 477
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v7, Lcom/avos/avoscloud/AVUser$3;

    invoke-direct {v7, p4, p3}, Lcom/avos/avoscloud/AVUser$3;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static logInPath()Ljava/lang/String;
    .locals 1

    const-string v0, "login"

    return-object v0
.end method

.method public static logOut()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1029
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 1030
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/PaasClient;->setDefaultACL(Lcom/avos/avoscloud/AVACL;)V

    return-void
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 506
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    return-object p0
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 512
    new-array v1, v0, [Lcom/avos/avoscloud/AVUser;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 514
    new-instance v3, Lcom/avos/avoscloud/AVUser$4;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVUser$4;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v0, v3, p2}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 530
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 533
    aget-object p0, v1, v2

    return-object p0

    .line 531
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .line 538
    const-class v0, Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    return-void
.end method

.method public static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    return-void
.end method

.method private static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 548
    invoke-static {v0, p1, v0, p0, v0}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 550
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 554
    :cond_0
    invoke-virtual {p4, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$5;

    invoke-direct {v5, p4, p3}, Lcom/avos/avoscloud/AVUser$5;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 593
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    return-object p0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 609
    new-array v1, v0, [Lcom/avos/avoscloud/AVUser;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 610
    new-instance v3, Lcom/avos/avoscloud/AVUser$6;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVUser$6;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v0, v3, p2}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 626
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 629
    aget-object p0, v1, v2

    return-object p0

    .line 627
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .line 643
    const-class v0, Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    return-void
.end method

.method public static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 658
    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    return-void
.end method

.method private static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    .line 663
    invoke-static {v0, v0, v1, p0, p1}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 665
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 669
    :cond_0
    invoke-virtual {p4, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 670
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$7;

    invoke-direct {v5, p4, p3}, Lcom/avos/avoscloud/AVUser$7;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loginWithAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2238
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V

    return-void
.end method

.method public static loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    const/4 p1, -0x1

    const-string v0, "NULL userInfo."

    .line 2398
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    .line 2397
    invoke-virtual {p2, p0, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 2403
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2404
    invoke-static {p1}, Lcom/avos/avoscloud/AVUser;->authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "authData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2405
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2406
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/avos/avoscloud/AVUser$37;

    invoke-direct {v8, p0, p2, p1}, Lcom/avos/avoscloud/AVUser$37;-><init>(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "users"

    invoke-virtual/range {v3 .. v10}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_1

    if-eqz p3, :cond_0

    const-string p0, "illegal parameter. clazz must not null/empty."

    .line 2331
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_5

    .line 2335
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2341
    :cond_2
    invoke-static {p2}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_3

    const-string p0, "illegal parameter. platform must not null/empty."

    .line 2343
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_3
    return-void

    .line 2347
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2348
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2349
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "authData"

    .line 2350
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2352
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/avos/avoscloud/AVUser$36;

    invoke-direct {v8, p0, p3, p2, p1}, Lcom/avos/avoscloud/AVUser$36;-><init>(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "users"

    invoke-virtual/range {v3 .. v10}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    const-string p0, "illegal parameter. authdata must not null/empty."

    .line 2337
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_6
    return-void
.end method

.method public static loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_1

    if-eqz p6, :cond_0

    const-string p0, "illegal parameter. clazz must not null/empty."

    .line 2273
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_a

    .line 2277
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2283
    :cond_2
    invoke-static {p2}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p6, :cond_3

    const-string p0, "illegal parameter. platform must not null/empty."

    .line 2285
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_3
    return-void

    .line 2289
    :cond_4
    invoke-static {p3}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p6, :cond_5

    const-string p0, "illegal parameter. unionId must not null/empty."

    .line 2291
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_5
    return-void

    .line 2295
    :cond_6
    invoke-static {p4}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p6, :cond_7

    const-string p0, "illegal parameter. unionIdPlatform must not null/empty."

    .line 2297
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_7
    return-void

    :cond_8
    const-string v0, "unionid"

    .line 2301
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "platform"

    .line 2302
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_9

    .line 2304
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "main_account"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    :cond_9
    invoke-static {p0, p1, p2, p6}, Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V

    return-void

    :cond_a
    :goto_0
    if-eqz p6, :cond_b

    const-string p0, "illegal parameter. authdata must not null/empty."

    .line 2279
    invoke-static {v0, p0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_b
    return-void
.end method

.method public static loginWithAuthData(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback;",
            ")V"
        }
    .end annotation

    .line 2259
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V

    return-void
.end method

.method public static loginWithAuthData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback;",
            ")V"
        }
    .end annotation

    .line 2265
    const-class v0, Lcom/avos/avoscloud/AVUser;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;)V

    return-void
.end method

.method private markAnonymousUserTransfer()V
    .locals 1

    .line 2707
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2708
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    :cond_0
    return-void
.end method

.method protected static newAVUser()Lcom/avos/avoscloud/AVUser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">()TT;"
        }
    .end annotation

    .line 1021
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1008
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1012
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-object v0

    .line 1014
    :cond_0
    new-instance p1, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v0, "Create user instance failed."

    invoke-direct {p1, v0, p0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;>;"
        }
    .end annotation

    .line 1963
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1964
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1967
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 1968
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVFollowResponse;

    .line 1969
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1970
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1971
    iget-object v3, p1, Lcom/avos/avoscloud/AVFollowResponse;->followers:[Ljava/util/Map;

    const-string v4, "follower"

    invoke-direct {p0, v3, v1, v4}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 1972
    iget-object p1, p1, Lcom/avos/avoscloud/AVFollowResponse;->followees:[Ljava/util/Map;

    const-string v3, "followee"

    invoke-direct {p0, p1, v2, v3}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 1973
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .line 1952
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1953
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1956
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 1957
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVFollowResponse;

    .line 1958
    iget-object p1, p1, Lcom/avos/avoscloud/AVFollowResponse;->results:[Ljava/util/Map;

    invoke-direct {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1980
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 1981
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1982
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVUser;

    .line 1983
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refreshSessionToken(ZLcom/avos/avoscloud/LogInCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(Z",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 736
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser;->objectId:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "users/%s/refreshSessionToken"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 737
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 738
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v3

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/avos/avoscloud/AVUser$9;

    invoke-direct {v8, p0, p2}, Lcom/avos/avoscloud/AVUser$9;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, p1

    invoke-virtual/range {v3 .. v10}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 731
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0x68

    const-string v2, "current user is not login"

    invoke-direct {p1, v0, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_2
    return-void
.end method

.method public static requestEmailVerify(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1357
    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestEmailVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    return-void
.end method

.method public static requestEmailVerifyInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestEmailVerifyCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1373
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestEmailVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    return-void
.end method

.method private static requestEmailVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V
    .locals 10

    .line 1379
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1383
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    .line 1384
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1386
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const/4 v6, 0x0

    new-instance v7, Lcom/avos/avoscloud/AVUser$21;

    invoke-direct {v7, p2}, Lcom/avos/avoscloud/AVUser$21;-><init>(Lcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "requestEmailVerify"

    move v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1380
    :cond_1
    :goto_0
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x7d

    const-string v0, "Invalid Email"

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/RequestEmailVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public static requestLoginSmsCode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1503
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestLoginSmsCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1514
    new-instance v0, Lcom/avos/avoscloud/AVUser$24;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVUser$24;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1527
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1528
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static requestLoginSmsCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1539
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method public static requestLoginSmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1550
    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method private static requestLoginSmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 9

    .line 1557
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1558
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1564
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mobilePhoneNumber"

    .line 1565
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "validate_token"

    .line 1567
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    :cond_1
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1571
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVUser$25;

    invoke-direct {v6, p3}, Lcom/avos/avoscloud/AVUser$25;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "requestLoginSmsCode"

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1559
    :cond_2
    :goto_0
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x7f

    const-string p2, "Invalid Phone Number"

    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public static requestMobilePhoneVerify(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1410
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestMobilePhoneVerify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1420
    new-instance v0, Lcom/avos/avoscloud/AVUser$22;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVUser$22;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1433
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1434
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static requestMobilePhoneVerifyInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1445
    invoke-static {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method public static requestMobilePhoneVerifyInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1457
    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method private static requestMobilePhoneVerifyInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 9

    .line 1464
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1465
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1471
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mobilePhoneNumber"

    .line 1472
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "validate_token"

    .line 1474
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :cond_1
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1478
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVUser$23;

    invoke-direct {v6, p3}, Lcom/avos/avoscloud/AVUser$23;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "requestMobilePhoneVerify"

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1466
    :cond_2
    :goto_0
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x7f

    const-string p2, "Invalid Phone Number"

    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1071
    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V

    return-void
.end method

.method public static requestPasswordResetBySmsCode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1187
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestPasswordResetBySmsCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1198
    new-instance v0, Lcom/avos/avoscloud/AVUser$17;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVUser$17;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1212
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1213
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1224
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method public static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1235
    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    return-void
.end method

.method protected static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 9

    .line 1242
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1243
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mobilePhoneNumber"

    .line 1250
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "validate_token"

    .line 1252
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    :cond_1
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1256
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVUser$18;

    invoke-direct {v6, p3}, Lcom/avos/avoscloud/AVUser$18;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "requestPasswordResetBySmsCode"

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1244
    :cond_2
    :goto_0
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x7f

    const-string p2, "Invalid Phone Number"

    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1090
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V

    return-void
.end method

.method private static requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 10

    .line 1096
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    .line 1097
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    new-instance v7, Lcom/avos/avoscloud/AVUser$14;

    invoke-direct {v7, p2}, Lcom/avos/avoscloud/AVUser$14;-><init>(Lcom/avos/avoscloud/RequestPasswordResetCallback;)V

    const-string v3, "requestPasswordReset"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static resetPasswordBySmsCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1285
    new-instance v0, Lcom/avos/avoscloud/AVUser$19;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVUser$19;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V

    .line 1298
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1299
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1312
    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V

    return-void
.end method

.method protected static resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 9

    .line 1319
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1325
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "resetPasswordBySmsCode/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1327
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "password"

    .line 1328
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVUser$20;

    invoke-direct {v6, p3}, Lcom/avos/avoscloud/AVUser$20;-><init>(Lcom/avos/avoscloud/UpdatePasswordCallback;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1320
    :cond_1
    :goto_0
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x7f

    const-string p2, "Invalid Verify Code"

    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 1321
    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method static setEnableAutomatic(Z)V
    .locals 0

    .line 93
    sput-boolean p0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    return-void
.end method

.method private signUp(ZLcom/avos/avoscloud/SignUpCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1727
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->save()V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 1728
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    .line 1730
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1734
    :cond_0
    new-instance p1, Lcom/avos/avoscloud/AVUser$29;

    invoke-direct {p1, p0, p2}, Lcom/avos/avoscloud/AVUser$29;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/SignUpCallback;)V

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 887
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    return-object p0
.end method

.method public static signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 905
    new-array v1, v0, [Lcom/avos/avoscloud/AVUser;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 906
    new-instance v3, Lcom/avos/avoscloud/AVUser$12;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVUser$12;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v0, p2, v3}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    .line 923
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 926
    aget-object p0, v1, v2

    return-object p0

    .line 924
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .line 941
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    return-void
.end method

.method public static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 957
    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    return-void
.end method

.method private static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 963
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p0, "SMS Code can\'t be empty"

    if-eqz p4, :cond_0

    .line 965
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, v1, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 968
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    .line 972
    invoke-static {v1, v1, v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 974
    invoke-static {p3, p4}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    .line 978
    :cond_2
    invoke-virtual {p3, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 979
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$13;

    invoke-direct {v5, p3, p4}, Lcom/avos/avoscloud/AVUser$13;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "usersByMobilePhone"

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V
    .locals 10

    .line 1154
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1157
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "users/%s/updatePassword"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "old_password"

    .line 1159
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "new_password"

    .line 1160
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 1162
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lcom/avos/avoscloud/AVUser$16;

    invoke-direct {v7, p0, p3}, Lcom/avos/avoscloud/AVUser$16;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/UpdatePasswordCallback;)V

    .line 1176
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v9

    move v5, p4

    .line 1162
    invoke-virtual/range {v2 .. v9}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1155
    :cond_1
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :goto_1
    return-void
.end method

.method private static userArchiveExist()Z
    .locals 1

    .line 58
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static userClassName()Ljava/lang/String;
    .locals 1

    .line 232
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static userFromQQWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1

    .line 1849
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1850
    iput-object p0, v0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 1851
    iput-object p1, v0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method static userFromSinaWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1

    .line 1842
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1843
    iput-object p0, v0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 1844
    iput-object p1, v0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public static verifyMobilePhone(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1597
    new-instance v0, Lcom/avos/avoscloud/AVUser$26;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVUser$26;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1610
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1611
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method public static verifyMobilePhoneInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1623
    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    return-void
.end method

.method private static verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 9

    .line 1630
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1636
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "verifyMobilePhone/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1637
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVUser$27;

    invoke-direct {v6, p2}, Lcom/avos/avoscloud/AVUser$27;-><init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p0

    invoke-virtual/range {v1 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1631
    :cond_1
    :goto_0
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x7f

    const-string v0, "Invalid Verify Code"

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 1632
    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method


# virtual methods
.method public associateWithAuthData(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    .line 2478
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2484
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    const-string p1, "illegal parameter. platform must not null/empty."

    .line 2486
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void

    .line 2490
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2491
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "authData"

    .line 2492
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2493
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 2494
    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2496
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2497
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    .line 2498
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    return-void

    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    const-string p1, "illegal parameter. authdata must not null/empty."

    .line 2480
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_5
    return-void
.end method

.method public associateWithAuthData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/SaveCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    .line 2503
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2509
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p6, :cond_1

    const-string p1, "illegal parameter. platform must not null/empty."

    .line 2511
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void

    .line 2515
    :cond_2
    invoke-static {p3}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p6, :cond_3

    const-string p1, "illegal parameter. unionId must not null/empty."

    .line 2517
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_3
    return-void

    .line 2521
    :cond_4
    invoke-static {p4}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p6, :cond_5

    const-string p1, "illegal parameter. unionIdPlatform must not null/empty."

    .line 2523
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_5
    return-void

    :cond_6
    const-string v0, "unionid"

    .line 2527
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "platform"

    .line 2528
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_7

    const/4 p3, 0x1

    .line 2530
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "main_account"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    :cond_7
    invoke-virtual {p0, p1, p2, p6}, Lcom/avos/avoscloud/AVUser;->associateWithAuthData(Ljava/util/Map;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V

    return-void

    :cond_8
    :goto_0
    if-eqz p6, :cond_9

    const-string p1, "illegal parameter. authdata must not null/empty."

    .line 2505
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_9
    return-void
.end method

.method public dissociateAuthData(Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 2

    .line 2547
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    const-string v0, "illegal parameter. platform must not null/empty."

    .line 2549
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "authData"

    .line 2553
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 2555
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2558
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2559
    new-instance v0, Lcom/avos/avoscloud/AVUser$38;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVUser$38;-><init>(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 2570
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0xce

    const-string v1, "the user object missing a valid session"

    invoke-direct {p1, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public followInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1877
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V

    return-void
.end method

.method public followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/FollowCallback;",
            ")V"
        }
    .end annotation

    .line 1882
    invoke-direct {p0, p3}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1885
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1888
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 1890
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVUser$31;

    invoke-direct {v2, p0, p3}, Lcom/avos/avoscloud/AVUser$31;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public followeeQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 2063
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2066
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->followeeQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object p1

    return-object p1

    .line 2064
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public followerQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVQuery<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 2022
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2025
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->followerQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object p1

    return-object p1

    .line 2023
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public friendshipQuery()Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1

    .line 2075
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->friendshipQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;

    move-result-object v0

    return-object v0
.end method

.method public friendshipQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .line 2086
    new-instance v0, Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v1, p0, Lcom/avos/avoscloud/AVUser;->objectId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookToken()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->facebookToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowersAndFolloweesInBackground(Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V
    .locals 7

    .line 2168
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2171
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersAndFollowees(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2172
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVUser$35;

    invoke-direct {v6, p0, p1}, Lcom/avos/avoscloud/AVUser$35;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public getFollowersInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2115
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2118
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2119
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVUser$33;

    invoke-direct {v6, p0, p1}, Lcom/avos/avoscloud/AVUser$33;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public getMobilePhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMyFolloweesInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2142
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2145
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFolloweesEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2146
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVUser$34;

    invoke-direct {v6, p0, p1}, Lcom/avos/avoscloud/AVUser$34;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getQQWeiboToken()Ljava/lang/String;
    .locals 1

    .line 1812
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getQqWeiboToken()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRoles()Ljava/util/List;
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVRole;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1708
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_Role"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    const-string v1, "users"

    .line 1709
    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1710
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVQuery;->find()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRolesInBackground(Lcom/avos/avoscloud/AVCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVCallback<",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVRole;",
            ">;>;)V"
        }
    .end annotation

    .line 1714
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_Role"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    const-string v1, "users"

    .line 1715
    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1716
    new-instance v1, Lcom/avos/avoscloud/AVUser$28;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/AVUser$28;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVCallback;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVQuery;->findInBackground(Lcom/avos/avoscloud/FindCallback;)V

    return-void
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSinaWeiboToken()Ljava/lang/String;
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterToken()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->twitterToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method protected headerMap()Ljava/util/Map;
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

    .line 1834
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1835
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1836
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    return v0
.end method

.method public isAuthenticated(Lcom/avos/avoscloud/AVCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 301
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void

    .line 304
    :cond_1
    new-instance v4, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v4}, Lcom/avos/avoscloud/AVRequestParams;-><init>()V

    .line 305
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    const-string v1, "session_token"

    invoke-virtual {v4, v1, v0}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/avos/avoscloud/AVUser$1;

    invoke-direct {v7, p0, p1}, Lcom/avos/avoscloud/AVUser$1;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVCallback;)V

    const-string v3, "users/me"

    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 288
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMobilePhoneVerified()Z
    .locals 1

    const-string v0, "mobilePhoneVerified"

    .line 1699
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    return v0
.end method

.method protected onDataSynchronized()V
    .locals 1

    const/4 v0, 0x0

    .line 1826
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 1827
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1828
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    :cond_0
    return-void
.end method

.method protected onSaveSuccess()V
    .locals 1

    .line 1817
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    const/4 v0, 0x0

    .line 1818
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 1819
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1820
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    :cond_0
    return-void
.end method

.method protected processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V
    .locals 8

    const-string v0, "authData"

    .line 2604
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2606
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    const-string v2, "anonymous"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 2607
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2608
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2610
    :cond_0
    iput-boolean v3, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    .line 2612
    :goto_0
    iput-boolean v3, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    :cond_1
    const-string v1, "qq"

    const-string v4, "weibo"

    if-eqz v0, :cond_5

    .line 2615
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "access_token"

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 2617
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2618
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    goto :goto_1

    .line 2620
    :cond_2
    iput-object v7, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 2622
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2624
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2625
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    goto :goto_2

    .line 2627
    :cond_3
    iput-object v7, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 2629
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 2630
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    goto :goto_3

    .line 2632
    :cond_4
    iput-boolean v3, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    :cond_5
    :goto_3
    if-eqz p1, :cond_7

    .line 2636
    iget-object v0, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2637
    iget-object p1, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    return-void

    .line 2640
    :cond_6
    iget-object v0, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2641
    iget-object p1, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1043
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected rebuildInstanceData()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    const-string v0, "sessionToken"

    .line 115
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    const-string v0, "username"

    .line 116
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    const-string v0, "email"

    .line 118
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    const-string v0, "mobilePhoneNumber"

    .line 119
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public refreshSessionToken()Lcom/avos/avoscloud/AVUser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">()TT;"
        }
    .end annotation

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    new-instance v1, Lcom/avos/avoscloud/AVUser$8;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVUser$8;-><init>(Lcom/avos/avoscloud/AVUser;Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/avos/avoscloud/AVUser;->refreshSessionToken(ZLcom/avos/avoscloud/LogInCallback;)V

    const/4 v1, 0x0

    .line 715
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public refreshSessionTokenInBackground(Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Lcom/avos/avoscloud/LogInCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 725
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->refreshSessionToken(ZLcom/avos/avoscloud/LogInCallback;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 1053
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->remove(Ljava/lang/String;)V

    return-void
.end method

.method protected setAnonymous(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    .line 1663
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    const-string v0, "email"

    .line 1664
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setFacebookToken(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->facebookToken:Ljava/lang/String;

    return-void
.end method

.method public setMobilePhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 1694
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    const-string v0, "mobilePhoneNumber"

    .line 1695
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setMobilePhoneVerified(Z)V
    .locals 1

    .line 1703
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "mobileVerified"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setNew(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    return-void
.end method

.method setNewFlag(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .line 1673
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    const-string v0, "password"

    .line 1674
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1675
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    return-void
.end method

.method setQQWeiboToken(Ljava/lang/String;)V
    .locals 0

    .line 1808
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-void
.end method

.method setQqWeiboToken(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-void
.end method

.method setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method setSinaWeiboToken(Ljava/lang/String;)V
    .locals 0

    .line 1800
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    return-void
.end method

.method setTwitterToken(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->twitterToken:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    .line 1684
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    const-string v0, "username"

    .line 1685
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1686
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    return-void
.end method

.method public signUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1760
    new-instance v0, Lcom/avos/avoscloud/AVUser$30;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVUser$30;-><init>(Lcom/avos/avoscloud/AVUser;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V

    .line 1774
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1775
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public signUpInBackground(Lcom/avos/avoscloud/SignUpCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1796
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V

    return-void
.end method

.method public unfollowInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 7

    .line 1915
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1918
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1919
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVUser$32;

    invoke-direct {v4, p0, p2}, Lcom/avos/avoscloud/AVUser$32;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 1123
    new-instance v0, Lcom/avos/avoscloud/AVUser$15;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVUser$15;-><init>(Lcom/avos/avoscloud/AVUser;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V

    .line 1137
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1138
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    throw p1
.end method

.method public updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1149
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V

    return-void
.end method
