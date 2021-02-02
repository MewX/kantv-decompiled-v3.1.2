.class public final Lcom/avos/avoscloud/Messages$GenericCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$GenericCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    }
.end annotation


# static fields
.field public static final ACKMESSAGE_FIELD_NUMBER:I = 0x69

.field public static final APPID_FIELD_NUMBER:I = 0x3

.field public static final BLACKLISTMESSAGE_FIELD_NUMBER:I = 0x74

.field public static final CMD_FIELD_NUMBER:I = 0x1

.field public static final CONVMESSAGE_FIELD_NUMBER:I = 0x6e

.field public static final DATAMESSAGE_FIELD_NUMBER:I = 0x65

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$GenericCommand;

.field public static final DIRECTMESSAGE_FIELD_NUMBER:I = 0x68

.field public static final ERRORMESSAGE_FIELD_NUMBER:I = 0x67

.field public static final INSTALLATIONID_FIELD_NUMBER:I = 0x6

.field public static final I_FIELD_NUMBER:I = 0x5

.field public static final LOGSMESSAGE_FIELD_NUMBER:I = 0x6d

.field public static final OP_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$GenericCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATCHMESSAGE_FIELD_NUMBER:I = 0x72

.field public static final PEERID_FIELD_NUMBER:I = 0x4

.field public static final PRESENCEMESSAGE_FIELD_NUMBER:I = 0x70

.field public static final PRIORITY_FIELD_NUMBER:I = 0x7

.field public static final PUBSUBMESSAGE_FIELD_NUMBER:I = 0x73

.field public static final RCPMESSAGE_FIELD_NUMBER:I = 0x6c

.field public static final READMESSAGE_FIELD_NUMBER:I = 0x6b

.field public static final REPORTMESSAGE_FIELD_NUMBER:I = 0x71

.field public static final ROOMMESSAGE_FIELD_NUMBER:I = 0x6f

.field public static final SERVERTS_FIELD_NUMBER:I = 0x9

.field public static final SERVICE_FIELD_NUMBER:I = 0x8

.field public static final SESSIONMESSAGE_FIELD_NUMBER:I = 0x66

.field public static final UNREADMESSAGE_FIELD_NUMBER:I = 0x6a

.field private static final serialVersionUID:J


# instance fields
.field private ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

.field private volatile appId_:Ljava/lang/Object;

.field private bitField0_:I

.field private blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

.field private cmd_:I

.field private convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

.field private dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

.field private directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

.field private errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

.field private i_:I

.field private volatile installationId_:Ljava/lang/Object;

.field private logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

.field private memoizedIsInitialized:B

.field private op_:I

.field private patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

.field private volatile peerId_:Ljava/lang/Object;

.field private presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

.field private priority_:I

.field private pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

.field private rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

.field private readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

.field private reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

.field private roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

.field private serverTs_:J

.field private service_:I

.field private sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

