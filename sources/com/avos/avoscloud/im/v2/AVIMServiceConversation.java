package com.avos.avoscloud.im.v2;

import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVQuery.CachePolicy;
import com.avos.avoscloud.AVRequestParams;
import com.avos.avoscloud.AVResponse;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.GenericObjectCallback;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.PaasClient;
import com.avos.avoscloud.im.v2.callback.AVIMConversationCallback;
import com.avos.avoscloud.im.v2.callback.AVIMConversationMemberCountCallback;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AVIMServiceConversation extends AVIMReadonlyConversation {
    private static final String SUBSCRIBERCOUNT_PATH = "rtm/conversation/subscribed";

    protected AVIMServiceConversation(AVIMClient aVIMClient, List<String> list, Map<String, Object> map) {
        super(aVIMClient, list, map);
        this.isSystem = true;
    }

    protected AVIMServiceConversation(AVIMClient aVIMClient, String str) {
        super(aVIMClient, str);
        this.isSystem = true;
    }

    public void subscribe(AVIMConversationCallback aVIMConversationCallback) {
        join(aVIMConversationCallback);
    }

    public void unsubscribe(AVIMConversationCallback aVIMConversationCallback) {
        quit(aVIMConversationCallback);
    }

    public void getSubscriberCount(final AVIMConversationMemberCountCallback aVIMConversationMemberCountCallback) {
        if (aVIMConversationMemberCountCallback != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("conv_id", this.conversationId);
            AVRequestParams aVRequestParams = new AVRequestParams(hashMap);
            PaasClient.storageInstance().getObject(SUBSCRIBERCOUNT_PATH, aVRequestParams, false, null, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    if (aVException != null) {
                        aVIMConversationMemberCountCallback.internalDone(null, new AVIMException(aVException));
                        return;
                    }
                    int i = 0;
                    if (AVUtils.isBlankContent(str)) {
                        log.e("response is empty for request rtm/conversation/subscribed");
                    } else {
                        try {
                            i = ((AVResponse) JSON.parseObject(str, new AVResponse().getClass())).count;
                        } catch (Exception e) {
                            log.e("failed to parse result for request rtm/conversation/subscribed", e);
                        }
                    }
                    aVIMConversationMemberCountCallback.internalDone(Integer.valueOf(i), null);
                }

                public void onFailure(Throwable th, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("failed to query rtm/conversation/subscribed cause: ");
                    sb.append(th.getMessage());
                    log.e(sb.toString());
                    aVIMConversationMemberCountCallback.internalDone(null, new AVIMException(str, th));
                }
            }, CachePolicy.NETWORK_ONLY, 86400000);
        }
    }
}
