.class public Lcom/avos/avoscloud/AVACL;
.super Ljava/lang/Object;
.source "AVACL.java"


# static fields
.field private static publicTag:Ljava/lang/String; = "*"

.field private static readTag:Ljava/lang/String; = "read"

.field private static rolePrefix:Ljava/lang/String; = "role:"

.field private static writeTag:Ljava/lang/String; = "write"


# instance fields
.field private final permissionsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVACL;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    .line 43
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    iget-object p1, p1, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVUser;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private allowRead(ZLjava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 69
    sget-object p1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 71
    sget-object p1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private allowWrite(ZLjava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 84
    sget-object v0, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 86
    sget-object p1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 338
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/AVACL;->rolePrefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avoscloud/AVACL;->rolePrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isReadAllowed(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    sget-object v1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    .line 78
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWriteAllowed(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    sget-object v1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    .line 93
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private mapForKey(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    iget-object p2, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static parseACLWithPublicAccess(ZZ)Lcom/avos/avoscloud/AVACL;
    .locals 1

    .line 235
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVACL;-><init>()V

    .line 236
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVACL;->setPublicReadAccess(Z)V

    .line 237
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVACL;->setPublicWriteAccess(Z)V

    return-object v0
.end method

.method private roleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 129
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "role:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static setDefaultACL(Lcom/avos/avoscloud/AVACL;Z)V
    .locals 1

    if-eqz p0, :cond_1

    .line 218
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/PaasClient;->setDefaultACL(Lcom/avos/avoscloud/AVACL;)V

    if-eqz p1, :cond_0

    .line 220
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    .line 221
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object p1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p1, p0, v0}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 223
    invoke-virtual {p1, p0, v0}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V

    :cond_0
    return-void

    .line 217
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null ACL."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getACLMap()Ljava/util/Map;
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

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 333
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVACL;->getPermissionsById()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ACL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getPermissionsById()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    return-object v0
.end method

.method public getPublicReadAccess()Z
    .locals 1

    .line 100
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPublicWriteAccess()Z
    .locals 1

    .line 107
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Lcom/avos/avoscloud/AVUser;)Z
    .locals 0

    .line 116
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVACL;->getReadAccess(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getReadAccess(Ljava/lang/String;)Z
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getRoleReadAccess(Lcom/avos/avoscloud/AVRole;)Z
    .locals 0

    .line 142
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->roleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVACL;->getRoleReadAccess(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getRoleReadAccess(Ljava/lang/String;)Z
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getRoleWriteAccess(Lcom/avos/avoscloud/AVRole;)Z
    .locals 0

    .line 169
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->roleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVACL;->getRoleWriteAccess(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getRoleWriteAccess(Ljava/lang/String;)Z
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getWriteAccess(Lcom/avos/avoscloud/AVUser;)Z
    .locals 0

    .line 191
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getWriteAccess(Ljava/lang/String;)Z
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setPublicReadAccess(Z)V
    .locals 1

    .line 245
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1

    .line 252
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    return-void
.end method

.method public setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 0

    .line 259
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Ljava/lang/String;Z)V

    return-void
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 0

    .line 266
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    return-void
.end method

.method public setRoleReadAccess(Lcom/avos/avoscloud/AVRole;Z)V
    .locals 0

    .line 277
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVACL;->setRoleReadAccess(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRoleReadAccess(Ljava/lang/String;Z)V
    .locals 0

    .line 288
    invoke-static {p1}, Lcom/avos/avoscloud/AVACL;->getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    return-void
.end method

.method public setRoleWriteAccess(Lcom/avos/avoscloud/AVRole;Z)V
    .locals 0

    .line 299
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVACL;->setRoleWriteAccess(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRoleWriteAccess(Ljava/lang/String;Z)V
    .locals 0

    .line 310
    invoke-static {p1}, Lcom/avos/avoscloud/AVACL;->getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    return-void
.end method

.method public setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 0

    .line 317
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 0

    .line 324
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    return-void
.end method
