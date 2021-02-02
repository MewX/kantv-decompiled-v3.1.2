package com.avos.avoscloud.im.v2.messages;

import android.os.Parcelable.Creator;
import com.avos.avoscloud.AVGeoPoint;
import com.avos.avoscloud.im.v2.AVIMMessageCreator;
import com.avos.avoscloud.im.v2.AVIMMessageField;
import com.avos.avoscloud.im.v2.AVIMMessageType;
import com.avos.avoscloud.im.v2.AVIMTypedMessage;
import java.util.Map;

@AVIMMessageType(type = -5)
public class AVIMLocationMessage extends AVIMTypedMessage {
    public static final Creator<AVIMLocationMessage> CREATOR = new AVIMMessageCreator(AVIMLocationMessage.class);
    @AVIMMessageField(name = "_lcattrs")
    Map<String, Object> attrs;
    @AVIMMessageField(name = "_lcloc")
    AVGeoPoint location;
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

    public AVGeoPoint getLocation() {
        return this.location;
    }

    public void setLocation(AVGeoPoint aVGeoPoint) {
        this.location = aVGeoPoint;
    }
}
