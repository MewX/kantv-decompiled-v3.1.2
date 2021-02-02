.class public final Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$GenericCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$GenericCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$GenericCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$GenericCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$AckCommand;",
            "Lcom/avos/avoscloud/Messages$AckCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$AckCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

.field private appId_:Ljava/lang/Object;

.field private bitField0_:I

.field private blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand;",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

.field private cmd_:I

.field private convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ConvCommand;",
            "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

.field private dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$DataCommand;",
            "Lcom/avos/avoscloud/Messages$DataCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

.field private directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$DirectCommand;",
            "Lcom/avos/avoscloud/Messages$DirectCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

.field private errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            "Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

.field private i_:I

.field private installationId_:Ljava/lang/Object;

.field private logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$LogsCommand;",
            "Lcom/avos/avoscloud/Messages$LogsCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

.field private op_:I

.field private patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$PatchCommand;",
            "Lcom/avos/avoscloud/Messages$PatchCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

.field private peerId_:Ljava/lang/Object;

.field private presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$PresenceCommand;",
            "Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

.field private priority_:I

.field private pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$PubsubCommand;",
            "Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

.field private rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$RcpCommand;",
            "Lcom/avos/avoscloud/Messages$RcpCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$RcpCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

.field private readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ReadCommand;",
            "Lcom/avos/avoscloud/Messages$ReadCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

.field private reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ReportCommand;",
            "Lcom/avos/avoscloud/Messages$ReportCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ReportCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

.field private roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$RoomCommand;",
            "Lcom/avos/avoscloud/Messages$RoomCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

.field private serverTs_:J

.field private service_:I

.field private sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$SessionCommand;",
            "Lcom/avos/avoscloud/Messages$SessionCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$SessionCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

