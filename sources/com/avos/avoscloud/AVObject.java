package com.avos.avoscloud;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.im.v2.Conversation;
import com.avos.avoscloud.ops.AVOp;
import com.avos.avoscloud.ops.AddOp;
import com.avos.avoscloud.ops.AddRelationOp;
import com.avos.avoscloud.ops.AddUniqueOp;
import com.avos.avoscloud.ops.CollectionOp;
import com.avos.avoscloud.ops.CompoundOp;
import com.avos.avoscloud.ops.DeleteOp;
import com.avos.avoscloud.ops.IncrementOp;
import com.avos.avoscloud.ops.RemoveOp;
import com.avos.avoscloud.ops.RemoveRelationOp;
import com.avos.avoscloud.ops.SetOp;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

public class AVObject implements Parcelable {
    public static final String CREATED_AT = "createdAt";
    public static final transient Creator CREATOR = AVObjectCreator.instance;
    public static final Set<String> INVALID_KEYS = new HashSet();
    private static final String LOGTAG = AVObject.class.getName();
    public static final String OBJECT_ID = "objectId";
    private static final Map<String, Class<? extends AVObject>> SUB_CLASSES_MAP = new HashMap();
    private static final Map<Class<? extends AVObject>, String> SUB_CLASSES_REVERSE_MAP = new HashMap();
    public static final String UPDATED_AT = "updatedAt";
    static final int UUID_LEN = UUID.randomUUID().toString().length();
    protected transient AVACL acl;
    /* access modifiers changed from: private */
    public String className;
    protected String createdAt;
    private volatile boolean fetchWhenSave;
    Map<String, Object> instanceData;
    /* access modifiers changed from: private */
    @JSONField
    public boolean isDataReady;
    protected String objectId;
    Map<String, AVOp> operationQueue;
    protected boolean requestStatistic;
    /* access modifiers changed from: private */
    public volatile transient boolean running;
    Map<String, Object> serverData;
    Map<String, AVOp> tempDataForServerSaving;
    protected String updatedAt;
    private String uuid;

    public static class AVObjectCreator implements Creator {
        public static AVObjectCreator instance = new AVObjectCreator();

        private AVObjectCreator() {
        }

        public AVObject createFromParcel(Parcel parcel) {
            AVObject aVObject = new AVObject(parcel);
            Class aVObjectClassByClassName = AVUtils.getAVObjectClassByClassName(aVObject.className);
            if (aVObjectClassByClassName != null) {
                try {
                    return AVObject.cast(aVObject, aVObjectClassByClassName);
                } catch (Exception unused) {
                }
            }
            return aVObject;
        }

        public AVObject[] newArray(int i) {
            return new AVObject[i];
        }
    }

    private final class FetchObjectCallback extends GenericObjectCallback {
        private final AVCallback<AVObject> internalCallback;

        private FetchObjectCallback(AVCallback<AVObject> aVCallback) {
            this.internalCallback = aVCallback;
        }

        public void onSuccess(String str, AVException aVException) {
            AVObject aVObject = AVObject.this;
            if (!AVUtils.isBlankContent(str)) {
                AVUtils.copyPropertiesFromJsonStringToAVObject(str, aVObject);
                AVObject.this.isDataReady = true;
                AVObject.this.onDataSynchronized();
            } else {
                aVObject = null;
                aVException = new AVException(101, "The object is not Found");
            }
            AVCallback<AVObject> aVCallback = this.internalCallback;
            if (aVCallback != null) {
                aVCallback.internalDone(aVObject, aVException);
            }
        }

        public void onFailure(Throwable th, String str) {
            AVCallback<AVObject> aVCallback = this.internalCallback;
            if (aVCallback != null) {
                aVCallback.internalDone(null, AVErrorUtils.createException(th, str));
            }
        }
    }

    private abstract class KeyValueCallback {
        public abstract AVOp createOp();

        private KeyValueCallback() {
        }

        public void execute(String str) {
            execute(str, true);
        }

