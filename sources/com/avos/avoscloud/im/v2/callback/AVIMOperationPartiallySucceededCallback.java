package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMException;
import com.avos.avoscloud.im.v2.Conversation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public abstract class AVIMOperationPartiallySucceededCallback extends AVCallback<Map<String, Object>> {
    public abstract void done(AVIMException aVIMException, List<String> list, List<AVIMOperationFailure> list2);

    /* access modifiers changed from: protected */
    public final void internalDone0(Map<String, Object> map, AVException aVException) {
        if (aVException != null) {
            done(AVIMException.wrapperAVException(aVException), null, null);
            return;
        }
        String[] strArr = (String[]) map.get(Conversation.callbackConvMemberMuted_SUCC);
        done(AVIMException.wrapperAVException(aVException), Arrays.asList(strArr), (ArrayList) map.get(Conversation.callbackConvMemberMuted_FAIL));
    }
}
