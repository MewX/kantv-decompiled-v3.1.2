package com.avos.avoscloud.im.v2.messages;

import android.os.Parcelable.Creator;
import com.avos.avoscloud.im.v2.AVIMMessageCreator;
import com.avos.avoscloud.im.v2.AVIMMessageField;
import com.avos.avoscloud.im.v2.AVIMMessageType;
import com.avos.avoscloud.im.v2.AVIMTypedMessage;
import java.util.Map;

@AVIMMessageType(type = -1)
public class AVIMTextMessage extends AVIMTypedMessage {
    public static final Creator<AVIMTextMessage> CREATOR = new AVIMMessageCreator(AVIMTextMessage.class);
    @AVIMMessageField(name = "_lcattrs")
    Map<String, Object> attrs;
    @AVIMMessageField(name = "_lctext")
    String text;

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public Map<String, Object> getAttrs() {
        return this.attrs;
    }

    public void setAttrs(Map<String, Object> map) {
        this.attrs = map;
    }
}
