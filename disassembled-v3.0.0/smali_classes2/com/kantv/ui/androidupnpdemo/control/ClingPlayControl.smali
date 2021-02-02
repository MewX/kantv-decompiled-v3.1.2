.class public Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;
.super Ljava/lang/Object;
.source "ClingPlayControl.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/IPlayControl;


# static fields
.field private static final DIDL_LITE_FOOTER:Ljava/lang/String; = "</DIDL-Lite>"

.field private static final DIDL_LITE_HEADER:Ljava/lang/String; = "<?xml version=\"1.0\"?><DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\">"

.field private static final RECEIVE_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ClingPlayControl"


# instance fields
.field private mCurrentState:I

.field private mVolumeLastTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 51
    iput v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->mCurrentState:I

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setAVTransportURI(Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method private createItemMetadata(Lorg/fourthline/cling/support/model/DIDLObject;)Ljava/lang/String;
    .locals 10

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\"?><DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\">"

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 420
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getParentID()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "<item id=\"%s\" parentID=\"%s\" restricted=\"%s\">"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "<dc:title>%s</dc:title>"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getCreator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "_"

    const-string v7, "<"

    .line 425
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ">"

    .line 426
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 428
    :cond_1
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string v2, "<upnp:artist>%s</upnp:artist>"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "<upnp:class>%s</upnp:class>"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 433
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 434
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 435
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string v2, "<dc:date>%s</dc:date>"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 447
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_2

    const/4 v7, 0x4

    .line 449
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getProtocol()Lorg/fourthline/cling/support/model/Protocol;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getNetwork()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v8

    aput-object v8, v7, v6

    .line 450
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const-string v2, "protocolInfo=\"%s:%s:%s:%s\""

    .line 449
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 452
    :goto_1
    sget-object v7, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "protocolinfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 457
    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "resolution=\"%s\""

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v3

    .line 462
    :goto_2
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 463
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const-string v8, "duration=\"%s\""

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 468
    :cond_4
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object v7, v1, v5

    aput-object v3, v1, v6

    const-string v2, "<res %s %s %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</res>"

    .line 475
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p1, "</item>"

    .line 477
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</DIDL-Lite>"

    .line 479
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private pushMediaToRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 405
    new-instance p4, Lorg/fourthline/cling/support/model/Res;

    new-instance v0, Lorg/seamless/util/MimeType;

    const-string v1, "*"

    invoke-direct {v0, v1, v1}, Lorg/seamless/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p4, v0, v1, p1}, Lorg/fourthline/cling/support/model/Res;-><init>(Lorg/seamless/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V

    .line 409
    new-instance p1, Lorg/fourthline/cling/support/model/item/VideoItem;

    const/4 v0, 0x1

    new-array v7, v0, [Lorg/fourthline/cling/support/model/Res;

    const/4 v0, 0x0

    aput-object p4, v7, v0

    const-string v6, "unknow"

    const-string v4, "0"

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->createItemMetadata(Lorg/fourthline/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object p1

    .line 412
    sget-object p2, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "metadata: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private setAVTransportURI(Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 9

    .line 284
    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    const-string v1, "name"

    const-string v2, "0"

    .line 288
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->pushMediaToRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 290
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v5

    .line 291
    invoke-static {v5}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 300
    :cond_2
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$8;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$8;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->mCurrentState:I

    return v0
.end method

.method public getPositionInfo(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V
    .locals 3

    .line 322
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 323
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 327
    :cond_0
    sget-object v1, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->TAG:Ljava/lang/String;

    const-string v2, "Found media render service in device, sending get position"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V

    .line 353
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object p1

    .line 354
    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 358
    :cond_1
    invoke-interface {p1, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getVolume(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V
    .locals 2

    .line 363
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->RENDERING_CONTROL_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 367
    :cond_0
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V

    .line 383
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object p1

    .line 384
    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 388
    :cond_1
    invoke-interface {p1, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public pause(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 3

    .line 121
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 127
    invoke-static {v1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 131
    :cond_1
    new-instance v2, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$3;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    invoke-interface {v1, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public play(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 3

    .line 90
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 100
    :cond_1
    new-instance v2, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$2;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    invoke-interface {v1, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public playNew(Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->stop(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method public seek(ILcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 6

    .line 183
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 189
    invoke-static {v1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 193
    :cond_1
    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->getStringTime(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    sget-object v3, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seek->pos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", time: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$5;

    invoke-direct {p1, p0, v0, v2, p2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$5;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    invoke-interface {v1, p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setCurrentState(I)V
    .locals 1

    .line 397
    iget v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->mCurrentState:I

    if-eq v0, p1, :cond_0

    .line 398
    iput p1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public setMute(ZLcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 3
    .param p2    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 249
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->RENDERING_CONTROL_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 255
    invoke-static {v1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 259
    :cond_1
    new-instance v2, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;ZLcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    invoke-interface {v1, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setVolume(ILcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 10
    .param p2    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->RENDERING_CONTROL_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    .line 217
    invoke-static {v3}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 225
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 226
    iget-wide v1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->mVolumeLastTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v1, v4

    cmp-long v4, v7, v1

    if-lez v4, :cond_2

    .line 227
    new-instance v9, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$6;

    int-to-long v4, p1

    move-object v1, v9

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$6;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;JLcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    invoke-interface {v0, v9}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    .line 244
    :cond_2
    iput-wide v7, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->mVolumeLastTime:J

    return-void
.end method

.method public stop(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 3

    .line 152
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->findServiceFromSelectedDevice(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 162
    :cond_1
    new-instance v2, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$4;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    invoke-interface {v1, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method
