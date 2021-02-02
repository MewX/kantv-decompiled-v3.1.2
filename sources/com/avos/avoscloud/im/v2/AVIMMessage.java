package com.avos.avoscloud.im.v2;

import android.os.Parcel;
import android.os.Parcelable;
import com.avos.avoscloud.AVUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

public class AVIMMessage implements Parcelable {
    public static final AVIMMessageCreator<AVIMMessage> CREATOR = new AVIMMessageCreator<>(AVIMMessage.class);
    String content;
    String conversationId;
    String currentClient;
    long deliveredAt;
    String from;
    AVIMMessageIOType ioType;
    boolean mentionAll;
    List<String> mentionList;
    String messageId;
    long readAt;
    AVIMMessageStatus status;
    long timestamp;
    String uniqueToken;
    long updateAt;

    public enum AVIMMessageIOType {
        AVIMMessageIOTypeIn(1),
        AVIMMessageIOTypeOut(2);
        
        int ioType;

        private AVIMMessageIOType(int i) {
            this.ioType = i;
        }

        public int getIOType() {
            return this.ioType;
        }

        public static AVIMMessageIOType getMessageIOType(int i) {
            if (i == 1) {
                return AVIMMessageIOTypeIn;
            }
            if (i != 2) {
                return AVIMMessageIOTypeOut;
            }
            return AVIMMessageIOTypeOut;
        }
    }

    public enum AVIMMessageStatus {
        AVIMMessageStatusNone(0),
        AVIMMessageStatusSending(1),
        AVIMMessageStatusSent(2),
        AVIMMessageStatusReceipt(3),
        AVIMMessageStatusFailed(4),
        AVIMMessageStatusRecalled(5);
        
        int statusCode;

        private AVIMMessageStatus(int i) {
            this.statusCode = i;
        }

        public int getStatusCode() {
            return this.statusCode;
        }

        public static AVIMMessageStatus getMessageStatus(int i) {
            if (i == 0) {
                return AVIMMessageStatusNone;
            }
            if (i == 1) {
                return AVIMMessageStatusSending;
            }
            if (i == 2) {
                return AVIMMessageStatusSent;
            }
            if (i == 3) {
                return AVIMMessageStatusReceipt;
            }
            if (i == 4) {
                return AVIMMessageStatusFailed;
            }
            if (i != 5) {
                return null;
            }
            return AVIMMessageStatusRecalled;
        }
    }

    public int describeContents() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void initMessage(Parcel parcel) {
    }

    public AVIMMessage() {
        this(null, null);
    }

    public AVIMMessage(String str, String str2) {
        this(str, str2, 0, 0);
    }

    public AVIMMessage(String str, String str2, long j, long j2) {
        this(str, str2, j, j2, 0);
    }

    public AVIMMessage(String str, String str2, long j, long j2, long j3) {
        this.mentionList = null;
        this.mentionAll = false;
        this.currentClient = null;
        this.ioType = AVIMMessageIOType.AVIMMessageIOTypeOut;
        this.status = AVIMMessageStatus.AVIMMessageStatusNone;
        this.conversationId = str;
        this.from = str2;
        this.timestamp = j;
        this.deliveredAt = j2;
        this.readAt = j3;
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public String getFrom() {
        return this.from;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public long getReceiptTimestamp() {
        return this.deliveredAt;
    }

    public void setReceiptTimestamp(long j) {
        this.deliveredAt = j;
    }

    /* access modifiers changed from: 0000 */
    public void setDeliveredAt(long j) {
        this.deliveredAt = j;
    }

    public long getDeliveredAt() {
        return this.deliveredAt;
    }

    /* access modifiers changed from: 0000 */
    public void setReadAt(long j) {
        this.readAt = j;
    }

    /* access modifiers changed from: 0000 */
    public long getReadAt() {
        return this.readAt;
    }

    public void setUpdateAt(long j) {
        this.updateAt = j;
    }

    public long getUpdateAt() {
        return this.updateAt;
    }

    public void setMessageStatus(AVIMMessageStatus aVIMMessageStatus) {
        this.status = aVIMMessageStatus;
    }

    public AVIMMessageStatus getMessageStatus() {
        return this.status;
    }

    public AVIMMessageIOType getMessageIOType() {
        return this.ioType;
    }

    public void setMessageIOType(AVIMMessageIOType aVIMMessageIOType) {
        this.ioType = aVIMMessageIOType;
    }

    public String getMessageId() {
        return this.messageId;
    }

    public void setMessageId(String str) {
        this.messageId = str;
    }

    public boolean mentioned() {
        if (!isMentionAll()) {
            List<String> list = this.mentionList;
            if (list == null || !list.contains(this.currentClient)) {
                return false;
            }
        }
        return true;
    }

    public void setMentionList(List<String> list) {
        this.mentionList = list;
    }

    public List<String> getMentionList() {
        return this.mentionList;
    }

    public String getMentionListString() {
        if (this.mentionList == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.mentionList.size(); i++) {
            sb.append((String) this.mentionList.get(i));
            if (i != this.mentionList.size() - 1) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    public void setMentionListString(String str) {
        if (AVUtils.isBlankString(str)) {
            this.mentionList = null;
            return;
        }
        String[] split = str.split(",");
        this.mentionList = new ArrayList(split.length);
        this.mentionList.addAll(Arrays.asList(split));
    }

    public boolean isMentionAll() {
        return this.mentionAll;
    }

    public void setMentionAll(boolean z) {
        this.mentionAll = z;
    }

    /* access modifiers changed from: 0000 */
    public void setCurrentClient(String str) {
        this.currentClient = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.conversationId);
        parcel.writeString(getContent());
        parcel.writeString(this.from);
        parcel.writeLong(this.timestamp);
        parcel.writeLong(this.deliveredAt);
        parcel.writeLong(this.readAt);
        parcel.writeLong(this.updateAt);
        parcel.writeString(this.messageId);
        parcel.writeInt(this.status.getStatusCode());
        parcel.writeInt(this.ioType.getIOType());
        parcel.writeString(this.uniqueToken);
        parcel.writeInt(this.mentionAll ? 1 : 0);
        parcel.writeString(getMentionListString());
    }

    public AVIMMessage(Parcel parcel) {
        this.mentionList = null;
        boolean z = false;
        this.mentionAll = false;
        this.currentClient = null;
        this.conversationId = parcel.readString();
        setContent(parcel.readString());
        setFrom(parcel.readString());
        setTimestamp(parcel.readLong());
        setDeliveredAt(parcel.readLong());
        setReadAt(parcel.readLong());
        setUpdateAt(parcel.readLong());
        setMessageId(parcel.readString());
        this.status = AVIMMessageStatus.getMessageStatus(parcel.readInt());
        this.ioType = AVIMMessageIOType.getMessageIOType(parcel.readInt());
        this.uniqueToken = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        }
        this.mentionAll = z;
        setMentionListString(parcel.readString());
        initMessage(parcel);
    }

    /* access modifiers changed from: protected */
    public synchronized void generateUniqueToken() {
        if (AVUtils.isBlankString(this.uniqueToken)) {
            this.uniqueToken = UUID.randomUUID().toString();
        }
    }

    /* access modifiers changed from: 0000 */
    public void setUniqueToken(String str) {
        this.uniqueToken = str;
    }

    /* access modifiers changed from: protected */
    public String getUniqueToken() {
        return this.uniqueToken;
    }
}