        public void execute(String str, boolean z) {
            AVOp aVOp;
            AVOp aVOp2 = (AVOp) AVObject.this.operationQueue.get(str);
            AVOp createOp = createOp();
            if (aVOp2 == null) {
                aVOp = createOp;
            } else {
                aVOp = aVOp2.merge(createOp);
            }
            Object apply = createOp.apply(AVObject.this.instanceData.get(str));
            if (z) {
                AVObject.this.operationQueue.put(str, aVOp);
            } else if (apply != null) {
                AVObject.this.serverData.put(str, apply);
            } else if (AVObject.this.serverData.containsKey(str)) {
                AVObject.this.serverData.remove(str);
            }
            if (apply != null) {
                AVObject.this.instanceData.put(str, apply);
            } else if (AVObject.this.alwaysUsePost()) {
                HashMap hashMap = new HashMap(1);
                hashMap.put("__op", "Delete");
                AVObject.this.instanceData.put(str, hashMap);
            } else {
                AVObject.this.instanceData.remove(str);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean alwaysUsePost() {
        return false;
    }

    public int describeContents() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void onDataSynchronized() {
    }

    /* access modifiers changed from: protected */
    public void onSaveFailure() {
    }

    /* access modifiers changed from: protected */
    public void onSaveSuccess() {
    }

    /* access modifiers changed from: protected */
    public boolean shouldThrowException(Throwable th, String str) {
        return true;
    }

    static {
        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
        INVALID_KEYS.add(CREATED_AT);
        INVALID_KEYS.add(UPDATED_AT);
        INVALID_KEYS.add("objectId");
        INVALID_KEYS.add("ACL");
    }

    public AVObject() {
        this.requestStatistic = true;
        this.fetchWhenSave = false;
        this.serverData = new ConcurrentHashMap();
        this.operationQueue = new ConcurrentHashMap();
        this.instanceData = new ConcurrentHashMap();
        this.tempDataForServerSaving = new ConcurrentHashMap();
        this.className = getSubClassName(getClass());
        init();
    }

    public String toString() {
        return JSON.toJSONString((Object) this, (SerializeFilter) ObjectValueFilter.instance, SerializerFeature.WriteClassName, SerializerFeature.DisableCircularReferenceDetect);
    }

    public JSONObject toJSONObject() {
        HashMap hashMap = new HashMap();
        for (Entry entry : this.instanceData.entrySet()) {
            hashMap.put(entry.getKey(), parseObject(entry.getValue()));
        }
        hashMap.put("objectId", this.objectId);
        hashMap.put(CREATED_AT, this.createdAt);
        hashMap.put(UPDATED_AT, this.updatedAt);
        hashMap.put(AVUtils.classNameTag, this.className);
        return new JSONObject(hashMap);
    }

    private static Object parseObject(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            return getParsedMap((Map) obj);
        }
        if (obj instanceof Collection) {
            return getParsedList((Collection) obj);
        }
        if (obj instanceof AVObject) {
            return ((AVObject) obj).toJSONObject();
        }
        if (obj instanceof AVGeoPoint) {
            return AVUtils.mapFromGeoPoint((AVGeoPoint) obj);
        }
        if (obj instanceof Date) {
            return AVUtils.mapFromDate((Date) obj);
        }
        if (obj instanceof byte[]) {
            return AVUtils.mapFromByteArray((byte[]) obj);
        }
        if (obj instanceof AVFile) {
            return ((AVFile) obj).toJSONObject();
        }
        if (obj instanceof JSONObject) {
            return JSON.parse(obj.toString());
        }
        if (obj instanceof JSONArray) {
            obj = JSON.parse(obj.toString());
        }
        return obj;
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Collection, code=java.util.Collection<java.lang.Object>, for r2v0, types: [java.util.Collection<java.lang.Object>, java.util.Collection] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.util.List getParsedList(java.util.Collection<java.lang.Object> r2) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r2.size()
            r0.<init>(r1)
            java.util.Iterator r2 = r2.iterator()
        L_0x000d:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L_0x001f
            java.lang.Object r1 = r2.next()
            java.lang.Object r1 = parseObject(r1)
            r0.add(r1)
            goto L_0x000d
        L_0x001f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVObject.getParsedList(java.util.Collection):java.util.List");
    }

    private static Map<String, Object> getParsedMap(Map<String, Object> map) {
        HashMap hashMap = new HashMap(map.size());
        for (Entry entry : map.entrySet()) {
            hashMap.put((String) entry.getKey(), parseObject(entry.getValue()));
        }
        return hashMap;
    }

    /* access modifiers changed from: 0000 */
    public Map<String, Object> getServerData() {
        return this.serverData;
    }

    /* access modifiers changed from: 0000 */
    public void setServerData(Map<String, Object> map) {
        this.serverData.clear();
        this.serverData.putAll(map);
    }

    /* access modifiers changed from: 0000 */
    public Map<String, AVOp> getOperationQueue() {
        return this.operationQueue;
    }

    /* access modifiers changed from: 0000 */
    public void setOperationQueue(Map<String, AVOp> map) {
        this.operationQueue.clear();
        this.operationQueue.putAll(map);
    }

    /* access modifiers changed from: 0000 */
    public boolean isDataReady() {
        return this.isDataReady;
    }

    /* access modifiers changed from: 0000 */
    public void setDataReady(boolean z) {
        this.isDataReady = z;
    }

    /* access modifiers changed from: 0000 */
    public void setUpdatedAt(String str) {
        this.updatedAt = str;
    }

    /* access modifiers changed from: 0000 */
    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    /* access modifiers changed from: 0000 */
    public void setUuid(String str) {
        this.uuid = str;
    }

    public boolean isFetchWhenSave() {
        return this.fetchWhenSave;
    }

    public void setFetchWhenSave(boolean z) {
        this.fetchWhenSave = z;
    }

    public String getUuid() {
        if (AVUtils.isBlankString(this.uuid)) {
            this.uuid = UUID.randomUUID().toString().toLowerCase();
        }
        return this.uuid;
    }

    static Class<? extends AVObject> getSubClass(String str) {
        return (Class) SUB_CLASSES_MAP.get(str);
    }

    static String getSubClassName(Class<? extends AVObject> cls) {
        if (AVUser.class.isAssignableFrom(cls)) {
            return AVUser.userClassName();
        }
        if (AVRole.class.isAssignableFrom(cls)) {
            return AVRole.className;
        }
        if (AVStatus.class.isAssignableFrom(cls)) {
            return AVStatus.userClassName();
        }
        return (String) SUB_CLASSES_REVERSE_MAP.get(cls);
    }

    public static <T extends AVObject> void registerSubclass(Class<T> cls) {
        AVClassName aVClassName = (AVClassName) cls.getAnnotation(AVClassName.class);
        if (aVClassName != null) {
            String value = aVClassName.value();
            AVUtils.checkClassName(value);
            SUB_CLASSES_MAP.put(value, cls);
            SUB_CLASSES_REVERSE_MAP.put(cls, value);
            ParserConfig.getGlobalInstance().putDeserializer(cls, AVObjectDeserializer.instance);
            SerializeConfig.getGlobalInstance().put((Type) cls, (ObjectSerializer) AVObjectSerializer.instance);
            return;
        }
        throw new IllegalArgumentException("The class is not annotated by @AVClassName");
    }

    public AVObject(String str) {
        this();
        AVUtils.checkClassName(str);
        this.className = str;
    }

    private void init() {
        this.objectId = "";
        this.isDataReady = false;
        if (getPaasClientInstance().getDefaultACL() != null) {
            this.acl = new AVACL(getPaasClientInstance().getDefaultACL());
        }
        this.running = false;
    }

    public void add(String str, Object obj) {
        addObjectToArray(str, obj, false);
    }

    public void addAll(String str, Collection<?> collection) {
        for (Object addObjectToArray : collection) {
            addObjectToArray(str, addObjectToArray, false);
        }
    }

    public static <T extends AVObject> AVQuery<T> getQuery(Class<T> cls) {
        return new AVQuery<>(getSubClassName(cls), cls);
    }

    public void addAllUnique(String str, Collection<?> collection) {
        for (Object addObjectToArray : collection) {
            addObjectToArray(str, addObjectToArray, true);
        }
    }

    public void addUnique(String str, Object obj) {
        addObjectToArray(str, obj, true);
    }

    public boolean containsKey(String str) {
        return get(str) != null;
    }

    public static AVObject create(String str) {
        return new AVObject(str);
    }

    public static AVObject parseAVObject(String str) throws Exception {
        AVObject aVObject = (AVObject) JSON.parse(str);
        if ((aVObject instanceof AVObject) && !AVObject.class.equals(aVObject.getClass())) {
            aVObject.rebuildInstanceData();
        }
        return aVObject;
    }

    public static AVObject createWithoutData(String str, String str2) {
        AVObject aVObject = new AVObject(str);
        aVObject.setObjectId(str2);
        return aVObject;
    }

    /* access modifiers changed from: 0000 */
    public void setClassName(String str) {
        this.className = str;
    }

    public static <T extends AVObject> T createWithoutData(Class<T> cls, String str) throws AVException {
        try {
            T t = (AVObject) cls.newInstance();
            t.setClassName(getSubClassName(cls));
            t.setObjectId(str);
            return t;
        } catch (Exception e) {
            throw new AVException("Create subclass instance failed.", (Throwable) e);
        }
    }

    public void delete() throws AVException {
        delete(null);
    }

    public void delete(AVDeleteOption aVDeleteOption) throws AVException {
        delete(true, false, aVDeleteOption, new DeleteCallback() {
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

    public static void deleteAll(Collection<? extends AVObject> collection) throws AVException {
        deleteAll(true, false, collection, new DeleteCallback() {
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

    public static void deleteAllInBackground(Collection<? extends AVObject> collection, DeleteCallback deleteCallback) {
        deleteAll(false, false, collection, deleteCallback);
    }

    private static void deleteAll(boolean z, boolean z2, Collection<? extends AVObject> collection, final DeleteCallback deleteCallback) {
        String str = null;
        if (collection == null || collection.isEmpty()) {
            deleteCallback.internalDone(null, null);
            return;
        }
        if (z2) {
            for (AVObject aVObject : collection) {
                if (aVObject != null) {
                    aVObject.deleteEventually(deleteCallback);
                }
            }
        } else {
            boolean z3 = true;
            StringBuilder sb = new StringBuilder();
            for (AVObject aVObject2 : collection) {
                if (AVUtils.isBlankString(aVObject2.getClassName()) || AVUtils.isBlankString(aVObject2.objectId)) {
                    throw new IllegalArgumentException("Invalid AVObject, the class name or objectId is blank.");
                }
                if (str == null) {
                    str = aVObject2.getClassName();
                } else if (!str.equals(aVObject2.getClassName())) {
                    throw new IllegalArgumentException("The objects class name must be the same.");
                }
                if (z3) {
                    sb.append(AVPowerfulUtils.getEndpoint((Object) aVObject2));
                    z3 = false;
                } else {
                    sb.append(",");
                    sb.append(aVObject2.getObjectId());
                }
            }
            PaasClient.storageInstance().deleteObject(sb.toString(), z, false, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    DeleteCallback deleteCallback = deleteCallback;
                    if (deleteCallback != null) {
                        deleteCallback.internalDone(null, null);
                    }
                }

                public void onFailure(Throwable th, String str) {
                    DeleteCallback deleteCallback = deleteCallback;
                    if (deleteCallback != null) {
                        deleteCallback.internalDone(null, AVErrorUtils.createException(th, str));
                    }
                }
            }, null, null);
        }
    }

    public void deleteEventually() {
        deleteEventually(null);
    }

    public void deleteEventually(DeleteCallback deleteCallback) {
        delete(false, true, null, deleteCallback);
    }

    public void deleteInBackground() {
        deleteInBackground(null, null);
    }

    public void deleteInBackground(AVDeleteOption aVDeleteOption) {
        deleteInBackground(aVDeleteOption, null);
    }

    public void deleteInBackground(AVDeleteOption aVDeleteOption, DeleteCallback deleteCallback) {
        delete(false, false, aVDeleteOption, deleteCallback);
    }

    public void deleteInBackground(DeleteCallback deleteCallback) {
        delete(false, false, null, deleteCallback);
    }

    private void delete(boolean z, boolean z2, AVDeleteOption aVDeleteOption, final DeleteCallback deleteCallback) {
        String endpoint = AVPowerfulUtils.getEndpoint((Object) this);
        if (!(aVDeleteOption == null || aVDeleteOption.matchQuery == null)) {
            if (getClassName() == null || getClassName().equals(aVDeleteOption.matchQuery.getClassName())) {
                Map compileWhereOperationMap = aVDeleteOption.matchQuery.conditions.compileWhereOperationMap();
                HashMap hashMap = new HashMap();
                if (compileWhereOperationMap != null && !compileWhereOperationMap.isEmpty()) {
                    hashMap.put(Conversation.QUERY_PARAM_WHERE, compileWhereOperationMap);
                }
                endpoint = AVUtils.addQueryParams(endpoint, hashMap);
            } else {
                deleteCallback.internalDone(new AVException(0, "AVObject class inconsistant with AVQuery in AVDeleteOption"));
                return;
            }
        }
        getPaasClientInstance().deleteObject(endpoint, z, z2, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                DeleteCallback deleteCallback = deleteCallback;
                if (deleteCallback != null) {
                    deleteCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                DeleteCallback deleteCallback = deleteCallback;
                if (deleteCallback != null) {
                    deleteCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, getObjectId(), internalId());
    }

    public AVObject fetch() throws AVException {
        return fetch(null);
    }

    public AVObject fetch(String str) throws AVException {
        fetchInBackground(true, str, new GetCallback<AVObject>() {
            /* access modifiers changed from: protected */
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVObject aVObject, AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (!AVExceptionHolder.exists()) {
            return this;
        }
        throw AVExceptionHolder.remove();
    }

    public static List<AVObject> fetchAll(List<AVObject> list) throws AVException {
        LinkedList linkedList = new LinkedList();
        for (AVObject fetch : list) {
            linkedList.add(fetch.fetch());
        }
        return linkedList;
    }

    public static List<AVObject> fetchAllIfNeeded(List<AVObject> list) throws AVException {
        LinkedList linkedList = new LinkedList();
        for (AVObject fetchIfNeeded : list) {
            linkedList.add(fetchIfNeeded.fetchIfNeeded());
        }
        return linkedList;
    }

    public static void fetchAllIfNeededInBackground(List<AVObject> list, final FindCallback<AVObject> findCallback) {
        final ArrayList arrayList = new ArrayList();
        fetchAllInBackground(true, list, new GenericObjectCallback() {
            public void onGroupRequestFinished(int i, int i2, AVObject aVObject) {
                if (aVObject != null) {
                    arrayList.add(aVObject);
                }
                if (i <= 0) {
                    FindCallback findCallback = findCallback;
                    if (findCallback != null) {
                        findCallback.internalDone(arrayList, null);
                    }
                }
            }
        });
    }

    public static void fetchAllInBackground(List<AVObject> list, final FindCallback<AVObject> findCallback) {
        final ArrayList arrayList = new ArrayList();
        fetchAllInBackground(false, list, new GenericObjectCallback() {
            public void onGroupRequestFinished(int i, int i2, AVObject aVObject) {
                if (aVObject != null) {
                    arrayList.add(aVObject);
                }
                if (i <= 0) {
                    FindCallback findCallback = findCallback;
                    if (findCallback != null) {
                        findCallback.internalDone(arrayList, null);
                    }
                }
            }
        });
    }

    private static void fetchAllInBackground(boolean z, List<AVObject> list, final GenericObjectCallback genericObjectCallback) {
        final int size = list.size();
        final AtomicInteger atomicInteger = new AtomicInteger(list.size());
        for (AVObject aVObject : list) {
            if (!z || !aVObject.isDataAvailable()) {
                aVObject.fetchInBackground(false, null, new GetCallback<AVObject>() {
                    public void done(AVObject aVObject, AVException aVException) {
                        GenericObjectCallback genericObjectCallback = genericObjectCallback;
                        if (genericObjectCallback != null) {
                            genericObjectCallback.onGroupRequestFinished(atomicInteger.decrementAndGet(), size, aVObject);
                        }
                    }
                });
            } else if (genericObjectCallback != null) {
                genericObjectCallback.onGroupRequestFinished(atomicInteger.decrementAndGet(), size, aVObject);
            }
        }
        if (list.size() <= 0 && genericObjectCallback != null) {
            genericObjectCallback.onGroupRequestFinished(0, 0, null);
        }
    }

    public AVObject fetchIfNeeded() throws AVException {
        return fetchIfNeeded(null);
    }

    public AVObject fetchIfNeeded(String str) throws AVException {
        if (!isDataAvailable()) {
            fetchInBackground(true, str, new GetCallback<AVObject>() {
                /* access modifiers changed from: protected */
                public boolean mustRunOnUIThread() {
                    return false;
                }

                public void done(AVObject aVObject, AVException aVException) {
                    if (aVException != null) {
                        AVExceptionHolder.add(aVException);
                    }
                }
            });
        }
        if (!AVExceptionHolder.exists()) {
            return this;
        }
        throw AVExceptionHolder.remove();
    }

    public void fetchIfNeededInBackground(GetCallback<AVObject> getCallback) {
        fetchIfNeededInBackground(null, getCallback);
    }

    public void fetchIfNeededInBackground(String str, GetCallback<AVObject> getCallback) {
        if (!isDataAvailable()) {
            fetchInBackground(str, getCallback);
        } else if (getCallback != null) {
            getCallback.internalDone(this, null);
        }
    }

    public void fetchInBackground(GetCallback<AVObject> getCallback) {
        fetchInBackground(null, getCallback);
    }

    public void fetchInBackground(String str, GetCallback<AVObject> getCallback) {
        fetchInBackground(false, str, getCallback);
    }

    private void fetchInBackground(boolean z, String str, GetCallback<AVObject> getCallback) {
        if (AVUtils.isBlankString(getObjectId())) {
            if (getCallback != null) {
                getCallback.internalDone(null, AVErrorUtils.createException(104, "Missing objectId"));
            }
            return;
        }
        HashMap hashMap = new HashMap();
        if (!AVUtils.isBlankString(str)) {
            hashMap.put("include", str);
        }
        getPaasClientInstance().getObject(AVPowerfulUtils.getEndpoint((Object) this), new AVRequestParams(hashMap), z, headerMap(), new FetchObjectCallback(getCallback));
    }

    public Object get(String str) {
        if (CREATED_AT.equals(str)) {
            return getCreatedAt();
        }
        if (UPDATED_AT.equals(str)) {
            return getUpdatedAt();
        }
        return this.instanceData.get(str);
    }

    public AVACL getACL() {
        return this.acl;
    }

    public boolean getBoolean(String str) {
        Boolean bool = (Boolean) get(str);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public byte[] getBytes(String str) {
        return (byte[]) get(str);
    }

    public String getClassName() {
        if (AVUtils.isBlankString(this.className)) {
            this.className = getSubClassName(getClass());
        }
        return this.className;
    }

    public Date getCreatedAt() {
        return AVUtils.dateFromString(this.createdAt);
    }

    public Date getDate(String str) {
        return (Date) get(str);
    }

    public double getDouble(String str) {
        Number number = (Number) get(str);
        if (number != null) {
            return number.doubleValue();
        }
        return 0.0d;
    }

    public int getInt(String str) {
        Number number = (Number) get(str);
        if (number != null) {
            return number.intValue();
        }
        return 0;
    }

    public JSONArray getJSONArray(String str) {
        Object obj = get(str);
        JSONArray jSONArray = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        if (obj instanceof Collection) {
            return new JSONArray((Collection) obj);
        }
        if (obj instanceof Object[]) {
            jSONArray = new JSONArray();
            for (Object put : (Object[]) obj) {
                jSONArray.put(put);
            }
        }
        return jSONArray;
    }

    public JSONObject getJSONObject(String str) {
        Object obj = get(str);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        try {
            return new JSONObject(JSON.toJSONString(obj));
        } catch (Exception e) {
            throw new IllegalStateException("Invalid json string", e);
        }
    }

    public List getList(String str) {
        return (List) get(str);
    }

    public <T extends AVObject> List<T> getList(String str, Class<T> cls) {
        List<AVObject> list = getList(str);
        if (list == null) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        try {
            for (AVObject aVObject : list) {
                linkedList.add(aVObject != null ? cast(aVObject, cls) : null);
            }
        } catch (Exception e) {
            log.e("ClassCast Exception", e);
        }
        return linkedList;
    }

    public long getLong(String str) {
        Number number = (Number) get(str);
        if (number != null) {
            return number.longValue();
        }
        return 0;
    }

    public <V> Map<String, V> getMap(String str) {
        return (Map) get(str);
    }

    public Number getNumber(String str) {
        return (Number) get(str);
    }

    public String getObjectId() {
        return this.objectId;
    }

    public <T extends AVFile> T getAVFile(String str) {
        return (AVFile) get(str);
    }

    public AVGeoPoint getAVGeoPoint(String str) {
        return (AVGeoPoint) get(str);
    }

    public <T extends AVObject> T getAVObject(String str) {
        return (AVObject) get(str);
    }

    public <T extends AVObject> T getAVObject(String str, Class<T> cls) throws Exception {
        T aVObject = getAVObject(str);
        if (aVObject == null) {
            return null;
        }
        if (cls.isInstance(aVObject)) {
            return aVObject;
        }
        return cast(this, cls);
    }

    public <T extends AVUser> T getAVUser(String str) {
        return (AVUser) get(str);
    }

    public <T extends AVUser> T getAVUser(String str, Class<T> cls) {
        AVUser aVUser = (AVUser) get(str);
        if (aVUser == null) {
            return null;
        }
        return AVUser.cast(aVUser, cls);
    }

    public <T extends AVObject> AVRelation<T> getRelation(String str) {
        if (!checkKey(str)) {
            return null;
        }
        Object obj = get(str);
        if (obj == null || !(obj instanceof AVRelation)) {
            AVRelation<T> aVRelation = new AVRelation<>(this, str);
            this.instanceData.put(str, aVRelation);
            return aVRelation;
        }
        AVRelation<T> aVRelation2 = (AVRelation) obj;
        aVRelation2.setParent(this);
        return aVRelation2;
    }

    public String getString(String str) {
        Object obj = get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public Date getUpdatedAt() {
        return AVUtils.dateFromString(this.updatedAt);
    }

    public boolean has(String str) {
        return get(str) != null;
    }

    public boolean hasSameId(AVObject aVObject) {
        return aVObject.objectId.equals(this.objectId);
    }

    public void increment(String str) {
        increment(str, Integer.valueOf(1));
    }

    public void increment(final String str, final Number number) {
        if (checkKey(str)) {
            new KeyValueCallback() {
                public AVOp createOp() {
                    return new IncrementOp(str, number);
                }
            }.execute(str);
        }
    }

    public boolean isDataAvailable() {
        return !AVUtils.isBlankString(this.objectId) && this.isDataReady;
    }

    public Set<String> keySet() {
        return this.instanceData.keySet();
    }

    private boolean checkKey(String str) {
        if (AVUtils.isBlankString(str)) {
            throw new IllegalArgumentException("Blank key");
        } else if (!str.startsWith(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR)) {
            if (INVALID_KEYS.contains(str)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Internal key name:`");
                sb.append(str);
                sb.append("`,please use setter/getter for it.");
                log.w(sb.toString());
            }
            return !INVALID_KEYS.contains(str);
        } else {
            throw new IllegalArgumentException("key should not start with '_'");
        }
    }

    public void put(String str, Object obj) {
        put(str, obj, true);
    }

    /* access modifiers changed from: protected */
    public void put(final String str, final Object obj, boolean z) {
        if (checkKey(str)) {
            new KeyValueCallback() {
                public AVOp createOp() {
                    return new SetOp(str, obj);
                }
            }.execute(str, z);
        }
    }

    public void refresh() throws AVException {
        refresh(null);
    }

    public void refresh(String str) throws AVException {
        refreshInBackground(true, str, new RefreshCallback<AVObject>() {
            /* access modifiers changed from: protected */
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVObject aVObject, AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public void refreshInBackground(RefreshCallback<AVObject> refreshCallback) {
        refreshInBackground(false, null, refreshCallback);
    }

    public void refreshInBackground(String str, RefreshCallback<AVObject> refreshCallback) {
        refreshInBackground(false, str, refreshCallback);
    }

    private void refreshInBackground(boolean z, String str, RefreshCallback<AVObject> refreshCallback) {
        HashMap hashMap = new HashMap();
        if (!AVUtils.isBlankString(str)) {
            hashMap.put("include", str);
        }
        getPaasClientInstance().getObject(AVPowerfulUtils.getEndpoint((Object) this), new AVRequestParams(hashMap), z, headerMap(), new FetchObjectCallback(refreshCallback));
    }

    public void remove(String str) {
        removeObjectForKey(str);
    }

    public void removeAll(final String str, final Collection<?> collection) {
        if (checkKey(str)) {
            new KeyValueCallback() {
                public AVOp createOp() {
                    return new RemoveOp(str, collection);
                }
            }.execute(str);
        }
    }

    public void save() throws AVException {
        saveObject(true, false, new SaveCallback() {
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

    public void save(AVSaveOption aVSaveOption) throws AVException {
        saveObject(aVSaveOption, true, false, new SaveCallback() {
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

    public static void saveAll(List<? extends AVObject> list) throws AVException {
        _saveAll(true, list, new SaveCallback() {
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

    public static void saveAllInBackground(List<? extends AVObject> list) {
        _saveAll(false, list, null);
    }

    public static void saveAllInBackground(List<? extends AVObject> list, SaveCallback saveCallback) {
        _saveAll(false, list, saveCallback);
    }

    private static void _saveAll(final boolean z, final List<? extends AVObject> list, final SaveCallback saveCallback) {
        final LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        for (AVObject aVObject : list) {
            if (!aVObject.checkCircleReference()) {
                if (saveCallback != null) {
                    saveCallback.internalDone(AVErrorUtils.circleException());
                }
                return;
            } else if (aVObject.processOperationData()) {
                List filesToSave = aVObject.getFilesToSave();
                if (!AVUtils.isEmptyList(filesToSave)) {
                    linkedList2.addAll(filesToSave);
                }
            }
        }
        final AnonymousClass17 r5 = new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                for (AVObject aVObject : list) {
                    aVObject.copyFromJson(str);
                    aVObject.running = false;
                    aVObject.onSaveSuccess();
                }
                SaveCallback saveCallback = saveCallback;
                if (saveCallback != null) {
                    saveCallback.done(null);
                }
            }

            public void onFailure(Throwable th, String str) {
                for (AVObject aVObject : list) {
                    aVObject.running = false;
                    aVObject.rollbackDataToOperationQueue();
                    aVObject.onSaveFailure();
                }
                log.d(str);
                SaveCallback saveCallback = saveCallback;
                if (saveCallback != null) {
                    saveCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        };
        try {
            if (linkedList2.size() > 0) {
                saveFileBeforeSave(linkedList2, z, new SaveCallback() {
                    public void done(AVException aVException) {
                        for (AVObject aVObject : list) {
                            aVObject.running = true;
                            aVObject.buildParameterForNonSavedObject(linkedList);
                        }
                        PaasClient.storageInstance().postBatchSave(linkedList, z, false, null, r5, null, null);
                    }
                });
            } else {
                for (AVObject aVObject2 : list) {
                    aVObject2.running = true;
                    aVObject2.buildParameterForNonSavedObject(linkedList);
                }
                PaasClient.storageInstance().postBatchSave(linkedList, z, false, null, r5, null, null);
            }
        } catch (AVException e) {
            if (saveCallback != null) {
                saveCallback.internalDone(e);
            }
        }
    }

    public void saveEventually() {
        saveEventually(null);
    }

    public void saveEventually(SaveCallback saveCallback) {
        PaasClient.registerEventuallyObject(this);
        saveInBackground(saveCallback, true);
    }

    /* access modifiers changed from: protected */
    public Map<String, String> headerMap() {
        return getPaasClientInstance().userHeaderMap();
    }

    private void saveObject(boolean z, boolean z2, SaveCallback saveCallback) {
        saveObject(null, z, z2, saveCallback);
    }

    private void saveObject(AVSaveOption aVSaveOption, boolean z, boolean z2, SaveCallback saveCallback) {
        if (this.running) {
            if (saveCallback != null) {
                saveCallback.internalDone(new AVException(-1, "already has one request sending"));
            }
        } else if (!processOperationData()) {
            if (saveCallback != null) {
                saveCallback.internalDone(null);
            }
        } else if (aVSaveOption == null || aVSaveOption.matchQuery == null || getClassName() == null || getClassName().equals(aVSaveOption.matchQuery.getClassName())) {
            this.running = true;
            try {
                List filesToSave = getFilesToSave();
                if (filesToSave == null || filesToSave.size() <= 0) {
                    _saveObject(aVSaveOption, z, z2, saveCallback);
                } else {
                    final AVSaveOption aVSaveOption2 = aVSaveOption;
                    final boolean z3 = z;
                    final boolean z4 = z2;
                    final SaveCallback saveCallback2 = saveCallback;
                    AnonymousClass19 r2 = new SaveCallback() {
                        public void done(AVException aVException) {
                            AVObject.this._saveObject(aVSaveOption2, z3, z4, saveCallback2);
                        }
                    };
                    saveFileBeforeSave(filesToSave, z, r2);
                }
            } catch (AVException e) {
                if (saveCallback != null) {
                    saveCallback.internalDone(e);
                }
            }
        } else {
            saveCallback.internalDone(new AVException(0, "AVObject class inconsistant with AVQuery in AVSaveOption"));
        }
    }

    private List<AVFile> getFilesToSave() {
        LinkedList linkedList = new LinkedList();
        for (Entry value : this.tempDataForServerSaving.entrySet()) {
            Object values = ((AVOp) value.getValue()).getValues();
            if (values != null && (values instanceof AVObject)) {
                List filesToSave = ((AVObject) values).getFilesToSave();
                if (filesToSave != null && filesToSave.size() > 0) {
                    linkedList.addAll(filesToSave);
                }
            } else if (values != null && AVFile.class.isInstance(values)) {
                AVFile aVFile = (AVFile) values;
                if (aVFile.getObjectId() == null) {
                    linkedList.add(aVFile);
                }
            }
        }
        return linkedList;
    }

    private boolean processOperationData() {
        for (Entry entry : this.instanceData.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value != null && (value instanceof AVObject) && ((AVObject) value).processOperationData()) {
                put(str, value);
            }
        }
        if (!this.operationQueue.isEmpty()) {
            this.tempDataForServerSaving.putAll(this.operationQueue);
            this.operationQueue.clear();
        }
        return !this.tempDataForServerSaving.isEmpty() || AVUtils.isBlankString(this.objectId);
    }

    private void _saveObject(boolean z, boolean z2, SaveCallback saveCallback) {
        _saveObject(null, z, z2, saveCallback);
    }

    /* access modifiers changed from: private */
    public void _saveObject(AVSaveOption aVSaveOption, boolean z, boolean z2, SaveCallback saveCallback) {
        LinkedList linkedList = new LinkedList();
        buildParameterForNonSavedObject(linkedList);
        buildMatchQueryParams(aVSaveOption, linkedList);
        saveObjectToAVOSCloud(linkedList, z, z2, saveCallback);
    }

    private void buildMatchQueryParams(AVSaveOption aVSaveOption, LinkedList<Map<String, Object>> linkedList) {
        Map compileWhereOperationMap = (aVSaveOption == null || aVSaveOption.matchQuery == null) ? null : aVSaveOption.matchQuery.conditions.compileWhereOperationMap();
        if (linkedList.size() >= 1) {
            Map map = (Map) linkedList.get(0);
            HashMap hashMap = new HashMap();
            if (compileWhereOperationMap != null && !compileWhereOperationMap.isEmpty()) {
                hashMap.put(Conversation.QUERY_PARAM_WHERE, compileWhereOperationMap);
            }
            if (this.fetchWhenSave || (aVSaveOption != null && aVSaveOption.fetchWhenSave)) {
                hashMap.put("fetchWhenSave", Boolean.valueOf(true));
            }
            if ("PUT".equals(map.get(Param.METHOD))) {
                map.put("params", hashMap);
            }
        }
    }

    private void saveObjectToAVOSCloud(List<Map<String, Object>> list, boolean z, boolean z2, SaveCallback saveCallback) {
        for (Map map : list) {
            if (((String) ((Map) map.get(TtmlNode.TAG_BODY)).get("__internalId")).length() == UUID_LEN) {
                map.put(AppSettingsData.STATUS_NEW, Boolean.valueOf(true));
            }
        }
        final SaveCallback saveCallback2 = saveCallback;
        getPaasClientInstance().postBatchSave(list, z, z2, headerMap(), new GenericObjectCallback() {
            public boolean isRequestStatisticNeed() {
                return AVObject.this.requestStatistic;
            }

            public void onSuccess(String str, AVException aVException) {
                AVObject.this.running = false;
                AVObject.this.copyFromJson(str);
                AVObject.this.onSaveSuccess();
                SaveCallback saveCallback = saveCallback2;
                if (saveCallback != null) {
                    saveCallback.internalDone(aVException);
                }
            }

            public void onFailure(Throwable th, String str) {
                AVObject.this.running = false;
                AVObject.this.rollbackDataToOperationQueue();
                if (saveCallback2 != null) {
                    if (AVObject.this.shouldThrowException(th, str)) {
                        saveCallback2.internalDone(AVErrorUtils.createException(th, str));
                    } else {
                        saveCallback2.internalDone(null);
                    }
                }
                AVObject.this.onSaveFailure();
            }
        }, getObjectId(), internalId());
    }

    private void transferDataToServerData() {
        for (Entry entry : this.tempDataForServerSaving.entrySet()) {
            Object apply = ((AVOp) entry.getValue()).apply(this.serverData.get(entry.getKey()));
            if (apply != null) {
                this.serverData.put(entry.getKey(), apply);
            } else if (this.serverData.containsKey(entry.getKey())) {
                this.serverData.remove(entry.getKey());
            }
        }
        this.tempDataForServerSaving.clear();
    }

    /* access modifiers changed from: private */
    public void rollbackDataToOperationQueue() {
        for (Entry entry : this.operationQueue.entrySet()) {
            AVOp aVOp = (AVOp) entry.getValue();
            AVOp aVOp2 = (AVOp) this.tempDataForServerSaving.get(entry.getKey());
            if (aVOp2 != null) {
                aVOp = aVOp2.merge(aVOp);
            }
            this.tempDataForServerSaving.put(entry.getKey(), aVOp);
        }
        this.operationQueue.clear();
        this.operationQueue.putAll(this.tempDataForServerSaving);
        this.tempDataForServerSaving.clear();
    }

    /* access modifiers changed from: protected */
    public void copyFromJson(String str) {
        try {
            copyFromMap((Map) AVUtils.getFromJSON(str, Map.class));
        } catch (Exception e) {
            log.e("AVObject parse error", e);
        }
    }

    /* access modifiers changed from: protected */
    public void copyFromMap(Map map) {
        transferDataToServerData();
        Object obj = map.get(this.uuid);
        if (obj != null && (obj instanceof Map)) {
            AVUtils.copyPropertiesFromMapToAVObject((Map) obj, this);
        }
        Object obj2 = map.get(getObjectId());
        if (obj2 != null && (obj2 instanceof Map)) {
            AVUtils.copyPropertiesFromMapToAVObject((Map) obj2, this);
        }
        for (Object next : this.instanceData.values()) {
            if (next instanceof AVObject) {
                ((AVObject) next).copyFromMap(map);
            }
        }
    }

    /* access modifiers changed from: protected */
    public String internalId() {
        return AVUtils.isBlankString(getObjectId()) ? getUuid() : getObjectId();
    }

    /* access modifiers changed from: protected */
    public void buildBatchParameterForNonSavedObject(List<AVObject> list, List list2) {
        if (!alwaysUsePost()) {
            if (!this.tempDataForServerSaving.isEmpty() || AVUtils.isBlankString(this.objectId)) {
                HashMap hashMap = new HashMap();
                ArrayList arrayList = new ArrayList();
                for (Entry entry : this.tempDataForServerSaving.entrySet()) {
                    parseOperation(hashMap, (String) entry.getKey(), (AVOp) entry.getValue(), arrayList, list, list2);
                }
                mergeRequestQueue(wrapperRequestBody(hashMap, arrayList, false), list2);
            }
        } else if (!this.instanceData.isEmpty()) {
            HashMap hashMap2 = new HashMap();
            ArrayList arrayList2 = new ArrayList();
            for (Entry entry2 : this.instanceData.entrySet()) {
                parseObjectValue(list, hashMap2, arrayList2, entry2.getValue(), (String) entry2.getKey());
            }
            mergeRequestQueue(wrapperRequestBody(hashMap2, arrayList2, false), list2);
        }
    }

    private void parseObjectValue(List<AVObject> list, Map<String, Object> map, List<Map<String, String>> list2, Object obj, String str) {
        if (obj instanceof AVObject) {
            AVObject aVObject = (AVObject) obj;
            list2.add(AVUtils.mapFromChildObject(aVObject, str));
            if (aVObject.processOperationData()) {
                list.add(aVObject);
            }
        } else if (obj instanceof AVGeoPoint) {
            map.put(str, AVUtils.mapFromGeoPoint((AVGeoPoint) obj));
        } else if (obj instanceof Date) {
            map.put(str, AVUtils.mapFromDate((Date) obj));
        } else if (obj instanceof byte[]) {
            map.put(str, AVUtils.mapFromByteArray((byte[]) obj));
        } else if (obj instanceof AVFile) {
            map.put(str, AVUtils.mapFromFile((AVFile) obj));
        } else {
            map.put(str, AVUtils.getParsedObject(obj));
        }
    }

    private Map<String, Object> parseOperation(Map<String, Object> map, String str, AVOp aVOp, List list, List list2, List list3) {
        Map<String, Object> map2 = map;
        AVOp aVOp2 = aVOp;
        Object values = aVOp.getValues();
        if (!(aVOp2 instanceof CollectionOp) && !(aVOp2 instanceof IncrementOp) && !(aVOp2 instanceof DeleteOp)) {
            parseObjectValue(list2, map, list, values, str);
        } else if ((aVOp2 instanceof IncrementOp) || (aVOp2 instanceof AddOp) || (aVOp2 instanceof RemoveOp) || (aVOp2 instanceof AddRelationOp) || (aVOp2 instanceof RemoveRelationOp) || (aVOp2 instanceof AddUniqueOp) || (aVOp2 instanceof DeleteOp)) {
            map.putAll(aVOp.encodeOp());
        } else if (aVOp2 instanceof CompoundOp) {
            List values2 = ((CompoundOp) aVOp2).getValues();
            if (!AVUtils.isEmptyList(values2)) {
                parseOperation(map, str, (AVOp) values2.get(0), list, list2, list3);
            }
            for (int i = 1; i < values2.size(); i++) {
                AVOp aVOp3 = (AVOp) values2.get(i);
                HashMap hashMap = new HashMap();
                ArrayList arrayList = new ArrayList();
                parseOperation(hashMap, str, aVOp3, arrayList, list2, list3);
                mergeRequestQueue(wrapperRequestBody(hashMap, arrayList, true), list3);
            }
        }
        return map2;
    }

    private void mergeRequestQueue(Map<String, Object> map, List list) {
        if (!map.isEmpty()) {
            list.add(0, map);
        }
    }

    private Map<String, Object> wrapperRequestBody(Map<String, Object> map, List list, boolean z) {
        map.put("__children", list);
        AVACL avacl = this.acl;
        if (avacl != null) {
            map.putAll(AVUtils.getParsedMap(avacl.getACLMap()));
        }
        map.put("__internalId", internalId());
        boolean z2 = (AVUtils.isBlankString(getObjectId()) || alwaysUsePost()) && !z;
        return getPaasClientInstance().batchItemMap(z2 ? "POST" : "PUT", AVPowerfulUtils.getBatchEndpoint(getPaasClientInstance().getApiVersion(), this, z2), map, getBatchParams());
    }

    private Map getBatchParams() {
        if (!this.fetchWhenSave) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(AppSettingsData.STATUS_NEW, Boolean.valueOf(this.fetchWhenSave));
        return hashMap;
    }

    /* access modifiers changed from: private */
    public void buildParameterForNonSavedObject(List list) {
        LinkedList<AVObject> linkedList = new LinkedList<>();
        buildBatchParameterForNonSavedObject(linkedList, list);
        for (AVObject buildParameterForNonSavedObject : linkedList) {
            buildParameterForNonSavedObject.buildParameterForNonSavedObject(list);
        }
    }

    private boolean checkCircleReference() {
        return checkCircleReference(new HashMap());
    }

    private boolean checkCircleReference(Map<AVObject, Boolean> map) {
        if (map.get(this) == null) {
            map.put(this, Boolean.valueOf(false));
            Iterator it = this.instanceData.values().iterator();
            while (true) {
                boolean z = true;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        if (next instanceof AVObject) {
                            if (!z || !((AVObject) next).checkCircleReference(map)) {
                                z = false;
                            }
                        }
                    } else {
                        map.put(this, Boolean.valueOf(true));
                        return z;
                    }
                }
            }
        } else if (((Boolean) map.get(this)).booleanValue()) {
            return true;
        } else {
            log.e("Found a circular dependency while saving");
            return false;
        }
    }

    public void saveInBackground() {
        saveInBackground((AVSaveOption) null, (SaveCallback) null);
    }

    public void saveInBackground(AVSaveOption aVSaveOption) {
        saveInBackground(aVSaveOption, (SaveCallback) null);
    }

    public void saveInBackground(SaveCallback saveCallback) {
        saveInBackground(saveCallback, false);
    }

    public void saveInBackground(AVSaveOption aVSaveOption, SaveCallback saveCallback) {
        saveObject(aVSaveOption, false, false, saveCallback);
    }

    private void saveInBackground(SaveCallback saveCallback, boolean z) {
        saveObject(false, z, saveCallback);
    }

    public void setACL(AVACL avacl) {
        this.acl = avacl;
    }

    public void setObjectId(String str) {
        this.objectId = str;
    }

    private List findArray(Map<String, Object> map, String str, boolean z) {
        List list = null;
        try {
            List list2 = (List) map.get(str);
            if (list2 != null || !z) {
                return list2;
            }
            try {
                list = new ArrayList();
                map.put(str, list);
                return list;
            } catch (Exception e) {
                e = e;
                list = list2;
                log.e(LOGTAG, "find array failed.", e);
                return list;
            }
        } catch (Exception e2) {
            e = e2;
            log.e(LOGTAG, "find array failed.", e);
            return list;
        }
    }

    /* access modifiers changed from: protected */
    public String internalClassName() {
        return getClassName();
    }

    /* access modifiers changed from: 0000 */
    public void addRelationFromServer(final String str, String str2, boolean z) {
        if (checkKey(str)) {
            new KeyValueCallback() {
                public AVOp createOp() {
                    return new AddRelationOp(str, new AVObject[0]);
                }
            }.execute(str, z);
        }
    }

    /* access modifiers changed from: 0000 */
    public void addRelation(final AVObject aVObject, final String str, boolean z) {
        if (checkKey(str)) {
            new KeyValueCallback() {
                public AVOp createOp() {
                    return new AddRelationOp(str, aVObject);
                }
            }.execute(str, z);
        }
    }

    /* access modifiers changed from: 0000 */
    public void removeRelation(final AVObject aVObject, final String str, boolean z) {
        if (checkKey(str)) {
            new KeyValueCallback() {
                public AVOp createOp() {
                    return new RemoveRelationOp(str, aVObject);
                }
            }.execute(str, z);
        }
    }

    private void addObjectToArray(final String str, final Object obj, final boolean z) {
        if (checkKey(str)) {
            new KeyValueCallback() {
                public AVOp createOp() {
                    if (z) {
                        return new AddUniqueOp(str, obj);
                    }
                    return new AddOp(str, obj);
                }
            }.execute(str);
        }
    }

    private void removeObjectForKey(final String str) {
        if (checkKey(str)) {
            new KeyValueCallback() {
                public AVOp createOp() {
                    return new DeleteOp(str);
                }
            }.execute(str);
        }
    }

    public static void saveFileBeforeSave(List<AVFile> list, boolean z, final SaveCallback saveCallback) throws AVException {
        if (z) {
            for (AVFile aVFile : list) {
                if (aVFile != null) {
                    aVFile.save();
                }
            }
            saveCallback.done(null);
            return;
        }
        final AtomicInteger atomicInteger = new AtomicInteger(AVUtils.collectionNonNullCount(list));
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        for (AVFile aVFile2 : list) {
            if (aVFile2 != null) {
                aVFile2.saveInBackground(new SaveCallback() {
                    public void done(AVException aVException) {
                        if (aVException != null && atomicBoolean.compareAndSet(false, true)) {
                            saveCallback.done(aVException);
                        } else if (aVException == null && atomicInteger.decrementAndGet() == 0) {
                            saveCallback.done(null);
                        }
                    }
                });
            }
        }
    }

    public int hashCode() {
        if (AVUtils.isBlankString(this.objectId)) {
            return super.hashCode();
        }
        int i = 0;
        int hashCode = ((getClassName() == null ? 0 : getClassName().hashCode()) + 31) * 31;
        String str = this.objectId;
        if (str != null) {
            i = str.hashCode();
        }
        return hashCode + i;
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
        AVObject aVObject = (AVObject) obj;
        if (getClassName() == null) {
            if (aVObject.getClassName() != null) {
                return false;
            }
        } else if (!getClassName().equals(aVObject.getClassName())) {
            return false;
        }
        String str = this.objectId;
        if (str == null) {
            if (aVObject.objectId != null) {
                return false;
            }
        } else if (!str.equals(aVObject.objectId)) {
            return false;
        }
        return true;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.className);
        parcel.writeString(this.createdAt);
        parcel.writeString(this.updatedAt);
        parcel.writeString(this.objectId);
        parcel.writeString(JSON.toJSONString((Object) this.serverData, (SerializeFilter) new ObjectValueFilter(), SerializerFeature.NotWriteRootClassName, SerializerFeature.WriteClassName));
        parcel.writeString(JSON.toJSONString((Object) this.operationQueue, SerializerFeature.WriteClassName, SerializerFeature.NotWriteRootClassName));
    }

    public AVObject(Parcel parcel) {
        this();
        this.className = parcel.readString();
        this.createdAt = parcel.readString();
        this.updatedAt = parcel.readString();
        this.objectId = parcel.readString();
        Map map = (Map) JSON.parse(parcel.readString());
        if (map != null && !map.isEmpty()) {
            this.serverData.putAll(map);
        }
        Map map2 = (Map) JSON.parse(parcel.readString());
        if (map2 != null && !map2.isEmpty()) {
            this.operationQueue.putAll(map2);
        }
        rebuildInstanceData();
    }

    /* access modifiers changed from: protected */
    public void rebuildInstanceData() {
        this.instanceData.putAll(this.serverData);
        for (Entry entry : this.operationQueue.entrySet()) {
            String str = (String) entry.getKey();
            Object apply = ((AVOp) entry.getValue()).apply(this.instanceData.get(str));
            if (apply == null) {
                this.instanceData.remove(str);
            } else {
                this.instanceData.put(str, apply);
            }
        }
    }

    /* access modifiers changed from: protected */
    public PaasClient getPaasClientInstance() {
        return PaasClient.storageInstance();
    }

    protected static <T extends AVObject> T cast(AVObject aVObject, Class<T> cls) throws Exception {
        if (cls.getClass().isAssignableFrom(aVObject.getClass())) {
            return aVObject;
        }
        T t = (AVObject) cls.newInstance();
        t.operationQueue.putAll(aVObject.operationQueue);
        t.serverData.putAll(aVObject.serverData);
        t.createdAt = aVObject.createdAt;
        t.updatedAt = aVObject.updatedAt;
        t.objectId = aVObject.objectId;
        t.rebuildInstanceData();
        return t;
    }
}
