.class public interface abstract Lcom/avos/avoscloud/im/v2/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE:Ljava/lang/String; = "attr"

.field public static final AV_CONVERSATION_INTENT_ACTION:Ljava/lang/String; = "com.avoscloud.im.v2.action"

.field public static final AV_CONVERSATION_PARCEL_ACTION:Ljava/lang/String; = "com.avoscloud.im.v2.parcel.action"

.field public static final CONVERSATION_COLUMNS:[Ljava/lang/String;

.field public static final CONV_TYPE_NORMAL:I = 0x1

.field public static final CONV_TYPE_SYSTEM:I = 0x3

.field public static final CONV_TYPE_TEMPORARY:I = 0x4

.field public static final CONV_TYPE_TRANSIENT:I = 0x2

.field public static final CONV_TYPE_UNKNOWN:I = 0x0

.field public static final CREATOR:Ljava/lang/String; = "c"

.field public static final DEFAULT_CONVERSATION_EXPIRE_TIME_IN_MILLS:I = 0x36ee80

.field public static final INTENT_KEY_CLIENT:Ljava/lang/String; = "conversation.client"

.field public static final INTENT_KEY_CLIENT_PARCEL:Ljava/lang/String; = "conversation.client.parcel"

.field public static final INTENT_KEY_CONVERSATION:Ljava/lang/String; = "convesration.id"

.field public static final INTENT_KEY_CONV_TYPE:Ljava/lang/String; = "conversation.type"

.field public static final INTENT_KEY_DATA:Ljava/lang/String; = "conversation.data"

.field public static final INTENT_KEY_MESSAGE_OPTION:Ljava/lang/String; = "conversation.messageoption"

.field public static final INTENT_KEY_OPERATION:Ljava/lang/String; = "conversation.operation"

.field public static final INTENT_KEY_REQUESTID:Ljava/lang/String; = "conversation.requestId"

.field public static final LAST_MESSAGE_AT:Ljava/lang/String; = "lm"

.field public static final MEMBERS:Ljava/lang/String; = "m"

.field public static final MUTE:Ljava/lang/String; = "mu"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PARAM_CONVERSATION_ATTRIBUTE:Ljava/lang/String; = "conversation.attributes"

.field public static final PARAM_CONVERSATION_ISSYSTEM:Ljava/lang/String; = "conversation.sys"

.field public static final PARAM_CONVERSATION_ISTEMPORARY:Ljava/lang/String; = "conversation.temp"

.field public static final PARAM_CONVERSATION_ISTRANSIENT:Ljava/lang/String; = "conversation.transient"

.field public static final PARAM_CONVERSATION_ISUNIQUE:Ljava/lang/String; = "conversation.unique"

.field public static final PARAM_CONVERSATION_MEMBER:Ljava/lang/String; = "conversation.member"

.field public static final PARAM_CONVERSATION_MEMBER_DETAILS:Ljava/lang/String; = "conversation.memberDetails"

.field public static final PARAM_CONVERSATION_TEMPORARY_TTL:Ljava/lang/String; = "conversation.tempTTL"

.field public static final PARAM_MESSAGE_PATCH_TIME:Ljava/lang/String; = "message_patch_time"

.field public static final PARAM_MESSAGE_QUERY_DIRECT:Ljava/lang/String; = "direct"

.field public static final PARAM_MESSAGE_QUERY_LIMIT:Ljava/lang/String; = "limit"

.field public static final PARAM_MESSAGE_QUERY_MSGID:Ljava/lang/String; = "mid"

.field public static final PARAM_MESSAGE_QUERY_STARTCLOSED:Ljava/lang/String; = "sinc"

.field public static final PARAM_MESSAGE_QUERY_TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final PARAM_MESSAGE_QUERY_TOCLOSED:Ljava/lang/String; = "tinc"

.field public static final PARAM_MESSAGE_QUERY_TO_MSGID:Ljava/lang/String; = "tmid"

.field public static final PARAM_MESSAGE_QUERY_TO_TIMESTAMP:Ljava/lang/String; = "tt"

.field public static final PARAM_MESSAGE_QUERY_TYPE:Ljava/lang/String; = "type"

.field public static final PARAM_ONLINE_CLIENTS:Ljava/lang/String; = "client.oneline"

.field public static final QUERY_PARAM_COMPACT:Ljava/lang/String; = "compact"

.field public static final QUERY_PARAM_LAST_MESSAGE:Ljava/lang/String; = "last_message"

.field public static final QUERY_PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final QUERY_PARAM_OFFSET:Ljava/lang/String; = "skip"

.field public static final QUERY_PARAM_SORT:Ljava/lang/String; = "sort"

.field public static final QUERY_PARAM_TEMPCONV:Ljava/lang/String; = "temp_id"

.field public static final QUERY_PARAM_WHERE:Ljava/lang/String; = "where"

.field public static final STATUS_ON_BLOCKED:I = 0xc366

.field public static final STATUS_ON_CLIENT_OFFLINE:I = 0xc35a

.field public static final STATUS_ON_CONNECTION_PAUSED:I = 0xc356

.field public static final STATUS_ON_CONNECTION_RESUMED:I = 0xc357

.field public static final STATUS_ON_INFO_CHANGED:I = 0xc36a

.field public static final STATUS_ON_JOINED:I = 0xc358

.field public static final STATUS_ON_KICKED_FROM_CONVERSATION:I = 0xc359

.field public static final STATUS_ON_MEMBERS_JOINED:I = 0xc355

.field public static final STATUS_ON_MEMBERS_LEFT:I = 0xc354

.field public static final STATUS_ON_MEMBER_BLOCKED:I = 0xc368

.field public static final STATUS_ON_MEMBER_INFO_CHANGED:I = 0xc361

.field public static final STATUS_ON_MEMBER_MUTED:I = 0xc364

.field public static final STATUS_ON_MEMBER_UNBLOCKED:I = 0xc369

.field public static final STATUS_ON_MEMBER_UNMUTED:I = 0xc365

.field public static final STATUS_ON_MESSAGE:I = 0xc350

.field public static final STATUS_ON_MESSAGE_DELIVERED:I = 0xc35e

.field public static final STATUS_ON_MESSAGE_READ:I = 0xc35d

.field public static final STATUS_ON_MESSAGE_RECALLED:I = 0xc360

.field public static final STATUS_ON_MESSAGE_RECEIPTED:I = 0xc351

.field public static final STATUS_ON_MESSAGE_UPDATED:I = 0xc35f

.field public static final STATUS_ON_MUTED:I = 0xc362

.field public static final STATUS_ON_UNBLOCKED:I = 0xc367

.field public static final STATUS_ON_UNMUTED:I = 0xc363

.field public static final STATUS_ON_UNREAD_EVENT:I = 0xc35c

.field public static final SYSTEM:Ljava/lang/String; = "sys"

.field public static final TEMPCONV_ID_PREFIX:Ljava/lang/String; = "_tmp:"

.field public static final TEMPORARY:Ljava/lang/String; = "temp"

.field public static final TEMPORARYTTL:Ljava/lang/String; = "ttl"

.field public static final TRANSIENT:Ljava/lang/String; = "tr"

.field public static final callbackClientKey:Ljava/lang/String; = "callbackclient"

.field public static final callbackClientStatus:Ljava/lang/String; = "callbackClientStatus"

.field public static final callbackConvMemberMuted_FAIL:Ljava/lang/String; = "callbackConvMemberMutedFAIL"

.field public static final callbackConvMemberMuted_SUCC:Ljava/lang/String; = "callbackConvMemberMutedSUCC"

.field public static final callbackConvType:Ljava/lang/String; = "callbackConvType"

.field public static final callbackConversationKey:Ljava/lang/String; = "callbackconversation"

.field public static final callbackCreatedAt:Ljava/lang/String; = "callbackCreatedAt"

.field public static final callbackData:Ljava/lang/String; = "callbackData"

.field public static final callbackDeliveredAt:Ljava/lang/String; = "callbackDeliveredAt"

.field public static final callbackExceptionKey:Ljava/lang/String; = "callbackException"

.field public static final callbackHistoryMessages:Ljava/lang/String; = "callbackHistoryMessages"

.field public static final callbackMemberCount:Ljava/lang/String; = "callbackMemberCount"

.field public static final callbackMessageId:Ljava/lang/String; = "callbackMessageId"

.field public static final callbackMessageTimeStamp:Ljava/lang/String; = "callbackMessageTimeStamp"

.field public static final callbackOnlineClients:Ljava/lang/String; = "callbackOnlineClient"

.field public static final callbackReadAt:Ljava/lang/String; = "callbackReadAt"

.field public static final callbackTemporaryTTL:Ljava/lang/String; = "callbackTemporaryTTL"

.field public static final callbackUpdatedAt:Ljava/lang/String; = "callbackUpdatedAt"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    .line 232
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "objectId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "updatedAt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "createdAt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "attr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sys"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "temp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ttl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMNS:[Ljava/lang/String;

    return-void
.end method
