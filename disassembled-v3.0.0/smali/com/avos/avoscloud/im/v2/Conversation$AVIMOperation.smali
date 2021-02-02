.class public final enum Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVIMOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CLIENT_REFRESH_TOKEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CLIENT_STATUS:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_BLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_MUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_PROMOTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_READ:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_RECALL_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_UNBLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_UNKNOWN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_UNMUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_UPDATE_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;


# instance fields
.field private final code:I

.field private final header:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 44
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v1, 0x0

    const-string v2, "CONVERSATION_CREATION"

    const v3, 0x9c40

    const-string v4, "com.avoscloud.v2.im.conversation.creation."

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 45
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v2, "com.avoscloud.v2.im.conversation.members."

    const/4 v3, 0x1

    const-string v4, "CONVERSATION_ADD_MEMBER"

    const v5, 0x9c41

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 46
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v4, 0x2

    const-string v5, "CONVERSATION_RM_MEMBER"

    const v6, 0x9c42

    invoke-direct {v0, v5, v4, v6, v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 47
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v2, 0x3

    const-string v5, "CONVERSATION_JOIN"

    const v6, 0x9c43

    const-string v7, "com.avoscloud.v2.im.conversation.join."

    invoke-direct {v0, v5, v2, v6, v7}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 48
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v5, 0x4

    const-string v6, "CONVERSATION_QUIT"

    const v7, 0x9c44

    const-string v8, "com.avoscloud.v2.im.conversation.quit."

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 49
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v6, 0x5

    const-string v7, "CONVERSATION_SEND_MESSAGE"

    const v8, 0x9c45

    const-string v9, "com.avoscloud.v2.im.conversation.message."

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 50
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v7, 0x6

    const-string v8, "CLIENT_OPEN"

    const v9, 0x9c46

    const-string v10, "com.avoscloud.v2.im.client.initialize."

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 51
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v8, 0x7

    const-string v9, "CLIENT_DISCONNECT"

    const v10, 0x9c47

    const-string v11, "com.avoscloud.v2.im.client.quit."

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 52
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v9, 0x8

    const-string v10, "CONVERSATION_QUERY"

    const v11, 0x9c48

    const-string v12, "com.avoscloud.v2.im.conversation.query."

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 53
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v10, 0x9

    const-string v11, "CONVERSATION_UPDATE"

    const v12, 0x9c49

    const-string v13, "com.avoscloud.v2.im.conversation.update."

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 54
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v11, 0xa

    const-string v12, "CONVERSATION_MESSAGE_QUERY"

    const v13, 0x9c4a

    const-string v14, "com.avoscloud.v2.im.conversation.message.query."

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 55
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v12, 0xb

    const-string v13, "CONVERSATION_MUTE"

    const v14, 0x9c4b

    const-string v15, "com.avoscloud.v2.im.conversation.mute."

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 56
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v13, 0xc

    const-string v14, "CONVERSATION_UNMUTE"

    const v15, 0x9c4c

    const-string v12, "com.avoscloud.v2.im.conversation.unmute"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 57
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v12, 0xd

    const-string v14, "CONVERSATION_MEMBER_COUNT_QUERY"

    const v15, 0x9c4d

    const-string v13, "com.avoscloud.v2.im.conversation.membercount."

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 58
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v13, "CLIENT_ONLINE_QUERY"

    const/16 v14, 0xe

    const v15, 0x9c4e

    const-string v12, "com.avoscloud.v2.im.client.onlineQuery."

    invoke-direct {v0, v13, v14, v15, v12}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 59
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CLIENT_STATUS"

    const/16 v13, 0xf

    const v14, 0x9c4f

    const-string v15, "com.avoscloud.v2.im.client.status"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_STATUS:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 60
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_READ"

    const/16 v13, 0x10

    const v14, 0x9c50

    const-string v15, "com.avoscloud.v2.im.conversation.read."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_READ:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 61
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_FETCH_RECEIPT_TIME"

    const/16 v13, 0x11

    const v14, 0x9c51

    const-string v15, "com.avoscloud.v2.im.conversation.fetchReceiptTimestamps."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 62
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_UPDATE_MESSAGE"

    const/16 v13, 0x12

    const v14, 0x9c52

    const-string v15, "com.avoscloud.v2.im.conversation.updateMessage."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 63
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_RECALL_MESSAGE"

    const/16 v13, 0x13

    const v14, 0x9c53

    const-string v15, "com.avoscloud.v2.im.conversation.recallMessage."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RECALL_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 64
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CLIENT_REFRESH_TOKEN"

    const/16 v13, 0x14

    const v14, 0x9c54

    const-string v15, "com.avoscloud.v2.im.client.refreshToken"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_REFRESH_TOKEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 65
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_PROMOTE_MEMBER"

    const/16 v13, 0x15

    const v14, 0x9c55

    const-string v15, "com.avoscloud.v2.im.conversation.promoteMember"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_PROMOTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 66
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_MUTE_MEMBER"

    const/16 v13, 0x16

    const v14, 0x9c56

    const-string v15, "com.avoscloud.v2.im.conversation.muteMember"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 67
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_UNMUTE_MEMBER"

    const/16 v13, 0x17

    const v14, 0x9c57

    const-string v15, "com.avoscloud.v2.im.conversation.unmuteMember"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 68
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_BLOCK_MEMBER"

    const/16 v13, 0x18

    const v14, 0x9c58

    const-string v15, "com.avoscloud.v2.im.conversation.blockMember"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 69
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_UNBLOCK_MEMBER"

    const/16 v13, 0x19

    const v14, 0x9c59

    const-string v15, "com.avoscloud.v2.im.conversation.unblockMember"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNBLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 70
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_MUTED_MEMBER_QUERY"

    const/16 v13, 0x1a

    const v14, 0x9c5a

    const-string v15, "com.avoscloud.v2.im.conversation.mutedMemberQuery"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 71
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_BLOCKED_MEMBER_QUERY"

    const/16 v13, 0x1b

    const v14, 0x9c5b

    const-string v15, "com.avoscloud.v2.im.conversation.blockedMemberQuery"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 72
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v12, "CONVERSATION_UNKNOWN"

    const/16 v13, 0x1c

    const v14, 0xc34f

    const-string v15, "com.avoscloud.v2.im.conversation.unknown"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNKNOWN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v0, 0x1d

    .line 43
    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    sget-object v12, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v12, v0, v1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v9

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v10

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v11

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_STATUS:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_READ:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RECALL_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_REFRESH_TOKEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_PROMOTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNBLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNKNOWN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->$VALUES:[Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->code:I

    .line 79
    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->header:Ljava/lang/String;

    return-void
.end method

.method public static getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 149
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNKNOWN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 147
    :pswitch_0
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 145
    :pswitch_1
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 143
    :pswitch_2
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNBLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 141
    :pswitch_3
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 139
    :pswitch_4
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 137
    :pswitch_5
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 135
    :pswitch_6
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_PROMOTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 133
    :pswitch_7
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_REFRESH_TOKEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 131
    :pswitch_8
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RECALL_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 129
    :pswitch_9
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 127
    :pswitch_a
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 125
    :pswitch_b
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_READ:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 123
    :pswitch_c
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_STATUS:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 121
    :pswitch_d
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 119
    :pswitch_e
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 117
    :pswitch_f
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 115
    :pswitch_10
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 113
    :pswitch_11
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 111
    :pswitch_12
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 109
    :pswitch_13
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 107
    :pswitch_14
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 105
    :pswitch_15
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 103
    :pswitch_16
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 101
    :pswitch_17
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 99
    :pswitch_18
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 97
    :pswitch_19
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 95
    :pswitch_1a
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    .line 93
    :pswitch_1b
    sget-object p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9c40
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .locals 1

    .line 43
    const-class v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .locals 1

    .line 43
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->$VALUES:[Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->code:I

    return v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->header:Ljava/lang/String;

    return-object v0
.end method
