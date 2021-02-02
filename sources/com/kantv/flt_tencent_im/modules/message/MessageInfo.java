package com.kantv.flt_tencent_im.modules.message;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.google.android.exoplayer2.util.MimeTypes;
import com.tencent.imsdk.TIMElem;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMTextElem;
import com.tencent.imsdk.TIMUserProfile;
import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.open.SocialConstants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class MessageInfo {
    public static final int MSG_STATUS_DELETE = 274;
    public static final int MSG_STATUS_DOWNLOADED = 6;
    public static final int MSG_STATUS_DOWNLOADING = 4;
    public static final int MSG_STATUS_NORMAL = 0;
    public static final int MSG_STATUS_READ = 273;
    public static final int MSG_STATUS_REVOKE = 275;
    public static final int MSG_STATUS_SENDING = 1;
    public static final int MSG_STATUS_SEND_FAIL = 3;
    public static final int MSG_STATUS_SEND_SUCCESS = 2;
    public static final int MSG_STATUS_UN_DOWNLOAD = 5;
    public static final int MSG_TYPE_AUDIO = 48;
    public static final int MSG_TYPE_CUSTOM = 128;
    public static final int MSG_TYPE_CUSTOM_FACE = 112;
    public static final int MSG_TYPE_FILE = 80;
    public static final int MSG_TYPE_GROUP_CREATE = 257;
    public static final int MSG_TYPE_GROUP_DELETE = 258;
    public static final int MSG_TYPE_GROUP_JOIN = 259;
    public static final int MSG_TYPE_GROUP_KICK = 261;
    public static final int MSG_TYPE_GROUP_MODIFY_NAME = 262;
    public static final int MSG_TYPE_GROUP_MODIFY_NOTICE = 263;
    public static final int MSG_TYPE_GROUP_QUITE = 260;
    public static final int MSG_TYPE_IMAGE = 32;
    public static final int MSG_TYPE_LOCATION = 96;
    public static final int MSG_TYPE_MIME = 1;
    public static final int MSG_TYPE_TEXT = 0;
    public static final int MSG_TYPE_TIPS = 256;
    public static final int MSG_TYPE_VIDEO = 64;
    private TIMMessage TIMMessage;
    private String dataPath;
    private Uri dataUri;
    private TIMElem element;
    private Object extra;
    private String fromUser = "";
    private boolean group;
    private String groupNameCard;
    private String id = UUID.randomUUID().toString();
    private int imgHeight;
    private int imgWidth;
    private long msgTime;
    private int msgType;
    private boolean peerRead;
    private boolean read;
    private boolean self;
    private int status = 0;
    private long uniqueId = 0;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public long getUniqueId() {
        return this.uniqueId;
    }

    public void setUniqueId(long j) {
        this.uniqueId = j;
    }

    public String getFromUser() {
        return this.fromUser;
    }

    public void setFromUser(String str) {
        this.fromUser = str;
    }

    public String getGroupNameCard() {
        return this.groupNameCard;
    }

    public void setGroupNameCard(String str) {
        this.groupNameCard = str;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public void setMsgType(int i) {
        this.msgType = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public boolean isSelf() {
        return this.self;
    }

    public void setSelf(boolean z) {
        this.self = z;
    }

    public boolean isRead() {
        return this.read;
    }

    public void setRead(boolean z) {
        this.read = z;
    }

    public boolean isGroup() {
        return this.group;
    }

    public void setGroup(boolean z) {
        this.group = z;
    }

    public Uri getDataUri() {
        return this.dataUri;
    }

    public void setDataUri(Uri uri) {
        this.dataUri = uri;
    }

    public String getDataPath() {
        return this.dataPath;
    }

    public void setDataPath(String str) {
        this.dataPath = str;
    }

    public int getCustomInt() {
        TIMMessage tIMMessage = this.TIMMessage;
        if (tIMMessage == null) {
            return 0;
        }
        return tIMMessage.getCustomInt();
    }

    public void setCustomInt(int i) {
        TIMMessage tIMMessage = this.TIMMessage;
        if (tIMMessage != null) {
            tIMMessage.setCustomInt(i);
        }
    }

    public boolean checkEquals(@NonNull TIMMessageLocator tIMMessageLocator) {
        TIMMessage tIMMessage = this.TIMMessage;
        if (tIMMessage == null) {
            return false;
        }
        return tIMMessage.checkEquals(tIMMessageLocator);
    }

    public boolean remove() {
        TIMMessage tIMMessage = this.TIMMessage;
        if (tIMMessage == null) {
            return false;
        }
        return tIMMessage.remove();
    }

    public TIMMessage getTIMMessage() {
        return this.TIMMessage;
    }

    public void setTIMMessage(TIMMessage tIMMessage) {
        this.TIMMessage = tIMMessage;
    }

    public TIMElem getElement() {
        return this.element;
    }

    public void setElement(TIMElem tIMElem) {
        this.element = tIMElem;
    }

    public Object getExtra() {
        return this.extra;
    }

    public void setExtra(Object obj) {
        this.extra = obj;
    }

    public int getImgWidth() {
        return this.imgWidth;
    }

    public void setImgWidth(int i) {
        this.imgWidth = i;
    }

    public int getImgHeight() {
        return this.imgHeight;
    }

    public void setImgHeight(int i) {
        this.imgHeight = i;
    }

    public long getMsgTime() {
        return this.msgTime;
    }

    public void setMsgTime(long j) {
        this.msgTime = j;
    }

    public boolean isPeerRead() {
        return this.peerRead;
    }

    public void setPeerRead(boolean z) {
        this.peerRead = z;
    }

    public Map toMap(TIMUserProfile tIMUserProfile) {
        HashMap hashMap = new HashMap();
        String str = MimeTypes.BASE_TYPE_TEXT;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(((TIMTextElem) getElement()).getText());
            sb.append("");
            hashMap.put(str, sb.toString());
            hashMap.put(SocialConstants.PARAM_RECEIVER, getTIMMessage().getConversation().getPeer());
            hashMap.put("isSelf", isSelf() ? "1" : "0");
            hashMap.put("msgId", getId());
            hashMap.put("sender", getFromUser());
            hashMap.put("timestamp", Double.valueOf((double) getMsgTime()));
            if (tIMUserProfile != null) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(SettingsJsonConstants.APP_IDENTIFIER_KEY, tIMUserProfile.getIdentifier());
                hashMap2.put("nickname", tIMUserProfile.getNickName());
                hashMap2.put("faceURL", tIMUserProfile.getFaceUrl());
                hashMap.put("senderProfile", hashMap2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("id");
        sb.append(getId());
        sb.append(" ");
        return sb.toString();
    }
}