.field private unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42972
    new-instance v0, Lcom/avos/avoscloud/Messages$GenericCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$GenericCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$GenericCommand;

    .line 42980
    new-instance v0, Lcom/avos/avoscloud/Messages$GenericCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$GenericCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 38635
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 39522
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 38636
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I

    const/4 v1, 0x1

    .line 38637
    iput v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    const-string v1, ""

    .line 38638
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    .line 38639
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    .line 38640
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->i_:I

    .line 38641
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    .line 38642
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->priority_:I

    .line 38643
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->service_:I

    const-wide/16 v0, 0x0

    .line 38644
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->serverTs_:J

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38656
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;-><init>()V

    .line 38659
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_23

    .line 38663
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 38669
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/avos/avoscloud/Messages$GenericCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 38932
    :sswitch_0
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 38933
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->toBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v4

    .line 38935
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    if-eqz v4, :cond_2

    .line 38937
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 38938
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    .line 38940
    :cond_2
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto :goto_0

    .line 38919
    :sswitch_1
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    .line 38920
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$PubsubCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    move-result-object v4

    .line 38922
    :cond_3
    sget-object v2, Lcom/avos/avoscloud/Messages$PubsubCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$PubsubCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    if-eqz v4, :cond_4

    .line 38924
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;

    .line 38925
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$PubsubCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    .line 38927
    :cond_4
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto :goto_0

    .line 38906
    :sswitch_2
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5

    .line 38907
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$PatchCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v4

    .line 38909
    :cond_5
    sget-object v2, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$PatchCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    if-eqz v4, :cond_6

    .line 38911
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    .line 38912
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 38914
    :cond_6
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x400000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38893
    :sswitch_3
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    .line 38894
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$ReportCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v4

    .line 38896
    :cond_7
    sget-object v2, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$ReportCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    if-eqz v4, :cond_8

    .line 38898
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    .line 38899
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 38901
    :cond_8
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38880
    :sswitch_4
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    .line 38881
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$PresenceCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v4

    .line 38883
    :cond_9
    sget-object v2, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$PresenceCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    if-eqz v4, :cond_a

    .line 38885
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    .line 38886
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 38888
    :cond_a
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38867
    :sswitch_5
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_b

    .line 38868
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$RoomCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    move-result-object v4

    .line 38870
    :cond_b
    sget-object v2, Lcom/avos/avoscloud/Messages$RoomCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$RoomCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    if-eqz v4, :cond_c

    .line 38872
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand$Builder;

    .line 38873
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$RoomCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    .line 38875
    :cond_c
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38854
    :sswitch_6
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 38855
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$ConvCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v4

    .line 38857
    :cond_d
    sget-object v2, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$ConvCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    if-eqz v4, :cond_e

    .line 38859
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 38860
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    .line 38862
    :cond_e
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38841
    :sswitch_7
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_f

    .line 38842
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->toBuilder()Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    move-result-object v4

    .line 38844
    :cond_f
    sget-object v2, Lcom/avos/avoscloud/Messages$LogsCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$LogsCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    if-eqz v4, :cond_10

    .line 38846
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand$Builder;

    .line 38847
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$LogsCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    .line 38849
    :cond_10
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38828
    :sswitch_8
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_11

    .line 38829
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$RcpCommand;->toBuilder()Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    move-result-object v4

    .line 38831
    :cond_11
    sget-object v2, Lcom/avos/avoscloud/Messages$RcpCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$RcpCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    if-eqz v4, :cond_12

    .line 38833
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand$Builder;

    .line 38834
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$RcpCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    .line 38836
    :cond_12
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38815
    :sswitch_9
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_13

    .line 38816
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$ReadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v4

    .line 38818
    :cond_13
    sget-object v2, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$ReadCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    if-eqz v4, :cond_14

    .line 38820
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    .line 38821
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 38823
    :cond_14
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38802
    :sswitch_a
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v3, 0x4000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_15

    .line 38803
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$UnreadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v4

    .line 38805
    :cond_15
    sget-object v2, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$UnreadCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    if-eqz v4, :cond_16

    .line 38807
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    .line 38808
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 38810
    :cond_16
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38789
    :sswitch_b
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_17

    .line 38790
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$AckCommand;->toBuilder()Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    move-result-object v4

    .line 38792
    :cond_17
    sget-object v2, Lcom/avos/avoscloud/Messages$AckCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$AckCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    if-eqz v4, :cond_18

    .line 38794
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand$Builder;

    .line 38795
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$AckCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    .line 38797
    :cond_18
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38776
    :sswitch_c
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v3, 0x1000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_19

    .line 38777
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    move-result-object v4

    .line 38779
    :cond_19
    sget-object v2, Lcom/avos/avoscloud/Messages$DirectCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$DirectCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    if-eqz v4, :cond_1a

    .line 38781
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand$Builder;

    .line 38782
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$DirectCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    .line 38784
    :cond_1a
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38763
    :sswitch_d
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v3, 0x800

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1b

    .line 38764
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v4

    .line 38766
    :cond_1b
    sget-object v2, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$ErrorCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    if-eqz v4, :cond_1c

    .line 38768
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    .line 38769
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 38771
    :cond_1c
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38750
    :sswitch_e
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1d

    .line 38751
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->toBuilder()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v4

    .line 38753
    :cond_1d
    sget-object v2, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$SessionCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    if-eqz v4, :cond_1e

    .line 38755
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 38756
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    .line 38758
    :cond_1e
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38737
    :sswitch_f
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1f

    .line 38738
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$DataCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v4

    .line 38740
    :cond_1f
    sget-object v2, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Messages$DataCommand;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    if-eqz v4, :cond_20

    .line 38742
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    .line 38743
    invoke-virtual {v4}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 38745
    :cond_20
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    goto/16 :goto_0

    .line 38731
    :sswitch_10
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38732
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->serverTs_:J

    goto/16 :goto_0

    .line 38726
    :sswitch_11
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38727
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->service_:I

    goto/16 :goto_0

    .line 38721
    :sswitch_12
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38722
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->priority_:I

    goto/16 :goto_0

    .line 38715
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 38716
    iget v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38717
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 38710
    :sswitch_14
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38711
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->i_:I

    goto/16 :goto_0

    .line 38704
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 38705
    iget v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38706
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 38698
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 38699
    iget v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38700
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 38687
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 38688
    invoke-static {v2}, Lcom/avos/avoscloud/Messages$OpType;->valueOf(I)Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v3

    if-nez v3, :cond_21

    const/4 v3, 0x2

    .line 38690
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 38692
    :cond_21
    iget v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38693
    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    goto/16 :goto_0

    .line 38676
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 38677
    invoke-static {v2}, Lcom/avos/avoscloud/Messages$CommandType;->valueOf(I)Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v4

    if-nez v4, :cond_22

    .line 38679
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 38681
    :cond_22
    iget v4, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    .line 38682
    iput v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_19
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 38948
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 38949
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 38946
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38951
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 38952
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->makeExtensionsImmutable()V

    throw p1

    .line 38951
    :cond_23
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 38952
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_19
        0x8 -> :sswitch_18
        0x10 -> :sswitch_17
        0x1a -> :sswitch_16
        0x22 -> :sswitch_15
        0x28 -> :sswitch_14
        0x32 -> :sswitch_13
        0x38 -> :sswitch_12
        0x40 -> :sswitch_11
        0x48 -> :sswitch_10
        0x32a -> :sswitch_f
        0x332 -> :sswitch_e
        0x33a -> :sswitch_d
        0x342 -> :sswitch_c
        0x34a -> :sswitch_b
        0x352 -> :sswitch_a
        0x35a -> :sswitch_9
        0x362 -> :sswitch_8
        0x36a -> :sswitch_7
        0x372 -> :sswitch_6
        0x37a -> :sswitch_5
        0x382 -> :sswitch_4
        0x38a -> :sswitch_3
        0x392 -> :sswitch_2
        0x39a -> :sswitch_1
        0x3a2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38626
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$GenericCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 38633
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 39522
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 38626
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$41200()Z
    .locals 1

    .line 38626
    sget-boolean v0, Lcom/avos/avoscloud/Messages$GenericCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$41402(Lcom/avos/avoscloud/Messages$GenericCommand;I)I
    .locals 0

    .line 38626
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I

    return p1
