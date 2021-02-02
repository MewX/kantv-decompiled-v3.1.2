package com.avos.avoscloud;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.im.v2.Conversation;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

@AVClassName("_Status")
@JSONType(ignores = {"acl", "updatedAt", "uuid"})
public class AVStatus extends AVObject {
    private static final String AV_CLASS_NAME = "_FeedStatus";
    public static final transient Creator<AVStatus> CREATOR = new Creator() {
        public AVStatus createFromParcel(Parcel parcel) {
            return new AVStatus(parcel);
        }

        public AVStatus[] newArray(int i) {
            return new AVStatus[i];
        }
    };
    private static int DEFAULT_COUNT = 100;
    public static final String IMAGE_TAG = "image";
    @Deprecated
    public static final String INBOX_PRIVATE = "private";
    @Deprecated
    public static final String INBOX_TIMELINE = "default";
    public static final String MESSAGE_TAG = "message";
    public static final String STATUS_ENDPOINT = "statuses";
    private static final String UNREAD_TAG = "unread";
    static List<String> ignoreList = Arrays.asList(new String[]{"objectId", AVObject.UPDATED_AT, AVObject.CREATED_AT, "inboxType", "messageId"});
    private String createdAt;
    private final Map<String, Object> dataMap = new ConcurrentHashMap();
    private String inboxType;
    private long messageId = 0;
    private AVQuery query = null;
    private AVObject source = null;

    public enum INBOX_TYPE {
        TIMELINE("default"),
        PRIVATE(AVStatus.INBOX_PRIVATE);
        
        private String type;

        private INBOX_TYPE(String str) {
            this.type = str;
        }

        public String toString() {
            return this.type;
        }
    }

    public int describeContents() {
        return 0;
    }

    @Deprecated
    public boolean isFetchWhenSave() {
        return false;
    }

    @Deprecated
    public void setFetchWhenSave(boolean z) {
    }

    static {
        String simpleName = AVStatus.class.getSimpleName();
        String str = STATUS_ENDPOINT;
        String str2 = "_Status";
        AVPowerfulUtils.createSettings(simpleName, str, str2);
        AVPowerfulUtils.createSettings(str2, str, str2);
        AVObject.registerSubclass(AVStatus.class);
    }

    static String userClassName() {
        return AVPowerfulUtils.getAVClassName(AVStatus.class.getSimpleName());
    }

    public static AVStatus createStatus(String str, String str2) {
        AVStatus aVStatus = new AVStatus();
        aVStatus.setImageUrl(str);
        aVStatus.setMessage(str2);
        return aVStatus;
    }

    public static AVStatus createStatusWithData(Map<String, Object> map) {
        AVStatus aVStatus = new AVStatus();
        aVStatus.setData(map);
        return aVStatus;
    }

    public AVStatus() {
    }

    private static boolean checkCurrentUser(AVCallback aVCallback) {
        if (AVUser.getCurrentUser() != null) {
            return true;
        }
        if (aVCallback != null) {
            aVCallback.internalDone(null, AVErrorUtils.sessionMissingException());
        }
        return false;
    }

    public String getObjectId() {
        return this.objectId;
    }

    public Date getCreatedAt() {
        return AVUtils.dateFromString(this.createdAt);
    }

    /* access modifiers changed from: protected */
    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public void setImageUrl(String str) {
        if (str != null) {
            this.dataMap.put("image", str);
        }
    }

