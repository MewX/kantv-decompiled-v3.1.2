package com.tencent.imsdk;

import com.tencent.imsdk.friendship.TIMFriendPendencyInfo;
import java.util.ArrayList;
import java.util.List;

public class TIMSNSSystemElem extends TIMElem {
    private List<String> addBlacklistUserList;
    private List<String> addFriendGroupList;
    private List<TIMSNSChangeInfo> changeInfoList;
    private long decideReportTimestamp;
    private List<String> delBlacklistUserList;
    private List<String> delFriendAddDecideList;
    private List<String> delFriendAddPendencyList;
    private List<String> delFriendGroupList;
    private List<String> delRecommendList;
    private List<String> delRequestAddFriendUserList;
    private List<String> friendAddDecideList;
    private List<TIMFriendPendencyInfo> friendAddPendencyList;
    private long pendencyReportTimestamp;
    private List<String> recommendList;
    private long recommendReportTimestamp;
    private List<String> requestAddFriendUserList;
    private int subType;
    private List<String> updateFriendGroupList;

    public TIMSNSSystemElem() {
        this.subType = 0;
        this.requestAddFriendUserList = new ArrayList();
        this.delRequestAddFriendUserList = new ArrayList();
        this.addBlacklistUserList = new ArrayList();
        this.delBlacklistUserList = new ArrayList();
        this.friendAddPendencyList = new ArrayList();
        this.delFriendAddPendencyList = new ArrayList();
        this.changeInfoList = new ArrayList();
        this.recommendList = new ArrayList();
        this.delRecommendList = new ArrayList();
        this.friendAddDecideList = new ArrayList();
        this.delFriendAddDecideList = new ArrayList();
        this.addFriendGroupList = new ArrayList();
        this.delFriendGroupList = new ArrayList();
        this.updateFriendGroupList = new ArrayList();
        this.type = TIMElemType.SNSTips;
    }

    public int getSubType() {
        return this.subType;
    }

    public List<String> getRequestAddFriendUserList() {
        return this.requestAddFriendUserList;
    }

    public List<String> getDelRequestAddFriendUserList() {
        return this.delRequestAddFriendUserList;
    }

    public List<String> getAddBlacklistUserList() {
        return this.addBlacklistUserList;
    }

    public List<String> getDelBlacklistUserList() {
        return this.delBlacklistUserList;
    }

    public List<TIMFriendPendencyInfo> getFriendAddPendencyList() {
        return this.friendAddPendencyList;
    }

    public List<String> getDelFriendAddPendencyList() {
        return this.delFriendAddPendencyList;
    }

    public List<TIMSNSChangeInfo> getChangeInfoList() {
        return this.changeInfoList;
    }

    public long getPendencyReportTimestamp() {
        return this.pendencyReportTimestamp;
    }
}
