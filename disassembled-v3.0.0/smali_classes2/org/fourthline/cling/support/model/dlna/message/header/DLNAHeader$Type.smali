.class public final enum Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
.super Ljava/lang/Enum;
.source "DLNAHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private headerTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;"
        }
    .end annotation
.end field

.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 46
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "TimeSeekRange"

    const-string v5, "TimeSeekRange.dlna.org"

    invoke-direct {v0, v3, v4, v5, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;

    aput-object v3, v2, v4

    const-string v3, "XSeekRange"

    const-string v5, "X-Seek-Range"

    invoke-direct {v0, v3, v1, v5, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/fourthline/cling/support/model/dlna/message/header/PlaySpeedHeader;

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v5, "PlaySpeed"

    const-string v6, "PlaySpeed.dlna.org"

    invoke-direct {v0, v5, v3, v6, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;

    aput-object v5, v2, v4

    const/4 v5, 0x3

    const-string v6, "AvailableSeekRange"

    const-string v7, "availableSeekRange.dlna.org"

    invoke-direct {v0, v6, v5, v7, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 50
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v6, Lorg/fourthline/cling/support/model/dlna/message/header/GetAvailableSeekRangeHeader;

    aput-object v6, v2, v4

    const/4 v6, 0x4

    const-string v7, "GetAvailableSeekRange"

    const-string v8, "getAvailableSeekRange.dlna.org"

    invoke-direct {v0, v7, v6, v8, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 51
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v7, Lorg/fourthline/cling/support/model/dlna/message/header/GetContentFeaturesHeader;

    aput-object v7, v2, v4

    const/4 v7, 0x5

    const-string v8, "GetContentFeatures"

    const-string v9, "getcontentFeatures.dlna.org"

    invoke-direct {v0, v8, v7, v9, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 52
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v8, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;

    aput-object v8, v2, v4

    const/4 v8, 0x6

    const-string v9, "ContentFeatures"

    const-string v10, "contentFeatures.dlna.org"

    invoke-direct {v0, v9, v8, v10, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 53
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v9, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;

    aput-object v9, v2, v4

    const/4 v9, 0x7

    const-string v10, "TransferMode"

    const-string v11, "transferMode.dlna.org"

    invoke-direct {v0, v10, v9, v11, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 54
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/support/model/dlna/message/header/FriendlyNameHeader;

    aput-object v10, v2, v4

    const/16 v10, 0x8

    const-string v11, "FriendlyName"

    const-string v12, "friendlyName.dlna.org"

    invoke-direct {v0, v11, v10, v12, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 55
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v11, Lorg/fourthline/cling/support/model/dlna/message/header/PeerManagerHeader;

    aput-object v11, v2, v4

    const/16 v11, 0x9

    const-string v12, "PeerManager"

    const-string v13, "peerManager.dlna.org"

    invoke-direct {v0, v12, v11, v13, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 56
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v12, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableRangeHeader;

    aput-object v12, v2, v4

    const/16 v12, 0xa

    const-string v13, "AvailableRange"

    const-string v14, "Available-Range.dlna.org"

    invoke-direct {v0, v13, v12, v14, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 57
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/SCIDHeader;

    aput-object v13, v2, v4

    const/16 v13, 0xb

    const-string v14, "SCID"

    const-string v15, "scid.dlna.org"

    invoke-direct {v0, v14, v13, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 58
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v14, Lorg/fourthline/cling/support/model/dlna/message/header/RealTimeInfoHeader;

    aput-object v14, v2, v4

    const/16 v14, 0xc

    const-string v15, "RealTimeInfo"

    const-string v13, "realTimeInfo.dlna.org"

    invoke-direct {v0, v15, v14, v13, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 59
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/ScmsFlagHeader;

    aput-object v13, v2, v4

    const/16 v13, 0xd

    const-string v15, "ScmsFlag"

    const-string v14, "scmsFlag.dlna.org"

    invoke-direct {v0, v15, v13, v14, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 60
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v14, Lorg/fourthline/cling/support/model/dlna/message/header/WCTHeader;

    aput-object v14, v2, v4

    const/16 v14, 0xe

    const-string v15, "WCT"

    const-string v13, "WCT.dlna.org"

    invoke-direct {v0, v15, v14, v13, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 61
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/MaxPrateHeader;

    aput-object v13, v2, v4

    const-string v13, "MaxPrate"

    const/16 v15, 0xf

    const-string v14, "Max-Prate.dlna.org"

    invoke-direct {v0, v13, v15, v14, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 62
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/EventTypeHeader;

    aput-object v13, v2, v4

    const-string v13, "EventType"

    const/16 v14, 0x10

    const-string v15, "Event-Type.dlna.org"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 63
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/SupportedHeader;

    aput-object v13, v2, v4

    const-string v13, "Supported"

    const/16 v14, 0x11

    const-string v15, "Supported"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 64
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/BufferInfoHeader;

    aput-object v13, v2, v4

    const-string v13, "BufferInfo"

    const/16 v14, 0x12

    const-string v15, "Buffer-Info.dlna.org"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 65
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v13, v2, v4

    const-string v13, "RTPH264DeInterleaving"

    const/16 v14, 0x13

    const-string v15, "rtp-h264-deint-buf-cap.dlna.org"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 66
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v13, v2, v4

    const-string v13, "RTPAACDeInterleaving"

    const/16 v14, 0x14

    const-string v15, "rtp-aac-deint-buf-cap.dlna.org"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 67
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v13, v2, v4

    const-string v13, "RTPAMRDeInterleaving"

    const/16 v14, 0x15

    const-string v15, "rtp-amr-deint-buf-cap.dlna.org"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 68
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v13, v2, v4

    const-string v13, "RTPAMRWBPlusDeInterleaving"

    const/16 v14, 0x16

    const-string v15, "rtp-amrwbplus-deint-buf-cap.dlna.org"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 69
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/PragmaHeader;

    aput-object v13, v2, v4

    const-string v13, "PRAGMA"

    const/16 v14, 0x17

    const-string v15, "PRAGMA"

    invoke-direct {v0, v13, v14, v15, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v0, 0x18

    .line 44
    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v4

    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v2, v0, v1

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v11

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v12

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 71
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type$1;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->byName:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->httpName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->byName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 1

    .line 44
    const-class v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 1

    .line 44
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    return-object v0
.end method


# virtual methods
.method public getHeaderTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getHttpName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->httpName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidHeaderType(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;)Z"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHeaderTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 96
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