.end method

.method static synthetic access$41502(Lcom/avos/avoscloud/Messages$GenericCommand;I)I
    .locals 0

    .line 38626
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    return p1
.end method

.method static synthetic access$41600(Lcom/avos/avoscloud/Messages$GenericCommand;)Ljava/lang/Object;
    .locals 0

    .line 38626
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$41602(Lcom/avos/avoscloud/Messages$GenericCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$41700(Lcom/avos/avoscloud/Messages$GenericCommand;)Ljava/lang/Object;
    .locals 0

    .line 38626
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$41702(Lcom/avos/avoscloud/Messages$GenericCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$41802(Lcom/avos/avoscloud/Messages$GenericCommand;I)I
    .locals 0

    .line 38626
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->i_:I

    return p1
.end method

.method static synthetic access$41900(Lcom/avos/avoscloud/Messages$GenericCommand;)Ljava/lang/Object;
    .locals 0

    .line 38626
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$41902(Lcom/avos/avoscloud/Messages$GenericCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42002(Lcom/avos/avoscloud/Messages$GenericCommand;I)I
    .locals 0

    .line 38626
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->priority_:I

    return p1
.end method

.method static synthetic access$42102(Lcom/avos/avoscloud/Messages$GenericCommand;I)I
    .locals 0

    .line 38626
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->service_:I

    return p1
.end method

.method static synthetic access$42202(Lcom/avos/avoscloud/Messages$GenericCommand;J)J
    .locals 0

    .line 38626
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->serverTs_:J

    return-wide p1
.end method

.method static synthetic access$42302(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p1
.end method

.method static synthetic access$42402(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    return-object p1
.end method

.method static synthetic access$42502(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p1
.end method

.method static synthetic access$42602(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$DirectCommand;)Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    return-object p1
.end method

.method static synthetic access$42702(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$AckCommand;)Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    return-object p1
.end method

.method static synthetic access$42802(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p1
.end method

.method static synthetic access$42902(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p1
.end method

.method static synthetic access$43002(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$RcpCommand;)Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    return-object p1
.end method

.method static synthetic access$43102(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$LogsCommand;)Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    return-object p1
.end method

.method static synthetic access$43202(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    return-object p1
.end method

.method static synthetic access$43302(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$RoomCommand;)Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    return-object p1
.end method

.method static synthetic access$43402(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p1
.end method

.method static synthetic access$43502(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p1
.end method

.method static synthetic access$43602(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p1
.end method

.method static synthetic access$43702(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$PubsubCommand;)Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    return-object p1
.end method

.method static synthetic access$43802(Lcom/avos/avoscloud/Messages$GenericCommand;Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 0

    .line 38626
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    return-object p1
.end method

.method static synthetic access$43902(Lcom/avos/avoscloud/Messages$GenericCommand;I)I
    .locals 0

    .line 38626
    iput p1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$44000(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 38626
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1

    .line 42976
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 38957
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$40800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40084
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$GenericCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand;->toBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40087
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$GenericCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$GenericCommand;->toBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40058
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 40059
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40065
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 40066
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40026
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40032
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40071
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 40072
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40078
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 40079
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40046
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 40047
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40053
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 40054
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40015
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40021
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40036
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40042
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$GenericCommand;",
            ">;"
        }
    .end annotation

    .line 42990
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 39766
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$GenericCommand;

    if-nez v1, :cond_1

    .line 39767
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 39769
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$GenericCommand;

    .line 39772
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasCmd()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasCmd()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 39773
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasCmd()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 39774
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I

    iget v2, p1, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 39776
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasOp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasOp()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 39777
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasOp()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 39778
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    iget v2, p1, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 39780
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAppId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAppId()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 39781
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 39782
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 39783
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 39785
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPeerId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPeerId()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 39786
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPeerId()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 39787
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPeerId()Ljava/lang/String;

    move-result-object v1

    .line 39788
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 39790
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasI()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasI()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 39791
    :goto_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasI()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 39792
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getI()I

    move-result v1

    .line 39793
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getI()I

    move-result v2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 39795
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasInstallationId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasInstallationId()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 39796
    :goto_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasInstallationId()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 39797
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    .line 39798
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 39800
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPriority()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPriority()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 39801
    :goto_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 39802
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPriority()I

    move-result v1

    .line 39803
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPriority()I

    move-result v2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 39805
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasService()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasService()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    .line 39806
    :goto_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasService()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 39807
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getService()I

    move-result v1

    .line 39808
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getService()I

    move-result v2

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 39810
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasServerTs()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasServerTs()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    .line 39811
    :goto_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasServerTs()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 39812
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getServerTs()J

    move-result-wide v1

    .line 39813
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getServerTs()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 39815
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDataMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDataMessage()Z

    move-result v2

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    .line 39816
    :goto_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDataMessage()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1e

    .line 39817
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v1

    .line 39818
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$DataCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 39820
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasSessionMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasSessionMessage()Z

    move-result v2

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_14

    :cond_20
    const/4 v1, 0x0

    .line 39821
    :goto_14
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasSessionMessage()Z

    move-result v2

    if-eqz v2, :cond_22

    if-eqz v1, :cond_21

    .line 39822
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v1

    .line 39823
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_15
    if-eqz v1, :cond_23

    .line 39825
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasErrorMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasErrorMessage()Z

    move-result v2

    if-ne v1, v2, :cond_23

    const/4 v1, 0x1

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    .line 39826
    :goto_16
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasErrorMessage()Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v1, :cond_24

    .line 39827
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v1

    .line 39828
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_17

    :cond_24
    const/4 v1, 0x0

    :cond_25
    :goto_17
    if-eqz v1, :cond_26

    .line 39830
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDirectMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDirectMessage()Z

    move-result v2

    if-ne v1, v2, :cond_26

    const/4 v1, 0x1

    goto :goto_18

    :cond_26
    const/4 v1, 0x0

    .line 39831
    :goto_18
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDirectMessage()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v1, :cond_27

    .line 39832
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v1

    .line 39833
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$DirectCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_19

    :cond_27
    const/4 v1, 0x0

    :cond_28
    :goto_19
    if-eqz v1, :cond_29

    .line 39835
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAckMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAckMessage()Z

    move-result v2

    if-ne v1, v2, :cond_29

    const/4 v1, 0x1

    goto :goto_1a

    :cond_29
    const/4 v1, 0x0

    .line 39836
    :goto_1a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAckMessage()Z

    move-result v2

    if-eqz v2, :cond_2b

    if-eqz v1, :cond_2a

    .line 39837
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v1

    .line 39838
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$AckCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v1, 0x0

    :cond_2b
    :goto_1b
    if-eqz v1, :cond_2c

    .line 39840
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasUnreadMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasUnreadMessage()Z

    move-result v2

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v1, 0x0

    .line 39841
    :goto_1c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasUnreadMessage()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_2d

    .line 39842
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v1

    .line 39843
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$UnreadCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v1, 0x0

    :cond_2e
    :goto_1d
    if-eqz v1, :cond_2f

    .line 39845
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReadMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReadMessage()Z

    move-result v2

    if-ne v1, v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_1e

    :cond_2f
    const/4 v1, 0x0

    .line 39846
    :goto_1e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReadMessage()Z

    move-result v2

    if-eqz v2, :cond_31

    if-eqz v1, :cond_30

    .line 39847
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v1

    .line 39848
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ReadCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    goto :goto_1f

    :cond_30
    const/4 v1, 0x0

    :cond_31
    :goto_1f
    if-eqz v1, :cond_32

    .line 39850
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRcpMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRcpMessage()Z

    move-result v2

    if-ne v1, v2, :cond_32

    const/4 v1, 0x1

    goto :goto_20

    :cond_32
    const/4 v1, 0x0

    .line 39851
    :goto_20
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRcpMessage()Z

    move-result v2

    if-eqz v2, :cond_34

    if-eqz v1, :cond_33

    .line 39852
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v1

    .line 39853
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$RcpCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    goto :goto_21

    :cond_33
    const/4 v1, 0x0

    :cond_34
    :goto_21
    if-eqz v1, :cond_35

    .line 39855
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasLogsMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasLogsMessage()Z

    move-result v2

    if-ne v1, v2, :cond_35

    const/4 v1, 0x1

    goto :goto_22

    :cond_35
    const/4 v1, 0x0

    .line 39856
    :goto_22
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasLogsMessage()Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v1, :cond_36

    .line 39857
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v1

    .line 39858
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$LogsCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    goto :goto_23

    :cond_36
    const/4 v1, 0x0

    :cond_37
    :goto_23
    if-eqz v1, :cond_38

    .line 39860
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasConvMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasConvMessage()Z

    move-result v2

    if-ne v1, v2, :cond_38

    const/4 v1, 0x1

    goto :goto_24

    :cond_38
    const/4 v1, 0x0

    .line 39861
    :goto_24
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasConvMessage()Z

    move-result v2

    if-eqz v2, :cond_3a

    if-eqz v1, :cond_39

    .line 39862
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v1

    .line 39863
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ConvCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    goto :goto_25

    :cond_39
    const/4 v1, 0x0

    :cond_3a
    :goto_25
    if-eqz v1, :cond_3b

    .line 39865
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRoomMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRoomMessage()Z

    move-result v2

    if-ne v1, v2, :cond_3b

    const/4 v1, 0x1

    goto :goto_26

    :cond_3b
    const/4 v1, 0x0

    .line 39866
    :goto_26
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRoomMessage()Z

    move-result v2

    if-eqz v2, :cond_3d

    if-eqz v1, :cond_3c

    .line 39867
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v1

    .line 39868
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$RoomCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_27

    :cond_3c
    const/4 v1, 0x0

    :cond_3d
    :goto_27
    if-eqz v1, :cond_3e

    .line 39870
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPresenceMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPresenceMessage()Z

    move-result v2

    if-ne v1, v2, :cond_3e

    const/4 v1, 0x1

    goto :goto_28

    :cond_3e
    const/4 v1, 0x0

    .line 39871
    :goto_28
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPresenceMessage()Z

    move-result v2

    if-eqz v2, :cond_40

    if-eqz v1, :cond_3f

    .line 39872
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v1

    .line 39873
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PresenceCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_29

    :cond_3f
    const/4 v1, 0x0

    :cond_40
    :goto_29
    if-eqz v1, :cond_41

    .line 39875
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReportMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReportMessage()Z

    move-result v2

    if-ne v1, v2, :cond_41

    const/4 v1, 0x1

    goto :goto_2a

    :cond_41
    const/4 v1, 0x0

    .line 39876
    :goto_2a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReportMessage()Z

    move-result v2

    if-eqz v2, :cond_43

    if-eqz v1, :cond_42

    .line 39877
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v1

    .line 39878
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ReportCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    goto :goto_2b

    :cond_42
    const/4 v1, 0x0

    :cond_43
    :goto_2b
    if-eqz v1, :cond_44

    .line 39880
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPatchMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPatchMessage()Z

    move-result v2

    if-ne v1, v2, :cond_44

    const/4 v1, 0x1

    goto :goto_2c

    :cond_44
    const/4 v1, 0x0

    .line 39881
    :goto_2c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPatchMessage()Z

    move-result v2

    if-eqz v2, :cond_46

    if-eqz v1, :cond_45

    .line 39882
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v1

    .line 39883
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PatchCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    goto :goto_2d

    :cond_45
    const/4 v1, 0x0

    :cond_46
    :goto_2d
    if-eqz v1, :cond_47

    .line 39885
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPubsubMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPubsubMessage()Z

    move-result v2

    if-ne v1, v2, :cond_47

    const/4 v1, 0x1

    goto :goto_2e

    :cond_47
    const/4 v1, 0x0

    .line 39886
    :goto_2e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPubsubMessage()Z

    move-result v2

    if-eqz v2, :cond_49

    if-eqz v1, :cond_48

    .line 39887
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v1

    .line 39888
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$PubsubCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    goto :goto_2f

    :cond_48
    const/4 v1, 0x0

    :cond_49
    :goto_2f
    if-eqz v1, :cond_4a

    .line 39890
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasBlacklistMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasBlacklistMessage()Z

    move-result v2

    if-ne v1, v2, :cond_4a

    const/4 v1, 0x1

    goto :goto_30

    :cond_4a
    const/4 v1, 0x0

    .line 39891
    :goto_30
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasBlacklistMessage()Z

    move-result v2

    if-eqz v2, :cond_4c

    if-eqz v1, :cond_4b

    .line 39892
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v1

    .line 39893
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    goto :goto_31

    :cond_4b
    const/4 v1, 0x0

    :cond_4c
    :goto_31
    if-eqz v1, :cond_4d

    .line 39895
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_32

    :cond_4d
    const/4 v0, 0x0

    :goto_32
    return v0
.end method

.method public getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;
    .locals 1

    .line 39282
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAckMessageOrBuilder()Lcom/avos/avoscloud/Messages$AckCommandOrBuilder;
    .locals 1

    .line 39288
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->ackMessage_:Lcom/avos/avoscloud/Messages$AckCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$AckCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .line 39012
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    .line 39013
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39014
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39016
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39018
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39019
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39020
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 39030
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    .line 39031
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39032
    check-cast v0, Ljava/lang/String;

    .line 39033
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39035
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    return-object v0

    .line 39038
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1

    .line 39513
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBlacklistMessageOrBuilder()Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;
    .locals 1

    .line 39519
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->blacklistMessage_:Lcom/avos/avoscloud/Messages$BlacklistCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCmd()Lcom/avos/avoscloud/Messages$CommandType;
    .locals 1

    .line 38980
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I

    invoke-static {v0}, Lcom/avos/avoscloud/Messages$CommandType;->valueOf(I)Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38981
    sget-object v0, Lcom/avos/avoscloud/Messages$CommandType;->session:Lcom/avos/avoscloud/Messages$CommandType;

    :cond_0
    return-object v0
.end method

.method public getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1

    .line 39387
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConvMessageOrBuilder()Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;
    .locals 1

    .line 39393
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->convMessage_:Lcom/avos/avoscloud/Messages$ConvCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1

    .line 39198
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataMessageOrBuilder()Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;
    .locals 1

    .line 39204
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->dataMessage_:Lcom/avos/avoscloud/Messages$DataCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$GenericCommand;
    .locals 1

    .line 42999
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$GenericCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 38626
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 38626
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$GenericCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;
    .locals 1

    .line 39261
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDirectMessageOrBuilder()Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;
    .locals 1

    .line 39267
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->directMessage_:Lcom/avos/avoscloud/Messages$DirectCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$DirectCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 39240
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getErrorMessageOrBuilder()Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;
    .locals 1

    .line 39246
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->errorMessage_:Lcom/avos/avoscloud/Messages$ErrorCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getI()I
    .locals 1

    .line 39096
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->i_:I

    return v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 2

    .line 39111
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    .line 39112
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39113
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39115
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39117
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39118
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39119
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getInstallationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 39129
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    .line 39130
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39131
    check-cast v0, Ljava/lang/String;

    .line 39132
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39134
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    return-object v0

    .line 39137
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;
    .locals 1

    .line 39366
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLogsMessageOrBuilder()Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;
    .locals 1

    .line 39372
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->logsMessage_:Lcom/avos/avoscloud/Messages$LogsCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOp()Lcom/avos/avoscloud/Messages$OpType;
    .locals 1

    .line 38996
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    invoke-static {v0}, Lcom/avos/avoscloud/Messages$OpType;->valueOf(I)Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38997
    sget-object v0, Lcom/avos/avoscloud/Messages$OpType;->open:Lcom/avos/avoscloud/Messages$OpType;

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$GenericCommand;",
            ">;"
        }
    .end annotation

    .line 42995
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1

    .line 39471
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPatchMessageOrBuilder()Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;
    .locals 1

    .line 39477
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->patchMessage_:Lcom/avos/avoscloud/Messages$PatchCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 2

    .line 39054
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    .line 39055
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39056
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39058
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39060
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39061
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39062
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPeerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 39072
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    .line 39073
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39074
    check-cast v0, Ljava/lang/String;

    .line 39075
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39077
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    return-object v0

    .line 39080
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1

    .line 39429
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPresenceMessageOrBuilder()Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;
    .locals 1

    .line 39435
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->presenceMessage_:Lcom/avos/avoscloud/Messages$PresenceCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 39153
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->priority_:I

    return v0
.end method

.method public getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;
    .locals 1

    .line 39492
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPubsubMessageOrBuilder()Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;
    .locals 1

    .line 39498
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->pubsubMessage_:Lcom/avos/avoscloud/Messages$PubsubCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$PubsubCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;
    .locals 1

    .line 39345
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRcpMessageOrBuilder()Lcom/avos/avoscloud/Messages$RcpCommandOrBuilder;
    .locals 1

    .line 39351
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->rcpMessage_:Lcom/avos/avoscloud/Messages$RcpCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$RcpCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1

    .line 39324
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReadMessageOrBuilder()Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;
    .locals 1

    .line 39330
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->readMessage_:Lcom/avos/avoscloud/Messages$ReadCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1

    .line 39450
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReportMessageOrBuilder()Lcom/avos/avoscloud/Messages$ReportCommandOrBuilder;
    .locals 1

    .line 39456
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->reportMessage_:Lcom/avos/avoscloud/Messages$ReportCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;
    .locals 1

    .line 39408
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoomMessageOrBuilder()Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;
    .locals 1

    .line 39414
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->roomMessage_:Lcom/avos/avoscloud/Messages$RoomCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$RoomCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 39655
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 39659
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 39660
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I

    .line 39661
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39663
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 39664
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    .line 39665
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39667
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 39668
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39670
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 39671
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39673
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 39674
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->i_:I

    .line 39675
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39677
    :cond_5
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 39678
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39680
    :cond_6
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 39681
    iget v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->priority_:I

    .line 39682
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39684
    :cond_7
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 39685
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->service_:I

    .line 39686
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39688
    :cond_8
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 39689
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->serverTs_:J

    .line 39690
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 39692
    :cond_9
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0x65

    .line 39694
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39696
    :cond_a
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0x66

    .line 39698
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39700
    :cond_b
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0x67

    .line 39702
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39704
    :cond_c
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0x68

    .line 39706
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39708
    :cond_d
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0x69

    .line 39710
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39712
    :cond_e
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x4000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    const/16 v1, 0x6a

    .line 39714
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39716
    :cond_f
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10

    const/16 v1, 0x6b

    .line 39718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39720
    :cond_10
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    const/16 v1, 0x6c

    .line 39722
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39724
    :cond_11
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    const/16 v1, 0x6d

    .line 39726
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39728
    :cond_12
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/16 v1, 0x6e

    .line 39730
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39732
    :cond_13
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    const/16 v1, 0x6f

    .line 39734
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39736
    :cond_14
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    const/16 v1, 0x70

    .line 39738
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39740
    :cond_15
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    const/16 v1, 0x71

    .line 39742
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39744
    :cond_16
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    const/16 v1, 0x72

    .line 39746
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39748
    :cond_17
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_18

    const/16 v1, 0x73

    .line 39750
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39752
    :cond_18
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_19

    const/16 v1, 0x74

    .line 39754
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39756
    :cond_19
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 39757
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedSize:I

    return v0
.end method

.method public getServerTs()J
    .locals 2

    .line 39183
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->serverTs_:J

    return-wide v0
.end method

.method public getService()I
    .locals 1

    .line 39168
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->service_:I

    return v0
.end method

.method public getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1

    .line 39219
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSessionMessageOrBuilder()Lcom/avos/avoscloud/Messages$SessionCommandOrBuilder;
    .locals 1

    .line 39225
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->sessionMessage_:Lcom/avos/avoscloud/Messages$SessionCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 38650
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1

    .line 39303
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUnreadMessageOrBuilder()Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;
    .locals 1

    .line 39309
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unreadMessage_:Lcom/avos/avoscloud/Messages$UnreadCommand;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAckMessage()Z
    .locals 2

    .line 39276
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39006
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39507
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 38974
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39381
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39192
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39255
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39234
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39090
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39105
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39360
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 38990
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39465
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39048
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39423
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39147
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39486
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39339
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39318
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39444
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39402
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39177
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39162
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39213
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

    .line 39297
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 39901
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 39902
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 39905
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39906
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasCmd()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 39908
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I

    add-int/2addr v0, v1

    .line 39910
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasOp()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 39912
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    add-int/2addr v0, v1

    .line 39914
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAppId()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 39916
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39918
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPeerId()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 39920
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39922
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasI()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 39924
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getI()I

    move-result v1

    add-int/2addr v0, v1

    .line 39926
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasInstallationId()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 39928
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39930
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 39932
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPriority()I

    move-result v1

    add-int/2addr v0, v1

    .line 39934
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasService()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 39936
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getService()I

    move-result v1

    add-int/2addr v0, v1

    .line 39938
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasServerTs()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 39941
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getServerTs()J

    move-result-wide v1

    .line 39940
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 39943
    :cond_9
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDataMessage()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x65

    mul-int/lit8 v0, v0, 0x35

    .line 39945
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$DataCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39947
    :cond_a
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasSessionMessage()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x66

    mul-int/lit8 v0, v0, 0x35

    .line 39949
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39951
    :cond_b
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x67

    mul-int/lit8 v0, v0, 0x35

    .line 39953
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39955
    :cond_c
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDirectMessage()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x68

    mul-int/lit8 v0, v0, 0x35

    .line 39957
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$DirectCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39959
    :cond_d
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasAckMessage()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x69

    mul-int/lit8 v0, v0, 0x35

    .line 39961
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$AckCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39963
    :cond_e
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasUnreadMessage()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6a

    mul-int/lit8 v0, v0, 0x35

    .line 39965
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39967
    :cond_f
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReadMessage()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6b

    mul-int/lit8 v0, v0, 0x35

    .line 39969
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$ReadCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39971
    :cond_10
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRcpMessage()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6c

    mul-int/lit8 v0, v0, 0x35

    .line 39973
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$RcpCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39975
    :cond_11
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasLogsMessage()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6d

    mul-int/lit8 v0, v0, 0x35

    .line 39977
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$LogsCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39979
    :cond_12
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasConvMessage()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6e

    mul-int/lit8 v0, v0, 0x35

    .line 39981
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39983
    :cond_13
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasRoomMessage()Z

    move-result v1

    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6f

    mul-int/lit8 v0, v0, 0x35

    .line 39985
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$RoomCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39987
    :cond_14
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPresenceMessage()Z

    move-result v1

    if-eqz v1, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x70

    mul-int/lit8 v0, v0, 0x35

    .line 39989
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39991
    :cond_15
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReportMessage()Z

    move-result v1

    if-eqz v1, :cond_16

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x71

    mul-int/lit8 v0, v0, 0x35

    .line 39993
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$ReportCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39995
    :cond_16
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPatchMessage()Z

    move-result v1

    if-eqz v1, :cond_17

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x72

    mul-int/lit8 v0, v0, 0x35

    .line 39997
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$PatchCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39999
    :cond_17
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPubsubMessage()Z

    move-result v1

    if-eqz v1, :cond_18

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x73

    mul-int/lit8 v0, v0, 0x35

    .line 40001
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$PubsubCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 40003
    :cond_18
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasBlacklistMessage()Z

    move-result v1

    if-eqz v1, :cond_19

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x74

    mul-int/lit8 v0, v0, 0x35

    .line 40005
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    mul-int/lit8 v0, v0, 0x1d

    .line 40007
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 40008
    iput v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 38962
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$40900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$GenericCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 38963
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 39524
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 39528
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasDataMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39529
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DataCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 39530
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return v2

    .line 39534
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39535
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 39536
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return v2

    .line 39540
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasUnreadMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39541
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 39542
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return v2

    .line 39546
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasReadMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39547
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 39548
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return v2

    .line 39552
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasConvMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39553
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 39554
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return v2

    .line 39558
    :cond_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasPubsubMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39559
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PubsubCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 39560
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return v2

    .line 39564
    :cond_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->hasBlacklistMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39565
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 39566
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return v2

    .line 39570
    :cond_8
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 1

    .line 40082
    invoke-static {}, Lcom/avos/avoscloud/Messages$GenericCommand;->newBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 40097
    new-instance v0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 38626
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 38626
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$GenericCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 38626
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 40090
    sget-object v0, Lcom/avos/avoscloud/Messages$GenericCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$GenericCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 40091
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$GenericCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 38626
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->toBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 38626
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->toBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39576
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 39577
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->cmd_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 39579
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 39580
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->op_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 39582
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 39583
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->appId_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 39585
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 39586
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->peerId_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 39588
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 39589
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->i_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 39591
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 39592
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->installationId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 39594
    :cond_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 39595
    iget v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->priority_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 39597
    :cond_6
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 39598
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->service_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 39600
    :cond_7
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 39601
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->serverTs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 39603
    :cond_8
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0x65

    .line 39604
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDataMessage()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39606
    :cond_9
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x66

    .line 39607
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getSessionMessage()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39609
    :cond_a
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0x67

    .line 39610
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getErrorMessage()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39612
    :cond_b
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0x68

    .line 39613
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getDirectMessage()Lcom/avos/avoscloud/Messages$DirectCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39615
    :cond_c
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    const/16 v0, 0x69

    .line 39616
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getAckMessage()Lcom/avos/avoscloud/Messages$AckCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39618
    :cond_d
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    const/16 v0, 0x6a

    .line 39619
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getUnreadMessage()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39621
    :cond_e
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f

    const/16 v0, 0x6b

    .line 39622
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReadMessage()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39624
    :cond_f
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    const/16 v0, 0x6c

    .line 39625
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRcpMessage()Lcom/avos/avoscloud/Messages$RcpCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39627
    :cond_10
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    const/16 v0, 0x6d

    .line 39628
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getLogsMessage()Lcom/avos/avoscloud/Messages$LogsCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39630
    :cond_11
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    const/16 v0, 0x6e

    .line 39631
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getConvMessage()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39633
    :cond_12
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    const/16 v0, 0x6f

    .line 39634
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getRoomMessage()Lcom/avos/avoscloud/Messages$RoomCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39636
    :cond_13
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    const/16 v0, 0x70

    .line 39637
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPresenceMessage()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39639
    :cond_14
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_15

    const/16 v0, 0x71

    .line 39640
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getReportMessage()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39642
    :cond_15
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    const/16 v0, 0x72

    .line 39643
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPatchMessage()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39645
    :cond_16
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_17

    const/16 v0, 0x73

    .line 39646
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getPubsubMessage()Lcom/avos/avoscloud/Messages$PubsubCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39648
    :cond_17
    iget v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18

    const/16 v0, 0x74

    .line 39649
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$GenericCommand;->getBlacklistMessage()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39651
    :cond_18
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$GenericCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
