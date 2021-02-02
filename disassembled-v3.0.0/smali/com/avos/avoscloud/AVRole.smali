.class public final Lcom/avos/avoscloud/AVRole;
.super Lcom/avos/avoscloud/AVObject;
.source "AVRole.java"


# static fields
.field public static final AVROLE_ENDPOINT:Ljava/lang/String; = "roles"

.field public static final transient CREATOR:Landroid/os/Parcelable$Creator;

.field public static final className:Ljava/lang/String; = "_Role"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    sget-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    sput-object v0, Lcom/avos/avoscloud/AVRole;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "_Role"

    .line 22
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "_Role"

    .line 32
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/avos/avoscloud/AVRole;->name:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVRole;->acl:Lcom/avos/avoscloud/AVACL;

    .line 35
    iget-object v0, p0, Lcom/avos/avoscloud/AVRole;->acl:Lcom/avos/avoscloud/AVACL;

    if-eqz v0, :cond_0

    const-string v0, "name"

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is no default ACL,please provide an ACL for the role with AVRole(String name, AVACL acl) constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVACL;)V
    .locals 1

    const-string v0, "_Role"

    .line 49
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/avos/avoscloud/AVRole;->name:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 54
    iput-object p2, p0, Lcom/avos/avoscloud/AVRole;->acl:Lcom/avos/avoscloud/AVACL;

    const-string p2, "name"

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/avos/avoscloud/AVRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null ACL."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery<",
            "Lcom/avos/avoscloud/AVRole;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-class v1, Lcom/avos/avoscloud/AVRole;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/avos/avoscloud/AVRole;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoles()Lcom/avos/avoscloud/AVRelation;
    .locals 1

    const-string v0, "roles"

    .line 86
    invoke-super {p0, v0}, Lcom/avos/avoscloud/AVObject;->getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;

    move-result-object v0

    return-object v0
.end method

.method public getUsers()Lcom/avos/avoscloud/AVRelation;
    .locals 1

    const-string v0, "users"

    .line 97
    invoke-super {p0, v0}, Lcom/avos/avoscloud/AVObject;->getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 124
    iput-object p1, p0, Lcom/avos/avoscloud/AVRole;->name:Ljava/lang/String;

    const-string v0, "name"

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
