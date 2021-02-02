package com.tencent.imsdk.group;

import com.tencent.imsdk.TIMGroupMemberInfo;
import com.tencent.imsdk.TIMGroupTipsElem;
import com.tencent.imsdk.TIMGroupTipsElemGroupInfo;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfo;
import java.util.List;

public interface GroupListener {
    void onGroupAdd(TIMGroupDetailInfo tIMGroupDetailInfo);

    void onGroupDelete(String str);

    void onGroupTipsEvent(TIMGroupTipsElem tIMGroupTipsElem);

    void onGroupUpdate(String str, TIMGroupTipsElemGroupInfo tIMGroupTipsElemGroupInfo);

    void onMemberQuit(String str, List<TIMGroupMemberInfo> list);

    void onMemberUpdate(String str, List<TIMGroupMemberInfo> list);

    void onMemeberJoin(String str, List<TIMGroupMemberInfo> list);
}
