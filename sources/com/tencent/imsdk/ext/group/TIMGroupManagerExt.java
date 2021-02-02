package com.tencent.imsdk.ext.group;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMGroupAddOpt;
import com.tencent.imsdk.TIMGroupMemberInfo;
import com.tencent.imsdk.TIMGroupReceiveMessageOpt;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.common.ICallback;
import com.tencent.imsdk.group.GroupBaseManager;
import com.tencent.imsdk.group.GroupNativeManager;
import com.tencent.imsdk.log.QLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TIMGroupManagerExt {
    private static final String TAG = "TIMGroupManagerExt";
    private static final TIMGroupManagerExt instance = new TIMGroupManagerExt();
    private GroupBaseManager groupBaseManager = GroupBaseManager.getInstance();

    @Deprecated
    public static class DeleteMemberParam {
        private String groupId;
        private List<String> members = new ArrayList();
        private String reason;

        public DeleteMemberParam(@NonNull String str, @NonNull List<String> list) {
            String str2 = "";
            this.groupId = str2;
            this.reason = str2;
            this.groupId = str;
            this.members = list;
        }

        public String getGroupId() {
            return this.groupId;
        }

        public List<String> getMembers() {
            return this.members;
        }

        public String getReason() {
            return this.reason;
        }

        public DeleteMemberParam setReason(@NonNull String str) {
            if (str == null) {
                return this;
            }
            this.reason = str;
            return this;
        }

        public boolean isValid() {
            if (!TextUtils.isEmpty(this.groupId)) {
                List<String> list = this.members;
                if (list != null && !list.isEmpty()) {
                    return true;
                }
            }
            return false;
        }
    }

    private enum GroupModifyOpType {
        Invalid(0),
        Name(1),
        Brief(2),
        Option(3),
        Notice(4),
        Icon(5);
        
        int value;

        private GroupModifyOpType(int i) {
            this.value = 0;
            this.value = i;
        }

        /* access modifiers changed from: 0000 */
        public int getValue() {
            return this.value;
        }
    }

    private enum MemberModifyOpType {
        RecvMsgOpt(1),
        Role(2),
        Silence(3),
        NameCard(4);
        
        private long type;

        private MemberModifyOpType(long j) {
            this.type = j;
        }

        /* access modifiers changed from: 0000 */
        public long getValue() {
            return this.type;
        }

        /* access modifiers changed from: 0000 */
        public long getBitmap() {
            return (long) (1 << ((int) (this.type - 1)));
        }
    }

    @Deprecated
    public static class ModifyGroupInfoParam {
        private TIMGroupAddOpt addOption = TIMGroupAddOpt.TIM_GROUP_ADD_ANY;
        Map<String, byte[]> customInfo = new HashMap();
        private String faceUrl;
        private long flags = 0;
        private String groupId;
        private String groupName;
        private String introduction;
        private boolean isSearchable = true;
        private boolean isSilenceAll = false;
        private boolean isVisable = true;
        private long maxMemberNum = 0;
        private String notification;

        public ModifyGroupInfoParam(@NonNull String str) {
            String str2 = "";
            this.groupId = str2;
            this.groupName = str2;
            this.notification = str2;
            this.introduction = str2;
            this.faceUrl = str2;
            this.groupId = str;
        }

        public String getGroupName() {
            return this.groupName;
        }

        public ModifyGroupInfoParam setGroupName(@NonNull String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            this.groupName = str;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupName.swigValue();
            return this;
        }

        public String getGroupId() {
            return this.groupId;
        }

        public String getNotification() {
            return this.notification;
        }

        public ModifyGroupInfoParam setNotification(@NonNull String str) {
            if (str == null) {
                return this;
            }
            this.notification = str;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupNotification.swigValue();
            return this;
        }

        public String getIntroduction() {
            return this.introduction;
        }

        public ModifyGroupInfoParam setIntroduction(@NonNull String str) {
            if (str == null) {
                return this;
            }
            this.introduction = str;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupIntroduction.swigValue();
            return this;
        }

        public String getFaceUrl() {
            return this.faceUrl;
        }

        public ModifyGroupInfoParam setFaceUrl(@NonNull String str) {
            if (str == null) {
                return this;
            }
            this.faceUrl = str;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupFaceUrl.swigValue();
            return this;
        }

        public TIMGroupAddOpt getAddOption() {
            return this.addOption;
        }

        public ModifyGroupInfoParam setAddOption(@NonNull TIMGroupAddOpt tIMGroupAddOpt) {
            if (tIMGroupAddOpt == null) {
                return this;
            }
            this.addOption = tIMGroupAddOpt;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupAddOption.swigValue();
            return this;
        }

        public long getMaxMemberNum() {
            return this.maxMemberNum;
        }

        public ModifyGroupInfoParam setMaxMemberNum(long j) {
            if (j <= 0) {
                return this;
            }
            this.maxMemberNum = j;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupMaxMmeberNum.swigValue();
            return this;
        }

        public boolean isVisable() {
            return this.isVisable;
        }

        public ModifyGroupInfoParam setVisable(boolean z) {
            this.isVisable = z;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupVisible.swigValue();
            return this;
        }

        public boolean isSearchable() {
            return this.isSearchable;
        }

        public boolean isSilenceAll() {
            return this.isSilenceAll;
        }

        public ModifyGroupInfoParam setSilenceAll(boolean z) {
            this.isSilenceAll = z;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupAllShutup.swigValue();
            return this;
        }

        public ModifyGroupInfoParam setSearchable(boolean z) {
            this.isSearchable = z;
            this.flags |= (long) ModifyGroupFlag.kModifyGroupSearchable.swigValue();
            return this;
        }

        public Map<String, byte[]> getCustomInfo() {
            return this.customInfo;
        }

        public ModifyGroupInfoParam setCustomInfo(@NonNull Map<String, byte[]> map) {
            if (map != null && !map.isEmpty()) {
                this.customInfo = map;
            }
            return this;
        }

        public long getFlags() {
            return this.flags;
        }

        public boolean isValid() {
            return !TextUtils.isEmpty(this.groupId) && ((this.flags & ((long) ModifyGroupFlag.kModifyGroupName.swigValue())) == 0 || !TextUtils.isEmpty(this.groupName));
        }
    }

    @Deprecated
    public static class ModifyMemberInfoParam {
        Map<String, byte[]> customInfo = new HashMap();
        private long flags;
        private String groupId;
        private String identifier;
        private String nameCard;
        private TIMGroupReceiveMessageOpt receiveMessageOpt = TIMGroupReceiveMessageOpt.ReceiveAndNotify;
        private int roleType = 0;
        private long silence;

        public ModifyMemberInfoParam(@NonNull String str, @NonNull String str2) {
            String str3 = "";
            this.groupId = str3;
            this.identifier = str3;
            this.nameCard = str3;
            this.groupId = str;
            this.identifier = str2;
        }

        public String getGroupId() {
            return this.groupId;
        }

        public String getIdentifier() {
            return this.identifier;
        }

        public String getNameCard() {
            return this.nameCard;
        }

        public ModifyMemberInfoParam setNameCard(@NonNull String str) {
            if (str == null) {
                return this;
            }
            this.nameCard = str;
            this.flags |= (long) ModifyGroupMemberFlag.kModifyGroupMemberNameCard.swigValue();
            return this;
        }

        public TIMGroupReceiveMessageOpt getReceiveMessageOpt() {
            return this.receiveMessageOpt;
        }

        public ModifyMemberInfoParam setReceiveMessageOpt(@NonNull TIMGroupReceiveMessageOpt tIMGroupReceiveMessageOpt) {
            if (tIMGroupReceiveMessageOpt == null) {
                return this;
            }
            this.receiveMessageOpt = tIMGroupReceiveMessageOpt;
            this.flags |= (long) ModifyGroupMemberFlag.kModifyGroupMemberMsgFlag.swigValue();
            return this;
        }

        public int getRoleType() {
            return this.roleType;
        }

        public ModifyMemberInfoParam setRoleType(int i) {
            if (i == 400) {
                QLog.e(TIMGroupManagerExt.TAG, "setRoleType, cannot be owner!");
                return this;
            }
            this.roleType = i;
            this.flags |= (long) ModifyGroupMemberFlag.kModifyGroupMemberRole.swigValue();
            return this;
        }

        public long getSilence() {
            return this.silence;
        }

        public ModifyMemberInfoParam setSilence(long j) {
            if (j < 0) {
                j = 0;
            }
            this.silence = j;
            this.flags |= (long) ModifyGroupMemberFlag.kModifyGroupMemberShutupTime.swigValue();
            return this;
        }

        public Map<String, byte[]> getCustomInfo() {
            return this.customInfo;
        }

        public ModifyMemberInfoParam setCustomInfo(Map<String, byte[]> map) {
            if (map != null && !map.isEmpty()) {
                this.customInfo = map;
            }
            return this;
        }

        public long getFlags() {
            return this.flags;
        }

        /* access modifiers changed from: 0000 */
        public boolean isValid() {
            return !TextUtils.isEmpty(this.groupId) && !TextUtils.isEmpty(this.identifier);
        }
    }

    private TIMGroupManagerExt() {
    }

    public static TIMGroupManagerExt getInstance() {
        return instance;
    }

    @Deprecated
    public void deleteGroupMember(@NonNull DeleteMemberParam deleteMemberParam, @NonNull TIMValueCallBack<List<TIMGroupMemberResult>> tIMValueCallBack) {
        if (tIMValueCallBack == null) {
            QLog.e(TAG, "deleteGroupMember ignore, callback is null");
            return;
        }
        if (deleteMemberParam != null && deleteMemberParam.isValid()) {
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
                    QLog.i(TIMGroupManagerExt.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    @Deprecated
    public void inviteGroupMember(@NonNull String str, @NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupMemberResult>> tIMValueCallBack) {
        this.groupBaseManager.inviteGroupMember(str, list, tIMValueCallBack);
    }

    @Deprecated
    public void getGroupList(@NonNull TIMValueCallBack<List<TIMGroupBaseInfo>> tIMValueCallBack) {
        this.groupBaseManager.getGroupList(tIMValueCallBack);
    }

    @Deprecated
    public void modifyGroupInfo(@NonNull ModifyGroupInfoParam modifyGroupInfoParam, @NonNull TIMCallBack tIMCallBack) {
        TIMCallBack tIMCallBack2 = tIMCallBack;
        if (!(tIMCallBack2 == null || modifyGroupInfoParam == null || !modifyGroupInfoParam.isValid())) {
            long flags = modifyGroupInfoParam.getFlags();
            String groupId = modifyGroupInfoParam.getGroupId();
            String groupName = modifyGroupInfoParam.getGroupName();
            String notification = modifyGroupInfoParam.getNotification();
            String introduction = modifyGroupInfoParam.getIntroduction();
            String faceUrl = modifyGroupInfoParam.getFaceUrl();
            long value = modifyGroupInfoParam.getAddOption().getValue();
            long maxMemberNum = modifyGroupInfoParam.getMaxMemberNum();
            boolean isVisable = modifyGroupInfoParam.isVisable();
            boolean isSearchable = modifyGroupInfoParam.isSearchable();
            boolean isSilenceAll = modifyGroupInfoParam.isSilenceAll();
            boolean z = isSilenceAll;
            GroupNativeManager.nativeSetGroupInfo(flags, groupId, groupName, notification, introduction, faceUrl, value, maxMemberNum, isVisable, isSearchable, z, modifyGroupInfoParam.getCustomInfo(), new ICallback(tIMCallBack2) {
                public void done(Object obj) {
                    QLog.i(TIMGroupManagerExt.TAG, "modifyGroupInfo success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("modifyGroupInfo fail: ");
                    sb.append(i);
                    sb.append(":");
                    sb.append(str);
                    QLog.e(TIMGroupManagerExt.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    @Deprecated
    public void modifyGroupOwner(@NonNull String str, @NonNull String str2, @NonNull TIMCallBack tIMCallBack) {
        this.groupBaseManager.modifyGroupOwner(str, str2, tIMCallBack);
    }

    @Deprecated
    public void getGroupInfo(@NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupDetailInfoResult>> tIMValueCallBack) {
        this.groupBaseManager.getGroupInfo(list, tIMValueCallBack);
    }

    @Deprecated
    public TIMGroupDetailInfo queryGroupInfo(@NonNull String str) {
        return this.groupBaseManager.queryGroupInfo(str);
    }

    @Deprecated
    public void modifyMemberInfo(@NonNull ModifyMemberInfoParam modifyMemberInfoParam, @NonNull TIMCallBack tIMCallBack) {
        GroupNativeManager.nativeSetGroupMemberInfo(modifyMemberInfoParam.getFlags(), modifyMemberInfoParam.getGroupId(), modifyMemberInfoParam.getIdentifier(), modifyMemberInfoParam.getNameCard(), modifyMemberInfoParam.getReceiveMessageOpt().getValue(), (long) modifyMemberInfoParam.getRoleType(), modifyMemberInfoParam.getSilence(), modifyMemberInfoParam.getCustomInfo(), new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(TIMGroupManagerExt.TAG, "modifyMemberInfo success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("modifyMemberInfo fail: ");
                sb.append(i);
                sb.append(":");
                sb.append(str);
                QLog.i(TIMGroupManagerExt.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    @Deprecated
    public void getGroupMembers(@NonNull String str, @NonNull TIMValueCallBack<List<TIMGroupMemberInfo>> tIMValueCallBack) {
        this.groupBaseManager.getGroupMembers(str, tIMValueCallBack);
    }

    @Deprecated
    public void getGroupMembersInfo(@NonNull String str, @NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupMemberInfo>> tIMValueCallBack) {
        this.groupBaseManager.getGroupMembersInfo(str, list, tIMValueCallBack);
    }

    @Deprecated
    public void getGroupMembersByFilter(@NonNull String str, long j, @NonNull TIMGroupMemberRoleFilter tIMGroupMemberRoleFilter, List<String> list, long j2, @NonNull TIMValueCallBack<TIMGroupMemberSucc> tIMValueCallBack) {
        this.groupBaseManager.getGroupMembersByFilter(str, j, tIMGroupMemberRoleFilter, list, j2, tIMValueCallBack);
    }

    @Deprecated
    public void getSelfInfo(@NonNull String str, @NonNull final TIMValueCallBack<TIMGroupSelfInfo> tIMValueCallBack) {
        boolean isEmpty = TextUtils.isEmpty(str);
        String str2 = TAG;
        if (isEmpty) {
            QLog.e(str2, "getSelfInfo err, groupId is empty");
            return;
        }
        String loginUser = TIMManager.getInstance().getLoginUser();
        if (TextUtils.isEmpty(loginUser)) {
            QLog.e(str2, "getSelfInfo err, selfId is empty");
            return;
        }
        this.groupBaseManager.getGroupSelfInfo(str, loginUser, new TIMValueCallBack<TIMGroupMemberInfo>() {
            public void onError(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("getSelfInfo err, code = ");
                sb.append(i);
                sb.append(", desc = ");
                sb.append(str);
                QLog.e(TIMGroupManagerExt.TAG, sb.toString());
                tIMValueCallBack.onError(i, str);
            }

            public void onSuccess(TIMGroupMemberInfo tIMGroupMemberInfo) {
                if (tIMGroupMemberInfo == null) {
                    QLog.e(TIMGroupManagerExt.TAG, "getSelfInfo onSuccess but timGroupMemberInfo is null!");
                    return;
                }
                tIMValueCallBack.onSuccess(new TIMGroupSelfInfo(tIMGroupMemberInfo));
            }
        });
    }

    @Deprecated
    public void getGroupPendencyList(@NonNull TIMGroupPendencyGetParam tIMGroupPendencyGetParam, @NonNull TIMValueCallBack<TIMGroupPendencyListGetSucc> tIMValueCallBack) {
        this.groupBaseManager.getGroupPendencyList(tIMGroupPendencyGetParam, tIMValueCallBack);
    }

    @Deprecated
    public void reportGroupPendency(long j, @NonNull TIMCallBack tIMCallBack) {
        this.groupBaseManager.reportGroupPendency(j, tIMCallBack);
    }
}
