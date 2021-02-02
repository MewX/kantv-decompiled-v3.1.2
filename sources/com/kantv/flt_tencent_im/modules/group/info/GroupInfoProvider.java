package com.kantv.flt_tencent_im.modules.group.info;

import android.text.TextUtils;
import com.kantv.flt_tencent_im.base.IUIKitCallBack;
import com.kantv.flt_tencent_im.modules.chat.GroupChatManagerKit;
import com.kantv.flt_tencent_im.modules.conversation.ConversationManagerKit;
import com.kantv.flt_tencent_im.modules.group.apply.GroupApplyInfo;
import com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo;
import com.kantv.flt_tencent_im.utils.TUIKitLog;
import com.kantv.flt_tencent_im.utils.ToastUtil;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMGroupAddOpt;
import com.tencent.imsdk.TIMGroupManager;
import com.tencent.imsdk.TIMGroupManager.DeleteMemberParam;
import com.tencent.imsdk.TIMGroupManager.ModifyGroupInfoParam;
import com.tencent.imsdk.TIMGroupManager.ModifyMemberInfoParam;
import com.tencent.imsdk.TIMGroupMemberInfo;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfoResult;
import com.tencent.imsdk.ext.group.TIMGroupMemberResult;
import com.tencent.imsdk.ext.group.TIMGroupPendencyGetParam;
import com.tencent.imsdk.ext.group.TIMGroupPendencyHandledStatus;
import com.tencent.imsdk.ext.group.TIMGroupPendencyItem;
import com.tencent.imsdk.ext.group.TIMGroupPendencyListGetSucc;
import java.util.ArrayList;
import java.util.List;

public class GroupInfoProvider {
    private static final int PAGE = 50;
    /* access modifiers changed from: private */
    public static final String TAG = "GroupInfoProvider";
    /* access modifiers changed from: private */
    public List<GroupApplyInfo> mApplyList = new ArrayList();
    /* access modifiers changed from: private */
    public GroupInfo mGroupInfo;
    /* access modifiers changed from: private */
    public List<GroupMemberInfo> mGroupMembers = new ArrayList();
    /* access modifiers changed from: private */
    public long mPendencyTime;
    private GroupMemberInfo mSelfInfo;

    /* access modifiers changed from: private */
    public void reset() {
        this.mGroupInfo = new GroupInfo();
        this.mGroupMembers = new ArrayList();
        this.mSelfInfo = null;
        this.mPendencyTime = 0;
    }

    public void loadGroupInfo(GroupInfo groupInfo) {
        this.mGroupInfo = groupInfo;
        this.mGroupMembers = groupInfo.getMemberDetails();
    }