.field private unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$UnreadCommand;",
            "Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40120
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 40640
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->cmd_:I

    const/4 v0, 0x1

    .line 40676
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->op_:I

    const-string v0, ""

    .line 40712
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40788
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40896
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 41068
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 41186
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 41304
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 41422
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 41540
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 41658
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 41776
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 41894
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 42012
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 42130
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 42248
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 42366
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 42484
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 42602
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 42720
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 42838
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 40121
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 40103
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 40126
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 40640
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->cmd_:I

    const/4 p1, 0x1

    .line 40676
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->op_:I

    const-string p1, ""

    .line 40712
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40788
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40896
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 41068
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 41186
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 41304
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 41422
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 41540
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 41658
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 41776
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 41894
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 42012
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 42130
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 42248
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 42366
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 42484
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 42602
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 42720
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 42838
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 40127
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 40103
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getAckMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$AckCommand;",
            "Lcom/avos/avoscloud/Messages$AckCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$AckCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41647
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41648
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41650
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v1

    .line 41651
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 41652
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 41653
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 41655
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getBlacklistMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand;",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42945
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42946
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42948
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v1

    .line 42949
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42950
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42951
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 42953
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getConvMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ConvCommand;",
            "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42237
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42238
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42240
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v1

    .line 42241
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42242
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42243
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 42245
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getDataMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$DataCommand;",
            "Lcom/avos/avoscloud/Messages$DataCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41175
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41176
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41178
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v1

    .line 41179
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 41180
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 41181
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 41183
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 40109
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$40800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDirectMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$DirectCommand;",
            "Lcom/avos/avoscloud/Messages$DirectCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41529
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41530
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41532
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v1

    .line 41533
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 41534
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 41535
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 41537
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getErrorMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            "Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41411
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41412
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41414
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v1

    .line 41415
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 41416
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 41417
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 41419
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getLogsMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$LogsCommand;",
            "Lcom/avos/avoscloud/Messages$LogsCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42119
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42120
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42122
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v1

    .line 42123
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42124
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42125
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 42127
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPatchMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$PatchCommand;",
            "Lcom/avos/avoscloud/Messages$PatchCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42709
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42710
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42712
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v1

    .line 42713
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42714
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42715
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 42717
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPresenceMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$PresenceCommand;",
            "Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42473
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42474
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42476
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v1

    .line 42477
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42478
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42479
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 42481
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPubsubMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$PubsubCommand;",
            "Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42827
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42828
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42830
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v1

    .line 42831
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42832
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42833
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 42835
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRcpMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$RcpCommand;",
            "Lcom/avos/avoscloud/Messages$RcpCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$RcpCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42001
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42002
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42004
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v1

    .line 42005
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42006
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42007
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 42009
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getReadMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ReadCommand;",
            "Lcom/avos/avoscloud/Messages$ReadCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41883
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41884
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41886
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v1

    .line 41887
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 41888
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 41889
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 41891
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getReportMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ReportCommand;",
            "Lcom/avos/avoscloud/Messages$ReportCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ReportCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42591
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42592
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42594
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v1

    .line 42595
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42596
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42597
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 42599
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getRoomMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$RoomCommand;",
            "Lcom/avos/avoscloud/Messages$RoomCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 42355
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42356
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42358
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v1

    .line 42359
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 42360
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 42361
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 42363
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getSessionMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$SessionCommand;",
            "Lcom/avos/avoscloud/Messages$SessionCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$SessionCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41293
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41294
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41296
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v1

    .line 41297
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 41298
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 41299
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 41301
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getUnreadMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$UnreadCommand;",
            "Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41765
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41766
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41768
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v1

    .line 41769
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 41770
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 41771
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 41773
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 40131
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40132
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDataMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40133
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getSessionMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40134
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getErrorMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40135
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDirectMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40136
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getAckMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40137
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getUnreadMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40138
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getReadMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40139
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getRcpMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40140
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getLogsMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40141
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getConvMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40142
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getRoomMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40143
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPresenceMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40144
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getReportMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40145
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPatchMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40146
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPubsubMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40147
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getBlacklistMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 0

    .line 40483
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 2

    .line 40279
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    .line 40280
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 40281
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->build()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->build()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 6

    .line 40287
    new-instance v0, Lcom/avos/avoscloud/Messages$GenericCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 40288
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 40293
    :goto_0
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->cmd_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41402(Lcom/avos/avoscloud/Messages$GenericCommand;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 40297
    :cond_1
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->op_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41502(Lcom/avos/avoscloud/Messages$GenericCommand;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 40301
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41602(Lcom/avos/avoscloud/Messages$GenericCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 40305
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41702(Lcom/avos/avoscloud/Messages$GenericCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 40309
    :cond_4
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->i_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41802(Lcom/avos/avoscloud/Messages$GenericCommand;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 40313
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41902(Lcom/avos/avoscloud/Messages$GenericCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 40317
    :cond_6
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->priority_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42002(Lcom/avos/avoscloud/Messages$GenericCommand;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 40321
    :cond_7
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->service_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42102(Lcom/avos/avoscloud/Messages$GenericCommand;I)I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 40325
    :cond_8
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->serverTs_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42202(Lcom/avos/avoscloud/Messages$GenericCommand;J)J

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 40329
    :cond_9
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_a

    .line 40330
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42302(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand;

    goto :goto_1

    .line 40332
    :cond_a
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$DataCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42302(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand;

    :goto_1
    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    .line 40337
    :cond_b
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_c

    .line 40338
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42402(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand;

    goto :goto_2

    .line 40340
    :cond_c
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$SessionCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42402(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand;

    :goto_2
    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x800

    .line 40345
    :cond_d
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_e

    .line 40346
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42502(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand;

    goto :goto_3

    .line 40348
    :cond_e
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$ErrorCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42502(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand;

    :goto_3
    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_f

    or-int/lit16 v3, v3, 0x1000

    .line 40353
    :cond_f
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_10

    .line 40354
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42602(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand;

    goto :goto_4

    .line 40356
    :cond_10
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$DirectCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42602(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand;

    :goto_4
    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_11

    or-int/lit16 v3, v3, 0x2000

    .line 40361
    :cond_11
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_12

    .line 40362
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42702(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand;

    goto :goto_5

    .line 40364
    :cond_12
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$AckCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42702(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand;

    :goto_5
    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_13

    or-int/lit16 v3, v3, 0x4000

    .line 40369
    :cond_13
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_14

    .line 40370
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42802(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand;

    goto :goto_6

    .line 40372
    :cond_14
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$UnreadCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42802(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand;

    :goto_6
    const v2, 0x8000

    and-int/2addr v2, v1

    const v4, 0x8000

    if-ne v2, v4, :cond_15

    const v2, 0x8000

    or-int/2addr v3, v2

    .line 40377
    :cond_15
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_16

    .line 40378
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42902(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand;

    goto :goto_7

    .line 40380
    :cond_16
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$ReadCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$42902(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand;

    :goto_7
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    const/high16 v4, 0x10000

    if-ne v2, v4, :cond_17

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    .line 40385
    :cond_17
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_18

    .line 40386
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43002(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand;

    goto :goto_8

    .line 40388
    :cond_18
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$RcpCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43002(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand;

    :goto_8
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    const/high16 v4, 0x20000

    if-ne v2, v4, :cond_19

    const/high16 v2, 0x20000

    or-int/2addr v3, v2

    .line 40393
    :cond_19
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_1a

    .line 40394
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43102(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand;

    goto :goto_9

    .line 40396
    :cond_1a
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$LogsCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43102(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand;

    :goto_9
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    const/high16 v4, 0x40000

    if-ne v2, v4, :cond_1b

    const/high16 v2, 0x40000

    or-int/2addr v3, v2

    .line 40401
    :cond_1b
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_1c

    .line 40402
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43202(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand;

    goto :goto_a

    .line 40404
    :cond_1c
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$ConvCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43202(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand;

    :goto_a
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    const/high16 v4, 0x80000

    if-ne v2, v4, :cond_1d

    const/high16 v2, 0x80000

    or-int/2addr v3, v2

    .line 40409
    :cond_1d
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_1e

    .line 40410
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43302(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand;

    goto :goto_b

    .line 40412
    :cond_1e
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$RoomCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43302(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand;

    :goto_b
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    const/high16 v4, 0x100000

    if-ne v2, v4, :cond_1f

    const/high16 v2, 0x100000

    or-int/2addr v3, v2

    .line 40417
    :cond_1f
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_20

    .line 40418
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43402(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand;

    goto :goto_c

    .line 40420
    :cond_20
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$PresenceCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43402(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand;

    :goto_c
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    const/high16 v4, 0x200000

    if-ne v2, v4, :cond_21

    const/high16 v2, 0x200000

    or-int/2addr v3, v2

    .line 40425
    :cond_21
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_22

    .line 40426
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43502(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand;

    goto :goto_d

    .line 40428
    :cond_22
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$ReportCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43502(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand;

    :goto_d
    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    const/high16 v4, 0x400000

    if-ne v2, v4, :cond_23

    const/high16 v2, 0x400000

    or-int/2addr v3, v2

    .line 40433
    :cond_23
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_24

    .line 40434
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43602(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand;

    goto :goto_e

    .line 40436
    :cond_24
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$PatchCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43602(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand;

    :goto_e
    const/high16 v2, 0x800000

    and-int/2addr v2, v1

    const/high16 v4, 0x800000

    if-ne v2, v4, :cond_25

    const/high16 v2, 0x800000

    or-int/2addr v3, v2

    .line 40441
    :cond_25
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_26

    .line 40442
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43702(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand;

    goto :goto_f

    .line 40444
    :cond_26
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$PubsubCommand;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43702(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand;

    :goto_f
    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_27

    const/high16 v1, 0x1000000

    or-int/2addr v3, v1

    .line 40449
    :cond_27
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_28

    .line 40450
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43802(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand;

    goto :goto_10

    .line 40452
    :cond_28
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43802(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 40454
    :goto_10
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$43902(Lcom/avos/avoscloud/Messages$GenericCommand;I)I

    .line 40455
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 40151
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 40152
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->cmd_:I

    .line 40153
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    .line 40154
    iput v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->op_:I

    .line 40155
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const-string v1, ""

    .line 40156
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40157
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40158
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40159
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40160
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->i_:I

    .line 40161
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40162
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    .line 40163
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40164
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->priority_:I

    .line 40165
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40166
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->service_:I

    .line 40167
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 40168
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->serverTs_:J

    .line 40169
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40170
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40171
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    goto :goto_0

    .line 40173
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40175
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40176
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 40177
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    goto :goto_1

    .line 40179
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40181
    :goto_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40182
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 40183
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    goto :goto_2

    .line 40185
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40187
    :goto_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40188
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 40189
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    goto :goto_3

    .line 40191
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40193
    :goto_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40194
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    .line 40195
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    goto :goto_4

    .line 40197
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40199
    :goto_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40200
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_5

    .line 40201
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    goto :goto_5

    .line 40203
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40205
    :goto_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40206
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_6

    .line 40207
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    goto :goto_6

    .line 40209
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40211
    :goto_6
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x8001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40212
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_7

    .line 40213
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    goto :goto_7

    .line 40215
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40217
    :goto_7
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x10001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40218
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_8

    .line 40219
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    goto :goto_8

    .line 40221
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40223
    :goto_8
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x20001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40224
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_9

    .line 40225
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    goto :goto_9

    .line 40227
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40229
    :goto_9
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x40001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40230
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_a

    .line 40231
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    goto :goto_a

    .line 40233
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40235
    :goto_a
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x80001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40236
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    .line 40237
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    goto :goto_b

    .line 40239
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40241
    :goto_b
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x100001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40242
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_c

    .line 40243
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    goto :goto_c

    .line 40245
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40247
    :goto_c
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x200001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40248
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 40249
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    goto :goto_d

    .line 40251
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40253
    :goto_d
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x400001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40254
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 40255
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    goto :goto_e

    .line 40257
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40259
    :goto_e
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v2, -0x800001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40260
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_f

    .line 40261
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    goto :goto_f

    .line 40263
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 40265
    :goto_f
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAckMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41613
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41614
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 41615
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41617
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41619
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAppId()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40769
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40770
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40771
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBlacklistMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 42911
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42912
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 42913
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42915
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42917
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCmd()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40670
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 40671
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->cmd_:I

    .line 40672
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConvMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 42203
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42204
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 42205
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42207
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42209
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDataMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41141
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41142
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 41143
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41145
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41147
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDirectMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41495
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41496
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 41497
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41499
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41501
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearErrorMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41377
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41378
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 41379
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41381
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41383
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 0

    .line 40469
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearI()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40890
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 40891
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->i_:I

    .line 40892
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInstallationId()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40953
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40954
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    .line 40955
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLogsMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 42085
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42086
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 42087
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42089
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42091
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 0

    .line 40473
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOp()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40706
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 40707
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->op_:I

    .line 40708
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPatchMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 42675
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42676
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 42677
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42679
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42681
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearPeerId()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40845
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40846
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPeerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40847
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPresenceMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 42439
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42440
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 42441
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42443
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42445
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearPriority()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40998
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 40999
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->priority_:I

    .line 41000
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPubsubMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 42793
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42794
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 42795
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42797
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42799
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRcpMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 41967
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41968
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 41969
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41971
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41973
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearReadMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 41849
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41850
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 41851
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41853
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41855
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearReportMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 42557
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42558
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 42559
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42561
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42563
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRoomMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 42321
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42322
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 42323
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42325
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42327
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearServerTs()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 41062
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 41063
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->serverTs_:J

    .line 41064
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearService()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41030
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 41031
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->service_:I

    .line 41032
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41259
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41260
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 41261
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41263
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41265
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearUnreadMessage()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41731
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41732
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 41733
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41735
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41737
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40460
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1

    .line 41553
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41554
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 41556
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$AckCommand;

    return-object v0
.end method

.method public getAckMessageBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;
    .locals 1

    .line 41626
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41627
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 41628
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getAckMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    return-object v0
.end method

.method public getAckMessageOrBuilder()Lcom/avos/avoscloud/Messages$AckCommandOrBuilder;
    .locals 1

    .line 41634
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41635
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$AckCommandOrBuilder;

    return-object v0

    .line 41637
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    if-nez v0, :cond_1

    .line 41638
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .line 40723
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40724
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 40725
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40727
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40728
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40729
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 40733
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 40741
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40742
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40743
    check-cast v0, Ljava/lang/String;

    .line 40744
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40746
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    return-object v0

    .line 40749
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1

    .line 42851
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 42852
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 42854
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object v0
.end method

.method public getBlacklistMessageBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 2

    .line 42924
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 42925
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 42926
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getBlacklistMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object v0
.end method

.method public getBlacklistMessageOrBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;
    .locals 1

    .line 42932
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 42933
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;

    return-object v0

    .line 42935
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    if-nez v0, :cond_1

    .line 42936
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCmd()Lcom/avos/avoscloud/Messages$CommandType;
    .locals 1

    .line 40651
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->cmd_:I

    invoke-static {v0}, Lcom/avos/avoscloud/Messages$CommandType;->valueOf(I)Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40652
    sget-object v0, Lcom/avos/avoscloud/Messages$CommandType;->session:Lcom/avos/avoscloud/Messages$CommandType;

    :cond_0
    return-object v0
.end method

.method public getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1

    .line 42143
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 42144
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 42146
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object v0
.end method

.method public getConvMessageBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 42216
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 42217
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 42218
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getConvMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object v0
.end method

.method public getConvMessageOrBuilder()Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;
    .locals 1

    .line 42224
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 42225
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;

    return-object v0

    .line 42227
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    if-nez v0, :cond_1

    .line 42228
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1

    .line 41081
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41082
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 41084
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object v0
.end method

.method public getDataMessageBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 41154
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41155
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 41156
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDataMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    return-object v0
.end method

.method public getDataMessageOrBuilder()Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;
    .locals 1

    .line 41162
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41163
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;

    return-object v0

    .line 41165
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    if-nez v0, :cond_1

    .line 41166
    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1

    .line 40275
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 40103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 40271
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$40800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1

    .line 41435
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41436
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 41438
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object v0
.end method

.method public getDirectMessageBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;
    .locals 1

    .line 41508
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41509
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 41510
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDirectMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    return-object v0
.end method

.method public getDirectMessageOrBuilder()Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;
    .locals 1

    .line 41516
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41517
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;

    return-object v0

    .line 41519
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    if-nez v0, :cond_1

    .line 41520
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 41317
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41318
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 41320
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object v0
.end method

.method public getErrorMessageBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 41390
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41391
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 41392
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getErrorMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object v0
.end method

.method public getErrorMessageOrBuilder()Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;
    .locals 1

    .line 41398
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41399
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;

    return-object v0

    .line 41401
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    if-nez v0, :cond_1

    .line 41402
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getI()I
    .locals 1

    .line 40875
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->i_:I

    return v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 2

    .line 40907
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    .line 40908
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 40909
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40911
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40912
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40913
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 40917
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInstallationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 40925
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    .line 40926
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40927
    check-cast v0, Ljava/lang/String;

    .line 40928
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40930
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    return-object v0

    .line 40933
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1

    .line 42025
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 42026
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 42028
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object v0
.end method

.method public getLogsMessageBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;
    .locals 2

    .line 42098
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 42099
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 42100
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getLogsMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    return-object v0
.end method

.method public getLogsMessageOrBuilder()Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;
    .locals 1

    .line 42106
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 42107
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;

    return-object v0

    .line 42109
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    if-nez v0, :cond_1

    .line 42110
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getOp()Lcom/avos/avoscloud/Messages$OpType;
    .locals 1

    .line 40687
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->op_:I

    invoke-static {v0}, Lcom/avos/avoscloud/Messages$OpType;->valueOf(I)Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40688
    sget-object v0, Lcom/avos/avoscloud/Messages$OpType;->open:Lcom/avos/avoscloud/Messages$OpType;

    :cond_0
    return-object v0
.end method

.method public getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1

    .line 42615
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 42616
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 42618
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object v0
.end method

.method public getPatchMessageBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 2

    .line 42688
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 42689
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 42690
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPatchMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    return-object v0
.end method

.method public getPatchMessageOrBuilder()Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;
    .locals 1

    .line 42696
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 42697
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;

    return-object v0

    .line 42699
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    if-nez v0, :cond_1

    .line 42700
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 2

    .line 40799
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40800
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 40801
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40803
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40804
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40805
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 40809
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPeerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 40817
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40818
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40819
    check-cast v0, Ljava/lang/String;

    .line 40820
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40822
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    return-object v0

    .line 40825
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1

    .line 42379
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 42380
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 42382
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object v0
.end method

.method public getPresenceMessageBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 2

    .line 42452
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 42453
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 42454
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPresenceMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    return-object v0
.end method

.method public getPresenceMessageOrBuilder()Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;
    .locals 1

    .line 42460
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 42461
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;

    return-object v0

    .line 42463
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    if-nez v0, :cond_1

    .line 42464
    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 40983
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->priority_:I

    return v0
.end method

.method public getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1

    .line 42733
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 42734
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 42736
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object v0
.end method

.method public getPubsubMessageBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;
    .locals 2

    .line 42806
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 42807
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 42808
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPubsubMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    return-object v0
.end method

.method public getPubsubMessageOrBuilder()Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;
    .locals 1

    .line 42814
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 42815
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;

    return-object v0

    .line 42817
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    if-nez v0, :cond_1

    .line 42818
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1

    .line 41907
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41908
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 41910
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object v0
.end method

.method public getRcpMessageBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;
    .locals 2

    .line 41980
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41981
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 41982
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getRcpMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    return-object v0
.end method

.method public getRcpMessageOrBuilder()Lcom/avos/avoscloud/Messages$RcpCommandOrBuilder;
    .locals 1

    .line 41988
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41989
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$RcpCommandOrBuilder;

    return-object v0

    .line 41991
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    if-nez v0, :cond_1

    .line 41992
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1

    .line 41789
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41790
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 41792
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object v0
.end method

.method public getReadMessageBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 2

    .line 41862
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41863
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 41864
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getReadMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    return-object v0
.end method

.method public getReadMessageOrBuilder()Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;
    .locals 1

    .line 41870
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41871
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;

    return-object v0

    .line 41873
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    if-nez v0, :cond_1

    .line 41874
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1

    .line 42497
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 42498
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 42500
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object v0
.end method

.method public getReportMessageBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 2

    .line 42570
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 42571
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 42572
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getReportMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    return-object v0
.end method

.method public getReportMessageOrBuilder()Lcom/avos/avoscloud/Messages$ReportCommandOrBuilder;
    .locals 1

    .line 42578
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 42579
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ReportCommandOrBuilder;

    return-object v0

    .line 42581
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    if-nez v0, :cond_1

    .line 42582
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1

    .line 42261
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 42262
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 42264
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object v0
.end method

.method public getRoomMessageBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;
    .locals 2

    .line 42334
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 42335
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 42336
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getRoomMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    return-object v0
.end method

.method public getRoomMessageOrBuilder()Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;
    .locals 1

    .line 42342
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 42343
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;

    return-object v0

    .line 42345
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    if-nez v0, :cond_1

    .line 42346
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getServerTs()J
    .locals 2

    .line 41047
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->serverTs_:J

    return-wide v0
.end method

.method public getService()I
    .locals 1

    .line 41015
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->service_:I

    return v0
.end method

.method public getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1

    .line 41199
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41200
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 41202
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object v0
.end method

.method public getSessionMessageBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 41272
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41273
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 41274
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getSessionMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object v0
.end method

.method public getSessionMessageOrBuilder()Lcom/avos/avoscloud/Messages$SessionCommandOrBuilder;
    .locals 1

    .line 41280
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41281
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$SessionCommandOrBuilder;

    return-object v0

    .line 41283
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    if-nez v0, :cond_1

    .line 41284
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1

    .line 41671
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41672
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    :cond_0
    return-object v0

    .line 41674
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object v0
.end method

.method public getUnreadMessageBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 41744
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41745
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 41746
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getUnreadMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    return-object v0
.end method

.method public getUnreadMessageOrBuilder()Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;
    .locals 1

    .line 41752
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41753
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;

    return-object v0

    .line 41755
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    if-nez v0, :cond_1

    .line 41756
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAckMessage()Z
    .locals 2

    .line 41547
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAppId()Z
    .locals 2

    .line 40717
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBlacklistMessage()Z
    .locals 2

    .line 42845
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCmd()Z
    .locals 2

    .line 40645
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasConvMessage()Z
    .locals 2

    .line 42137
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDataMessage()Z
    .locals 2

    .line 41075
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDirectMessage()Z
    .locals 2

    .line 41429
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasErrorMessage()Z
    .locals 2

    .line 41311
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasI()Z
    .locals 2

    .line 40869
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInstallationId()Z
    .locals 2

    .line 40901
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogsMessage()Z
    .locals 2

    .line 42019
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOp()Z
    .locals 2

    .line 40681
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPatchMessage()Z
    .locals 2

    .line 42609
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPeerId()Z
    .locals 2

    .line 40793
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPresenceMessage()Z
    .locals 2

    .line 42373
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPriority()Z
    .locals 2

    .line 40977
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPubsubMessage()Z
    .locals 2

    .line 42727
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRcpMessage()Z
    .locals 2

    .line 41901
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadMessage()Z
    .locals 2

    .line 41783
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReportMessage()Z
    .locals 2

    .line 42491
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRoomMessage()Z
    .locals 2

    .line 42255
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServerTs()Z
    .locals 2

    .line 41041
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasService()Z
    .locals 2

    .line 41009
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionMessage()Z
    .locals 2

    .line 41193
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnreadMessage()Z
    .locals 2

    .line 41665
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 40114
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$40900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$GenericCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40115
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 40583
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->hasDataMessage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40584
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DataCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 40588
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40589
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 40593
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->hasUnreadMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40594
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 40598
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->hasReadMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40599
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 40603
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->hasConvMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40604
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 40608
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->hasPubsubMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40609
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 40613
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->hasBlacklistMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40614
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAckMessage(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 41593
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x2000

    if-nez v0, :cond_1

    .line 41594
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    if-eqz v0, :cond_0

    .line 41596
    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 41597
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 41598
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$AckCommand;->newBuilder(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    goto :goto_0

    .line 41600
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 41602
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 41604
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41606
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeBlacklistMessage(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 42891
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x1000000

    if-nez v0, :cond_1

    .line 42892
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    if-eqz v0, :cond_0

    .line 42894
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 42895
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 42896
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->newBuilder(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    goto :goto_0

    .line 42898
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 42900
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 42902
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42904
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeConvMessage(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 42183
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x40000

    if-nez v0, :cond_1

    .line 42184
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    if-eqz v0, :cond_0

    .line 42186
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 42187
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 42188
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->newBuilder(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    goto :goto_0

    .line 42190
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 42192
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 42194
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42196
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeDataMessage(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 41121
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x200

    if-nez v0, :cond_1

    .line 41122
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    if-eqz v0, :cond_0

    .line 41124
    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 41125
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 41126
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$DataCommand;->newBuilder(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    goto :goto_0

    .line 41128
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 41130
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 41132
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41134
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeDirectMessage(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 41475
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x1000

    if-nez v0, :cond_1

    .line 41476
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    if-eqz v0, :cond_0

    .line 41478
    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 41479
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 41480
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$DirectCommand;->newBuilder(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    goto :goto_0

    .line 41482
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 41484
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 41486
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41488
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeErrorMessage(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 41357
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x800

    if-nez v0, :cond_1

    .line 41358
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    if-eqz v0, :cond_0

    .line 41360
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 41361
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 41362
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->newBuilder(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    goto :goto_0

    .line 41364
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 41366
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 41368
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41370
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 40495
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 40496
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasCmd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40497
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getCmd()Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setCmd(Lcom/avos/avoscloud/Messages$CommandType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40499
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasOp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40500
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getOp()Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setOp(Lcom/avos/avoscloud/Messages$OpType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40502
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40503
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40504
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41600(Lcom/avos/avoscloud/Messages$GenericCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40505
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 40507
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPeerId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40508
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40509
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41700(Lcom/avos/avoscloud/Messages$GenericCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40510
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 40512
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40513
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getI()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setI(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40515
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasInstallationId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40516
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40517
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$41900(Lcom/avos/avoscloud/Messages$GenericCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    .line 40518
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    .line 40520
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 40521
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setPriority(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40523
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasService()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40524
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getService()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setService(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40526
    :cond_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasServerTs()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40527
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getServerTs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setServerTs(J)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40529
    :cond_9
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDataMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40530
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeDataMessage(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40532
    :cond_a
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasSessionMessage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40533
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeSessionMessage(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40535
    :cond_b
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40536
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeErrorMessage(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40538
    :cond_c
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDirectMessage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 40539
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeDirectMessage(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40541
    :cond_d
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAckMessage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 40542
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeAckMessage(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40544
    :cond_e
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasUnreadMessage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40545
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeUnreadMessage(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40547
    :cond_f
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReadMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 40548
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeReadMessage(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40550
    :cond_10
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRcpMessage()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 40551
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeRcpMessage(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40553
    :cond_11
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasLogsMessage()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40554
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeLogsMessage(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40556
    :cond_12
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasConvMessage()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 40557
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeConvMessage(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40559
    :cond_13
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRoomMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40560
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeRoomMessage(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40562
    :cond_14
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPresenceMessage()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 40563
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergePresenceMessage(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40565
    :cond_15
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReportMessage()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 40566
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeReportMessage(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40568
    :cond_16
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPatchMessage()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 40569
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergePatchMessage(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40571
    :cond_17
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPubsubMessage()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 40572
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergePubsubMessage(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40574
    :cond_18
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasBlacklistMessage()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 40575
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeBlacklistMessage(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40577
    :cond_19
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->access$44000(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 40578
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40627
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 40633
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40629
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$GenericCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40630
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 40633
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40486
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$GenericCommand;

    if-eqz v0, :cond_0

    .line 40487
    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1

    .line 40489
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40103
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40103
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40103
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40103
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeLogsMessage(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 42065
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    .line 42066
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    if-eqz v0, :cond_0

    .line 42068
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 42069
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 42070
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$LogsCommand;->newBuilder(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    goto :goto_0

    .line 42072
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 42074
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 42076
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42078
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergePatchMessage(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 42655
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x400000

    if-nez v0, :cond_1

    .line 42656
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    if-eqz v0, :cond_0

    .line 42658
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 42659
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 42660
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$PatchCommand;->newBuilder(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    goto :goto_0

    .line 42662
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 42664
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 42666
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42668
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergePresenceMessage(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 42419
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x100000

    if-nez v0, :cond_1

    .line 42420
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    if-eqz v0, :cond_0

    .line 42422
    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 42423
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 42424
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->newBuilder(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    goto :goto_0

    .line 42426
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 42428
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 42430
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42432
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergePubsubMessage(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 42773
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x800000

    if-nez v0, :cond_1

    .line 42774
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    if-eqz v0, :cond_0

    .line 42776
    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 42777
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 42778
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->newBuilder(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    goto :goto_0

    .line 42780
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 42782
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 42784
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42786
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeRcpMessage(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 41947
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x10000

    if-nez v0, :cond_1

    .line 41948
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    if-eqz v0, :cond_0

    .line 41950
    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 41951
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 41952
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$RcpCommand;->newBuilder(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    goto :goto_0

    .line 41954
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 41956
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 41958
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41960
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeReadMessage(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 41829
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const v1, 0x8000

    if-nez v0, :cond_1

    .line 41830
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    if-eqz v0, :cond_0

    .line 41832
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 41833
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 41834
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ReadCommand;->newBuilder(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    goto :goto_0

    .line 41836
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 41838
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 41840
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41842
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeReportMessage(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 42537
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x200000

    if-nez v0, :cond_1

    .line 42538
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    if-eqz v0, :cond_0

    .line 42540
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 42541
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 42542
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ReportCommand;->newBuilder(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    goto :goto_0

    .line 42544
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 42546
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 42548
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42550
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeRoomMessage(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 42301
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x80000

    if-nez v0, :cond_1

    .line 42302
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    if-eqz v0, :cond_0

    .line 42304
    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 42305
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 42306
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$RoomCommand;->newBuilder(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    goto :goto_0

    .line 42308
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 42310
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 42312
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42314
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeSessionMessage(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 41239
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x400

    if-nez v0, :cond_1

    .line 41240
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    if-eqz v0, :cond_0

    .line 41242
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 41243
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 41244
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->newBuilder(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    goto :goto_0

    .line 41246
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 41248
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 41250
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41252
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 0

    .line 42962
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnreadMessage(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 3

    .line 41711
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    .line 41712
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    if-eqz v0, :cond_0

    .line 41714
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 41715
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 41716
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->newBuilder(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    goto :goto_0

    .line 41718
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 41720
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_1

    .line 41722
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41724
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAckMessage(Lcom/avos/avoscloud/Messages$AckCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41580
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41581
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->build()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 41582
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41584
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->build()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41586
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAckMessage(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41563
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 41567
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 41568
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41565
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 41570
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41572
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 40760
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40761
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40762
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0

    .line 40758
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 40782
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40783
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->appId_:Ljava/lang/Object;

    .line 40784
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0

    .line 40780
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setBlacklistMessage(Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42878
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42879
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->build()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 42880
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42882
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->build()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42884
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setBlacklistMessage(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42861
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 42865
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 42866
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42863
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 42868
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42870
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCmd(Lcom/avos/avoscloud/Messages$CommandType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 40661
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40662
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$CommandType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->cmd_:I

    .line 40663
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0

    .line 40659
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setConvMessage(Lcom/avos/avoscloud/Messages$ConvCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42170
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42171
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 42172
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42174
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42176
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setConvMessage(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42153
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 42157
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 42158
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42155
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 42160
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42162
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDataMessage(Lcom/avos/avoscloud/Messages$DataCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41108
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41109
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 41110
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41112
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41114
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDataMessage(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41091
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 41095
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 41096
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41093
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 41098
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41100
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDirectMessage(Lcom/avos/avoscloud/Messages$DirectCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41462
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41463
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 41464
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41466
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->build()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41468
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDirectMessage(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41445
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 41449
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 41450
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41447
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 41452
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41454
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setErrorMessage(Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41344
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41345
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 41346
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41348
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41350
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setErrorMessage(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41327
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 41331
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 41332
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41329
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 41334
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41336
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 0

    .line 40465
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setI(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40881
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40882
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->i_:I

    .line 40883
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setInstallationId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 40944
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40945
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    .line 40946
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0

    .line 40942
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setInstallationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 40966
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40967
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->installationId_:Ljava/lang/Object;

    .line 40968
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0

    .line 40964
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setLogsMessage(Lcom/avos/avoscloud/Messages$LogsCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42052
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42053
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->build()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 42054
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42056
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->build()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42058
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLogsMessage(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42035
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 42039
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 42040
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42037
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 42042
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42044
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setOp(Lcom/avos/avoscloud/Messages$OpType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 40697
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40698
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$OpType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->op_:I

    .line 40699
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0

    .line 40695
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPatchMessage(Lcom/avos/avoscloud/Messages$PatchCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42642
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42643
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 42644
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42646
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42648
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x400000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPatchMessage(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42625
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 42629
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 42630
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42627
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 42632
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42634
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x400000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPeerId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 40836
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40837
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40838
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0

    .line 40834
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPeerIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 40858
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40859
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->peerId_:Ljava/lang/Object;

    .line 40860
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0

    .line 40856
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setPresenceMessage(Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42406
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42407
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 42408
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42410
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42412
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPresenceMessage(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42389
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 42393
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 42394
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42391
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 42396
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42398
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPriority(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40989
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 40990
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->priority_:I

    .line 40991
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setPubsubMessage(Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42760
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42761
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 42762
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42764
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->build()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42766
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPubsubMessage(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42743
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 42747
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 42748
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42745
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 42750
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42752
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRcpMessage(Lcom/avos/avoscloud/Messages$RcpCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41934
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41935
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->build()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 41936
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41938
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->build()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41940
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRcpMessage(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41917
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 41921
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 41922
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41919
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 41924
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41926
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setReadMessage(Lcom/avos/avoscloud/Messages$ReadCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41816
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41817
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 41818
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41820
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41822
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setReadMessage(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41799
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 41803
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 41804
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41801
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 41806
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41808
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 0

    .line 40478
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setReportMessage(Lcom/avos/avoscloud/Messages$ReportCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42524
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42525
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 42526
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42528
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42530
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setReportMessage(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42507
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 42511
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 42512
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42509
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 42514
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42516
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRoomMessage(Lcom/avos/avoscloud/Messages$RoomCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42288
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 42289
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->build()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 42290
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42292
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->build()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42294
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setRoomMessage(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 42271
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 42275
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 42276
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 42273
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 42278
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42280
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setServerTs(J)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41053
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41054
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->serverTs_:J

    .line 41055
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setService(I)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41021
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    .line 41022
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->service_:I

    .line 41023
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionMessage(Lcom/avos/avoscloud/Messages$SessionCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41226
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41227
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->build()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 41228
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41230
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->build()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41232
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setSessionMessage(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41209
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 41213
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 41214
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41211
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 41216
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41218
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 0

    .line 42957
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 40103
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnreadMessage(Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41698
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41699
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 41700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41702
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->build()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41704
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUnreadMessage(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 41681
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 41685
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 41686
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->onChanged()V

    goto :goto_0

    .line 41683
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 41688
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41690
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->bitField0_:I

    return-object p0
.end method
