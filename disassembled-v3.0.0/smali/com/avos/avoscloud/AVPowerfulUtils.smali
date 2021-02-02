.class public Lcom/avos/avoscloud/AVPowerfulUtils;
.super Ljava/lang/Object;
.source "AVPowerfulUtils.java"


# static fields
.field private static final AV_CLASSNAME:Ljava/lang/String; = "dbClassName"

.field private static final ENDPOINT:Ljava/lang/String; = "endpoint"

.field private static powerfulTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPowerfulUtils;->powerfulTable:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/avos/avoscloud/AVPowerfulUtils;->createTable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "endpoint"

    .line 24
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dbClassName"

    .line 25
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object p1, Lcom/avos/avoscloud/AVPowerfulUtils;->powerfulTable:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static createTable()V
    .locals 3

    .line 32
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "users"

    const-string v2, "_User"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {v2, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-class v0, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "roles"

    const-string v2, "_Role"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {v2, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-class v0, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "files"

    const-string v2, "_File"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {v2, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 47
    sget-object v0, Lcom/avos/avoscloud/AVPowerfulUtils;->powerfulTable:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/avos/avoscloud/AVPowerfulUtils;->powerfulTable:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static getAVClassEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "endpoint"

    .line 57
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 60
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v3

    const-string p1, "classes/%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v3

    aput-object p2, p0, v2

    const-string p1, "classes/%s/%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 66
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v3

    aput-object p2, p1, v2

    const-string p0, "%s/%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static getAVClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "dbClassName"

    .line 143
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAVRoleEndpoint(Lcom/avos/avoscloud/AVRole;)Ljava/lang/String;
    .locals 3

    .line 83
    const-class v0, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endpoint"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRole;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 85
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVRole;->getObjectId()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%s/%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getAVUserEndpoint(Lcom/avos/avoscloud/AVUser;)Ljava/lang/String;
    .locals 3

    .line 75
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endpoint"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%s/%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "/%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEndpoint(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEndpoint(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3

    .line 108
    instance-of v0, p0, Lcom/avos/avoscloud/AVUser;

    if-eqz v0, :cond_0

    .line 109
    check-cast p0, Lcom/avos/avoscloud/AVUser;

    .line 110
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVUserEndpoint(Lcom/avos/avoscloud/AVUser;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    instance-of v0, p0, Lcom/avos/avoscloud/AVRole;

    if-eqz v0, :cond_1

    .line 112
    check-cast p0, Lcom/avos/avoscloud/AVRole;

    .line 113
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVRoleEndpoint(Lcom/avos/avoscloud/AVRole;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_1
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_5

    .line 115
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "endpoint"

    .line 92
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "classes/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_0
    new-instance p0, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v0, "Blank class name"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getEndpointByAVClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 135
    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 139
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 148
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "users/%s/friendship/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFolloweesEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "users/%s/followees"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFollowersAndFollowees(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 160
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "users/%s/followersAndFollowees"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFollowersEndPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 152
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "users/%s/followers"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalIdFromRequestBody(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const-string v0, "body"

    .line 164
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "__internalId"

    .line 166
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
