package com.tencent.imsdk.group;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMGroupEventListener;
import com.tencent.imsdk.TIMGroupManager.CreateGroupParam;
import com.tencent.imsdk.TIMGroupManager.DeleteMemberParam;
import com.tencent.imsdk.TIMGroupManager.ModifyGroupInfoParam;
import com.tencent.imsdk.TIMGroupManager.ModifyMemberInfoParam;
import com.tencent.imsdk.TIMGroupMemberInfo;
import com.tencent.imsdk.TIMGroupTipsElem;
import com.tencent.imsdk.TIMGroupTipsElemGroupInfo;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.common.ICallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.ext.group.TIMGroupBaseInfo;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfo;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfoResult;
import com.tencent.imsdk.ext.group.TIMGroupMemberResult;
import com.tencent.imsdk.ext.group.TIMGroupMemberRoleFilter;
import com.tencent.imsdk.ext.group.TIMGroupMemberSucc;
import com.tencent.imsdk.ext.group.TIMGroupPendencyGetParam;
import com.tencent.imsdk.ext.group.TIMGroupPendencyGetType;
import com.tencent.imsdk.ext.group.TIMGroupPendencyHandledStatus;
import com.tencent.imsdk.ext.group.TIMGroupPendencyItem;
import com.tencent.imsdk.ext.group.TIMGroupPendencyListGetSucc;
import com.tencent.imsdk.ext.group.TIMGroupPendencyOperationType;
import com.tencent.imsdk.log.QLog;
import java.util.List;

public class GroupBaseManager {
    private static final String TAG = "BaseGroupManager";
    private static final GroupBaseManager instance = new GroupBaseManager();

    private GroupBaseManager() {
    }

    public static GroupBaseManager getInstance() {
        return instance;
    }

