package com.kantv.flt_tencent_im.modules.chat;

import com.kantv.flt_tencent_im.base.IUIKitCallBack;
import com.kantv.flt_tencent_im.modules.chat.base.ChatInfo;
import com.kantv.flt_tencent_im.modules.chat.base.ChatManagerKit;
import com.kantv.flt_tencent_im.modules.conversation.ConversationManagerKit;
import com.kantv.flt_tencent_im.modules.group.apply.GroupApplyInfo;
import com.kantv.flt_tencent_im.modules.group.info.GroupInfo;
import com.kantv.flt_tencent_im.modules.group.info.GroupInfoProvider;
import com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo;
import com.kantv.flt_tencent_im.modules.message.MessageInfo;
import com.kantv.flt_tencent_im.modules.message.MessageInfoUtil;
import com.kantv.flt_tencent_im.utils.TUIKitLog;
import com.kantv.flt_tencent_im.utils.ToastUtil;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMConversationType;
import com.tencent.imsdk.TIMElem;
import com.tencent.imsdk.TIMElemType;
import com.tencent.imsdk.TIMGroupAddOpt;
import com.tencent.imsdk.TIMGroupManager;
import com.tencent.imsdk.TIMGroupManager.CreateGroupParam;
import com.tencent.imsdk.TIMGroupMemberInfo;
import com.tencent.imsdk.TIMGroupSystemElem;
import com.tencent.imsdk.TIMGroupSystemElemType;
import com.tencent.imsdk.TIMGroupTipsElem;
import com.tencent.imsdk.TIMGroupTipsElemGroupInfo;
import com.tencent.imsdk.TIMGroupTipsGroupInfoType;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMValueCallBack;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class GroupChatManagerKit extends ChatManagerKit {
    /* access modifiers changed from: private */
    public static final String TAG = "GroupChatManagerKit";
    private static GroupChatManagerKit mKit;
    private List<GroupApplyInfo> mCurrentApplies = new ArrayList();
    private GroupInfo mCurrentChatInfo;
    private List<GroupMemberInfo> mCurrentGroupMembers = new ArrayList();
    private GroupNotifyHandler mGroupHandler;
    private GroupInfoProvider mGroupInfoProvider;

    public interface GroupNotifyHandler {
        void onApplied(int i);

        void onGroupForceExit();

        void onGroupNameChanged(String str);
    }

    /* access modifiers changed from: protected */
    public boolean isGroup() {
        return true;
    }

    private GroupChatManagerKit() {
        init();
    }

    public static GroupChatManagerKit getInstance() {
        if (mKit == null) {
            mKit = new GroupChatManagerKit();
        }
        return mKit;
    }

    /* access modifiers changed from: private */
    public static void sendTipsMessage(TIMConversation tIMConversation, TIMMessage tIMMessage, final IUIKitCallBack iUIKitCallBack) {
        tIMConversation.sendMessage(tIMMessage, new TIMValueCallBack<TIMMessage>() {
            public void onError(int i, String str) {
                String access$000 = GroupChatManagerKit.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("sendTipsMessage fail:");
                sb.append(i);
                sb.append("=");
                sb.append(str);
                TUIKitLog.i(access$000, sb.toString());
                IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                if (iUIKitCallBack != null) {
                    iUIKitCallBack.onError(GroupChatManagerKit.TAG, i, str);
                }
            }

            public void onSuccess(TIMMessage tIMMessage) {
                TUIKitLog.i(GroupChatManagerKit.TAG, "sendTipsMessage onSuccess");
                IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                if (iUIKitCallBack != null) {
                    iUIKitCallBack.onSuccess(tIMMessage);
                }
            }
        });
    }

    public static void createGroupChat(final GroupInfo groupInfo, final IUIKitCallBack iUIKitCallBack) {
        CreateGroupParam createGroupParam = new CreateGroupParam(groupInfo.getGroupType(), groupInfo.getGroupName());
        if (groupInfo.getJoinType() > -1) {
            createGroupParam.setAddOption(TIMGroupAddOpt.values()[groupInfo.getJoinType()]);
        }
        createGroupParam.setIntroduction(groupInfo.getNotice());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < groupInfo.getMemberDetails().size(); i++) {
            arrayList.add(new TIMGroupMemberInfo(((GroupMemberInfo) groupInfo.getMemberDetails().get(i)).getAccount()));
        }
        createGroupParam.setMembers(arrayList);
        TIMGroupManager.getInstance().createGroup(createGroupParam, new TIMValueCallBack<String>() {
            public void onError(int i, String str) {
                iUIKitCallBack.onError(GroupChatManagerKit.TAG, i, str);
                String access$000 = GroupChatManagerKit.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("createGroup failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str);
                TUIKitLog.e(access$000, sb.toString());
            }

            public void onSuccess(final String str) {
                groupInfo.setId(str);
                StringBuilder sb = new StringBuilder();
                sb.append(TIMManager.getInstance().getLoginUser());
                sb.append("创建群组");
                TIMMessage buildGroupCustomMessage = MessageInfoUtil.buildGroupCustomMessage(MessageInfoUtil.GROUP_CREATE, sb.toString());
                TIMConversation conversation = TIMManager.getInstance().getConversation(TIMConversationType.Group, str);
                try {
                    Thread.sleep(200);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                GroupChatManagerKit.sendTipsMessage(conversation, buildGroupCustomMessage, new IUIKitCallBack() {
                    public void onSuccess(Object obj) {
                        iUIKitCallBack.onSuccess(str);
                    }

                    public void onError(String str, int i, String str2) {
                        String access$000 = GroupChatManagerKit.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("sendTipsMessage failed, code: ");
                        sb.append(i);
                        sb.append("|desc: ");
                        sb.append(str2);
                        TUIKitLog.e(access$000, sb.toString());
                    }
                });
            }
        });
    }

    /* access modifiers changed from: protected */
    public void init() {
        super.init();
        this.mGroupInfoProvider = new GroupInfoProvider();
    }

    public GroupInfoProvider getProvider() {
        return this.mGroupInfoProvider;
    }

    public ChatInfo getCurrentChatInfo() {
        return this.mCurrentChatInfo;
    }

    public void setCurrentChatInfo(ChatInfo chatInfo) {
        super.setCurrentChatInfo(chatInfo);
        this.mCurrentChatInfo = (GroupInfo) chatInfo;
        this.mCurrentApplies.clear();
        this.mCurrentGroupMembers.clear();
        this.mGroupInfoProvider.loadGroupInfo(this.mCurrentChatInfo);
    }

    /* access modifiers changed from: protected */
    public void onReceiveSystemMessage(TIMMessage tIMMessage) {
        super.onReceiveSystemMessage(tIMMessage);
        TIMElem element = tIMMessage.getElement(0);
        if (element.getType() == TIMElemType.GroupSystem) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("onReceiveSystemMessage msg = ");
            sb.append(tIMMessage);
            TUIKitLog.i(str, sb.toString());
            groupSystMsgHandle((TIMGroupSystemElem) element);
        }
    }

    /* access modifiers changed from: protected */
    public void addGroupMessage(MessageInfo messageInfo) {
        if (messageInfo.getMsgType() == 259 || messageInfo.getMsgType() == 260 || messageInfo.getMsgType() == 261 || messageInfo.getMsgType() == 262 || messageInfo.getMsgType() == 263) {
            TIMElem element = messageInfo.getElement();
            if (element instanceof TIMGroupTipsElem) {
                TIMGroupTipsElem tIMGroupTipsElem = (TIMGroupTipsElem) element;
                if (messageInfo.getMsgType() == 259) {
                    Map changedGroupMemberInfo = tIMGroupTipsElem.getChangedGroupMemberInfo();
                    if (changedGroupMemberInfo.size() > 0) {
                        for (Object obj : changedGroupMemberInfo.keySet()) {
                            GroupMemberInfo groupMemberInfo = new GroupMemberInfo();
                            groupMemberInfo.covertTIMGroupMemberInfo((TIMGroupMemberInfo) changedGroupMemberInfo.get(obj));
                            this.mCurrentGroupMembers.add(groupMemberInfo);
                        }
                    } else {
                        GroupMemberInfo groupMemberInfo2 = new GroupMemberInfo();
                        groupMemberInfo2.covertTIMGroupMemberInfo(tIMGroupTipsElem.getOpGroupMemberInfo());
                        this.mCurrentGroupMembers.add(groupMemberInfo2);
                    }
                    this.mCurrentChatInfo.setMemberDetails(this.mCurrentGroupMembers);
                } else {
                    int i = 0;
                    if (messageInfo.getMsgType() == 260 || messageInfo.getMsgType() == 261) {
                        Map changedGroupMemberInfo2 = tIMGroupTipsElem.getChangedGroupMemberInfo();
                        if (changedGroupMemberInfo2.size() > 0) {
                            for (String str : changedGroupMemberInfo2.keySet()) {
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= this.mCurrentGroupMembers.size()) {
                                        break;
                                    } else if (((GroupMemberInfo) this.mCurrentGroupMembers.get(i2)).getAccount().equals(str)) {
                                        this.mCurrentGroupMembers.remove(i2);
                                        break;
                                    } else {
                                        i2++;
                                    }
                                }
                            }
                        } else {
                            TIMGroupMemberInfo opGroupMemberInfo = tIMGroupTipsElem.getOpGroupMemberInfo();
                            while (true) {
                                if (i >= this.mCurrentGroupMembers.size()) {
                                    break;
                                } else if (((GroupMemberInfo) this.mCurrentGroupMembers.get(i)).getAccount().equals(opGroupMemberInfo.getUser())) {
                                    this.mCurrentGroupMembers.remove(i);
                                    break;
                                } else {
                                    i++;
                                }
                            }
                        }
                        this.mCurrentChatInfo.setMemberDetails(this.mCurrentGroupMembers);
                    } else if (messageInfo.getMsgType() == 262 || messageInfo.getMsgType() == 263) {
                        List groupInfoList = tIMGroupTipsElem.getGroupInfoList();
                        if (groupInfoList.size() > 0) {
                            TIMGroupTipsElemGroupInfo tIMGroupTipsElemGroupInfo = (TIMGroupTipsElemGroupInfo) groupInfoList.get(0);
                            TIMGroupTipsGroupInfoType type = tIMGroupTipsElemGroupInfo.getType();
                            if (type == TIMGroupTipsGroupInfoType.ModifyName) {
                                this.mCurrentChatInfo.setGroupName(tIMGroupTipsElemGroupInfo.getContent());
                                GroupNotifyHandler groupNotifyHandler = this.mGroupHandler;
                                if (groupNotifyHandler != null) {
                                    groupNotifyHandler.onGroupNameChanged(tIMGroupTipsElemGroupInfo.getContent());
                                }
                            } else if (type == TIMGroupTipsGroupInfoType.ModifyNotification) {
                                this.mCurrentChatInfo.setNotice(tIMGroupTipsElemGroupInfo.getContent());
                            }
                        }
                    }
                }
            }
        }
    }

    private void groupSystMsgHandle(TIMGroupSystemElem tIMGroupSystemElem) {
        TIMGroupSystemElemType subtype = tIMGroupSystemElem.getSubtype();
        if (subtype == TIMGroupSystemElemType.TIM_GROUP_SYSTEM_ADD_GROUP_ACCEPT_TYPE) {
            StringBuilder sb = new StringBuilder();
            sb.append("您已被同意加入群：");
            sb.append(tIMGroupSystemElem.getGroupId());
            ToastUtil.toastLongMessage(sb.toString());
        } else if (subtype == TIMGroupSystemElemType.TIM_GROUP_SYSTEM_ADD_GROUP_REFUSE_TYPE) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("您被拒绝加入群：");
            sb2.append(tIMGroupSystemElem.getGroupId());
            ToastUtil.toastLongMessage(sb2.toString());
        } else if (subtype == TIMGroupSystemElemType.TIM_GROUP_SYSTEM_KICK_OFF_FROM_GROUP_TYPE) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("您已被踢出群：");
            sb3.append(tIMGroupSystemElem.getGroupId());
            ToastUtil.toastLongMessage(sb3.toString());
            ConversationManagerKit.getInstance().deleteConversation(tIMGroupSystemElem.getGroupId(), true);
            if (this.mCurrentChatInfo != null && tIMGroupSystemElem.getGroupId().equals(this.mCurrentChatInfo.getId())) {
                onGroupForceExit();
            }
        } else if (subtype == TIMGroupSystemElemType.TIM_GROUP_SYSTEM_DELETE_GROUP_TYPE) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("您所在的群");
            sb4.append(tIMGroupSystemElem.getGroupId());
            sb4.append("已解散");
            ToastUtil.toastLongMessage(sb4.toString());
            if (this.mCurrentChatInfo != null && tIMGroupSystemElem.getGroupId().equals(this.mCurrentChatInfo.getId())) {
                onGroupForceExit();
            }
        }
    }

    public void onGroupForceExit() {
        GroupNotifyHandler groupNotifyHandler = this.mGroupHandler;
        if (groupNotifyHandler != null) {
            groupNotifyHandler.onGroupForceExit();
        }
    }

    public void destroyChat() {
        super.destroyChat();
        this.mCurrentChatInfo = null;
        this.mGroupHandler = null;
        this.mCurrentApplies.clear();
        this.mCurrentGroupMembers.clear();
    }

    public void setGroupHandler(GroupNotifyHandler groupNotifyHandler) {
        this.mGroupHandler = groupNotifyHandler;
    }

    public void onApplied(int i) {
        GroupNotifyHandler groupNotifyHandler = this.mGroupHandler;
        if (groupNotifyHandler != null) {
            groupNotifyHandler.onApplied(i);
        }
    }

    /* access modifiers changed from: protected */
    public void assembleGroupMessage(MessageInfo messageInfo) {
        messageInfo.setGroup(true);
        messageInfo.setFromUser(TIMManager.getInstance().getLoginUser());
    }
}
