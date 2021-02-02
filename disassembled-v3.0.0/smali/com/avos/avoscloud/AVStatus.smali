.class public Lcom/avos/avoscloud/AVStatus;
.super Lcom/avos/avoscloud/AVObject;
.source "AVStatus.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    ignores = {
        "acl",
        "updatedAt",
        "uuid"
    }
.end annotation

.annotation runtime Lcom/avos/avoscloud/AVClassName;
    value = "_Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;
    }
.end annotation


# static fields
.field private static final AV_CLASS_NAME:Ljava/lang/String; = "_FeedStatus"

.field public static final transient CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_COUNT:I = 0x64

.field public static final IMAGE_TAG:Ljava/lang/String; = "image"

.field public static final INBOX_PRIVATE:Ljava/lang/String; = "private"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INBOX_TIMELINE:Ljava/lang/String; = "default"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_TAG:Ljava/lang/String; = "message"

.field public static final STATUS_ENDPOINT:Ljava/lang/String; = "statuses"

.field private static final UNREAD_TAG:Ljava/lang/String; = "unread"

.field static ignoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdAt:Ljava/lang/String;

.field private final dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private inboxType:Ljava/lang/String;

.field private messageId:J

.field private query:Lcom/avos/avoscloud/AVQuery;

.field private source:Lcom/avos/avoscloud/AVObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "objectId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "updatedAt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "createdAt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "inboxType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messageId"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVStatus;->ignoreList:Ljava/util/List;

    .line 61
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statuses"

    const-string v2, "_Status"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v2, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->registerSubclass(Ljava/lang/Class;)V

    .line 1564
    new-instance v0, Lcom/avos/avoscloud/AVStatus$10;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus$10;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 56
    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1516
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    .line 56
    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    .line 1517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 1518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    .line 1519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    .line 1521
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1522
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1525
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVObject;

    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    return-void
.end method

