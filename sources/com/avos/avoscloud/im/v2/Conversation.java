package com.avos.avoscloud.im.v2;

import com.avos.avoscloud.AVObject;
import com.tencent.imsdk.BaseConstants;

public interface Conversation {
    public static final String ATTRIBUTE = "attr";
    public static final String AV_CONVERSATION_INTENT_ACTION = "com.avoscloud.im.v2.action";
    public static final String AV_CONVERSATION_PARCEL_ACTION = "com.avoscloud.im.v2.parcel.action";
    public static final String[] CONVERSATION_COLUMNS = {"m", "name", CREATOR, LAST_MESSAGE_AT, "objectId", MUTE, AVObject.UPDATED_AT, AVObject.CREATED_AT, ATTRIBUTE, TRANSIENT, "sys", TEMPORARY, TEMPORARYTTL};
    public static final int CONV_TYPE_NORMAL = 1;
    public static final int CONV_TYPE_SYSTEM = 3;
    public static final int CONV_TYPE_TEMPORARY = 4;
    public static final int CONV_TYPE_TRANSIENT = 2;
    public static final int CONV_TYPE_UNKNOWN = 0;
    public static final String CREATOR = "c";
    public static final int DEFAULT_CONVERSATION_EXPIRE_TIME_IN_MILLS = 3600000;
    public static final String INTENT_KEY_CLIENT = "conversation.client";
    public static final String INTENT_KEY_CLIENT_PARCEL = "conversation.client.parcel";
    public static final String INTENT_KEY_CONVERSATION = "convesration.id";
    public static final String INTENT_KEY_CONV_TYPE = "conversation.type";
    public static final String INTENT_KEY_DATA = "conversation.data";
    public static final String INTENT_KEY_MESSAGE_OPTION = "conversation.messageoption";
    public static final String INTENT_KEY_OPERATION = "conversation.operation";
    public static final String INTENT_KEY_REQUESTID = "conversation.requestId";
    public static final String LAST_MESSAGE_AT = "lm";
    public static final String MEMBERS = "m";
    public static final String MUTE = "mu";
    public static final String NAME = "name";
    public static final String PARAM_CONVERSATION_ATTRIBUTE = "conversation.attributes";
    public static final String PARAM_CONVERSATION_ISSYSTEM = "conversation.sys";
    public static final String PARAM_CONVERSATION_ISTEMPORARY = "conversation.temp";
    public static final String PARAM_CONVERSATION_ISTRANSIENT = "conversation.transient";
    public static final String PARAM_CONVERSATION_ISUNIQUE = "conversation.unique";
    public static final String PARAM_CONVERSATION_MEMBER = "conversation.member";
    public static final String PARAM_CONVERSATION_MEMBER_DETAILS = "conversation.memberDetails";
    public static final String PARAM_CONVERSATION_TEMPORARY_TTL = "conversation.tempTTL";
    public static final String PARAM_MESSAGE_PATCH_TIME = "message_patch_time";
    public static final String PARAM_MESSAGE_QUERY_DIRECT = "direct";
    public static final String PARAM_MESSAGE_QUERY_LIMIT = "limit";
    public static final String PARAM_MESSAGE_QUERY_MSGID = "mid";
    public static final String PARAM_MESSAGE_QUERY_STARTCLOSED = "sinc";
    public static final String PARAM_MESSAGE_QUERY_TIMESTAMP = "ts";
    public static final String PARAM_MESSAGE_QUERY_TOCLOSED = "tinc";
    public static final String PARAM_MESSAGE_QUERY_TO_MSGID = "tmid";
    public static final String PARAM_MESSAGE_QUERY_TO_TIMESTAMP = "tt";
    public static final String PARAM_MESSAGE_QUERY_TYPE = "type";
    public static final String PARAM_ONLINE_CLIENTS = "client.oneline";
    public static final String QUERY_PARAM_COMPACT = "compact";
    public static final String QUERY_PARAM_LAST_MESSAGE = "last_message";
    public static final String QUERY_PARAM_LIMIT = "limit";
    public static final String QUERY_PARAM_OFFSET = "skip";
    public static final String QUERY_PARAM_SORT = "sort";
    public static final String QUERY_PARAM_TEMPCONV = "temp_id";
    public static final String QUERY_PARAM_WHERE = "where";
    public static final int STATUS_ON_BLOCKED = 50022;
    public static final int STATUS_ON_CLIENT_OFFLINE = 50010;
    public static final int STATUS_ON_CONNECTION_PAUSED = 50006;
    public static final int STATUS_ON_CONNECTION_RESUMED = 50007;
    public static final int STATUS_ON_INFO_CHANGED = 50026;
    public static final int STATUS_ON_JOINED = 50008;
    public static final int STATUS_ON_KICKED_FROM_CONVERSATION = 50009;
    public static final int STATUS_ON_MEMBERS_JOINED = 50005;
    public static final int STATUS_ON_MEMBERS_LEFT = 50004;
    public static final int STATUS_ON_MEMBER_BLOCKED = 50024;
    public static final int STATUS_ON_MEMBER_INFO_CHANGED = 50017;
    public static final int STATUS_ON_MEMBER_MUTED = 50020;
    public static final int STATUS_ON_MEMBER_UNBLOCKED = 50025;
    public static final int STATUS_ON_MEMBER_UNMUTED = 50021;
    public static final int STATUS_ON_MESSAGE = 50000;
    public static final int STATUS_ON_MESSAGE_DELIVERED = 50014;
    public static final int STATUS_ON_MESSAGE_READ = 50013;
    public static final int STATUS_ON_MESSAGE_RECALLED = 50016;
    public static final int STATUS_ON_MESSAGE_RECEIPTED = 50001;
    public static final int STATUS_ON_MESSAGE_UPDATED = 50015;
    public static final int STATUS_ON_MUTED = 50018;
    public static final int STATUS_ON_UNBLOCKED = 50023;
    public static final int STATUS_ON_UNMUTED = 50019;
    public static final int STATUS_ON_UNREAD_EVENT = 50012;
    public static final String SYSTEM = "sys";
    public static final String TEMPCONV_ID_PREFIX = "_tmp:";
    public static final String TEMPORARY = "temp";
    public static final String TEMPORARYTTL = "ttl";
    public static final String TRANSIENT = "tr";
    public static final String callbackClientKey = "callbackclient";
    public static final String callbackClientStatus = "callbackClientStatus";
    public static final String callbackConvMemberMuted_FAIL = "callbackConvMemberMutedFAIL";
    public static final String callbackConvMemberMuted_SUCC = "callbackConvMemberMutedSUCC";
    public static final String callbackConvType = "callbackConvType";
    public static final String callbackConversationKey = "callbackconversation";
    public static final String callbackCreatedAt = "callbackCreatedAt";
    public static final String callbackData = "callbackData";
    public static final String callbackDeliveredAt = "callbackDeliveredAt";
    public static final String callbackExceptionKey = "callbackException";
    public static final String callbackHistoryMessages = "callbackHistoryMessages";
    public static final String callbackMemberCount = "callbackMemberCount";
    public static final String callbackMessageId = "callbackMessageId";
    public static final String callbackMessageTimeStamp = "callbackMessageTimeStamp";
    public static final String callbackOnlineClients = "callbackOnlineClient";
    public static final String callbackReadAt = "callbackReadAt";
    public static final String callbackTemporaryTTL = "callbackTemporaryTTL";
    public static final String callbackUpdatedAt = "callbackUpdatedAt";

