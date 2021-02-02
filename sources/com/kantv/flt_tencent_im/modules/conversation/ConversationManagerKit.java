package com.kantv.flt_tencent_im.modules.conversation;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.kantv.flt_tencent_im.TUIKit;
import com.kantv.flt_tencent_im.base.IUIKitCallBack;
import com.kantv.flt_tencent_im.modules.conversation.base.ConversationInfo;
import com.kantv.flt_tencent_im.modules.message.MessageInfo;
import com.kantv.flt_tencent_im.modules.message.MessageInfoUtil;
import com.kantv.flt_tencent_im.modules.message.MessageRevokedManager;
import com.kantv.flt_tencent_im.modules.message.MessageRevokedManager.MessageRevokeHandler;
import com.kantv.flt_tencent_im.utils.SharedPreferenceUtils;
import com.kantv.flt_tencent_im.utils.TUIKitLog;
import com.kantv.flt_tencent_im.utils.ToastUtil;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMConversationType;
import com.tencent.imsdk.TIMElem;
import com.tencent.imsdk.TIMElemType;
import com.tencent.imsdk.TIMFriendshipManager;
import com.tencent.imsdk.TIMGroupManager;
import com.tencent.imsdk.TIMGroupMemberInfo;
import com.tencent.imsdk.TIMGroupSystemElem;
import com.tencent.imsdk.TIMGroupSystemElemType;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMRefreshListener;
import com.tencent.imsdk.TIMUserProfile;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfo;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfoResult;
import com.tencent.imsdk.ext.group.TIMGroupMemberRoleFilter;
import com.tencent.imsdk.ext.group.TIMGroupMemberSucc;
import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.imsdk.friendship.TIMFriend;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ConversationManagerKit implements TIMRefreshListener, MessageRevokeHandler {
    private static final String SP_NAME = "top_conversion_list";
    /* access modifiers changed from: private */
    public static final String TAG = "ConversationManagerKit";
    private static final String TOP_LIST = "top_list";
    private static ConversationManagerKit instance = new ConversationManagerKit();
    private final String SP_IMAGE = "conversation_group_face";
    private SharedPreferences mConversationPreferences;
    /* access modifiers changed from: private */
    public ConversationProvider mProvider;
    private LinkedList<ConversationInfo> mTopLinkedList = new LinkedList<>();
    private int mUnreadTotal;
    private List<MessageUnreadWatcher> mUnreadWatchers = new ArrayList();

    public interface MessageUnreadWatcher {
        void updateUnread(int i);
    }

    public void onRefresh() {
    }

    private ConversationManagerKit() {
        init();
    }

    public static ConversationManagerKit getInstance() {
        return instance;
    }

    private void init() {
        TUIKitLog.i(TAG, "init");
        Context appContext = TUIKit.getAppContext();
        StringBuilder sb = new StringBuilder();
        sb.append(TIMManager.getInstance().getLoginUser());
        sb.append(SP_NAME);
        this.mConversationPreferences = appContext.getSharedPreferences(sb.toString(), 0);
        this.mTopLinkedList = SharedPreferenceUtils.getListData(this.mConversationPreferences, TOP_LIST, ConversationInfo.class);
        MessageRevokedManager.getInstance().addHandler(this);
    }

    public void loadConversation(IUIKitCallBack iUIKitCallBack) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("loadConversation callBack:");
        sb.append(iUIKitCallBack);
        TUIKitLog.i(str, sb.toString());
        this.mUnreadTotal = 0;
        if (this.mProvider == null) {
            this.mProvider = new ConversationProvider();
        }
        List conversationList = TIMManager.getInstance().getConversationList();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < conversationList.size(); i++) {
            ConversationInfo TIMConversation2ConversationInfo = TIMConversation2ConversationInfo((TIMConversation) conversationList.get(i));
            if (TIMConversation2ConversationInfo != null) {
                this.mUnreadTotal += TIMConversation2ConversationInfo.getUnRead();
                TIMConversation2ConversationInfo.setType(1);
                arrayList.add(TIMConversation2ConversationInfo);
            }
        }
        this.mProvider.setDataSource(sortConversations(arrayList));
        SharedPreferenceUtils.putListData(this.mConversationPreferences, TOP_LIST, this.mTopLinkedList);
        updateUnreadTotal(this.mUnreadTotal);
        if (iUIKitCallBack != null) {
            iUIKitCallBack.onSuccess(this.mProvider);
        }
    }

    public void onRefreshConversation(List<TIMConversation> list) {
        boolean z;
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onRefreshConversation conversations:");
        sb.append(list);
        TUIKitLog.i(str, sb.toString());
        if (this.mProvider != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                TIMConversation tIMConversation = (TIMConversation) list.get(i);
                String str2 = TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onRefreshConversation TIMConversation ");
                sb2.append(tIMConversation.toString());
                TUIKitLog.i(str2, sb2.toString());
                ConversationInfo TIMConversation2ConversationInfo = TIMConversation2ConversationInfo(tIMConversation);
                if (tIMConversation.getType() == TIMConversationType.System) {
                    TIMMessage lastMsg = tIMConversation.getLastMsg();
                    if (lastMsg.getElementCount() > 0) {
                        TIMElem element = lastMsg.getElement(0);
                        if (element.getType() == TIMElemType.GroupSystem) {
                            TIMGroupSystemElem tIMGroupSystemElem = (TIMGroupSystemElem) element;
                            if (tIMGroupSystemElem.getSubtype() == TIMGroupSystemElemType.TIM_GROUP_SYSTEM_INVITED_TO_GROUP_TYPE) {
                                String groupName = tIMConversation.getGroupName();
                                if (TextUtils.isEmpty(groupName)) {
                                    groupName = tIMGroupSystemElem.getGroupId();
                                }
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("您已经被邀请进群【");
                                sb3.append(groupName);
                                sb3.append("】，请到我的群聊里面查看！");
                                ToastUtil.toastLongMessage(sb3.toString());
                            }
                        }
                    }
                }
                if (TIMConversation2ConversationInfo != null) {
                    arrayList.add(TIMConversation2ConversationInfo);
                }
            }
            if (arrayList.size() != 0) {
                List dataSource = this.mProvider.getDataSource();
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ConversationInfo conversationInfo = (ConversationInfo) arrayList.get(i2);
                    int i3 = 0;
                    while (true) {
                        if (i3 >= dataSource.size()) {
                            z = false;
                            break;
                        }
                        ConversationInfo conversationInfo2 = (ConversationInfo) dataSource.get(i3);
                        if (conversationInfo2.getId().equals(conversationInfo.getId())) {
                            dataSource.remove(i3);
                            dataSource.add(i3, conversationInfo);
                            arrayList2.add(conversationInfo);
                            this.mUnreadTotal = (this.mUnreadTotal - conversationInfo2.getUnRead()) + conversationInfo.getUnRead();
                            String str3 = TAG;
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("onRefreshConversation after mUnreadTotal = ");
                            sb4.append(this.mUnreadTotal);
                            TUIKitLog.i(str3, sb4.toString());
                            z = true;
                            break;
                        }
                        i3++;
                    }
                    if (!z) {
                        this.mUnreadTotal += conversationInfo.getUnRead();
                        String str4 = TAG;
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("onRefreshConversation exist = ");
                        sb5.append(z);
                        sb5.append(", mUnreadTotal = ");
                        sb5.append(this.mUnreadTotal);
                        TUIKitLog.i(str4, sb5.toString());
                    }
                }
                updateUnreadTotal(this.mUnreadTotal);
                arrayList.removeAll(arrayList2);
                if (arrayList.size() > 0) {
                    dataSource.addAll(arrayList);
                }
                this.mProvider.setDataSource(sortConversations(dataSource));
                SharedPreferenceUtils.putListData(this.mConversationPreferences, TOP_LIST, this.mTopLinkedList);
            }
        }
    }

    private ConversationInfo TIMConversation2ConversationInfo(TIMConversation tIMConversation) {
        if (tIMConversation == null) {
            return null;
        }
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("loadConversation conversation peer ");
        sb.append(tIMConversation.getPeer());
        sb.append(", groupName ");
        sb.append(tIMConversation.getGroupName());
        TUIKitLog.i(str, sb.toString());
        TIMMessage lastMsg = tIMConversation.getLastMsg();
        if (lastMsg == null) {
            return null;
        }
        ConversationInfo conversationInfo = new ConversationInfo();
        TIMConversationType type = tIMConversation.getType();
        if (type == TIMConversationType.System) {
            if (lastMsg.getElementCount() > 0) {
                TIMElem element = lastMsg.getElement(0);
                if (element.getType() == TIMElemType.GroupSystem) {
                    groupSystMsgHandle((TIMGroupSystemElem) element);
                }
            }
            return null;
        }
        boolean z = true;
        boolean z2 = type == TIMConversationType.Group;
        conversationInfo.setLastMessageTime(lastMsg.timestamp());
        List TIMMessage2MessageInfo = MessageInfoUtil.TIMMessage2MessageInfo(lastMsg, z2);
        if (TIMMessage2MessageInfo != null && TIMMessage2MessageInfo.size() > 0) {
            conversationInfo.setLastMessage((MessageInfo) TIMMessage2MessageInfo.get(TIMMessage2MessageInfo.size() - 1));
        }
        if (z2) {
            fillConversationWithGroupInfo(tIMConversation, conversationInfo);
        } else {
            fillConversationWithUserProfile(tIMConversation, conversationInfo);
        }
        conversationInfo.setId(tIMConversation.getPeer());
        if (tIMConversation.getType() != TIMConversationType.Group) {
            z = false;
        }
        conversationInfo.setGroup(z);
        if (tIMConversation.getUnreadMessageNum() > 0) {
            conversationInfo.setUnRead((int) tIMConversation.getUnreadMessageNum());
        }
        String str2 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onRefreshConversation ext.getUnreadMessageNum() ");
        sb2.append(tIMConversation.getUnreadMessageNum());
        TUIKitLog.i(str2, sb2.toString());
        return conversationInfo;
    }

    private void fillConversationWithUserProfile(final TIMConversation tIMConversation, final ConversationInfo conversationInfo) {
        String peer = tIMConversation.getPeer();
        ArrayList arrayList = new ArrayList();
        arrayList.add(tIMConversation.getPeer());
        TIMUserProfile queryUserProfile = TIMFriendshipManager.getInstance().queryUserProfile(tIMConversation.getPeer());
        if (queryUserProfile == null) {
            TIMFriendshipManager.getInstance().getUsersProfile(arrayList, false, new TIMValueCallBack<List<TIMUserProfile>>() {
                public void onError(int i, String str) {
                    String access$000 = ConversationManagerKit.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("getUsersProfile failed! code: ");
                    sb.append(i);
                    sb.append(" desc: ");
                    sb.append(str);
                    TUIKitLog.e(access$000, sb.toString());
                }

                public void onSuccess(List<TIMUserProfile> list) {
                    if (list == null || list.size() != 1) {
                        TUIKitLog.i(ConversationManagerKit.TAG, "No TIMUserProfile");
                        return;
                    }
                    TIMUserProfile tIMUserProfile = (TIMUserProfile) list.get(0);
                    ArrayList arrayList = new ArrayList();
                    String peer = tIMConversation.getPeer();
                    if (tIMUserProfile != null && !TextUtils.isEmpty(tIMUserProfile.getNickName())) {
                        peer = tIMUserProfile.getNickName();
                    }
                    conversationInfo.setTitle(peer);
                    conversationInfo.setIconUrlList(arrayList);
                    ConversationManagerKit.this.mProvider.updateAdapter();
                }
            });
        } else {
            ArrayList arrayList2 = new ArrayList();
            if (!TextUtils.isEmpty(queryUserProfile.getNickName())) {
                peer = queryUserProfile.getNickName();
            }
            conversationInfo.setTitle(peer);
            conversationInfo.setIconUrlList(arrayList2);
        }
        TIMFriend queryFriend = TIMFriendshipManager.getInstance().queryFriend(tIMConversation.getPeer());
        if (queryFriend == null) {
            TIMFriendshipManager.getInstance().getFriendList(new TIMValueCallBack<List<TIMFriend>>() {
                public void onError(int i, String str) {
                    String access$000 = ConversationManagerKit.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("getFriendList failed! code: ");
                    sb.append(i);
                    sb.append(" desc: ");
                    sb.append(str);
                    TUIKitLog.e(access$000, sb.toString());
                }

                public void onSuccess(List<TIMFriend> list) {
                    if (list == null || list.size() == 0) {
                        TUIKitLog.i(ConversationManagerKit.TAG, "No Friends");
                        return;
                    }
                    for (TIMFriend tIMFriend : list) {
                        if (TextUtils.equals(tIMConversation.getPeer(), tIMFriend.getIdentifier()) && !TextUtils.isEmpty(tIMFriend.getRemark())) {
                            conversationInfo.setTitle(tIMFriend.getRemark());
                            ConversationManagerKit.this.mProvider.updateAdapter();
                            return;
                        }
                    }
                    String access$000 = ConversationManagerKit.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append(tIMConversation.getPeer());
                    sb.append(" is not my friend");
                    TUIKitLog.i(access$000, sb.toString());
                }
            });
        } else if (!TextUtils.isEmpty(queryFriend.getRemark())) {
            conversationInfo.setTitle(queryFriend.getRemark());
        }
    }

    private void fillConversationWithGroupInfo(final TIMConversation tIMConversation, final ConversationInfo conversationInfo) {
        Context appContext = TUIKit.getAppContext();
        StringBuilder sb = new StringBuilder();
        sb.append(TIMManager.getInstance().getLoginUser());
        sb.append("conversation_group_face");
        String string = appContext.getSharedPreferences(sb.toString(), 0).getString(tIMConversation.getPeer(), "");
        if (!TextUtils.isEmpty(string) && new File(string).isFile() && new File(string).exists()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(string);
            conversationInfo.setIconUrlList(arrayList);
        }
        TIMGroupDetailInfo queryGroupInfo = TIMGroupManager.getInstance().queryGroupInfo(tIMConversation.getPeer());
        if (queryGroupInfo == null) {
            if (TextUtils.isEmpty(tIMConversation.getGroupName())) {
                conversationInfo.setTitle(tIMConversation.getPeer());
            } else {
                conversationInfo.setTitle(tIMConversation.getGroupName());
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(tIMConversation.getPeer());
            TIMGroupManager.getInstance().getGroupInfo(arrayList2, new TIMValueCallBack<List<TIMGroupDetailInfoResult>>() {
                public void onError(int i, String str) {
                    String access$000 = ConversationManagerKit.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("getGroupInfo failed! code: ");
                    sb.append(i);
                    sb.append(" desc: ");
                    sb.append(str);
                    TUIKitLog.e(access$000, sb.toString());
                }

                public void onSuccess(List<TIMGroupDetailInfoResult> list) {
                    if (list == null || list.size() != 1) {
                        TUIKitLog.i(ConversationManagerKit.TAG, "No GroupInfo");
                        return;
                    }
                    TIMGroupDetailInfoResult tIMGroupDetailInfoResult = (TIMGroupDetailInfoResult) list.get(0);
                    if (TextUtils.isEmpty(tIMGroupDetailInfoResult.getGroupName())) {
                        conversationInfo.setTitle(tIMGroupDetailInfoResult.getGroupId());
                    } else {
                        conversationInfo.setTitle(tIMGroupDetailInfoResult.getGroupName());
                    }
                    if (TextUtils.isEmpty(tIMGroupDetailInfoResult.getFaceUrl())) {
                        ConversationManagerKit.this.fillFaceUrlList(tIMConversation.getPeer(), conversationInfo);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(tIMGroupDetailInfoResult.getFaceUrl());
                        conversationInfo.setIconUrlList(arrayList);
                    }
                    ConversationManagerKit.this.mProvider.updateAdapter();
                }
            });
            return;
        }
        if (TextUtils.isEmpty(queryGroupInfo.getFaceUrl())) {
            fillFaceUrlList(tIMConversation.getPeer(), conversationInfo);
        } else {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(queryGroupInfo.getFaceUrl());
            conversationInfo.setIconUrlList(arrayList3);
        }
        if (TextUtils.isEmpty(queryGroupInfo.getGroupName())) {
            conversationInfo.setTitle(queryGroupInfo.getGroupId());
        } else {
            conversationInfo.setTitle(queryGroupInfo.getGroupName());
        }
    }

    /* access modifiers changed from: private */
    public void fillFaceUrlList(String str, final ConversationInfo conversationInfo) {
        TIMGroupManager.getInstance().getGroupMembersByFilter(str, 32, TIMGroupMemberRoleFilter.All, null, 0, new TIMValueCallBack<TIMGroupMemberSucc>() {
            public void onError(int i, String str) {
                String access$000 = ConversationManagerKit.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("getGroupMembersByFilter failed! code: ");
                sb.append(i);
                sb.append(" desc: ");
                sb.append(str);
                TUIKitLog.e(access$000, sb.toString());
            }

            public void onSuccess(TIMGroupMemberSucc tIMGroupMemberSucc) {
                List memberInfoList = tIMGroupMemberSucc.getMemberInfoList();
                int i = 9;
                if (memberInfoList.size() <= 9) {
                    i = memberInfoList.size();
                }
                final ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < i; i2++) {
                    if (TIMFriendshipManager.getInstance().queryUserProfile(((TIMGroupMemberInfo) memberInfoList.get(i2)).getUser()) == null) {
                        arrayList2.add(((TIMGroupMemberInfo) memberInfoList.get(i2)).getUser());
                    }
                }
                if (arrayList.size() == i) {
                    conversationInfo.setIconUrlList(arrayList);
                    ConversationManagerKit.this.mProvider.updateAdapter();
                    return;
                }
                TIMFriendshipManager.getInstance().getUsersProfile(arrayList2, false, new TIMValueCallBack<List<TIMUserProfile>>() {
                    public void onError(int i, String str) {
                        String access$000 = ConversationManagerKit.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("getUsersProfile failed! code: ");
                        sb.append(i);
                        sb.append(" desc: ");
                        sb.append(str);
                        TUIKitLog.e(access$000, sb.toString());
                    }

                    public void onSuccess(List<TIMUserProfile> list) {
                        if (list != null && list.size() != 0) {
                            conversationInfo.setIconUrlList(arrayList);
                            ConversationManagerKit.this.mProvider.updateAdapter();
                        }
                    }
                });
            }
        });
    }

    private void groupSystMsgHandle(TIMGroupSystemElem tIMGroupSystemElem) {
        TIMGroupSystemElemType subtype = tIMGroupSystemElem.getSubtype();
        if (subtype == TIMGroupSystemElemType.TIM_GROUP_SYSTEM_KICK_OFF_FROM_GROUP_TYPE || subtype == TIMGroupSystemElemType.TIM_GROUP_SYSTEM_DELETE_GROUP_TYPE) {
            deleteConversation(tIMGroupSystemElem.getGroupId(), true);
        }
    }

    public void setConversationTop(int i, ConversationInfo conversationInfo) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("setConversationTop index:");
        sb.append(i);
        sb.append("|conversation:");
        sb.append(conversationInfo);
        TUIKitLog.i(str, sb.toString());
        if (!conversationInfo.isTop()) {
            this.mTopLinkedList.remove(conversationInfo);
            this.mTopLinkedList.addFirst(conversationInfo);
            conversationInfo.setTop(true);
        } else {
            conversationInfo.setTop(false);
            this.mTopLinkedList.remove(conversationInfo);
        }
        ConversationProvider conversationProvider = this.mProvider;
        conversationProvider.setDataSource(sortConversations(conversationProvider.getDataSource()));
        SharedPreferenceUtils.putListData(this.mConversationPreferences, TOP_LIST, this.mTopLinkedList);
    }

    public void setConversationTop(String str, boolean z) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("setConversationTop id:");
        sb.append(str);
        sb.append("|flag:");
        sb.append(z);
        TUIKitLog.i(str2, sb.toString());
        handleTopData(str, z);
        ConversationProvider conversationProvider = this.mProvider;
        conversationProvider.setDataSource(sortConversations(conversationProvider.getDataSource()));
        SharedPreferenceUtils.putListData(this.mConversationPreferences, TOP_LIST, this.mTopLinkedList);
    }

    private boolean isTop(String str) {
        LinkedList<ConversationInfo> linkedList = this.mTopLinkedList;
        if (!(linkedList == null || linkedList.size() == 0)) {
            Iterator it = this.mTopLinkedList.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(((ConversationInfo) it.next()).getId(), str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void handleTopData(String str, boolean z) {
        ConversationInfo conversationInfo;
        List dataSource = this.mProvider.getDataSource();
        int i = 0;
        while (true) {
            if (i >= dataSource.size()) {
                conversationInfo = null;
                break;
            }
            conversationInfo = (ConversationInfo) dataSource.get(i);
            if (conversationInfo.getId().equals(str)) {
                break;
            }
            i++;
        }
        if (conversationInfo != null) {
            if (!z) {
                if (isTop(conversationInfo.getId())) {
                    conversationInfo.setTop(false);
                    this.mTopLinkedList.remove(conversationInfo);
                }
            } else if (!isTop(conversationInfo.getId())) {
                this.mTopLinkedList.remove(conversationInfo);
                this.mTopLinkedList.addFirst(conversationInfo);
                conversationInfo.setTop(true);
            } else {
                return;
            }
            SharedPreferenceUtils.putListData(this.mConversationPreferences, TOP_LIST, this.mTopLinkedList);
        }
    }

    public void deleteConversation(int i, ConversationInfo conversationInfo) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("deleteConversation index:");
        sb.append(i);
        sb.append("|conversation:");
        sb.append(conversationInfo);
        TUIKitLog.i(str, sb.toString());
        if (TIMManager.getInstance().deleteConversation(conversationInfo.isGroup() ? TIMConversationType.Group : TIMConversationType.C2C, conversationInfo.getId())) {
            handleTopData(conversationInfo.getId(), false);
            this.mProvider.deleteConversation(i);
            updateUnreadTotal(this.mUnreadTotal - conversationInfo.getUnRead());
        }
    }

    public void deleteConversation(String str, boolean z) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("deleteConversation id:");
        sb.append(str);
        sb.append("|isGroup:");
        sb.append(z);
        TUIKitLog.i(str2, sb.toString());
        int i = 0;
        handleTopData(str, false);
        List dataSource = this.mProvider.getDataSource();
        while (true) {
            if (i >= dataSource.size()) {
                break;
            }
            ConversationInfo conversationInfo = (ConversationInfo) dataSource.get(i);
            if (conversationInfo.getId().equals(str)) {
                updateUnreadTotal(this.mUnreadTotal - conversationInfo.getUnRead());
                break;
            }
            i++;
        }
        ConversationProvider conversationProvider = this.mProvider;
        if (conversationProvider != null) {
            conversationProvider.deleteConversation(str);
        }
        TIMManager.getInstance().deleteConversation(z ? TIMConversationType.Group : TIMConversationType.C2C, str);
    }

    public boolean addConversation(ConversationInfo conversationInfo) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(conversationInfo);
        return this.mProvider.addConversations(arrayList);
    }

    private List<ConversationInfo> sortConversations(List<ConversationInfo> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i <= list.size() - 1; i++) {
            ConversationInfo conversationInfo = (ConversationInfo) list.get(i);
            if (isTop(conversationInfo.getId())) {
                conversationInfo.setTop(true);
                arrayList3.add(conversationInfo);
            } else {
                arrayList2.add(conversationInfo);
            }
        }
        this.mTopLinkedList.clear();
        this.mTopLinkedList.addAll(arrayList3);
        Collections.sort(arrayList3);
        arrayList.addAll(arrayList3);
        Collections.sort(arrayList2);
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public void updateUnreadTotal(int i) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("updateUnreadTotal:");
        sb.append(i);
        TUIKitLog.i(str, sb.toString());
        this.mUnreadTotal = i;
        for (int i2 = 0; i2 < this.mUnreadWatchers.size(); i2++) {
            ((MessageUnreadWatcher) this.mUnreadWatchers.get(i2)).updateUnread(this.mUnreadTotal);
        }
    }

    public boolean isTopConversation(String str) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("isTopConversation:");
        sb.append(str);
        TUIKitLog.i(str2, sb.toString());
        return isTop(str);
    }

    public void handleInvoke(TIMMessageLocator tIMMessageLocator) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("handleInvoke:");
        sb.append(tIMMessageLocator);
        TUIKitLog.i(str, sb.toString());
        if (this.mProvider != null) {
            loadConversation(null);
        }
    }

    public void addUnreadWatcher(MessageUnreadWatcher messageUnreadWatcher) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("addUnreadWatcher:");
        sb.append(messageUnreadWatcher);
        TUIKitLog.i(str, sb.toString());
        if (!this.mUnreadWatchers.contains(messageUnreadWatcher)) {
            this.mUnreadWatchers.add(messageUnreadWatcher);
        }
    }

    public void destroyConversation() {
        TUIKitLog.i(TAG, "destroyConversation");
        List<MessageUnreadWatcher> list = this.mUnreadWatchers;
        if (list != null) {
            list.clear();
        }
        this.mUnreadTotal = 0;
    }
}
