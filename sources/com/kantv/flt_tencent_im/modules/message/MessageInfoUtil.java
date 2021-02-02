package com.kantv.flt_tencent_im.modules.message;

import android.net.Uri;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.kantv.flt_tencent_im.utils.DateTimeUtil;
import com.kantv.flt_tencent_im.utils.FileUtil;
import com.kantv.flt_tencent_im.utils.ImageUtil;
import com.kantv.flt_tencent_im.utils.TUIKitConstants;
import com.kantv.flt_tencent_im.utils.TUIKitLog;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMCustomElem;
import com.tencent.imsdk.TIMElem;
import com.tencent.imsdk.TIMElemType;
import com.tencent.imsdk.TIMFaceElem;
import com.tencent.imsdk.TIMFileElem;
import com.tencent.imsdk.TIMGroupMemberInfo;
import com.tencent.imsdk.TIMGroupTipsElem;
import com.tencent.imsdk.TIMGroupTipsElemGroupInfo;
import com.tencent.imsdk.TIMGroupTipsElemMemberInfo;
import com.tencent.imsdk.TIMGroupTipsGroupInfoType;
import com.tencent.imsdk.TIMGroupTipsType;
import com.tencent.imsdk.TIMImage;
import com.tencent.imsdk.TIMImageElem;
import com.tencent.imsdk.TIMImageType;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMMessageStatus;
import com.tencent.imsdk.TIMSnapshot;
import com.tencent.imsdk.TIMSoundElem;
import com.tencent.imsdk.TIMTextElem;
import com.tencent.imsdk.TIMVideo;
import com.tencent.imsdk.TIMVideoElem;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class MessageInfoUtil {
    public static final String GROUP_CREATE = "group_create";
    public static final String GROUP_DELETE = "group_delete";
    private static final String TAG = "MessageInfoUtil";

    public static MessageInfo buildTextMessage(String str) {
        MessageInfo messageInfo = new MessageInfo();
        TIMMessage tIMMessage = new TIMMessage();
        TIMTextElem tIMTextElem = new TIMTextElem();
        tIMTextElem.setText(str);
        tIMMessage.addElement(tIMTextElem);
        messageInfo.setExtra(str);
        messageInfo.setMsgTime(System.currentTimeMillis() / 1000);
        messageInfo.setElement(tIMTextElem);
        messageInfo.setSelf(true);
        messageInfo.setTIMMessage(tIMMessage);
        messageInfo.setFromUser(TIMManager.getInstance().getLoginUser());
        messageInfo.setMsgType(0);
        return messageInfo;
    }

    public static MessageInfo buildCustomFaceMessage(int i, String str) {
        MessageInfo messageInfo = new MessageInfo();
        TIMMessage tIMMessage = new TIMMessage();
        TIMFaceElem tIMFaceElem = new TIMFaceElem();
        tIMFaceElem.setIndex(i);
        tIMFaceElem.setData(str.getBytes());
        tIMMessage.addElement(tIMFaceElem);
        messageInfo.setExtra("[自定义表情]");
        messageInfo.setMsgTime(System.currentTimeMillis() / 1000);
        messageInfo.setElement(tIMFaceElem);
        messageInfo.setSelf(true);
        messageInfo.setTIMMessage(tIMMessage);
        messageInfo.setFromUser(TIMManager.getInstance().getLoginUser());
        messageInfo.setMsgType(112);
        return messageInfo;
    }

    public static MessageInfo buildImageMessage(Uri uri, boolean z) {
        MessageInfo messageInfo = new MessageInfo();
        TIMImageElem tIMImageElem = new TIMImageElem();
        messageInfo.setDataUri(uri);
        int[] imageSize = ImageUtil.getImageSize(uri);
        String pathFromUri = FileUtil.getPathFromUri(uri);
        tIMImageElem.setPath(pathFromUri);
        messageInfo.setDataPath(pathFromUri);
        messageInfo.setImgWidth(imageSize[0]);
        messageInfo.setImgHeight(imageSize[1]);
        TIMMessage tIMMessage = new TIMMessage();
        tIMMessage.setSender(TIMManager.getInstance().getLoginUser());
        tIMMessage.setTimestamp(System.currentTimeMillis());
        if (!z) {
            tIMImageElem.setLevel(0);
        }
        tIMMessage.addElement(tIMImageElem);
        messageInfo.setSelf(true);
        messageInfo.setTIMMessage(tIMMessage);
        messageInfo.setExtra("[图片]");
        messageInfo.setMsgTime(System.currentTimeMillis() / 1000);
        messageInfo.setElement(tIMImageElem);
        messageInfo.setFromUser(TIMManager.getInstance().getLoginUser());
        messageInfo.setMsgType(32);
        return messageInfo;
    }

    public static MessageInfo buildVideoMessage(String str, String str2, int i, int i2, long j) {
        MessageInfo messageInfo = new MessageInfo();
        TIMMessage tIMMessage = new TIMMessage();
        TIMVideoElem tIMVideoElem = new TIMVideoElem();
        TIMVideo tIMVideo = new TIMVideo();
        tIMVideo.setDuaration(j / 1000);
        tIMVideo.setType("mp4");
        TIMSnapshot tIMSnapshot = new TIMSnapshot();
        tIMSnapshot.setWidth((long) i);
        tIMSnapshot.setHeight((long) i2);
        tIMVideoElem.setSnapshot(tIMSnapshot);
        tIMVideoElem.setVideo(tIMVideo);
        tIMVideoElem.setSnapshotPath(str);
        tIMVideoElem.setVideoPath(str2);
        tIMMessage.addElement(tIMVideoElem);
        Uri fromFile = Uri.fromFile(new File(str2));
        messageInfo.setSelf(true);
        messageInfo.setImgWidth(i);
        messageInfo.setImgHeight(i2);
        messageInfo.setDataPath(str);
        messageInfo.setDataUri(fromFile);
        messageInfo.setTIMMessage(tIMMessage);
        messageInfo.setExtra("[视频]");
        messageInfo.setMsgTime(System.currentTimeMillis() / 1000);
        messageInfo.setElement(tIMVideoElem);
        messageInfo.setFromUser(TIMManager.getInstance().getLoginUser());
        messageInfo.setMsgType(64);
        return messageInfo;
    }

    public static MessageInfo buildAudioMessage(String str, int i) {
        MessageInfo messageInfo = new MessageInfo();
        messageInfo.setDataPath(str);
        TIMMessage tIMMessage = new TIMMessage();
        tIMMessage.setSender(TIMManager.getInstance().getLoginUser());
        tIMMessage.setTimestamp(System.currentTimeMillis() / 1000);
        TIMSoundElem tIMSoundElem = new TIMSoundElem();
        tIMSoundElem.setDuration((long) (i / 1000));
        tIMSoundElem.setPath(str);
        tIMMessage.addElement(tIMSoundElem);
        messageInfo.setSelf(true);
        messageInfo.setTIMMessage(tIMMessage);
        messageInfo.setExtra("[语音]");
        messageInfo.setMsgTime(System.currentTimeMillis() / 1000);
        messageInfo.setElement(tIMSoundElem);
        messageInfo.setFromUser(TIMManager.getInstance().getLoginUser());
        messageInfo.setMsgType(48);
        return messageInfo;
    }

    public static MessageInfo buildFileMessage(Uri uri) {
        String pathFromUri = FileUtil.getPathFromUri(uri);
        File file = new File(pathFromUri);
        if (!file.exists()) {
            return null;
        }
        MessageInfo messageInfo = new MessageInfo();
        messageInfo.setDataPath(pathFromUri);
        TIMMessage tIMMessage = new TIMMessage();
        TIMFileElem tIMFileElem = new TIMFileElem();
        tIMMessage.setSender(TIMManager.getInstance().getLoginUser());
        tIMMessage.setTimestamp(System.currentTimeMillis() / 1000);
        tIMFileElem.setPath(pathFromUri);
        tIMFileElem.setFileName(file.getName());
        tIMMessage.addElement(tIMFileElem);
        messageInfo.setSelf(true);
        messageInfo.setTIMMessage(tIMMessage);
        messageInfo.setExtra("[文件]");
        messageInfo.setMsgTime(System.currentTimeMillis() / 1000);
        messageInfo.setElement(tIMFileElem);
        messageInfo.setFromUser(TIMManager.getInstance().getLoginUser());
        messageInfo.setMsgType(80);
        return messageInfo;
    }

    public static MessageInfo buildCustomMessage(String str) {
        MessageInfo messageInfo = new MessageInfo();
        TIMMessage tIMMessage = new TIMMessage();
        TIMCustomElem tIMCustomElem = new TIMCustomElem();
        tIMCustomElem.setData(str.getBytes());
        tIMMessage.addElement(tIMCustomElem);
        messageInfo.setSelf(true);
        messageInfo.setTIMMessage(tIMMessage);
        messageInfo.setMsgTime(System.currentTimeMillis() / 1000);
        messageInfo.setElement(tIMCustomElem);
        messageInfo.setMsgType(128);
        messageInfo.setFromUser(TIMManager.getInstance().getLoginUser());
        return messageInfo;
    }

    public static TIMMessage buildGroupCustomMessage(String str, String str2) {
        TIMMessage tIMMessage = new TIMMessage();
        TIMCustomElem tIMCustomElem = new TIMCustomElem();
        tIMCustomElem.setData(str.getBytes());
        tIMCustomElem.setExt(str2.getBytes());
        tIMMessage.addElement(tIMCustomElem);
        return tIMMessage;
    }

    public static List<MessageInfo> TIMMessages2MessageInfos(List<TIMMessage> list, boolean z) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            List TIMMessage2MessageInfo = TIMMessage2MessageInfo((TIMMessage) list.get(i), z);
            if (TIMMessage2MessageInfo != null) {
                arrayList.addAll(TIMMessage2MessageInfo);
            }
        }
        return arrayList;
    }

    public static List<MessageInfo> TIMMessage2MessageInfo(TIMMessage tIMMessage, boolean z) {
        if (tIMMessage == null || tIMMessage.status() == TIMMessageStatus.HasDeleted || tIMMessage.getElementCount() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < tIMMessage.getElementCount(); i++) {
            MessageInfo messageInfo = new MessageInfo();
            if (ele2MessageInfo(messageInfo, tIMMessage, tIMMessage.getElement(i), z) != null) {
                arrayList.add(messageInfo);
            }
        }
        return arrayList;
    }

    public static boolean isTyping(TIMMessage tIMMessage) {
        for (int i = 0; i < tIMMessage.getElementCount(); i++) {
            if (tIMMessage.getElement(i).getType() == TIMElemType.Custom && isTyping(((TIMCustomElem) tIMMessage.getElement(i)).getData())) {
                return true;
            }
        }
        return false;
    }

    private static boolean isTyping(byte[] bArr) {
        try {
            MessageTyping messageTyping = (MessageTyping) new Gson().fromJson(new String(bArr, "UTF-8"), MessageTyping.class);
            if (messageTyping == null || messageTyping.userAction != 14 || !TextUtils.equals(messageTyping.actionParam, MessageTyping.EDIT_START)) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            TUIKitLog.e(TAG, "parse json error");
            return false;
        }
    }

    private static MessageInfo ele2MessageInfo(MessageInfo messageInfo, TIMMessage tIMMessage, TIMElem tIMElem, boolean z) {
        String str;
        String str2;
        String str3;
        final MessageInfo messageInfo2 = messageInfo;
        TIMElem tIMElem2 = tIMElem;
        boolean z2 = z;
        if (messageInfo2 == null || tIMMessage == null || tIMMessage.status() == TIMMessageStatus.HasDeleted || tIMMessage.getElementCount() == 0 || tIMElem2 == null || tIMElem.getType() == TIMElemType.Invalid) {
            TUIKitLog.e(TAG, "ele2MessageInfo parameters error");
            return null;
        }
        String sender = tIMMessage.getSender();
        messageInfo.setTIMMessage(tIMMessage);
        messageInfo2.setElement(tIMElem2);
        messageInfo2.setGroup(z2);
        messageInfo2.setId(tIMMessage.getMsgId());
        messageInfo2.setUniqueId(tIMMessage.getMsgUniqueId());
        messageInfo2.setPeerRead(tIMMessage.isPeerReaded());
        messageInfo2.setFromUser(sender);
        if (z2) {
            TIMGroupMemberInfo senderGroupMemberProfile = tIMMessage.getSenderGroupMemberProfile();
            if (senderGroupMemberProfile != null && !TextUtils.isEmpty(senderGroupMemberProfile.getNameCard())) {
                messageInfo2.setGroupNameCard(senderGroupMemberProfile.getNameCard());
            }
        }
        messageInfo2.setMsgTime(tIMMessage.timestamp());
        messageInfo2.setSelf(sender.equals(TIMManager.getInstance().getLoginUser()));
        TIMElemType type = tIMElem.getType();
        if (type == TIMElemType.Custom) {
            TIMCustomElem tIMCustomElem = (TIMCustomElem) tIMElem2;
            String str4 = new String(tIMCustomElem.getData());
            if (str4.equals(GROUP_CREATE)) {
                messageInfo2.setMsgType(257);
                StringBuilder sb = new StringBuilder();
                if (TextUtils.isEmpty(messageInfo.getGroupNameCard())) {
                    str3 = messageInfo.getFromUser();
                } else {
                    str3 = messageInfo.getGroupNameCard();
                }
                sb.append(TUIKitConstants.covert2HTMLString(str3));
                sb.append("创建群组");
                messageInfo2.setExtra(sb.toString());
            } else if (str4.equals(GROUP_DELETE)) {
                messageInfo2.setMsgType(258);
                messageInfo2.setExtra(new String(tIMCustomElem.getExt()));
            } else if (isTyping(tIMCustomElem.getData())) {
                return null;
            } else {
                messageInfo2.setMsgType(128);
                messageInfo2.setExtra("[自定义消息]");
            }
        } else {
            if (type == TIMElemType.GroupTips) {
                TIMGroupTipsElem tIMGroupTipsElem = (TIMGroupTipsElem) tIMElem2;
                TIMGroupTipsType tipsType = tIMGroupTipsElem.getTipsType();
                if (tIMGroupTipsElem.getChangedGroupMemberInfo().size() > 0) {
                    Object[] array = tIMGroupTipsElem.getChangedGroupMemberInfo().keySet().toArray();
                    str = "";
                    int i = 0;
                    while (true) {
                        if (i >= array.length) {
                            break;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append(array[i].toString());
                        str = sb2.toString();
                        if (i != 0) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("，");
                            sb3.append(str);
                            str = sb3.toString();
                        }
                        if (i == 2 && array.length > 3) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str);
                            sb4.append("等");
                            str = sb4.toString();
                            break;
                        }
                        i++;
                    }
                } else {
                    str = tIMGroupTipsElem.getOpUserInfo().getIdentifier();
                }
                String covert2HTMLString = TUIKitConstants.covert2HTMLString(str);
                if (tipsType == TIMGroupTipsType.Join) {
                    messageInfo2.setMsgType(259);
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(covert2HTMLString);
                    sb5.append("加入群组");
                    covert2HTMLString = sb5.toString();
                }
                if (tipsType == TIMGroupTipsType.Quit) {
                    messageInfo2.setMsgType(260);
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append(covert2HTMLString);
                    sb6.append("退出群组");
                    covert2HTMLString = sb6.toString();
                }
                if (tipsType == TIMGroupTipsType.Kick) {
                    messageInfo2.setMsgType(261);
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append(covert2HTMLString);
                    sb7.append("被踢出群组");
                    covert2HTMLString = sb7.toString();
                }
                if (tipsType == TIMGroupTipsType.SetAdmin) {
                    messageInfo2.setMsgType(263);
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append(covert2HTMLString);
                    sb8.append("被设置管理员");
                    covert2HTMLString = sb8.toString();
                }
                if (tipsType == TIMGroupTipsType.CancelAdmin) {
                    messageInfo2.setMsgType(263);
                    StringBuilder sb9 = new StringBuilder();
                    sb9.append(covert2HTMLString);
                    sb9.append("被取消管理员");
                    covert2HTMLString = sb9.toString();
                }
                String str5 = "\"";
                if (tipsType == TIMGroupTipsType.ModifyGroupInfo) {
                    List groupInfoList = tIMGroupTipsElem.getGroupInfoList();
                    str2 = covert2HTMLString;
                    for (int i2 = 0; i2 < groupInfoList.size(); i2++) {
                        TIMGroupTipsElemGroupInfo tIMGroupTipsElemGroupInfo = (TIMGroupTipsElemGroupInfo) groupInfoList.get(i2);
                        TIMGroupTipsGroupInfoType type2 = tIMGroupTipsElemGroupInfo.getType();
                        if (type2 == TIMGroupTipsGroupInfoType.ModifyName) {
                            messageInfo2.setMsgType(262);
                            StringBuilder sb10 = new StringBuilder();
                            sb10.append(str2);
                            sb10.append("修改群名称为\"");
                            sb10.append(tIMGroupTipsElemGroupInfo.getContent());
                            sb10.append(str5);
                            str2 = sb10.toString();
                        } else if (type2 == TIMGroupTipsGroupInfoType.ModifyNotification) {
                            messageInfo2.setMsgType(263);
                            StringBuilder sb11 = new StringBuilder();
                            sb11.append(str2);
                            sb11.append("修改群公告为\"");
                            sb11.append(tIMGroupTipsElemGroupInfo.getContent());
                            sb11.append(str5);
                            str2 = sb11.toString();
                        } else if (type2 == TIMGroupTipsGroupInfoType.ModifyOwner) {
                            messageInfo2.setMsgType(263);
                            StringBuilder sb12 = new StringBuilder();
                            sb12.append(str2);
                            sb12.append("转让群主给\"");
                            sb12.append(tIMGroupTipsElemGroupInfo.getContent());
                            sb12.append(str5);
                            str2 = sb12.toString();
                        } else if (type2 == TIMGroupTipsGroupInfoType.ModifyFaceUrl) {
                            messageInfo2.setMsgType(263);
                            StringBuilder sb13 = new StringBuilder();
                            sb13.append(str2);
                            sb13.append("修改了群头像");
                            str2 = sb13.toString();
                        } else if (type2 == TIMGroupTipsGroupInfoType.ModifyIntroduction) {
                            messageInfo2.setMsgType(263);
                            StringBuilder sb14 = new StringBuilder();
                            sb14.append(str2);
                            sb14.append("修改群介绍为\"");
                            sb14.append(tIMGroupTipsElemGroupInfo.getContent());
                            sb14.append(str5);
                            str2 = sb14.toString();
                        }
                        if (i2 < groupInfoList.size() - 1) {
                            StringBuilder sb15 = new StringBuilder();
                            sb15.append(str2);
                            sb15.append("、");
                            str2 = sb15.toString();
                        }
                    }
                } else {
                    str2 = covert2HTMLString;
                }
                if (tipsType == TIMGroupTipsType.ModifyMemberInfo) {
                    List memberInfoList = tIMGroupTipsElem.getMemberInfoList();
                    if (memberInfoList.size() > 0) {
                        long shutupTime = ((TIMGroupTipsElemMemberInfo) memberInfoList.get(0)).getShutupTime();
                        if (shutupTime > 0) {
                            messageInfo2.setMsgType(263);
                            StringBuilder sb16 = new StringBuilder();
                            sb16.append(str2);
                            sb16.append("被禁言\"");
                            sb16.append(DateTimeUtil.formatSeconds(shutupTime));
                            sb16.append(str5);
                            str2 = sb16.toString();
                        } else {
                            messageInfo2.setMsgType(263);
                            StringBuilder sb17 = new StringBuilder();
                            sb17.append(str2);
                            sb17.append("被取消禁言");
                            str2 = sb17.toString();
                        }
                    }
                }
                if (TextUtils.isEmpty(str2)) {
                    return null;
                }
                messageInfo2.setExtra(str2);
            } else {
                if (type == TIMElemType.Text) {
                    messageInfo2.setExtra(((TIMTextElem) tIMElem2).getText());
                } else if (type == TIMElemType.Face) {
                    TIMFaceElem tIMFaceElem = (TIMFaceElem) tIMElem2;
                    if (tIMFaceElem.getIndex() < 1 || tIMFaceElem.getData() == null) {
                        TUIKitLog.e(TAG, "txtEle data is null or index<1");
                        return null;
                    }
                    messageInfo2.setExtra("[自定义表情]");
                } else if (type == TIMElemType.Sound) {
                    TIMSoundElem tIMSoundElem = (TIMSoundElem) tIMElem2;
                    if (messageInfo.isSelf()) {
                        messageInfo2.setDataPath(tIMSoundElem.getPath());
                    } else {
                        StringBuilder sb18 = new StringBuilder();
                        sb18.append(TUIKitConstants.RECORD_DOWNLOAD_DIR);
                        sb18.append(tIMSoundElem.getUuid());
                        final String sb19 = sb18.toString();
                        if (!new File(sb19).exists()) {
                            tIMSoundElem.getSoundToFile(sb19, new TIMCallBack() {
                                public void onError(int i, String str) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(i);
                                    sb.append(":");
                                    sb.append(str);
                                    TUIKitLog.e("MessageInfoUtil getSoundToFile", sb.toString());
                                }

                                public void onSuccess() {
                                    messageInfo2.setDataPath(sb19);
                                }
                            });
                        } else {
                            messageInfo2.setDataPath(sb19);
                        }
                    }
                    messageInfo2.setExtra("[语音]");
                } else if (type == TIMElemType.Image) {
                    TIMImageElem tIMImageElem = (TIMImageElem) tIMElem2;
                    String path = tIMImageElem.getPath();
                    if (!messageInfo.isSelf() || TextUtils.isEmpty(path)) {
                        ArrayList imageList = tIMImageElem.getImageList();
                        for (int i3 = 0; i3 < imageList.size(); i3++) {
                            TIMImage tIMImage = (TIMImage) imageList.get(i3);
                            if (tIMImage.getType() == TIMImageType.Thumb) {
                                StringBuilder sb20 = new StringBuilder();
                                sb20.append(TUIKitConstants.IMAGE_DOWNLOAD_DIR);
                                sb20.append(tIMImage.getUuid());
                                String sb21 = sb20.toString();
                                messageInfo2.setImgWidth((int) tIMImage.getWidth());
                                messageInfo2.setImgHeight((int) tIMImage.getHeight());
                                if (new File(sb21).exists()) {
                                    messageInfo2.setDataPath(sb21);
                                }
                            }
                        }
                    } else {
                        messageInfo2.setDataPath(path);
                        int[] imageSize = ImageUtil.getImageSize(path);
                        messageInfo2.setImgWidth(imageSize[0]);
                        messageInfo2.setImgHeight(imageSize[1]);
                    }
                    messageInfo2.setExtra("[图片]");
                } else if (type == TIMElemType.Video) {
                    TIMVideoElem tIMVideoElem = (TIMVideoElem) tIMElem2;
                    if (!messageInfo.isSelf() || TextUtils.isEmpty(tIMVideoElem.getSnapshotPath())) {
                        TIMVideo videoInfo = tIMVideoElem.getVideoInfo();
                        StringBuilder sb22 = new StringBuilder();
                        sb22.append(TUIKitConstants.VIDEO_DOWNLOAD_DIR);
                        sb22.append(videoInfo.getUuid());
                        messageInfo2.setDataUri(Uri.parse(sb22.toString()));
                        TIMSnapshot snapshotInfo = tIMVideoElem.getSnapshotInfo();
                        messageInfo2.setImgWidth((int) snapshotInfo.getWidth());
                        messageInfo2.setImgHeight((int) snapshotInfo.getHeight());
                        StringBuilder sb23 = new StringBuilder();
                        sb23.append(TUIKitConstants.IMAGE_DOWNLOAD_DIR);
                        sb23.append(snapshotInfo.getUuid());
                        String sb24 = sb23.toString();
                        if (new File(sb24).exists()) {
                            messageInfo2.setDataPath(sb24);
                        }
                    } else {
                        int[] imageSize2 = ImageUtil.getImageSize(tIMVideoElem.getSnapshotPath());
                        messageInfo2.setImgWidth(imageSize2[0]);
                        messageInfo2.setImgHeight(imageSize2[1]);
                        messageInfo2.setDataPath(tIMVideoElem.getSnapshotPath());
                        messageInfo2.setDataUri(FileUtil.getUriFromPath(tIMVideoElem.getVideoPath()));
                    }
                    messageInfo2.setExtra("[视频]");
                } else if (type == TIMElemType.File) {
                    TIMFileElem tIMFileElem = (TIMFileElem) tIMElem2;
                    String uuid = tIMFileElem.getUuid();
                    if (TextUtils.isEmpty(uuid)) {
                        StringBuilder sb25 = new StringBuilder();
                        sb25.append(System.currentTimeMillis());
                        sb25.append(tIMFileElem.getFileName());
                        uuid = sb25.toString();
                    }
                    StringBuilder sb26 = new StringBuilder();
                    sb26.append(TUIKitConstants.FILE_DOWNLOAD_DIR);
                    sb26.append(uuid);
                    String sb27 = sb26.toString();
                    if (new File(sb27).exists()) {
                        if (messageInfo.isSelf()) {
                            messageInfo2.setStatus(2);
                        } else {
                            messageInfo2.setStatus(6);
                        }
                        messageInfo2.setDataPath(sb27);
                    } else if (!messageInfo.isSelf()) {
                        messageInfo2.setStatus(5);
                        messageInfo2.setDataPath(sb27);
                    } else if (TextUtils.isEmpty(tIMFileElem.getPath())) {
                        messageInfo2.setStatus(5);
                        messageInfo2.setDataPath(sb27);
                    } else if (new File(tIMFileElem.getPath()).exists()) {
                        messageInfo2.setStatus(2);
                        messageInfo2.setDataPath(tIMFileElem.getPath());
                    } else {
                        messageInfo2.setStatus(5);
                        messageInfo2.setDataPath(sb27);
                    }
                    messageInfo2.setExtra("[文件]");
                }
                messageInfo2.setMsgType(TIMElemType2MessageInfoType(type));
            }
        }
        if (tIMMessage.status() == TIMMessageStatus.HasRevoked) {
            messageInfo2.setStatus(275);
            messageInfo2.setMsgType(275);
            if (messageInfo.isSelf()) {
                messageInfo2.setExtra("您撤回了一条消息");
            } else if (messageInfo.isGroup()) {
                String covert2HTMLString2 = TUIKitConstants.covert2HTMLString(messageInfo.getFromUser());
                StringBuilder sb28 = new StringBuilder();
                sb28.append(covert2HTMLString2);
                sb28.append("撤回了一条消息");
                messageInfo2.setExtra(sb28.toString());
            } else {
                messageInfo2.setExtra("对方撤回了一条消息");
            }
        } else if (messageInfo.isSelf()) {
            if (tIMMessage.status() == TIMMessageStatus.SendFail) {
                messageInfo2.setStatus(3);
            } else if (tIMMessage.status() == TIMMessageStatus.SendSucc) {
                messageInfo2.setStatus(2);
            } else if (tIMMessage.status() == TIMMessageStatus.Sending) {
                messageInfo2.setStatus(1);
            }
        }
        return messageInfo2;
    }

    private static int TIMElemType2MessageInfoType(TIMElemType tIMElemType) {
        switch (tIMElemType) {
            case Text:
                return 0;
            case Image:
                return 32;
            case Sound:
                return 48;
            case Video:
                return 64;
            case File:
                return 80;
            case Location:
                return 96;
            case Face:
                return 112;
            case GroupTips:
                return 256;
            default:
                return -1;
        }
    }
}