    public enum AVIMOperation {
        CONVERSATION_CREATION(40000, "com.avoscloud.v2.im.conversation.creation."),
        CONVERSATION_ADD_MEMBER(BaseConstants.ERR_SVR_PROFILE_INVALID_PARAMETERS, r2),
        CONVERSATION_RM_MEMBER(BaseConstants.ERR_SVR_PROFILE_ACCOUNT_MISS, r2),
        CONVERSATION_JOIN(BaseConstants.ERR_SVR_PROFILE_ACCOUNT_NOT_FOUND, "com.avoscloud.v2.im.conversation.join."),
        CONVERSATION_QUIT(BaseConstants.ERR_SVR_PROFILE_ADMIN_REQUIRED, "com.avoscloud.v2.im.conversation.quit."),
        CONVERSATION_SEND_MESSAGE(BaseConstants.ERR_SVR_PROFILE_SENSITIVE_TEXT, "com.avoscloud.v2.im.conversation.message."),
        CLIENT_OPEN(BaseConstants.ERR_SVR_PROFILE_INTERNAL_ERROR, "com.avoscloud.v2.im.client.initialize."),
        CLIENT_DISCONNECT(BaseConstants.ERR_SVR_PROFILE_READ_PERMISSION_REQUIRED, "com.avoscloud.v2.im.client.quit."),
        CONVERSATION_QUERY(BaseConstants.ERR_SVR_PROFILE_WRITE_PERMISSION_REQUIRED, "com.avoscloud.v2.im.conversation.query."),
        CONVERSATION_UPDATE(BaseConstants.ERR_SVR_PROFILE_TAG_NOT_FOUND, "com.avoscloud.v2.im.conversation.update."),
        CONVERSATION_MESSAGE_QUERY(40010, "com.avoscloud.v2.im.conversation.message.query."),
        CONVERSATION_MUTE(40011, "com.avoscloud.v2.im.conversation.mute."),
        CONVERSATION_UNMUTE(40012, "com.avoscloud.v2.im.conversation.unmute"),
        CONVERSATION_MEMBER_COUNT_QUERY(40013, "com.avoscloud.v2.im.conversation.membercount."),
        CLIENT_ONLINE_QUERY(40014, "com.avoscloud.v2.im.client.onlineQuery."),
        CLIENT_STATUS(40015, "com.avoscloud.v2.im.client.status"),
        CONVERSATION_READ(40016, "com.avoscloud.v2.im.conversation.read."),
        CONVERSATION_FETCH_RECEIPT_TIME(40017, "com.avoscloud.v2.im.conversation.fetchReceiptTimestamps."),
        CONVERSATION_UPDATE_MESSAGE(40018, "com.avoscloud.v2.im.conversation.updateMessage."),
        CONVERSATION_RECALL_MESSAGE(40019, "com.avoscloud.v2.im.conversation.recallMessage."),
        CLIENT_REFRESH_TOKEN(40020, "com.avoscloud.v2.im.client.refreshToken"),
        CONVERSATION_PROMOTE_MEMBER(40021, "com.avoscloud.v2.im.conversation.promoteMember"),
        CONVERSATION_MUTE_MEMBER(40022, "com.avoscloud.v2.im.conversation.muteMember"),
        CONVERSATION_UNMUTE_MEMBER(40023, "com.avoscloud.v2.im.conversation.unmuteMember"),
        CONVERSATION_BLOCK_MEMBER(40024, "com.avoscloud.v2.im.conversation.blockMember"),
        CONVERSATION_UNBLOCK_MEMBER(40025, "com.avoscloud.v2.im.conversation.unblockMember"),
        CONVERSATION_MUTED_MEMBER_QUERY(40026, "com.avoscloud.v2.im.conversation.mutedMemberQuery"),
        CONVERSATION_BLOCKED_MEMBER_QUERY(40027, "com.avoscloud.v2.im.conversation.blockedMemberQuery"),
        CONVERSATION_UNKNOWN(49999, "com.avoscloud.v2.im.conversation.unknown");
        
