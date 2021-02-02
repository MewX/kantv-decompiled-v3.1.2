package com.tencent.imsdk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.ext.group.ModifyGroupFlag;
import com.tencent.imsdk.ext.group.ModifyGroupMemberFlag;
import com.tencent.imsdk.ext.group.TIMGroupBaseInfo;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfo;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfoResult;
import com.tencent.imsdk.ext.group.TIMGroupMemberResult;
import com.tencent.imsdk.ext.group.TIMGroupMemberRoleFilter;
import com.tencent.imsdk.ext.group.TIMGroupMemberSucc;
import com.tencent.imsdk.ext.group.TIMGroupPendencyGetParam;
import com.tencent.imsdk.ext.group.TIMGroupPendencyListGetSucc;
import com.tencent.imsdk.ext.group.TIMGroupSelfInfo;
import com.tencent.imsdk.group.GroupBaseManager;
import com.tencent.imsdk.log.QLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TIMGroupManager {
    /* access modifiers changed from: private */
    public static final String TAG = "TIMGroupManager";
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_ADD_OPTION = 8192;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_APP_ID = 128;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_CREATE_TIME = 2;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_FACE_URL = 4096;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_GROUP_TYPE = 16384;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_INTRODUCTION = 2048;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_LAST_MSG = 32768;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_LAST_MSG_TIME = 64;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_MAX_MEMBER_NUM = 512;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_MEMBER_NUM = 256;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_NAME = 1;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_NEXT_MSG_SEQ = 32;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_NOTIFICATION = 1024;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_OWNER_UIN = 4;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_SEQ = 8;
    public static final int TIM_GET_GROUP_BASE_INFO_FLAG_TIME = 16;
    public static final int TIM_GET_GROUP_MEM_INFO_FLAG_JOIN_TIME = 1;
    public static final int TIM_GET_GROUP_MEM_INFO_FLAG_MSG_FLAG = 2;
    public static final int TIM_GET_GROUP_MEM_INFO_FLAG_NAME_CARD = 32;
    public static final int TIM_GET_GROUP_MEM_INFO_FLAG_ROLE_INFO = 8;
    public static final int TIM_GET_GROUP_MEM_INFO_FLAG_SHUTUP_TIME = 16;
    private static final TIMGroupManager instance = new TIMGroupManager();
    private String userID = "";

    public static class CreateGroupParam {
        TIMGroupAddOpt addOption;
        Map<String, byte[]> customInfo = new HashMap();
        String faceUrl;
        String groupId;
        String groupName;
        String groupType;
        String introduction;
        long maxMemberNum = 0;
        List<TIMGroupMemberInfo> members;
        String notification;

        public CreateGroupParam(@NonNull String str, @NonNull String str2) {
            this.groupType = str;
            this.groupName = str2;
        }

        public CreateGroupParam setGroupType(String str) {
            this.groupType = str;
            return this;
        }

        public CreateGroupParam setGroupName(String str) {
            this.groupName = str;
            return this;
        }

        public CreateGroupParam setGroupId(String str) {
            this.groupId = str;
            return this;
        }

        public CreateGroupParam setNotification(String str) {
            this.notification = str;
            return this;
        }

        public CreateGroupParam setIntroduction(String str) {
            this.introduction = str;
            return this;
        }

        public CreateGroupParam setFaceUrl(String str) {
            this.faceUrl = str;
            return this;
        }

        public CreateGroupParam setAddOption(TIMGroupAddOpt tIMGroupAddOpt) {
            this.addOption = tIMGroupAddOpt;
            return this;
        }

        public CreateGroupParam setMaxMemberNum(long j) {
            this.maxMemberNum = j;
            return this;
        }

        public CreateGroupParam setCustomInfo(String str, byte[] bArr) {
            this.customInfo.put(str, bArr);
            return this;
        }

        public CreateGroupParam setMembers(List<TIMGroupMemberInfo> list) {
            this.members = list;
            return this;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("CreateGroupParam:");
            stringBuffer.append("groupId=");
            stringBuffer.append(this.groupId);
            stringBuffer.append(";groupName=");
            stringBuffer.append(this.groupName);
            stringBuffer.append(";groupType=");
            stringBuffer.append(this.groupType);
            stringBuffer.append(";faceUrl=");
            stringBuffer.append(this.faceUrl);
            return stringBuffer.toString();
        }

        public String getGroupType() {
            return this.groupType;
        }

        public String getGroupId() {
            return this.groupId;
        }

        public String getGroupName() {
            return this.groupName;
        }

        public String getNotification() {
            return this.notification;
        }

        public String getIntroduction() {
            return this.introduction;
        }

        public String getFaceUrl() {
            return this.faceUrl;
        }

        public TIMGroupAddOpt getAddOption() {
            return this.addOption;
        }

        public long getMaxMemberNum() {
            return this.maxMemberNum;
        }

        public Map<String, byte[]> getCustomInfo() {
            return this.customInfo;
        }

        public List<TIMGroupMemberInfo> getMembers() {
            return this.members;
        }
    }

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

        public void setGroupId(String str) {
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

    public static class ModifyMemberInfoParam {
        Map<String, byte[]> customInfo = new HashMap();
        private long flags;
        private String groupId;
        private String nameCard;
        private TIMGroupReceiveMessageOpt receiveMessageOpt = TIMGroupReceiveMessageOpt.ReceiveAndNotify;
        private int roleType = 0;
        private long silence;
        private String userID;

        public ModifyMemberInfoParam(@NonNull String str, @NonNull String str2) {
            String str3 = "";
            this.groupId = str3;
            this.userID = str3;
            this.nameCard = str3;
            this.groupId = str;
            this.userID = str2;
        }

        public void setGroupId(String str) {
            this.groupId = str;
        }

        public void setUserID(String str) {
            this.userID = str;
        }

        public String getGroupId() {
            return this.groupId;
        }

        public String getIdentifier() {
            return this.userID;
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
                QLog.e(TIMGroupManager.TAG, "setRoleType, cannot be owner!");
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
            return !TextUtils.isEmpty(this.groupId) && !TextUtils.isEmpty(this.userID);
        }
    }

    private TIMGroupManager() {
    }

    private String getIdentifier() {
        return this.userID;
    }

    public static TIMGroupManager getInstance() {
        return instance;
    }

    private GroupBaseManager getGroupManager() {
        return GroupBaseManager.getInstance();
    }

    public void createGroup(@NonNull CreateGroupParam createGroupParam, @NonNull TIMValueCallBack<String> tIMValueCallBack) {
        if (createGroupParam == null) {
            QLog.e(TAG, "createGroup fail, param is null");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "param is null");
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("createGroup: ");
        sb.append(createGroupParam.toString());
        QLog.i("TAG", sb.toString());
        getGroupManager().createGroup(createGroupParam, tIMValueCallBack);
    }

    public void deleteGroup(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        if (TextUtils.isEmpty(str)) {
            QLog.e(TAG, "deleteGroup fail, groupId is empty");
            if (tIMCallBack != null) {
                tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "groupID is empty");
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("deleteGroup: ");
        sb.append(str);
        QLog.i("TAG", sb.toString());
        getGroupManager().deleteGroup(str, tIMCallBack);
    }

    public void applyJoinGroup(@NonNull String str, String str2, @NonNull TIMCallBack tIMCallBack) {
        if (TextUtils.isEmpty(str)) {
            QLog.e(TAG, "applyJoinGroup fail, groupId is empty");
            if (tIMCallBack != null) {
                tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "groupID is empty");
            }
            return;
        }
        getGroupManager().applyJoinGroup(str, str2, tIMCallBack);
    }

    public void quitGroup(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        if (TextUtils.isEmpty(str)) {
            QLog.e(TAG, "quitGroup fail, groupId is empty");
            if (tIMCallBack != null) {
                tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "groupID is empty");
            }
            return;
        }
        getGroupManager().quitGroup(str, tIMCallBack);
    }

    public void inviteGroupMember(@NonNull String str, @NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupMemberResult>> tIMValueCallBack) {
        if (TextUtils.isEmpty(str)) {
            QLog.e(TAG, "inviteGroupMember fail, groupId is empty");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "groupID is empty");
            }
        } else if (list == null || list.size() == 0) {
            QLog.e(TAG, "inviteGroupMember fail, memList is empty");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "memList is empty");
            }
        } else {
            getGroupManager().inviteGroupMember(str, list, tIMValueCallBack);
        }
    }

    public void deleteGroupMember(@NonNull DeleteMemberParam deleteMemberParam, @NonNull TIMValueCallBack<List<TIMGroupMemberResult>> tIMValueCallBack) {
        if (deleteMemberParam == null || !deleteMemberParam.isValid()) {
            QLog.e(TAG, "deleteGroupMember fail, param is null or invalid");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "param is null or invalid");
            }
            return;
        }
        getGroupManager().deleteGroupMember(deleteMemberParam, tIMValueCallBack);
    }

    public void getGroupList(@NonNull TIMValueCallBack<List<TIMGroupBaseInfo>> tIMValueCallBack) {
        getGroupManager().getGroupList(tIMValueCallBack);
    }

    public void getGroupInfo(@NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupDetailInfoResult>> tIMValueCallBack) {
        if (list == null || list.size() == 0) {
            QLog.e(TAG, "getGroupDetailInfo fail: groupIdList is empty");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "groupIdList is empty");
            }
            return;
        }
        getGroupManager().getGroupInfo(list, tIMValueCallBack);
    }

    public TIMGroupDetailInfo queryGroupInfo(@NonNull String str) {
        return getGroupManager().queryGroupInfo(str);
    }

    public void getGroupMembers(@NonNull String str, @NonNull TIMValueCallBack<List<TIMGroupMemberInfo>> tIMValueCallBack) {
        if (TextUtils.isEmpty(str)) {
            QLog.e(TAG, "getGroupMembers fail: groupId is empty");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "groupId is empty");
            }
            return;
        }
        getGroupManager().getGroupMembers(str, tIMValueCallBack);
    }

    public void getSelfInfo(@NonNull String str, @NonNull final TIMValueCallBack<TIMGroupSelfInfo> tIMValueCallBack) {
        if (TextUtils.isEmpty(str)) {
            QLog.e(TAG, "getSelfInfo err, groupId is empty");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "groupId is empty");
            }
            return;
        }
        String loginUser = TIMManager.getInstance().getLoginUser();
        if (TextUtils.isEmpty(loginUser)) {
            QLog.e(TAG, "getSelfInfo err, selfId is empty");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_SDK_NOT_LOGGED_IN, "not login");
            }
            return;
        }
        getGroupManager().getGroupSelfInfo(str, loginUser, new TIMValueCallBack<TIMGroupMemberInfo>() {
            public void onError(int i, String str) {
                String access$000 = TIMGroupManager.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("getSelfInfo err, code = ");
                sb.append(i);
                sb.append(", desc = ");
                sb.append(str);
                QLog.e(access$000, sb.toString());
                tIMValueCallBack.onError(i, str);
            }

            public void onSuccess(TIMGroupMemberInfo tIMGroupMemberInfo) {
                if (tIMGroupMemberInfo == null) {
                    QLog.e(TIMGroupManager.TAG, "getSelfInfo onSuccess but timGroupMemberInfo is null!");
                    return;
                }
                tIMValueCallBack.onSuccess(new TIMGroupSelfInfo(tIMGroupMemberInfo));
            }
        });
    }

    public void getGroupMembersInfo(@NonNull String str, @NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMGroupMemberInfo>> tIMValueCallBack) {
        if (TextUtils.isEmpty(str)) {
            QLog.e(TAG, "getGroupMembersInfo fail, groupId is empty");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "groupId is empty");
            }
        } else if (list == null || list.size() == 0) {
            QLog.e(TAG, "getGroupMembersInfo fail, userIDs is empty");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "userIDs is empty");
            }
        } else {
            getGroupManager().getGroupMembersInfo(str, list, tIMValueCallBack);
        }
    }

    public void getGroupMembersByFilter(@NonNull String str, long j, @NonNull TIMGroupMemberRoleFilter tIMGroupMemberRoleFilter, List<String> list, long j2, @NonNull TIMValueCallBack<TIMGroupMemberSucc> tIMValueCallBack) {
        getGroupManager().getGroupMembersByFilter(str, j, tIMGroupMemberRoleFilter, list, j2, tIMValueCallBack);
    }

    public void modifyGroupInfo(@NonNull ModifyGroupInfoParam modifyGroupInfoParam, @NonNull TIMCallBack tIMCallBack) {
        if (modifyGroupInfoParam == null || !modifyGroupInfoParam.isValid()) {
            QLog.e(TAG, "modifyGroupInfo param is null or invalid");
            if (tIMCallBack != null) {
                tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "param is invalid");
            }
            return;
        }
        getGroupManager().modifyGroupInfo(modifyGroupInfoParam, tIMCallBack);
    }

    public void modifyGroupOwner(@NonNull String str, @NonNull String str2, @NonNull TIMCallBack tIMCallBack) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            QLog.e(TAG, "modifyGroupOwner, group id or userID is empty!");
            if (tIMCallBack != null) {
                tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "group id or userID is empty!");
            }
            return;
        }
        getGroupManager().modifyGroupOwner(str, str2, tIMCallBack);
    }

    public void modifyMemberInfo(@NonNull ModifyMemberInfoParam modifyMemberInfoParam, @NonNull TIMCallBack tIMCallBack) {
        if (modifyMemberInfoParam == null || !modifyMemberInfoParam.isValid()) {
            QLog.e(TAG, "modifyMemberInfo, param is null or invalid");
            if (tIMCallBack != null) {
                tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "param is invalid");
            }
            return;
        }
        getGroupManager().modifyMemberInfo(modifyMemberInfoParam, tIMCallBack);
    }

    public void getGroupPendencyList(@NonNull TIMGroupPendencyGetParam tIMGroupPendencyGetParam, @NonNull TIMValueCallBack<TIMGroupPendencyListGetSucc> tIMValueCallBack) {
        if (tIMGroupPendencyGetParam == null) {
            QLog.e(TAG, "getGroupPendencyList, param is null");
            if (tIMValueCallBack != null) {
                tIMValueCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "param is null");
            }
            return;
        }
        getGroupManager().getGroupPendencyList(tIMGroupPendencyGetParam, tIMValueCallBack);
    }

    public void reportGroupPendency(long j, @NonNull TIMCallBack tIMCallBack) {
        getGroupManager().reportGroupPendency(j, tIMCallBack);
    }
}