    public void loadGroupInfo(final String str, final IUIKitCallBack iUIKitCallBack) {
        reset();
        loadGroupPublicInfo(str, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                GroupInfoProvider.this.mGroupInfo.covertTIMGroupDetailInfo((TIMGroupDetailInfoResult) obj);
                GroupInfoProvider.this.mGroupInfo.setTopChat(ConversationManagerKit.getInstance().isTopConversation(str));
                GroupInfoProvider groupInfoProvider = GroupInfoProvider.this;
                groupInfoProvider.loadGroupMembers(groupInfoProvider.mGroupInfo, iUIKitCallBack);
            }

            public void onError(String str, int i, String str2) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("loadGroupPublicInfo failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str2);
                TUIKitLog.e(access$100, sb.toString());
                IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                if (iUIKitCallBack != null) {
                    iUIKitCallBack.onError(str, i, str2);
                }
            }
        });
    }

    public void deleteGroup(final IUIKitCallBack iUIKitCallBack) {
        TIMGroupManager.getInstance().deleteGroup(this.mGroupInfo.getId(), new TIMCallBack() {
            public void onError(int i, String str) {
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("deleteGroup failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str);
                TUIKitLog.e(access$100, sb.toString());
            }

            public void onSuccess() {
                iUIKitCallBack.onSuccess(null);
                ConversationManagerKit.getInstance().deleteConversation(GroupInfoProvider.this.mGroupInfo.getId(), true);
                GroupChatManagerKit.getInstance().onGroupForceExit();
            }
        });
    }

    public void loadGroupPublicInfo(String str, final IUIKitCallBack iUIKitCallBack) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        TIMGroupManager.getInstance().getGroupInfo(arrayList, new TIMValueCallBack<List<TIMGroupDetailInfoResult>>() {
            public void onError(int i, String str) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("loadGroupPublicInfo failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str);
                TUIKitLog.e(access$100, sb.toString());
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
            }

            public void onSuccess(List<TIMGroupDetailInfoResult> list) {
                if (list.size() > 0) {
                    TIMGroupDetailInfoResult tIMGroupDetailInfoResult = (TIMGroupDetailInfoResult) list.get(0);
                    TUIKitLog.i(GroupInfoProvider.TAG, tIMGroupDetailInfoResult.toString());
                    iUIKitCallBack.onSuccess(tIMGroupDetailInfoResult);
                }
            }
        });
    }

    public void loadGroupMembers(final Object obj, final IUIKitCallBack iUIKitCallBack) {
        TIMGroupManager.getInstance().getGroupMembers(this.mGroupInfo.getId(), new TIMValueCallBack<List<TIMGroupMemberInfo>>() {
            public void onError(int i, String str) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("loadGroupMembers failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str);
                TUIKitLog.e(access$100, sb.toString());
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
            }

            public void onSuccess(List<TIMGroupMemberInfo> list) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < list.size(); i++) {
                    arrayList.add(new GroupMemberInfo().covertTIMGroupMemberInfo((TIMGroupMemberInfo) list.get(i)));
                }
                GroupInfoProvider.this.mGroupMembers = arrayList;
                GroupInfoProvider.this.mGroupInfo.setMemberDetails(GroupInfoProvider.this.mGroupMembers);
                GroupInfoProvider.this.loadGroupMembersDetail(0, new IUIKitCallBack() {
                    public void onSuccess(Object obj) {
                        iUIKitCallBack.onSuccess(obj);
                    }

                    public void onError(String str, int i, String str2) {
                        iUIKitCallBack.onError(str, i, str2);
                    }
                });
            }
        });
    }

    /* access modifiers changed from: private */
    public void loadGroupMembersDetail(final int i, final IUIKitCallBack iUIKitCallBack) {
        if (iUIKitCallBack != null) {
            ArrayList arrayList = new ArrayList();
            if (this.mGroupMembers.size() != 0) {
                final int i2 = i + 50;
                if (i2 > this.mGroupMembers.size()) {
                    i2 = this.mGroupMembers.size();
                }
                for (int i3 = i; i3 < i2; i3++) {
                    arrayList.add(((GroupMemberInfo) this.mGroupMembers.get(i3)).getAccount());
                }
                TIMGroupManager.getInstance().getGroupMembersInfo(this.mGroupInfo.getId(), arrayList, new TIMValueCallBack<List<TIMGroupMemberInfo>>() {
                    public void onError(int i, String str) {
                        String access$100 = GroupInfoProvider.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("getGroupMembersInfo failed, code: ");
                        sb.append(i);
                        sb.append("|desc: ");
                        sb.append(str);
                        TUIKitLog.e(access$100, sb.toString());
                        iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
                    }

                    public void onSuccess(List<TIMGroupMemberInfo> list) {
                        int i;
                        String access$100 = GroupInfoProvider.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("getGroupMembersInfo success: ");
                        sb.append(list.size());
                        TUIKitLog.i(access$100, sb.toString());
                        int i2 = i;
                        while (true) {
                            i = i2;
                            if (i2 >= i) {
                                break;
                            }
                            GroupMemberInfo groupMemberInfo = (GroupMemberInfo) GroupInfoProvider.this.mGroupMembers.get(i2);
                            int size = list.size() - 1;
                            while (true) {
                                if (size < 0) {
                                    break;
                                }
                                TIMGroupMemberInfo tIMGroupMemberInfo = (TIMGroupMemberInfo) list.get(size);
                                if (groupMemberInfo.getAccount().equals(tIMGroupMemberInfo.getUser())) {
                                    groupMemberInfo.setDetail(tIMGroupMemberInfo);
                                    list.remove(size);
                                    break;
                                }
                                size--;
                            }
                            i2++;
                        }
                        if (i < GroupInfoProvider.this.mGroupMembers.size()) {
                            GroupInfoProvider.this.loadGroupMembersDetail(i2, iUIKitCallBack);
                        } else {
                            iUIKitCallBack.onSuccess(null);
                        }
                    }
                });
            }
        }
    }

    public List<GroupMemberInfo> getGroupMembers() {
        return this.mGroupMembers;
    }

    public void modifyGroupInfo(final Object obj, final int i, final IUIKitCallBack iUIKitCallBack) {
        ModifyGroupInfoParam modifyGroupInfoParam = new ModifyGroupInfoParam(this.mGroupInfo.getId());
        if (i == 1) {
            modifyGroupInfoParam.setGroupName(obj.toString());
        } else if (i == 2) {
            modifyGroupInfoParam.setNotification(obj.toString());
        } else if (i == 3) {
            modifyGroupInfoParam.setAddOption(TIMGroupAddOpt.values()[((Integer) obj).intValue()]);
        }
        TIMGroupManager.getInstance().modifyGroupInfo(modifyGroupInfoParam, new TIMCallBack() {
            public void onError(int i, String str) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("modifyGroupInfo faild tyep| value| code| desc ");
                sb.append(obj);
                String str2 = ":";
                sb.append(str2);
                sb.append(i);
                sb.append(str2);
                sb.append(i);
                sb.append(str2);
                sb.append(str);
                TUIKitLog.i(access$100, sb.toString());
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
            }

            public void onSuccess() {
                int i = i;
                if (i == 1) {
                    GroupInfoProvider.this.mGroupInfo.setGroupName(obj.toString());
                } else if (i == 2) {
                    GroupInfoProvider.this.mGroupInfo.setNotice(obj.toString());
                } else if (i == 3) {
                    GroupInfoProvider.this.mGroupInfo.setJoinType(((Integer) obj).intValue());
                }
                iUIKitCallBack.onSuccess(obj);
            }
        });
    }

    public void modifyMyGroupNickname(String str, final IUIKitCallBack iUIKitCallBack) {
        if (this.mGroupInfo == null) {
            ToastUtil.toastLongMessage("modifyMyGroupNickname fail: NO GROUP");
        }
        ModifyMemberInfoParam modifyMemberInfoParam = new ModifyMemberInfoParam(this.mGroupInfo.getId(), TIMManager.getInstance().getLoginUser());
        modifyMemberInfoParam.setNameCard(str);
        TIMGroupManager.getInstance().modifyMemberInfo(modifyMemberInfoParam, new TIMCallBack() {
            public void onError(int i, String str) {
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
                StringBuilder sb = new StringBuilder();
                sb.append("modifyMyGroupNickname fail: ");
                sb.append(i);
                sb.append("=");
                sb.append(str);
                ToastUtil.toastLongMessage(sb.toString());
            }

            public void onSuccess() {
                iUIKitCallBack.onSuccess(null);
            }
        });
    }

    public GroupMemberInfo getSelfGroupInfo() {
        GroupMemberInfo groupMemberInfo = this.mSelfInfo;
        if (groupMemberInfo != null) {
            return groupMemberInfo;
        }
        for (int i = 0; i < this.mGroupMembers.size(); i++) {
            GroupMemberInfo groupMemberInfo2 = (GroupMemberInfo) this.mGroupMembers.get(i);
            if (TextUtils.equals(groupMemberInfo2.getAccount(), TIMManager.getInstance().getLoginUser())) {
                this.mSelfInfo = groupMemberInfo2;
                return groupMemberInfo2;
            }
        }
        return null;
    }

    public void setTopConversation(boolean z) {
        ConversationManagerKit.getInstance().setConversationTop(this.mGroupInfo.getId(), z);
    }

    public void quitGroup(final IUIKitCallBack iUIKitCallBack) {
        TIMGroupManager.getInstance().quitGroup(this.mGroupInfo.getId(), new TIMCallBack() {
            public void onError(int i, String str) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("quitGroup failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str);
                TUIKitLog.e(access$100, sb.toString());
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
            }

            public void onSuccess() {
                ConversationManagerKit.getInstance().deleteConversation(GroupInfoProvider.this.mGroupInfo.getId(), true);
                GroupChatManagerKit.getInstance().onGroupForceExit();
                iUIKitCallBack.onSuccess(null);
                GroupInfoProvider.this.reset();
            }
        });
    }

    public void inviteGroupMembers(List<String> list, final IUIKitCallBack iUIKitCallBack) {
        if (list != null && list.size() != 0) {
            TIMGroupManager.getInstance().inviteGroupMember(this.mGroupInfo.getId(), list, new TIMValueCallBack<List<TIMGroupMemberResult>>() {
                public void onError(int i, String str) {
                    String access$100 = GroupInfoProvider.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("addGroupMembers failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    TUIKitLog.e(access$100, sb.toString());
                    iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
                }

                public void onSuccess(List<TIMGroupMemberResult> list) {
                    ArrayList arrayList = new ArrayList();
                    if (list.size() > 0) {
                        for (int i = 0; i < list.size(); i++) {
                            TIMGroupMemberResult tIMGroupMemberResult = (TIMGroupMemberResult) list.get(i);
                            if (tIMGroupMemberResult.getResult() == 3) {
                                iUIKitCallBack.onSuccess("邀请成功，等待对方接受");
                                return;
                            }
                            if (tIMGroupMemberResult.getResult() > 0) {
                                arrayList.add(tIMGroupMemberResult.getUser());
                            }
                        }
                    }
                    if (arrayList.size() > 0) {
                        GroupInfoProvider.this.loadGroupMembers(arrayList, iUIKitCallBack);
                    }
                }
            });
        }
    }

    public void removeGroupMembers(List<GroupMemberInfo> list, final IUIKitCallBack iUIKitCallBack) {
        if (list != null && list.size() != 0) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                arrayList.add(((GroupMemberInfo) list.get(i)).getAccount());
            }
            TIMGroupManager.getInstance().deleteGroupMember(new DeleteMemberParam(this.mGroupInfo.getId(), arrayList), new TIMValueCallBack<List<TIMGroupMemberResult>>() {
                public void onError(int i, String str) {
                    String access$100 = GroupInfoProvider.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("removeGroupMembers failed, code: ");
                    sb.append(i);
                    sb.append("|desc: ");
                    sb.append(str);
                    TUIKitLog.e(access$100, sb.toString());
                    iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
                }

                public void onSuccess(List<TIMGroupMemberResult> list) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < list.size(); i++) {
                        TIMGroupMemberResult tIMGroupMemberResult = (TIMGroupMemberResult) list.get(i);
                        if (tIMGroupMemberResult.getResult() == 1) {
                            arrayList.add(tIMGroupMemberResult.getUser());
                        }
                    }
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        int size = GroupInfoProvider.this.mGroupMembers.size() - 1;
                        while (true) {
                            if (size < 0) {
                                break;
                            } else if (((GroupMemberInfo) GroupInfoProvider.this.mGroupMembers.get(size)).getAccount().equals(arrayList.get(i2))) {
                                GroupInfoProvider.this.mGroupMembers.remove(size);
                                break;
                            } else {
                                size--;
                            }
                        }
                    }
                    GroupInfoProvider.this.mGroupInfo.setMemberDetails(GroupInfoProvider.this.mGroupMembers);
                    iUIKitCallBack.onSuccess(arrayList);
                }
            });
        }
    }

    public List<GroupApplyInfo> getApplyList() {
        return this.mApplyList;
    }

    public void loadGroupApplies(final IUIKitCallBack iUIKitCallBack) {
        loadApplyInfo(new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                if (GroupInfoProvider.this.mGroupInfo == null) {
                    iUIKitCallBack.onError(GroupInfoProvider.TAG, 0, "no groupInfo");
                    return;
                }
                String id = GroupInfoProvider.this.mGroupInfo.getId();
                List list = (List) obj;
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < list.size(); i++) {
                    GroupApplyInfo groupApplyInfo = (GroupApplyInfo) list.get(i);
                    if (id.equals(groupApplyInfo.getPendencyItem().getGroupId()) && groupApplyInfo.getPendencyItem().getHandledStatus() == TIMGroupPendencyHandledStatus.NOT_HANDLED) {
                        arrayList.add(groupApplyInfo);
                    }
                }
                GroupInfoProvider.this.mApplyList = arrayList;
                iUIKitCallBack.onSuccess(arrayList);
            }

            public void onError(String str, int i, String str2) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("loadApplyInfo failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str2);
                TUIKitLog.e(access$100, sb.toString());
                iUIKitCallBack.onError(str, i, str2);
            }
        });
    }

    private void loadApplyInfo(final IUIKitCallBack iUIKitCallBack) {
        final ArrayList arrayList = new ArrayList();
        TIMGroupPendencyGetParam tIMGroupPendencyGetParam = new TIMGroupPendencyGetParam();
        tIMGroupPendencyGetParam.setTimestamp(this.mPendencyTime);
        TIMGroupManager.getInstance().getGroupPendencyList(tIMGroupPendencyGetParam, new TIMValueCallBack<TIMGroupPendencyListGetSucc>() {
            public void onError(int i, String str) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("getGroupPendencyList failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str);
                TUIKitLog.e(access$100, sb.toString());
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
            }

            public void onSuccess(TIMGroupPendencyListGetSucc tIMGroupPendencyListGetSucc) {
                GroupInfoProvider.this.mPendencyTime = tIMGroupPendencyListGetSucc.getMeta().getNextStartTimestamp();
                List pendencies = tIMGroupPendencyListGetSucc.getPendencies();
                for (int i = 0; i < pendencies.size(); i++) {
                    GroupApplyInfo groupApplyInfo = new GroupApplyInfo((TIMGroupPendencyItem) pendencies.get(i));
                    groupApplyInfo.setStatus(0);
                    arrayList.add(groupApplyInfo);
                }
                iUIKitCallBack.onSuccess(arrayList);
            }
        });
    }

    public void acceptApply(final GroupApplyInfo groupApplyInfo, final IUIKitCallBack iUIKitCallBack) {
        groupApplyInfo.getPendencyItem().accept("", new TIMCallBack() {
            public void onError(int i, String str) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("acceptApply failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str);
                TUIKitLog.e(access$100, sb.toString());
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
            }

            public void onSuccess() {
                groupApplyInfo.setStatus(1);
                iUIKitCallBack.onSuccess(null);
            }
        });
    }

    public void refuseApply(final GroupApplyInfo groupApplyInfo, final IUIKitCallBack iUIKitCallBack) {
        groupApplyInfo.getPendencyItem().refuse("", new TIMCallBack() {
            public void onError(int i, String str) {
                String access$100 = GroupInfoProvider.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("refuseApply failed, code: ");
                sb.append(i);
                sb.append("|desc: ");
                sb.append(str);
                TUIKitLog.e(access$100, sb.toString());
                iUIKitCallBack.onError(GroupInfoProvider.TAG, i, str);
            }

            public void onSuccess() {
                groupApplyInfo.setStatus(-1);
                iUIKitCallBack.onSuccess(null);
            }
        });
    }
}
