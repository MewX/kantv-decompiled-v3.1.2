package com.tencent.imsdk;

import android.app.Notification.Builder;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.imsdk.log.QLog;
import com.tencent.openqq.protocol.imsdk.im_common;

@Deprecated
public class TIMOfflinePushNotification {
    public static Uri globleC2CRemindSound;
    public static Uri globleGroupRemindSound;
    private final String TAG;
    private String content;
    private String conversationId;
    private TIMConversationType conversationType;
    private byte[] ext;
    private String groupName;
    private boolean isValid;
    private long opt;
    private String senderIdentifier;
    private String senderNickName;
    private Uri sound;
    private String tag;
    private String title;

    public TIMOfflinePushNotification() {
        this.TAG = TIMOfflinePushNotification.class.getSimpleName();
        this.opt = 0;
        this.isValid = false;
    }

    public TIMOfflinePushNotification(Context context, TIMMessage tIMMessage) {
        String str;
        String str2;
        String sb;
        this.TAG = TIMOfflinePushNotification.class.getSimpleName();
        this.opt = 0;
        this.isValid = false;
        TIMConversationType type = tIMMessage.getConversation().getType();
        if (type != TIMConversationType.C2C && type != TIMConversationType.Group) {
            this.isValid = false;
        } else if (tIMMessage.getMsg().lifetime() == 0) {
            this.isValid = false;
        } else {
            TIMMessageOfflinePushSettings offlinePushSettings = tIMMessage.getOfflinePushSettings();
            String str3 = "";
            if (offlinePushSettings == null) {
                str = str3;
            } else if (!offlinePushSettings.isEnabled()) {
                this.isValid = false;
                return;
            } else {
                setSound(offlinePushSettings.getAndroidSettings().getSound());
                setExt(offlinePushSettings.getExt());
                str = offlinePushSettings.getDescr();
                this.title = offlinePushSettings.getAndroidSettings().getTitle();
            }
            this.opt = tIMMessage.getRecvFlag().getValue();
            setTag(tIMMessage.getConversation().getPeer());
            setConversationType(tIMMessage.getConversation().getType());
            setConversationId(tIMMessage.getConversation().getPeer());
            String sender = tIMMessage.getSender();
            if (!TextUtils.isEmpty(sender)) {
                setSenderIdentifier(sender);
            }
            if (tIMMessage.getSenderGroupMemberProfile() != null) {
                String nameCard = tIMMessage.getSenderGroupMemberProfile().getNameCard();
                if (!TextUtils.isEmpty(nameCard)) {
                    setSenderNickName(nameCard);
                }
            }
            if (this.conversationType != TIMConversationType.C2C) {
                setGroupName(tIMMessage.getConversation().getPeer());
                if (TextUtils.isEmpty(this.title)) {
                    setTitle(this.groupName);
                }
                String str4 = this.senderNickName;
                if (TextUtils.isEmpty(str4)) {
                    str4 = this.senderIdentifier;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str3);
                sb2.append(str4);
                sb2.append(": ");
                str3 = sb2.toString();
            } else if (TextUtils.isEmpty(this.title)) {
                setTitle(this.senderNickName);
            }
            if (TextUtils.isEmpty(this.title)) {
                setTitle(this.conversationId);
            }
            if (!TextUtils.isEmpty(str)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str3);
                sb3.append(str);
                str2 = sb3.toString();
            } else {
                for (int i = 0; i < tIMMessage.getElementCount(); i++) {
                    TIMElem element = tIMMessage.getElement(i);
                    if (element.getType() == TIMElemType.Sound) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(str3);
                        sb4.append("[语音]");
                        sb = sb4.toString();
                    } else if (element.getType() == TIMElemType.File) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(str3);
                        sb5.append("[文件]");
                        sb = sb5.toString();
                    } else if (element.getType() == TIMElemType.Text) {
                        TIMTextElem tIMTextElem = (TIMTextElem) element;
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(str3);
                        sb6.append(tIMTextElem.getText());
                        sb = sb6.toString();
                    } else if (element.getType() == TIMElemType.Image) {
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(str3);
                        sb7.append("[图片]");
                        sb = sb7.toString();
                    } else if (element.getType() == TIMElemType.Face) {
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append(str3);
                        sb8.append("[表情]");
                        sb = sb8.toString();
                    } else {
                        if (element.getType() == TIMElemType.Custom) {
                            TIMCustomElem tIMCustomElem = (TIMCustomElem) element;
                            if (!TextUtils.isEmpty(tIMCustomElem.getDesc())) {
                                StringBuilder sb9 = new StringBuilder();
                                sb9.append(str3);
                                sb9.append("[");
                                sb9.append(tIMCustomElem.getDesc());
                                sb9.append("]");
                                str3 = sb9.toString();
                            }
                            if (this.ext == null) {
                                setExt(tIMCustomElem.getExt());
                            }
                        } else if (element.getType() == TIMElemType.Location) {
                            TIMLocationElem tIMLocationElem = (TIMLocationElem) element;
                            StringBuilder sb10 = new StringBuilder();
                            sb10.append(str3);
                            sb10.append("[位置信息]");
                            sb10.append(tIMLocationElem.getDesc());
                            sb = sb10.toString();
                        } else if (element.getType() == TIMElemType.Video) {
                            StringBuilder sb11 = new StringBuilder();
                            sb11.append(str3);
                            sb11.append("[视频]");
                            sb = sb11.toString();
                        }
                    }
                    str3 = sb;
                }
                str2 = str3;
            }
            setContent(str2);
            if (getSound() == null) {
                if (this.conversationType == TIMConversationType.C2C) {
                    Uri uri = globleC2CRemindSound;
                    if (uri != null) {
                        setSound(uri);
                    }
                }
                if (this.conversationType == TIMConversationType.Group) {
                    Uri uri2 = globleGroupRemindSound;
                    if (uri2 != null) {
                        setSound(uri2);
                    }
                }
            }
            setIsValid(true);
        }
    }

    public Uri getSound() {
        return this.sound;
    }

    public void setSound(Uri uri) {
        if (uri != null) {
            this.sound = uri;
        }
    }

    public boolean isValid() {
        return this.isValid;
    }

    /* access modifiers changed from: 0000 */
    public void setIsValid(boolean z) {
        this.isValid = z;
    }

    /* access modifiers changed from: 0000 */
    public void setTag(String str) {
        this.tag = str;
    }

    public String getTitle() {
        String str = this.title;
        return str == null ? "" : str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getContent() {
        String str = this.content;
        return str == null ? "" : str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public byte[] getExt() {
        byte[] bArr = this.ext;
        return bArr == null ? "".getBytes() : bArr;
    }

    public void setExt(byte[] bArr) {
        if (bArr != null) {
            this.ext = bArr;
        }
    }

    public TIMConversationType getConversationType() {
        return this.conversationType;
    }

    /* access modifiers changed from: 0000 */
    public void setConversationType(TIMConversationType tIMConversationType) {
        this.conversationType = tIMConversationType;
    }

    public String getConversationId() {
        return this.conversationId;
    }

    /* access modifiers changed from: 0000 */
    public void setConversationId(String str) {
        this.conversationId = str;
    }

    public String getSenderIdentifier() {
        return this.senderIdentifier;
    }

    /* access modifiers changed from: 0000 */
    public void setSenderIdentifier(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.senderIdentifier = str;
        }
    }

    public String getSenderNickName() {
        return this.senderNickName;
    }

    /* access modifiers changed from: 0000 */
    public void setSenderNickName(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.senderNickName = str;
        }
    }

    public TIMGroupReceiveMessageOpt getGroupReceiveMsgOpt() {
        TIMGroupReceiveMessageOpt[] values;
        for (TIMGroupReceiveMessageOpt tIMGroupReceiveMessageOpt : TIMGroupReceiveMessageOpt.values()) {
            if (tIMGroupReceiveMessageOpt.getValue() == this.opt) {
                return tIMGroupReceiveMessageOpt;
            }
        }
        return TIMGroupReceiveMessageOpt.ReceiveAndNotify;
    }

    /* access modifiers changed from: 0000 */
    public void setGroupReceiveMsgOpt(long j) {
        this.opt = j;
    }

    public String getGroupName() {
        return this.groupName;
    }

    /* access modifiers changed from: 0000 */
    public void setGroupName(String str) {
        this.groupName = str;
    }

    @Deprecated
    public void doNotify(Context context, int i) {
        Builder builder;
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("notification: ");
        sb.append(toString());
        QLog.i(str, sb.toString());
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService("notification");
        if (notificationManager == null) {
            QLog.e(this.TAG, "get NotificationManager failed");
            return;
        }
        if (VERSION.SDK_INT >= 26) {
            String str2 = "FakeNotification";
            builder = new Builder(context, str2);
            notificationManager.createNotificationChannel(new NotificationChannel(str2, "FakeNotificationName", 4));
        } else {
            builder = new Builder(context);
        }
        builder.setTicker("收到一条新消息");
        builder.setContentTitle(getTitle());
        builder.setContentText(getContent());
        builder.setSmallIcon(i);
        builder.setAutoCancel(true);
        builder.setDefaults(-1);
        if (this.sound != null) {
            builder.setDefaults(6);
            builder.setSound(this.sound);
        }
        builder.setContentIntent(PendingIntent.getActivity(context, (int) SystemClock.uptimeMillis(), context.getApplicationContext().getPackageManager().getLaunchIntentForPackage(context.getPackageName()), 134217728));
        notificationManager.notify(this.tag, im_common.BU_FRIEND, builder.build());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("title: ");
        sb.append(this.title);
        sb.append("|content: ");
        sb.append(this.content);
        sb.append("|sid: ");
        sb.append(this.conversationId);
        sb.append("|sender: ");
        sb.append(this.senderIdentifier);
        sb.append("|senderNick: ");
        sb.append(this.senderNickName);
        sb.append("|tag: ");
        sb.append(this.tag);
        sb.append("|isValid: ");
        sb.append(this.isValid);
        return sb.toString();
    }
}
