package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMConversation;
import com.avos.avoscloud.im.v2.AVIMException;
import java.util.List;

public abstract class AVIMConversationQueryCallback extends AVCallback<List<AVIMConversation>> {
    public abstract void done(List<AVIMConversation> list, AVIMException aVIMException);

    /* access modifiers changed from: protected */
    public final void internalDone0(List<AVIMConversation> list, AVException aVException) {
        done(list, AVIMException.wrapperAVException(aVException));
    }
}
