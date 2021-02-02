package com.avos.avoscloud;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import java.util.Map;

public class AVStatusQuery extends AVQuery<AVStatus> {
    private static final String END = "end";
    private boolean count;
    private String inboxType;
    private long maxId;
    private AVUser owner;
    private boolean selfStatusQuery = false;
    private long sinceId;

    public AVStatusQuery() {
        super("_Status", null);
        getInclude().add("source");
    }

    public void setSinceId(long j) {
        this.sinceId = j;
    }

    public long getSinceId() {
        return this.sinceId;
    }

    public void setInboxType(String str) {
        this.inboxType = str;
    }

    /* access modifiers changed from: protected */
    public String getInboxType() {
        return this.inboxType;
    }

    public long getMaxId() {
        return this.maxId;
    }

    public void setMaxId(long j) {
        this.maxId = j;
    }

    public boolean isCount() {
        return this.count;
    }

    public void setCount(boolean z) {
        this.count = z;
    }

    public AVUser getOwner() {
        return this.owner;
    }

    public void setOwner(AVUser aVUser) {
        this.owner = aVUser;
    }

    /* access modifiers changed from: protected */
    public void setSelfQuery(boolean z) {
        this.selfStatusQuery = z;
    }

    public Map<String, String> assembleParameters() {
        String str = "inboxType";
        if (this.selfStatusQuery) {
            String str2 = this.inboxType;
            if (str2 != null) {
                whereEqualTo(str, str2);
            }
        }
        super.assembleParameters();
        Map<String, String> parameters = getParameters();
        AVUser aVUser = this.owner;
        if (aVUser != null) {
            parameters.put("owner", JSON.toJSONString(AVUtils.mapFromUserObjectId(aVUser.getObjectId())));
        }
        long j = this.sinceId;
        if (j > 0) {
            parameters.put("sinceId", String.valueOf(j));
        }
        if (!AVUtils.isBlankString(this.inboxType) && !this.selfStatusQuery) {
            parameters.put(str, this.inboxType);
        }
        long j2 = this.maxId;
        if (j2 > 0) {
            parameters.put("maxId", String.valueOf(j2));
        }
        if (this.count) {
            parameters.put(ConversationControlOp.COUNT, "1");
        }
        this.conditions.setParameters(parameters);
        return parameters;
    }

    /* access modifiers changed from: protected */
    public void processAdditionalInfo(String str, FindCallback<AVStatus> findCallback) {
        String str2 = "end";
        if (InboxStatusFindCallback.class.isAssignableFrom(findCallback.getClass())) {
            InboxStatusFindCallback inboxStatusFindCallback = (InboxStatusFindCallback) findCallback;
            boolean z = false;
            try {
                JSONObject parseObject = JSON.parseObject(str);
                if (parseObject.containsKey(str2)) {
                    z = parseObject.getBoolean(str2).booleanValue();
                }
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Parsing json data error, ");
                sb.append(str);
                avlog.e(sb.toString(), e);
            }
            inboxStatusFindCallback.setEnd(z);
        }
    }
}
