package com.kantv.flt_tencent_im.modules.group.info;

import com.kantv.flt_tencent_im.base.IUIKitCallBack;
import com.kantv.flt_tencent_im.utils.TUIKitLog;
import com.kantv.flt_tencent_im.utils.ToastUtil;

public class GroupInfoPresenter {
    private GroupInfoProvider mProvider = new GroupInfoProvider();

    public void loadGroupInfo(String str, final IUIKitCallBack iUIKitCallBack) {
        this.mProvider.loadGroupInfo(str, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
                iUIKitCallBack.onSuccess(obj);
            }

            public void onError(String str, int i, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append(":");
                sb.append(str2);
                TUIKitLog.e("loadGroupInfo", sb.toString());
                iUIKitCallBack.onError(str, i, str2);
                ToastUtil.toastLongMessage(str2);
            }
        });
    }

    public void modifyGroupName(String str) {
        this.mProvider.modifyGroupInfo(str, 1, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
            }

            public void onError(String str, int i, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append(":");
                sb.append(str2);
                TUIKitLog.e("modifyGroupName", sb.toString());
                ToastUtil.toastLongMessage(str2);
            }
        });
    }

    public void modifyGroupNotice(String str) {
        this.mProvider.modifyGroupInfo(str, 2, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
            }

            public void onError(String str, int i, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append(":");
                sb.append(str2);
                TUIKitLog.e("modifyGroupNotice", sb.toString());
                ToastUtil.toastLongMessage(str2);
            }
        });
    }

    public String getNickName() {
        String str = "";
        String nameCard = (this.mProvider.getSelfGroupInfo() == null || this.mProvider.getSelfGroupInfo().getDetail() == null) ? str : this.mProvider.getSelfGroupInfo().getDetail().getNameCard();
        return nameCard == null ? str : nameCard;
    }

    public void modifyMyGroupNickname(String str) {
        this.mProvider.modifyMyGroupNickname(str, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
            }

            public void onError(String str, int i, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append(":");
                sb.append(str2);
                TUIKitLog.e("modifyMyGroupNickname", sb.toString());
                ToastUtil.toastLongMessage(str2);
            }
        });
    }

    public void deleteGroup() {
        this.mProvider.deleteGroup(new IUIKitCallBack() {
            public void onSuccess(Object obj) {
            }

            public void onError(String str, int i, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append(":");
                sb.append(str2);
                TUIKitLog.e("deleteGroup", sb.toString());
                ToastUtil.toastLongMessage(str2);
            }
        });
    }

    public void setTopConversation(boolean z) {
        this.mProvider.setTopConversation(z);
    }

    public void quitGroup() {
        this.mProvider.quitGroup(new IUIKitCallBack() {
            public void onSuccess(Object obj) {
            }

            public void onError(String str, int i, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append(":");
                sb.append(str2);
                TUIKitLog.e("quitGroup", sb.toString());
            }
        });
    }

    public void modifyGroupInfo(int i, int i2) {
        this.mProvider.modifyGroupInfo(Integer.valueOf(i), i2, new IUIKitCallBack() {
            public void onSuccess(Object obj) {
            }

            public void onError(String str, int i, String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append("modifyGroupInfo fail :");
                sb.append(i);
                sb.append("=");
                sb.append(str2);
                ToastUtil.toastLongMessage(sb.toString());
            }
        });
    }
}