    public void createGroup(CreateGroupParam createGroupParam, TIMValueCallBack tIMValueCallBack) {
        GroupNativeManager.nativeCreateGroup(createGroupParam.getGroupType(), createGroupParam.getGroupId(), createGroupParam.getGroupName(), createGroupParam.getNotification(), createGroupParam.getIntroduction(), createGroupParam.getFaceUrl(), createGroupParam.getAddOption() == null ? -1 : createGroupParam.getAddOption().getValue(), createGroupParam.getMaxMemberNum(), createGroupParam.getMembers(), createGroupParam.getCustomInfo(), new ICallback<String>(tIMValueCallBack) {
            public void done(String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("createGroup success, groupid: ");
                sb.append(str);
                QLog.i("TAG", sb.toString());
                super.done(str);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("createGroup fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i("TAG", sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void deleteGroup(String str, TIMCallBack tIMCallBack) {
        GroupNativeManager.nativeDeleteGroup(str, new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i("TAG", "deleteGroup success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("deleteGroup fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i("TAG", sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void applyJoinGroup(@NonNull String str, String str2, @NonNull TIMCallBack tIMCallBack) {
        GroupNativeManager.nativeJoinGroup(str, str2, new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i("TAG", "applyJoinGroup success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("applyJoinGroup fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i("TAG", sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void quitGroup(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        GroupNativeManager.nativeQuitGroup(str, new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i("TAG", "quitGroup success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("quitGroup fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i("TAG", sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void deleteGroupMember(DeleteMemberParam deleteMemberParam, TIMValueCallBack<List<TIMGroupMemberResult>> tIMValueCallBack) {
        if (!(tIMValueCallBack == null || deleteMemberParam == null || !deleteMemberParam.isValid())) {
            GroupNativeManager.nativeDeleteGroupMember(deleteMemberParam.getGroupId(), deleteMemberParam.getMembers(), deleteMemberParam.getReason(), new ICallback<List<TIMGroupMemberResult>>(tIMValueCallBack) {
                public void done(List<TIMGroupMemberResult> list) {
                    QLog.i("TAG", "deleteGroupMember success");
                    super.done(list);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("deleteGroupMember fail: ");
                    sb.append(i);
                    sb.append(":");
                    sb.append(str);
                    QLog.i(GroupBaseManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void inviteGroupMember(@NonNull String str, @NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupMemberResult>> tIMValueCallBack) {
        GroupNativeManager.nativeInviteGroupMember(str, list, "", new ICallback<List<TIMGroupMemberResult>>(tIMValueCallBack) {
            public void done(List<TIMGroupMemberResult> list) {
                QLog.i(GroupBaseManager.TAG, "inviteGroupMember success");
                super.done(list);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("inviteGroupMember fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void getGroupList(@NonNull TIMValueCallBack<List<TIMGroupBaseInfo>> tIMValueCallBack) {
        GroupNativeManager.nativeGetJoinedGroups(new ICallback<List<TIMGroupBaseInfo>>(tIMValueCallBack) {
            public void done(List<TIMGroupBaseInfo> list) {
                QLog.i(GroupBaseManager.TAG, "getJoinedGroup success");
                super.done(list);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("getJoinedGroup fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void modifyGroupInfo(@NonNull ModifyGroupInfoParam modifyGroupInfoParam, @NonNull TIMCallBack tIMCallBack) {
        TIMCallBack tIMCallBack2 = tIMCallBack;
        String str = TAG;
        if (tIMCallBack2 == null) {
            QLog.e(str, "modifyGroupInfo ignore, callback is null");
        } else if (modifyGroupInfoParam == null || !modifyGroupInfoParam.isValid()) {
            QLog.e(str, "modifyGroupInfo param is null or invalid");
        } else {
            GroupNativeManager.nativeSetGroupInfo(modifyGroupInfoParam.getFlags(), modifyGroupInfoParam.getGroupId(), modifyGroupInfoParam.getGroupName(), modifyGroupInfoParam.getNotification(), modifyGroupInfoParam.getIntroduction(), modifyGroupInfoParam.getFaceUrl(), modifyGroupInfoParam.getAddOption().getValue(), modifyGroupInfoParam.getMaxMemberNum(), modifyGroupInfoParam.isVisable(), modifyGroupInfoParam.isSearchable(), modifyGroupInfoParam.isSilenceAll(), modifyGroupInfoParam.getCustomInfo(), new ICallback(tIMCallBack2) {
                public void done(Object obj) {
                    QLog.i(GroupBaseManager.TAG, "modifyGroupInfo success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("modifyGroupInfo fail: ");
                    sb.append(i);
                    sb.append(":");
                    sb.append(str);
                    QLog.e(GroupBaseManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void modifyGroupOwner(@NonNull String str, @NonNull String str2, @NonNull TIMCallBack tIMCallBack) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            QLog.e(TAG, "modifyGroupOwner, group id or identifier is empty!");
        } else {
            GroupNativeManager.nativeModifyGroupOwner(str, str2, new ICallback(tIMCallBack) {
                public void done(Object obj) {
                    QLog.i(GroupBaseManager.TAG, "modifyGroupOwner success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("modifyGroupOwner fail: ");
                    sb.append(i);
                    sb.append(":");
                    sb.append(str);
                    QLog.e(GroupBaseManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void getGroupInfo(@NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupDetailInfoResult>> tIMValueCallBack) {
        String str = TAG;
        if (list == null || list.size() == 0) {
            QLog.e(str, "getGroupDetailInfo fail: groupIdList is empty");
        } else if (tIMValueCallBack == null) {
            QLog.e(str, "getGroupDetailInfo fail: callback is null");
        } else {
            GroupNativeManager.nativeGetGroupsInfo(list, new ICallback<List<TIMGroupDetailInfoResult>>(tIMValueCallBack) {
                public void done(List<TIMGroupDetailInfoResult> list) {
                    QLog.i(GroupBaseManager.TAG, "nativeGetGroupsInfo success");
                    super.done(list);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("nativeGetGroupsInfo fail: ");
                    sb.append(i);
                    sb.append(":");
                    sb.append(str);
                    QLog.e(GroupBaseManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public TIMGroupDetailInfo queryGroupInfo(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            return GroupNativeManager.nativeQueryGroupInfo(str);
        }
        QLog.e(TAG, "queryGroupInfo, groupId is empty");
        return null;
    }

    public void modifyMemberInfo(@NonNull ModifyMemberInfoParam modifyMemberInfoParam, @NonNull TIMCallBack tIMCallBack) {
        GroupNativeManager.nativeSetGroupMemberInfo(modifyMemberInfoParam.getFlags(), modifyMemberInfoParam.getGroupId(), modifyMemberInfoParam.getIdentifier(), modifyMemberInfoParam.getNameCard(), modifyMemberInfoParam.getReceiveMessageOpt().getValue(), (long) modifyMemberInfoParam.getRoleType(), modifyMemberInfoParam.getSilence(), modifyMemberInfoParam.getCustomInfo(), new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(GroupBaseManager.TAG, "modifyMemberInfo success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("modifyMemberInfo fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void getGroupMembers(@NonNull String str, @NonNull TIMValueCallBack<List<TIMGroupMemberInfo>> tIMValueCallBack) {
        GroupNativeManager.nativeGetGroupMembers(str, new ICallback<List<TIMGroupMemberInfo>>(tIMValueCallBack) {
            public void done(List<TIMGroupMemberInfo> list) {
                QLog.i(GroupBaseManager.TAG, "getGroupMembers success");
                super.done(list);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("getGroupMembers fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void getGroupMembersInfo(@NonNull String str, @NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupMemberInfo>> tIMValueCallBack) {
        GroupNativeManager.nativeGetGroupMembersInfo(str, list, new ICallback<List<TIMGroupMemberInfo>>(tIMValueCallBack) {
            public void done(List<TIMGroupMemberInfo> list) {
                QLog.i(GroupBaseManager.TAG, "getGroupMembersInfo success");
                super.done(list);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("getGroupMembers fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void getGroupSelfInfo(@NonNull String str, @NonNull String str2, @NonNull TIMValueCallBack<TIMGroupMemberInfo> tIMValueCallBack) {
        GroupNativeManager.nativeGetGroupSelfInfo(str, str2, new ICallback<TIMGroupMemberInfo>(tIMValueCallBack) {
            public void done(TIMGroupMemberInfo tIMGroupMemberInfo) {
                QLog.i(GroupBaseManager.TAG, "getGroupSelfInfo success");
                super.done(tIMGroupMemberInfo);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("getGroupSelfInfo fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void getGroupPendencyList(@NonNull TIMGroupPendencyGetParam tIMGroupPendencyGetParam, @NonNull TIMValueCallBack<TIMGroupPendencyListGetSucc> tIMValueCallBack) {
        GroupNativeManager.nativeGetGroupPendencies(tIMGroupPendencyGetParam.getTimestamp(), tIMGroupPendencyGetParam.getNumPerPage(), new ICallback<TIMGroupPendencyListGetSucc>(tIMValueCallBack) {
            public void done(TIMGroupPendencyListGetSucc tIMGroupPendencyListGetSucc) {
                QLog.i(GroupBaseManager.TAG, "getGroupPendencyList success");
                super.done(tIMGroupPendencyListGetSucc);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("getGroupPendencyList fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void reportGroupPendency(long j, @NonNull TIMCallBack tIMCallBack) {
        GroupNativeManager.nativeReportGroupPendencies(j, new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(GroupBaseManager.TAG, "reportGroupPendency success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("reportGroupPendency fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void acceptPendency(@NonNull TIMGroupPendencyItem tIMGroupPendencyItem, String str, @NonNull TIMCallBack tIMCallBack) {
        tIMGroupPendencyItem.setHandledMsg(str);
        String groupId = tIMGroupPendencyItem.getGroupId();
        String fromUser = tIMGroupPendencyItem.getFromUser();
        String toUser = tIMGroupPendencyItem.getToUser();
        long addTime = tIMGroupPendencyItem.getAddTime();
        long value = (tIMGroupPendencyItem.getPendencyType() == null ? TIMGroupPendencyGetType.APPLY_BY_SELF : tIMGroupPendencyItem.getPendencyType()).getValue();
        long value2 = (tIMGroupPendencyItem.getOperationType() == null ? TIMGroupPendencyOperationType.REFUSE : tIMGroupPendencyItem.getOperationType()).getValue();
        long value3 = (tIMGroupPendencyItem.getHandledStatus() == null ? TIMGroupPendencyHandledStatus.NOT_HANDLED : tIMGroupPendencyItem.getHandledStatus()).getValue();
        String requestMsg = tIMGroupPendencyItem.getRequestMsg();
        String requestUserData = tIMGroupPendencyItem.getRequestUserData();
        String handledMsg = tIMGroupPendencyItem.getHandledMsg();
        String handledUserData = tIMGroupPendencyItem.getHandledUserData();
        String str2 = tIMGroupPendencyItem.getKey() == null ? null : new String(tIMGroupPendencyItem.getKey());
        String str3 = tIMGroupPendencyItem.getAuth() == null ? null : new String(tIMGroupPendencyItem.getAuth());
        String identifer = tIMGroupPendencyItem.getIdentifer();
        String handledMsg2 = tIMGroupPendencyItem.getHandledMsg();
        AnonymousClass17 r23 = r1;
        AnonymousClass17 r1 = new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(GroupBaseManager.TAG, "acceptPendency success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("acceptPendency fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        };
        GroupNativeManager.nativeAcceptPendency(groupId, -1, fromUser, -1, toUser, addTime, value, value2, value3, requestMsg, requestUserData, handledMsg, handledUserData, str2, str3, identifer, handledMsg2, r23);
    }

    public void refusePendency(TIMGroupPendencyItem tIMGroupPendencyItem, String str, @NonNull TIMCallBack tIMCallBack) {
        tIMGroupPendencyItem.setHandledMsg(str);
        String groupId = tIMGroupPendencyItem.getGroupId();
        String fromUser = tIMGroupPendencyItem.getFromUser();
        String toUser = tIMGroupPendencyItem.getToUser();
        long addTime = tIMGroupPendencyItem.getAddTime();
        long value = (tIMGroupPendencyItem.getPendencyType() == null ? TIMGroupPendencyGetType.APPLY_BY_SELF : tIMGroupPendencyItem.getPendencyType()).getValue();
        long value2 = (tIMGroupPendencyItem.getOperationType() == null ? TIMGroupPendencyOperationType.REFUSE : tIMGroupPendencyItem.getOperationType()).getValue();
        long value3 = (tIMGroupPendencyItem.getHandledStatus() == null ? TIMGroupPendencyHandledStatus.NOT_HANDLED : tIMGroupPendencyItem.getHandledStatus()).getValue();
        String requestMsg = tIMGroupPendencyItem.getRequestMsg();
        String requestUserData = tIMGroupPendencyItem.getRequestUserData();
        String handledMsg = tIMGroupPendencyItem.getHandledMsg();
        String handledUserData = tIMGroupPendencyItem.getHandledUserData();
        String str2 = tIMGroupPendencyItem.getKey() == null ? null : new String(tIMGroupPendencyItem.getKey());
        String str3 = tIMGroupPendencyItem.getAuth() == null ? null : new String(tIMGroupPendencyItem.getAuth());
        String identifer = tIMGroupPendencyItem.getIdentifer();
        String handledMsg2 = tIMGroupPendencyItem.getHandledMsg();
        AnonymousClass18 r23 = r1;
        AnonymousClass18 r1 = new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(GroupBaseManager.TAG, "refusePendency success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("refusePendency fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(GroupBaseManager.TAG, sb.toString());
                super.fail(i, str);
            }
        };
        GroupNativeManager.nativeRefusePendency(groupId, -1, fromUser, -1, toUser, addTime, value, value2, value3, requestMsg, requestUserData, handledMsg, handledUserData, str2, str3, identifer, handledMsg2, r23);
    }

    public void getGroupMembersByFilter(@NonNull String str, long j, @NonNull TIMGroupMemberRoleFilter tIMGroupMemberRoleFilter, List<String> list, long j2, TIMValueCallBack<TIMGroupMemberSucc> tIMValueCallBack) {
        long j3 = j;
        TIMGroupMemberRoleFilter tIMGroupMemberRoleFilter2 = tIMGroupMemberRoleFilter;
        TIMValueCallBack<TIMGroupMemberSucc> tIMValueCallBack2 = tIMValueCallBack;
        if (tIMValueCallBack2 != null) {
            if (TextUtils.isEmpty(str) || j3 == 0 || tIMGroupMemberRoleFilter2 == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("invalid param, groupId: ");
                String str2 = str;
                sb.append(str);
                sb.append("|flags: ");
                sb.append(j);
                sb.append("|filter: ");
                sb.append(tIMGroupMemberRoleFilter);
                QLog.e(TAG, sb.toString());
                tIMValueCallBack2.onError(BaseConstants.ERR_INVALID_PARAMETERS, "invalid params");
                return;
            }
            GroupNativeManager.nativeGetGroupMembersByFilter(str, j, tIMGroupMemberRoleFilter.value(), list, j2, new ICallback<TIMGroupMemberSucc>(tIMValueCallBack2) {
                public void done(TIMGroupMemberSucc tIMGroupMemberSucc) {
                    QLog.i(GroupBaseManager.TAG, "nativeGetGroupMembersByFilter success");
                    super.done(tIMGroupMemberSucc);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("nativeGetGroupMembersByFilter err = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(GroupBaseManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public static void initGroupModule() {
        GroupNativeManager.nativeInitGroupModule();
        GroupNativeManager.nativeSetGroupListener(new GroupListener() {
            public void onGroupAdd(TIMGroupDetailInfo tIMGroupDetailInfo) {
            }

            public void onGroupDelete(String str) {
            }

            public void onGroupUpdate(String str, TIMGroupTipsElemGroupInfo tIMGroupTipsElemGroupInfo) {
            }

            public void onMemberQuit(String str, List<TIMGroupMemberInfo> list) {
            }

            public void onMemberUpdate(String str, List<TIMGroupMemberInfo> list) {
            }

            public void onMemeberJoin(String str, List<TIMGroupMemberInfo> list) {
            }

            public void onGroupTipsEvent(final TIMGroupTipsElem tIMGroupTipsElem) {
                final TIMGroupEventListener groupEventListener = TIMManager.getInstance().getUserConfig().getGroupEventListener();
                if (groupEventListener != null) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            groupEventListener.onGroupTipsEvent(tIMGroupTipsElem);
                        }
                    });
                } else {
                    QLog.i(GroupBaseManager.TAG, "no group event listener found");
                }
            }
        });
    }
}
