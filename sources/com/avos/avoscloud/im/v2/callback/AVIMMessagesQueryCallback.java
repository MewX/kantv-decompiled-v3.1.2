package com.avos.avoscloud.im.v2.callback;

import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.AVIMException;
import com.avos.avoscloud.im.v2.AVIMMessage;
import java.util.List;

public abstract class AVIMMessagesQueryCallback extends AVCallback<List<AVIMMessage>> {
    public abstract void done(List<AVIMMessage> list, AVIMException aVIMException);

    /* access modifiers changed from: protected */
    public final void internalDone0(List<AVIMMessage> list, AVException aVException) {
        done(list, AVIMException.wrapperAVException(aVException));
    }
}