    public String getImageUrl() {
        Object obj = this.dataMap.get("image");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public AVUser getSource() {
        return (AVUser) this.source;
    }

    public void setSource(AVObject aVObject) {
        this.source = aVObject;
    }

    public void setInboxType(String str) {
        if (str != null) {
            this.inboxType = str;
        }
    }

    public void setQuery(AVQuery aVQuery) {
        this.query = aVQuery;
    }

    public void setMessage(String str) {
        if (str != null) {
            this.dataMap.put("message", str);
        }
    }

    public String getMessage() {
        Object obj = this.dataMap.get("message");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public void setData(Map<String, Object> map) {
        this.dataMap.putAll(map);
    }

    public Map<String, Object> getData() {
        return this.dataMap;
    }

    public void put(String str, Object obj) {
        this.dataMap.put(str, obj);
    }

    /* access modifiers changed from: protected */
    public void put(String str, Object obj, boolean z) {
        if ("inboxType".equals(str)) {
            if (obj instanceof String) {
                this.inboxType = (String) obj;
            }
        } else if ("messageId".equals(str)) {
            if (obj instanceof Number) {
                this.messageId = ((Number) obj).longValue();
            }
        } else if (!"source".equals(str)) {
            this.dataMap.put(str, obj);
        } else if (obj instanceof AVObject) {
            this.source = (AVObject) obj;
        }
    }

    public void remove(String str) {
        this.dataMap.remove(str);
    }

    public long getMessageId() {
        return this.messageId;
    }

    /* access modifiers changed from: protected */
    public void setMessageId(long j) {
        this.messageId = j;
    }

    public String getInboxType() {
        return this.inboxType;
    }

    public void deleteStatusInBackground(DeleteCallback deleteCallback) {
        deleteStatusWithIDInBackgroud(this.objectId, deleteCallback);
    }

    public static void deleteStatusWithIDInBackgroud(String str, DeleteCallback deleteCallback) {
        deleteStatusWithId(false, str, deleteCallback);
    }

    private static void deleteStatusWithId(boolean z, String str, final DeleteCallback deleteCallback) {
        if (!checkCurrentUser(null)) {
            if (deleteCallback != null) {
                deleteCallback.internalDone(AVErrorUtils.sessionMissingException());
            }
        } else if (AVUtils.isBlankString(str)) {
            if (deleteCallback != null) {
                deleteCallback.internalDone(AVErrorUtils.invalidObjectIdException());
            }
        } else {
            PaasClient.storageInstance().deleteObject(String.format("statuses/%s", new Object[]{str}), z, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    DeleteCallback deleteCallback = deleteCallback;
                    if (deleteCallback != null) {
                        deleteCallback.internalDone(null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    DeleteCallback deleteCallback = deleteCallback;
                    if (deleteCallback != null) {
                        deleteCallback.internalDone(AVErrorUtils.createException(th, str));
                    }
                }
            }, str, null);
        }
    }

    public static void deleteInboxStatus(long j, String str, AVUser aVUser) throws Exception {
        deleteInboxStatus(true, j, str, aVUser, new DeleteCallback() {
            /* access modifiers changed from: protected */
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public static void deleteInboxStatusInBackground(long j, String str, AVUser aVUser, DeleteCallback deleteCallback) {
        deleteInboxStatus(false, j, str, aVUser, deleteCallback);
    }

    private static void deleteInboxStatus(boolean z, long j, String str, AVUser aVUser, final DeleteCallback deleteCallback) {
        if (aVUser != null) {
            String jSONString = JSON.toJSONString(AVUtils.mapFromUserObjectId(aVUser.getObjectId()));
            HashMap hashMap = new HashMap();
            hashMap.put("messageId", String.valueOf(j));
            hashMap.put("inboxType", str);
            hashMap.put("owner", jSONString);
            PaasClient.storageInstance().deleteObject(AVUtils.getEncodeUrl("subscribe/statuses/inbox", hashMap), z, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    DeleteCallback deleteCallback = deleteCallback;
                    if (deleteCallback != null) {
                        deleteCallback.internalDone(null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    DeleteCallback deleteCallback = deleteCallback;
                    if (deleteCallback != null) {
                        deleteCallback.internalDone(AVErrorUtils.createException(th, str));
                    }
                }
            }, null, null);
            return;
        }
        if (deleteCallback != null) {
            deleteCallback.internalDone(new AVException((int) AVException.USER_DOESNOT_EXIST, "Owner can't be null"));
        }
    }

    @Deprecated
    public static void getStatuses(long j, long j2, StatusListCallback statusListCallback) {
        if (checkCurrentUser(statusListCallback)) {
            getStatusImpl(STATUS_ENDPOINT, statusQueryMap(AVUser.getCurrentUser().getObjectId(), j, j2, 0, null, null, true, false), statusListCallback);
        }
    }

    @Deprecated
    static Map<String, String> sourceQueryMap(String str, long j, long j2) {
        String str2 = "source";
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        try {
            hashMap.put(str2, AVUtils.mapFromUserObjectId(str));
            hashMap2.put(Conversation.QUERY_PARAM_WHERE, JSON.toJSONString(hashMap));
            hashMap2.put("include", str2);
            if (j > 0) {
                hashMap2.put(Conversation.QUERY_PARAM_OFFSET, Long.toString(j));
            }
            if (j2 > 0) {
                hashMap2.put(ConversationControlOp.COUNT, Long.toString(j2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap2;
    }

    @Deprecated
    public static void getStatusesFromCurrentUserWithType(String str, long j, long j2, StatusListCallback statusListCallback) {
        if (checkCurrentUser(statusListCallback)) {
            getStatusImpl(STATUS_ENDPOINT, sourceQueryMap(AVUser.getCurrentUser().getObjectId(), j, j2), statusListCallback);
        }
    }

    @Deprecated
    public static void getStatusesFromUser(String str, long j, long j2, StatusListCallback statusListCallback) {
        if (AVUtils.isBlankString(str)) {
            if (statusListCallback != null) {
                statusListCallback.internalDone(null, AVErrorUtils.invalidObjectIdException());
            }
            return;
        }
        getStatusImpl(STATUS_ENDPOINT, sourceQueryMap(str, j, j2), statusListCallback);
    }

    @Deprecated
    static Map<String, String> statusQueryMap(String str, long j, long j2, long j3, String str2, Map<String, Object> map, boolean z, boolean z2) {
        Map mapFromUserObjectId = AVUtils.mapFromUserObjectId(str);
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("owner", JSON.toJSONString(mapFromUserObjectId));
            if (j > 0) {
                hashMap.put(Conversation.QUERY_PARAM_OFFSET, Long.toString(j));
            }
            if (j2 > 0) {
                hashMap.put("limit", Long.toString(j2));
            }
            if (j3 > 0) {
                hashMap.put("maxId", Long.toString(j3));
            }
            if (!AVUtils.isBlankString(str2)) {
                hashMap.put("inboxType", str2);
            }
            if (map != null) {
                hashMap.put(Conversation.QUERY_PARAM_WHERE, JSON.toJSONString(map));
            }
            if (z) {
                hashMap.put("include", "source");
            }
            if (z2) {
                hashMap.put(ConversationControlOp.COUNT, Long.toString(1));
            }
        } catch (Exception e) {
            log.e(e.toString());
        }
        return hashMap;
    }

    static Map<String, String> getStatusQueryMap(String str, long j, long j2, long j3, String str2, Map<String, Object> map, boolean z, boolean z2) {
        Map mapFromUserObjectId = AVUtils.mapFromUserObjectId(str);
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("owner", JSON.toJSONString(mapFromUserObjectId));
            if (j > 0) {
                hashMap.put("sinceId", Long.toString(j));
            }
            if (j2 > 0) {
                hashMap.put("limit", Long.toString(j2));
            }
            if (j3 > 0) {
                hashMap.put("maxId", Long.toString(j3));
            }
            if (!AVUtils.isBlankString(str2)) {
                hashMap.put("inboxType", str2);
            }
            if (map != null) {
                hashMap.put(Conversation.QUERY_PARAM_WHERE, JSON.toJSONString(map));
            }
            if (z) {
                hashMap.put("include", "source");
            }
            if (z2) {
                hashMap.put(ConversationControlOp.COUNT, Long.toString(1));
            }
        } catch (Exception e) {
            log.e(e.toString());
        }
        return hashMap;
    }

    static List<AVStatus> processStatusResultList(String str) {
        if (AVUtils.isBlankContent(str)) {
            return Collections.emptyList();
        }
        JSONObject jSONObject = null;
        try {
            jSONObject = JSON.parseObject(str);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Parsing json data error, ");
            sb.append(str);
            avlog.e(sb.toString(), e);
        }
        if (jSONObject == null) {
            return Collections.emptyList();
        }
        JSONArray jSONArray = jSONObject.getJSONArray(ConversationControlOp.QUERY_RESULT);
        LinkedList linkedList = new LinkedList();
        Iterator it = jSONArray.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            AVStatus aVStatus = new AVStatus();
            processStatusFromObject(next, aVStatus);
            linkedList.add(aVStatus);
        }
        return linkedList;
    }

    static void processStatus(String str, AVStatus aVStatus) {
        try {
            processStatusFromObject(JSON.parseObject(str), aVStatus);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Parsing json data error, ");
            sb.append(str);
            avlog.e(sb.toString(), e);
        }
    }

    static void processStatusFromObject(Object obj, AVStatus aVStatus) {
        JSONObject jSONObject = (JSONObject) obj;
        aVStatus.objectId = AVUtils.getJSONString(jSONObject, "objectId", aVStatus.objectId);
        aVStatus.messageId = AVUtils.getJSONInteger(jSONObject, "messageId", aVStatus.messageId);
        aVStatus.inboxType = AVUtils.getJSONString(jSONObject, "inboxType", aVStatus.inboxType);
        aVStatus.createdAt = AVUtils.getJSONString(jSONObject, AVObject.CREATED_AT, aVStatus.createdAt);
        aVStatus.setImageUrl(AVUtils.getJSONString(jSONObject, "image", aVStatus.getImageUrl()));
        aVStatus.setMessage(AVUtils.getJSONString(jSONObject, "message", aVStatus.getMessage()));
        String jSONString = AVUtils.getJSONString(jSONObject, "source", "");
        if (!AVUtils.isBlankString(jSONString)) {
            try {
                aVStatus.source = AVUtils.parseObjectFromMap(JSON.parseObject(jSONString));
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Parsing json data error, ");
                sb.append(jSONString);
                avlog.e(sb.toString(), e);
            }
        }
        for (Entry entry : jSONObject.entrySet()) {
            if (!ignoreList.contains(entry.getKey().toString()) && entry.getValue() != null) {
                aVStatus.dataMap.put(entry.getKey().toString(), AVUtils.getParsedObject(entry.getValue()));
            }
        }
    }

    static void getStatusImpl(String str, Map<String, String> map, final StatusListCallback statusListCallback) {
        PaasClient.storageInstance().getObject(str, map != null ? new AVRequestParams(map) : null, false, null, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                List processStatusResultList = AVStatus.processStatusResultList(str);
                StatusListCallback statusListCallback = statusListCallback;
                if (statusListCallback != null) {
                    statusListCallback.internalDone(processStatusResultList, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                StatusListCallback statusListCallback = statusListCallback;
                if (statusListCallback != null) {
                    statusListCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        });
    }

    static int processStatusCount(String str) {
        if (!AVUtils.isBlankContent(str)) {
            try {
                return JSON.parseObject(str).getInteger(UNREAD_TAG).intValue();
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Parsing json data error, ");
                sb.append(str);
                avlog.e(sb.toString(), e);
            }
        }
        return 0;
    }

    static void getStatusCountImpl(String str, Map<String, String> map, final CountCallback countCallback) {
        PaasClient.storageInstance().getObject(str, new AVRequestParams(map), false, null, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                int processStatusCount = AVStatus.processStatusCount(str);
                CountCallback countCallback = countCallback;
                if (countCallback != null) {
                    countCallback.internalDone(Integer.valueOf(processStatusCount), null);
                }
            }

            public void onFailure(Throwable th, String str) {
                CountCallback countCallback = countCallback;
                if (countCallback != null) {
                    countCallback.internalDone(Integer.valueOf(0), AVErrorUtils.createException(th, str));
                }
            }
        });
    }

    @Deprecated
    public static void getInboxStatusesInBackground(long j, long j2, StatusListCallback statusListCallback) {
        getInboxStatusesWithInboxType(j, j2, INBOX_TYPE.TIMELINE.toString(), statusListCallback);
    }

    @Deprecated
    public static void getInboxStatusesWithInboxType(long j, long j2, String str, StatusListCallback statusListCallback) {
        if (checkCurrentUser(statusListCallback)) {
            getStatusImpl("subscribe/statuses", statusQueryMap(AVUser.getCurrentUser().getObjectId(), j, j2, 0, str, null, true, false), statusListCallback);
        }
    }

    public static void getUnreadStatusesCountInBackground(String str, CountCallback countCallback) {
        if (!checkCurrentUser(null)) {
            if (countCallback != null) {
                countCallback.internalDone(Integer.valueOf(0), AVErrorUtils.sessionMissingException());
            }
            return;
        }
        getStatusCountImpl("subscribe/statuses/count", getStatusQueryMap(AVUser.getCurrentUser().getObjectId(), 0, 0, 0, str, null, true, true), countCallback);
    }

    @Deprecated
    public static void getInboxUnreadStatusesCountInBackgroud(CountCallback countCallback) {
        getInboxUnreadStatusesCountWithInboxTypeInBackgroud(0, 0, INBOX_TYPE.TIMELINE.toString(), countCallback);
    }

    @Deprecated
    public static void getInboxUnreadStatusesCountWithInboxTypeInBackgroud(long j, long j2, String str, CountCallback countCallback) {
        CountCallback countCallback2 = countCallback;
        if (!checkCurrentUser(null)) {
            if (countCallback2 != null) {
                countCallback2.internalDone(Integer.valueOf(0), AVErrorUtils.sessionMissingException());
            }
            return;
        }
        getStatusCountImpl("subscribe/statuses/count", statusQueryMap(AVUser.getCurrentUser().getObjectId(), j, j2, 0, str, null, true, true), countCallback2);
    }

    @Deprecated
    public static void getInboxPrivteStatuses(long j, long j2, StatusListCallback statusListCallback) {
        getInboxStatusesWithInboxType(j, j2, INBOX_TYPE.PRIVATE.toString(), statusListCallback);
    }

    static boolean checkStatusId(String str, StatusCallback statusCallback) {
        if (!AVUtils.isBlankString(str)) {
            return true;
        }
        if (statusCallback != null) {
            statusCallback.internalDone(null, AVErrorUtils.invalidObjectIdException());
        }
        return false;
    }

    public static void getStatusWithIdInBackgroud(String str, final StatusCallback statusCallback) {
        if (checkStatusId(str, statusCallback) && checkCurrentUser(statusCallback)) {
            String objectId = AVUser.getCurrentUser().getObjectId();
            String format = String.format("statuses/%s", new Object[]{str});
            String str2 = format;
            PaasClient.storageInstance().getObject(str2, new AVRequestParams(statusQueryMap(objectId, 0, 0, 0, null, null, true, false)), false, null, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    AVStatus aVStatus = new AVStatus();
                    AVStatus.processStatus(str, aVStatus);
                    StatusCallback statusCallback = statusCallback;
                    if (statusCallback != null) {
                        statusCallback.internalDone(aVStatus, null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    StatusCallback statusCallback = statusCallback;
                    if (statusCallback != null) {
                        statusCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            });
        }
    }

    static void postStatusImpl(AVStatus aVStatus, Map<String, Object> map, final SaveCallback saveCallback) {
        String restfulServerData = AVUtils.restfulServerData(map);
        PaasClient.storageInstance().postObject(STATUS_ENDPOINT, restfulServerData, false, false, new GenericObjectCallback(aVStatus) {
            final /* synthetic */ AVStatus val$status;

            {
                this.val$status = r1;
            }

            public void onSuccess(String str, AVException aVException) {
                AVStatus.processStatus(str, this.val$status);
                SaveCallback saveCallback = saveCallback;
                if (saveCallback != null) {
                    saveCallback.internalDone(null);
                }
            }

            public void onFailure(Throwable th, String str) {
                SaveCallback saveCallback = saveCallback;
                if (saveCallback != null) {
                    saveCallback.internalDone(AVErrorUtils.createException(th, str));
                }
            }
        }, aVStatus.getObjectId(), null);
    }

    static Map<String, Object> statusBody(AVStatus aVStatus, String str, Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        hashMap.putAll(aVStatus.dataMap);
        HashMap hashMap2 = new HashMap();
        AVObject aVObject = aVStatus.source;
        String str2 = "source";
        if (aVObject != null) {
            hashMap.put(str2, AVUtils.getParsedObject(aVObject));
        } else {
            hashMap.put(str2, AVUtils.getParsedObject(AVUser.getCurrentUser()));
        }
        hashMap2.put("data", hashMap);
        hashMap2.put("inboxType", str);
        hashMap2.put("query", map);
        return hashMap2;
    }

    /* access modifiers changed from: 0000 */
    public Map<String, Object> myQueryParameters(AVQuery aVQuery) {
        HashMap hashMap = new HashMap();
        if (aVQuery.getWhere().keySet().size() > 0) {
            hashMap.put(Conversation.QUERY_PARAM_WHERE, AVUtils.getParsedMap(aVQuery.getWhere()));
        }
        if (aVQuery.getLimit() > 0) {
            hashMap.put("limit", Integer.toString(aVQuery.getLimit()));
        }
        if (aVQuery.getSkip() > 0) {
            hashMap.put(Conversation.QUERY_PARAM_OFFSET, Integer.toString(aVQuery.getSkip()));
        }
        if (aVQuery.getOrder() != null && aVQuery.getOrder().length() > 0) {
            hashMap.put("order", aVQuery.getOrder());
        }
        String str = ",";
        if (aVQuery.getInclude() != null && aVQuery.getInclude().size() > 0) {
            hashMap.put("include", AVUtils.joinCollection(aVQuery.getInclude(), str));
        }
        if (aVQuery.getSelectedKeys() != null && aVQuery.getSelectedKeys().size() > 0) {
            hashMap.put("keys", AVUtils.joinCollection(aVQuery.getSelectedKeys(), str));
        }
        return hashMap;
    }

    @Deprecated
    public void sendInBackgroundWithBlock(SaveCallback saveCallback) {
        sendInBackground(saveCallback);
    }

    public void sendInBackground(SaveCallback saveCallback) {
        if (checkCurrentUser(saveCallback)) {
            if (this.query == null) {
                sendStatusToFollowersInBackgroud(this, saveCallback);
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(myQueryParameters(this.query));
            hashMap.put(AVUtils.classNameTag, this.query.getClassName());
            postStatusImpl(this, statusBody(this, AVUtils.isBlankString(this.inboxType) ? INBOX_TYPE.TIMELINE.toString() : this.inboxType, hashMap), saveCallback);
        }
    }

    public static void sendStatusToFollowersInBackgroud(AVStatus aVStatus, SaveCallback saveCallback) {
        if (checkCurrentUser(saveCallback)) {
            HashMap hashMap = new HashMap();
            hashMap.put(AVUtils.classNameTag, "_Follower");
            hashMap.put("keys", AVUser.FOLLOWER_TAG);
            hashMap.put(Conversation.QUERY_PARAM_WHERE, currentUserBody());
            postStatusImpl(aVStatus, statusBody(aVStatus, AVUtils.isBlankString(aVStatus.inboxType) ? INBOX_TYPE.TIMELINE.toString() : aVStatus.inboxType, hashMap), saveCallback);
        }
    }

    public static void sendPrivateStatusInBackgroud(AVStatus aVStatus, String str, SaveCallback saveCallback) {
        if (checkCurrentUser(saveCallback)) {
            HashMap hashMap = new HashMap();
            hashMap.put(AVUtils.classNameTag, "_User");
            HashMap hashMap2 = new HashMap();
            hashMap2.put("objectId", str);
            hashMap.put(Conversation.QUERY_PARAM_WHERE, hashMap2);
            postStatusImpl(aVStatus, statusBody(aVStatus, INBOX_TYPE.PRIVATE.toString(), hashMap), saveCallback);
        }
    }

    private static Map<String, Object> currentUserBody() {
        HashMap hashMap = new HashMap();
        hashMap.put("user", AVUtils.mapFromPointerObject(AVUser.getCurrentUser()));
        return hashMap;
    }

    public static AVStatusQuery statusQuery(AVUser aVUser) throws AVException {
        AVStatusQuery aVStatusQuery = new AVStatusQuery();
        aVStatusQuery.setSelfQuery(true);
        aVStatusQuery.whereEqualTo("source", aVUser);
        aVStatusQuery.setExternalQueryPath(STATUS_ENDPOINT);
        return aVStatusQuery;
    }

    public static AVStatusQuery inboxQuery(AVUser aVUser, String str) {
        AVStatusQuery aVStatusQuery = new AVStatusQuery();
        aVStatusQuery.setInboxType(str);
        aVStatusQuery.setOwner(aVUser);
        aVStatusQuery.setExternalQueryPath("subscribe/statuses");
        return aVStatusQuery;
    }

    @Deprecated
    public void add(String str, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void addAll(String str, Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void addAllUnique(String str, Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void addUnique(String str, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public boolean containsKey(String str) {
        throw new UnsupportedOperationException();
    }

    public void delete() throws AVException {
        deleteStatusWithId(true, getObjectId(), new DeleteCallback() {
            /* access modifiers changed from: protected */
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    @Deprecated
    public void deleteEventually(DeleteCallback deleteCallback) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void deleteEventually() {
        throw new UnsupportedOperationException();
    }

    public void deleteInBackground() {
        deleteStatusInBackground(null);
    }

    public AVObject toObject() {
        return AVObject.createWithoutData("_Status", this.objectId);
    }

    public boolean equals(Object obj) {
        if (AVUtils.isBlankString(this.objectId)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AVStatus aVStatus = (AVStatus) obj;
        if (this.objectId == null) {
            if (aVStatus.objectId != null) {
                return false;
            }
        } else if (!this.objectId.equals(aVStatus.objectId)) {
            return false;
        }
        return true;
    }

    @Deprecated
    public AVObject fetch() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public AVObject fetch(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public AVObject fetchIfNeeded() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public AVObject fetchIfNeeded(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void fetchIfNeededInBackground(GetCallback<AVObject> getCallback) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void fetchIfNeededInBackground(String str, GetCallback<AVObject> getCallback) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AVStatus [, objectId=");
        sb.append(this.objectId);
        sb.append(", createdAt=");
        sb.append(this.createdAt);
        sb.append(", data=");
        sb.append(this.dataMap);
        sb.append("]");
        return sb.toString();
    }

    @Deprecated
    public String getUuid() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void deleteInBackground(DeleteCallback deleteCallback) {
        super.deleteInBackground(deleteCallback);
    }

    @Deprecated
    public void fetchInBackground(GetCallback<AVObject> getCallback) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void fetchInBackground(String str, GetCallback<AVObject> getCallback) {
        throw new UnsupportedOperationException();
    }

    public Object get(String str) {
        return this.dataMap.get(str);
    }

    @Deprecated
    public AVACL getACL() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public boolean getBoolean(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public byte[] getBytes(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public Date getDate(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public double getDouble(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public int getInt(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public org.json.JSONArray getJSONArray(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public org.json.JSONObject getJSONObject(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public List getList(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public long getLong(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public <V> Map<String, V> getMap(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public Number getNumber(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public <T extends AVFile> T getAVFile(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public AVGeoPoint getAVGeoPoint(String str) {
        throw new UnsupportedOperationException();
    }

    public <T extends AVObject> T getAVObject(String str) {
        return (AVObject) get(str);
    }

    @Deprecated
    public <T extends AVUser> T getAVUser(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public <T extends AVObject> AVRelation<T> getRelation(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public String getString(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public Date getUpdatedAt() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public boolean has(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public boolean hasSameId(AVObject aVObject) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void increment(String str) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void increment(String str, Number number) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public Set<String> keySet() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void refresh() throws AVException {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void refresh(String str) throws AVException {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void refreshInBackground(RefreshCallback<AVObject> refreshCallback) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void refreshInBackground(String str, RefreshCallback<AVObject> refreshCallback) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void removeAll(String str, Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void save() throws AVException {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void saveEventually() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void saveEventually(SaveCallback saveCallback) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void saveInBackground() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void saveInBackground(SaveCallback saveCallback) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public void setACL(AVACL avacl) {
        throw new UnsupportedOperationException();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.inboxType);
        parcel.writeString(this.createdAt);
        parcel.writeString(this.objectId);
        parcel.writeString(JSON.toJSONString((Object) this.dataMap, (SerializeFilter) new ObjectValueFilter(), SerializerFeature.NotWriteRootClassName, SerializerFeature.WriteClassName));
        parcel.writeString(JSON.toJSONString((Object) this.source, SerializerFeature.WriteClassName));
    }

    public AVStatus(Parcel parcel) {
        this.inboxType = parcel.readString();
        this.createdAt = parcel.readString();
        this.objectId = parcel.readString();
        Map map = (Map) JSON.parse(parcel.readString());
        if (map != null && !map.isEmpty()) {
            this.dataMap.putAll(map);
        }
        this.source = (AVObject) JSON.parse(parcel.readString());
    }

    public static void resetUnreadStatusesCount(String str, final AVCallback aVCallback) {
        if (!checkCurrentUser(null)) {
            if (aVCallback != null) {
                aVCallback.internalDone(AVErrorUtils.sessionMissingException());
            }
            return;
        }
        String jsonStringFromMapWithNull = AVUtils.jsonStringFromMapWithNull(getStatusQueryMap(AVUser.getCurrentUser().getObjectId(), 0, 0, 0, str, null, false, false));
        PaasClient.storageInstance().postObject("subscribe/statuses/resetUnreadCount", jsonStringFromMapWithNull, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                AVCallback aVCallback = aVCallback;
                if (aVCallback != null) {
                    aVCallback.internalDone(null);
                }
            }

            public void onFailure(Throwable th, String str) {
                AVCallback aVCallback = aVCallback;
                if (aVCallback != null) {
                    aVCallback.internalDone(AVErrorUtils.createException(th, str));
                }
            }
        });
    }
}