        private final int code;
        private final String header;

        private AVIMOperation(int i, String str) {
            this.code = i;
            this.header = str;
        }

        public int getCode() {
            return this.code;
        }

        public String getOperation() {
            return this.header;
        }

        public static AVIMOperation getAVIMOperation(int i) {
            switch (i) {
                case 40000:
                    return CONVERSATION_CREATION;
                case BaseConstants.ERR_SVR_PROFILE_INVALID_PARAMETERS /*40001*/:
                    return CONVERSATION_ADD_MEMBER;
                case BaseConstants.ERR_SVR_PROFILE_ACCOUNT_MISS /*40002*/:
                    return CONVERSATION_RM_MEMBER;
                case BaseConstants.ERR_SVR_PROFILE_ACCOUNT_NOT_FOUND /*40003*/:
                    return CONVERSATION_JOIN;
                case BaseConstants.ERR_SVR_PROFILE_ADMIN_REQUIRED /*40004*/:
                    return CONVERSATION_QUIT;
                case BaseConstants.ERR_SVR_PROFILE_SENSITIVE_TEXT /*40005*/:
                    return CONVERSATION_SEND_MESSAGE;
                case BaseConstants.ERR_SVR_PROFILE_INTERNAL_ERROR /*40006*/:
                    return CLIENT_OPEN;
                case BaseConstants.ERR_SVR_PROFILE_READ_PERMISSION_REQUIRED /*40007*/:
                    return CLIENT_DISCONNECT;
                case BaseConstants.ERR_SVR_PROFILE_WRITE_PERMISSION_REQUIRED /*40008*/:
                    return CONVERSATION_QUERY;
                case BaseConstants.ERR_SVR_PROFILE_TAG_NOT_FOUND /*40009*/:
                    return CONVERSATION_UPDATE;
                case 40010:
                    return CONVERSATION_MESSAGE_QUERY;
                case 40011:
                    return CONVERSATION_MUTE;
                case 40012:
                    return CONVERSATION_UNMUTE;
                case 40013:
                    return CONVERSATION_MEMBER_COUNT_QUERY;
                case 40014:
                    return CLIENT_ONLINE_QUERY;
                case 40015:
                    return CLIENT_STATUS;
                case 40016:
                    return CONVERSATION_READ;
                case 40017:
                    return CONVERSATION_FETCH_RECEIPT_TIME;
                case 40018:
                    return CONVERSATION_UPDATE_MESSAGE;
                case 40019:
                    return CONVERSATION_RECALL_MESSAGE;
                case 40020:
                    return CLIENT_REFRESH_TOKEN;
                case 40021:
                    return CONVERSATION_PROMOTE_MEMBER;
                case 40022:
                    return CONVERSATION_MUTE_MEMBER;
                case 40023:
                    return CONVERSATION_UNMUTE_MEMBER;
                case 40024:
                    return CONVERSATION_BLOCK_MEMBER;
                case 40025:
                    return CONVERSATION_UNBLOCK_MEMBER;
                case 40026:
                    return CONVERSATION_MUTED_MEMBER_QUERY;
                case 40027:
                    return CONVERSATION_BLOCKED_MEMBER_QUERY;
                default:
                    return CONVERSATION_UNKNOWN;
            }
        }
    }
}