.method private static checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z
    .locals 2

    .line 88
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static checkStatusId(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)Z
    .locals 1

    .line 700
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 702
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/avos/avoscloud/StatusCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static createStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVStatus;
    .locals 1

    .line 71
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 72
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatus;->setImageUrl(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVStatus;->setMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createStatusWithData(Ljava/util/Map;)Lcom/avos/avoscloud/AVStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVStatus;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 79
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatus;->setData(Ljava/util/Map;)V

    return-object v0
.end method

.method private static currentUserBody()Ljava/util/Map;
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

    .line 887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 888
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "user"

    .line 889
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static deleteInboxStatus(JLjava/lang/String;Lcom/avos/avoscloud/AVUser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 298
    new-instance v5, Lcom/avos/avoscloud/AVStatus$2;

    invoke-direct {v5}, Lcom/avos/avoscloud/AVStatus$2;-><init>()V

    const/4 v0, 0x1

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVStatus;->deleteInboxStatus(ZJLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 311
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    throw p0
.end method

.method private static deleteInboxStatus(ZJLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 7

    if-eqz p4, :cond_0

    .line 333
    invoke-virtual {p4}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p4

    .line 334
    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    .line 335
    invoke-static {p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "messageId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "inboxType"

    .line 346
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "owner"

    .line 347
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "subscribe/statuses/inbox"

    .line 350
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getEncodeUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    new-instance v4, Lcom/avos/avoscloud/AVStatus$3;

    invoke-direct {v4, p5}, Lcom/avos/avoscloud/AVStatus$3;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 338
    new-instance p0, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0xd3

    const-string p2, "Owner can\'t be null"

    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 339
    invoke-virtual {p5, p0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method

.method public static deleteInboxStatusInBackground(JLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 6

    const/4 v0, 0x0

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 326
    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVStatus;->deleteInboxStatus(ZJLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public static deleteStatusWithIDInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method private static deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 8

    const/4 v0, 0x0

    .line 257
    invoke-static {v0}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 259
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 264
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 266
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 270
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "statuses/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVStatus$1;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVStatus$1;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    const/4 v7, 0x0

    move v4, p0

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInboxPrivteStatuses(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 696
    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p0

    move-wide v3, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/avos/avoscloud/AVStatus;->getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V

    return-void
.end method

.method public static getInboxStatusesInBackground(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p0

    move-wide v3, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/avos/avoscloud/AVStatus;->getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V

    return-void
.end method

.method public static getInboxStatusesWithInboxType(JJLjava/lang/String;Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    invoke-static/range {p5 .. p5}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 655
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-object/from16 v8, p4

    .line 656
    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    const-string v1, "subscribe/statuses"

    move-object/from16 v2, p5

    .line 657
    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    return-void
.end method

.method public static getInboxUnreadStatusesCountInBackgroud(Lcom/avos/avoscloud/CountCallback;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/avos/avoscloud/AVStatus;->getInboxUnreadStatusesCountWithInboxTypeInBackgroud(JJLjava/lang/String;Lcom/avos/avoscloud/CountCallback;)V

    return-void
.end method

.method public static getInboxUnreadStatusesCountWithInboxTypeInBackgroud(JJLjava/lang/String;Lcom/avos/avoscloud/CountCallback;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p5

    const/4 v1, 0x0

    .line 683
    invoke-static {v1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 685
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 689
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-wide v3, p0

    move-wide v5, p2

    move-object/from16 v9, p4

    .line 690
    invoke-static/range {v2 .. v12}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v1

    const-string v2, "subscribe/statuses/count"

    .line 691
    invoke-static {v2, v1, v0}, Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V

    return-void
.end method

.method static getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/CountCallback;",
            ")V"
        }
    .end annotation

    .line 619
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v2, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    new-instance v5, Lcom/avos/avoscloud/AVStatus$5;

    invoke-direct {v5, p2}, Lcom/avos/avoscloud/AVStatus$5;-><init>(Lcom/avos/avoscloud/CountCallback;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method static getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/StatusListCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 583
    new-instance v0, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 586
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/avos/avoscloud/AVStatus$4;

    invoke-direct {v6, p2}, Lcom/avos/avoscloud/AVStatus$4;-><init>(Lcom/avos/avoscloud/StatusListCallback;)V

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method static getStatusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 481
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "owner"

    .line 484
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-lez p0, :cond_0

    const-string p0, "sinceId"

    .line 486
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmp-long p0, p3, v1

    if-lez p0, :cond_1

    const-string p0, "limit"

    .line 489
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    cmp-long p0, p5, v1

    if-lez p0, :cond_2

    const-string p0, "maxId"

    .line 492
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_2
    invoke-static {p7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "inboxType"

    .line 495
    invoke-interface {v0, p0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p8, :cond_4

    const-string p0, "where"

    .line 498
    invoke-static {p8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p9, :cond_5

    const-string p0, "include"

    const-string p1, "source"

    .line 501
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p10, :cond_6

    const-string p0, "count"

    const-wide/16 p1, 0x1

    .line 504
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 507
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-object v0
.end method

.method public static getStatusWithIdInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)V
    .locals 12

    .line 710
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVStatus;->checkStatusId(Ljava/lang/String;Lcom/avos/avoscloud/StatusCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 713
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 716
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    .line 717
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const-string p0, "statuses/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 718
    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    .line 719
    new-instance v4, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v4, v0}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    .line 720
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/avos/avoscloud/AVStatus$6;

    invoke-direct {v7, p1}, Lcom/avos/avoscloud/AVStatus$6;-><init>(Lcom/avos/avoscloud/StatusCallback;)V

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static getStatuses(JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-static/range {p4 .. p4}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide v2, p0

    move-wide v4, p2

    .line 381
    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    const-string v1, "statuses"

    move-object/from16 v2, p4

    .line 382
    invoke-static {v1, v0, v2}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    return-void
.end method

.method public static getStatusesFromCurrentUserWithType(Ljava/lang/String;JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    invoke-static {p5}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVStatus;->sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;

    move-result-object p0

    const-string p1, "statuses"

    .line 421
    invoke-static {p1, p0, p5}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    return-void
.end method

.method public static getStatusesFromUser(Ljava/lang/String;JJLcom/avos/avoscloud/StatusListCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    .line 437
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->invalidObjectIdException()Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/avos/avoscloud/StatusListCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 441
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/AVStatus;->sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;

    move-result-object p0

    const-string p1, "statuses"

    .line 442
    invoke-static {p1, p0, p5}, Lcom/avos/avoscloud/AVStatus;->getStatusImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/StatusListCallback;)V

    return-void
.end method

.method public static getUnreadStatusesCountInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CountCallback;)V
    .locals 12

    const/4 v0, 0x0

    .line 663
    invoke-static {v0}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 665
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 669
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v8, p0

    .line 670
    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->getStatusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object p0

    const-string v0, "subscribe/statuses/count"

    .line 671
    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V

    return-void
.end method

.method public static inboxQuery(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Lcom/avos/avoscloud/AVStatusQuery;
    .locals 1

    .line 916
    new-instance v0, Lcom/avos/avoscloud/AVStatusQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatusQuery;-><init>()V

    .line 917
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVStatusQuery;->setInboxType(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatusQuery;->setOwner(Lcom/avos/avoscloud/AVUser;)V

    const-string p0, "subscribe/statuses"

    .line 919
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatusQuery;->setExternalQueryPath(Ljava/lang/String;)V

    return-object v0
.end method

.method static postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVStatus;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .line 742
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v5, Lcom/avos/avoscloud/AVStatus$7;

    invoke-direct {v5, p0, p2}, Lcom/avos/avoscloud/AVStatus$7;-><init>(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V

    .line 759
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatus;->getObjectId()Ljava/lang/String;

    move-result-object v6

    const-string v1, "statuses"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 743
    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static processStatus(Ljava/lang/String;Lcom/avos/avoscloud/AVStatus;)V
    .locals 2

    .line 540
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 541
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVStatus;->processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing json data error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static processStatusCount(Ljava/lang/String;)I
    .locals 3

    .line 606
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "unread"

    .line 609
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing json data error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V
    .locals 4

    .line 550
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    .line 551
    iget-object v0, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    const-string v1, "objectId"

    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    .line 552
    iget-wide v0, p1, Lcom/avos/avoscloud/AVStatus;->messageId:J

    const-string v2, "messageId"

    invoke-static {p0, v2, v0, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONInteger(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/avos/avoscloud/AVStatus;->messageId:J

    .line 553
    iget-object v0, p1, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    const-string v1, "inboxType"

    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 554
    iget-object v0, p1, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    const-string v1, "createdAt"

    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    .line 556
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVStatus;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVStatus;->setImageUrl(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVStatus;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVStatus;->setMessage(Ljava/lang/String;)V

    const-string v0, "source"

    const-string v1, ""

    .line 560
    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 564
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    iput-object v1, p1, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing json data error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 571
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 572
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 573
    sget-object v1, Lcom/avos/avoscloud/AVStatus;->ignoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p1, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method static processStatusResultList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/AVStatus;",
            ">;"
        }
    .end annotation

    .line 513
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 519
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing json data error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    if-nez v0, :cond_1

    .line 525
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "results"

    .line 528
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    .line 529
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 530
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 531
    new-instance v2, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVStatus;-><init>()V

    .line 532
    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVStatus;->processStatusFromObject(Ljava/lang/Object;Lcom/avos/avoscloud/AVStatus;)V

    .line 533
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static resetUnreadStatusesCount(Ljava/lang/String;Lcom/avos/avoscloud/AVCallback;)V
    .locals 12

    const/4 v0, 0x0

    .line 1535
    invoke-static {v0}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1537
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 1542
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, p0

    .line 1545
    invoke-static/range {v1 .. v11}, Lcom/avos/avoscloud/AVStatus;->getStatusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object p0

    .line 1546
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1547
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVStatus$9;

    invoke-direct {v2, p1}, Lcom/avos/avoscloud/AVStatus$9;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    const-string p1, "subscribe/statuses/resetUnreadCount"

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method

.method public static sendPrivateStatusInBackgroud(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3

    .line 872
    invoke-static {p2}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 877
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "className"

    const-string v2, "_User"

    .line 878
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "objectId"

    .line 880
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "where"

    .line 881
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object p1, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 883
    invoke-static {p0, p1, p2}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public static sendStatusToFollowersInBackgroud(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3

    .line 847
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "className"

    const-string v2, "_Follower"

    .line 853
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keys"

    const-string v2, "follower"

    .line 854
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-static {}, Lcom/avos/avoscloud/AVStatus;->currentUserBody()Ljava/util/Map;

    move-result-object v1

    const-string v2, "where"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 857
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    .line 858
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 857
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 860
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method static sourceQueryMap(Ljava/lang/String;JJ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "source"

    .line 387
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 388
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 390
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "where"

    .line 391
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "include"

    .line 392
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const-string p0, "skip"

    .line 394
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmp-long p0, p3, v0

    if-lez p0, :cond_1

    const-string p0, "count"

    .line 397
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 400
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method static statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVStatus;",
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

    .line 764
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 765
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 766
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 767
    iget-object p0, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    const-string v2, "source"

    if-eqz p0, :cond_0

    .line 768
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 770
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "data"

    .line 772
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "inboxType"

    .line 773
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "query"

    .line 774
    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static statusQuery(Lcom/avos/avoscloud/AVUser;)Lcom/avos/avoscloud/AVStatusQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 901
    new-instance v0, Lcom/avos/avoscloud/AVStatusQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVStatusQuery;-><init>()V

    const/4 v1, 0x1

    .line 902
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVStatusQuery;->setSelfQuery(Z)V

    const-string v1, "source"

    .line 903
    invoke-virtual {v0, v1, p0}, Lcom/avos/avoscloud/AVStatusQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    const-string p0, "statuses"

    .line 904
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVStatusQuery;->setExternalQueryPath(Ljava/lang/String;)V

    return-object v0
.end method

.method static statusQueryMap(Ljava/lang/String;JJJLjava/lang/String;Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "owner"

    .line 451
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-lez p0, :cond_0

    const-string p0, "skip"

    .line 453
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmp-long p0, p3, v1

    if-lez p0, :cond_1

    const-string p0, "limit"

    .line 456
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    cmp-long p0, p5, v1

    if-lez p0, :cond_2

    const-string p0, "maxId"

    .line 459
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_2
    invoke-static {p7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "inboxType"

    .line 462
    invoke-interface {v0, p0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p8, :cond_4

    const-string p0, "where"

    .line 465
    invoke-static {p8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p9, :cond_5

    const-string p0, "include"

    const-string p1, "source"

    .line 468
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p10, :cond_6

    const-string p0, "count"

    const-wide/16 p1, 0x1

    .line 471
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 474
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-object v0
.end method

.method static userClassName()Ljava/lang/String;
    .locals 1

    .line 67
    const-class v0, Lcom/avos/avoscloud/AVStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 929
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 938
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 947
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 956
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 965
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVStatus;->getObjectId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/AVStatus$8;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVStatus$8;-><init>(Lcom/avos/avoscloud/AVStatus;)V

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithId(ZLjava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 984
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 985
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public deleteEventually()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 995
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public deleteInBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 1009
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVStatus;->deleteStatusInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1128
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public deleteStatusInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVStatus;->deleteStatusWithIDInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/DeleteCallback;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1018
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 1023
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    .line 1024
    :cond_3
    check-cast p1, Lcom/avos/avoscloud/AVStatus;

    .line 1025
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1026
    iget-object p1, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    if-eqz p1, :cond_5

    return v1

    .line 1027
    :cond_4
    iget-object v2, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public fetch()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1037
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1046
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public fetchIfNeeded()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1055
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1064
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public fetchIfNeededInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1073
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1082
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1138
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1148
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAVFile(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVFile;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1283
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAVGeoPoint(Ljava/lang/String;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1293
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1298
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVObject;

    return-object p1
.end method

.method public getAVUser(Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1173
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1183
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/util/Map;
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

    .line 170
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1193
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1203
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "image"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInboxType()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1213
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1233
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1243
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1253
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    return-wide v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1273
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVRelation<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1318
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSource()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1328
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1348
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasSameId(Lcom/avos/avoscloud/AVObject;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1358
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public increment(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1368
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1378
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isFetchWhenSave()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1388
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method myQueryParameters(Lcom/avos/avoscloud/AVQuery;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 782
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 783
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getWhere()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 784
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getWhere()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "where"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    .line 787
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSkip()I

    move-result v1

    if-lez v1, :cond_2

    .line 790
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSkip()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 793
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    const-string v2, "order"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 796
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getInclude()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "include"

    .line 797
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 800
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVQuery;->getSelectedKeys()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "keys"

    .line 801
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    const-string p3, "inboxType"

    .line 188
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 189
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 190
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, "messageId"

    .line 192
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 193
    instance-of p1, p2, Ljava/lang/Number;

    if-eqz p1, :cond_3

    .line 194
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    goto :goto_0

    :cond_1
    const-string p3, "source"

    .line 196
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 197
    instance-of p1, p2, Lcom/avos/avoscloud/AVObject;

    if-eqz p1, :cond_3

    .line 198
    check-cast p2, Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    goto :goto_0

    .line 201
    :cond_2
    iget-object p3, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1408
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public refreshInBackground(Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/RefreshCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1418
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public refreshInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1428
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1438
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1448
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveEventually()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1468
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public saveInBackground()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1478
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1488
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sendInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3

    .line 818
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->checkCurrentUser(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    if-nez v0, :cond_1

    .line 823
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVStatus;->sendStatusToFollowersInBackgroud(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V

    return-void

    .line 827
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 828
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVStatus;->myQueryParameters(Lcom/avos/avoscloud/AVQuery;)Ljava/util/Map;

    move-result-object v1

    .line 829
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 830
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 833
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    .line 834
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    .line 833
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/avos/avoscloud/AVStatus;->statusBody(Lcom/avos/avoscloud/AVStatus;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 836
    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public sendInBackgroundWithBlock(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 814
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus;->sendInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1498
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/Map;)V
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

    .line 166
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setFetchWhenSave(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "image"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInboxType(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 142
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected setMessageId(J)V
    .locals 0

    .line 226
    iput-wide p1, p0, Lcom/avos/avoscloud/AVStatus;->messageId:J

    return-void
.end method

.method public setQuery(Lcom/avos/avoscloud/AVQuery;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->query:Lcom/avos/avoscloud/AVQuery;

    return-void
.end method

.method public setSource(Lcom/avos/avoscloud/AVObject;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    return-void
.end method

.method public toObject()Lcom/avos/avoscloud/AVObject;
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    const-string v1, "_Status"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVStatus [, objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1508
    iget-object p2, p0, Lcom/avos/avoscloud/AVStatus;->inboxType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1509
    iget-object p2, p0, Lcom/avos/avoscloud/AVStatus;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1510
    iget-object p2, p0, Lcom/avos/avoscloud/AVStatus;->objectId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1511
    iget-object p2, p0, Lcom/avos/avoscloud/AVStatus;->dataMap:Ljava/util/Map;

    new-instance v0, Lcom/avos/avoscloud/ObjectValueFilter;

    invoke-direct {v0}, Lcom/avos/avoscloud/ObjectValueFilter;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2, v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1513
    iget-object p2, p0, Lcom/avos/avoscloud/AVStatus;->source:Lcom/avos/avoscloud/AVObject;

    new-array v0, v4, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
