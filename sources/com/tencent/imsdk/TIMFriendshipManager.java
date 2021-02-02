package com.tencent.imsdk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.common.ICallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.friendship.FriendshipNativeManager;
import com.tencent.imsdk.friendship.TIMCheckFriendResult;
import com.tencent.imsdk.friendship.TIMFriend;
import com.tencent.imsdk.friendship.TIMFriendCheckInfo;
import com.tencent.imsdk.friendship.TIMFriendGroup;
import com.tencent.imsdk.friendship.TIMFriendPendencyInfo;
import com.tencent.imsdk.friendship.TIMFriendPendencyRequest;
import com.tencent.imsdk.friendship.TIMFriendPendencyResponse;
import com.tencent.imsdk.friendship.TIMFriendRequest;
import com.tencent.imsdk.friendship.TIMFriendResponse;
import com.tencent.imsdk.friendship.TIMFriendResult;
import com.tencent.imsdk.friendship.TIMFriendshipListener;
import com.tencent.imsdk.log.QLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class TIMFriendshipManager {
    private static final String TAG = "TIMFriendshipManager";

    private static class TIMFriendshipManagerHolder {
        /* access modifiers changed from: private */
        public static final TIMFriendshipManager mTIMFriendshipManager = new TIMFriendshipManager();

        private TIMFriendshipManagerHolder() {
        }
    }

    private TIMFriendshipManager() {
    }

    public static TIMFriendshipManager getInstance() {
        return TIMFriendshipManagerHolder.mTIMFriendshipManager;
    }

    public void init() {
        setFriendshipListenerInternal();
        FriendshipNativeManager.initFriendshipModule();
    }

    private void setFriendshipListenerInternal() {
        FriendshipNativeManager.nativeSetFriendshipListener(new TIMFriendshipListener() {
            public void onAddFriends(List<String> list) {
                String str = TIMFriendshipManager.TAG;
                QLog.i(str, "this is onAddFriends");
                final TIMFriendshipListener friendshipListener = TIMManager.getInstance().getUserConfig().getFriendshipListener();
                if (friendshipListener == null) {
                    QLog.e(str, "onAddFriends, no TIMFriendshipListener found");
                    return;
                }
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        friendshipListener.onAddFriends(copyOnWriteArrayList);
                    }
                });
            }

            public void onDelFriends(List<String> list) {
                String str = TIMFriendshipManager.TAG;
                QLog.i(str, "this is onDelFriends");
                final TIMFriendshipListener friendshipListener = TIMManager.getInstance().getUserConfig().getFriendshipListener();
                if (friendshipListener == null) {
                    QLog.e(str, "onDelFriends, no TIMFriendshipListener found");
                    return;
                }
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        friendshipListener.onDelFriends(copyOnWriteArrayList);
                    }
                });
            }

            public void onFriendProfileUpdate(List<TIMSNSChangeInfo> list) {
                String str = TIMFriendshipManager.TAG;
                QLog.i(str, "this is onFriendProfileUpdate");
                final TIMFriendshipListener friendshipListener = TIMManager.getInstance().getUserConfig().getFriendshipListener();
                if (friendshipListener == null) {
                    QLog.e(str, "onFriendProfileUpdate, no TIMFriendshipListener found");
                    return;
                }
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        friendshipListener.onFriendProfileUpdate(copyOnWriteArrayList);
                    }
                });
            }

            public void onAddFriendReqs(List<TIMFriendPendencyInfo> list) {
                String str = TIMFriendshipManager.TAG;
                QLog.i(str, "this is onAddFriendReqs");
                final TIMFriendshipListener friendshipListener = TIMManager.getInstance().getUserConfig().getFriendshipListener();
                if (friendshipListener == null) {
                    QLog.e(str, "onAddFriendReqs, no TIMFriendshipListener found");
                    return;
                }
                final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        friendshipListener.onAddFriendReqs(copyOnWriteArrayList);
                    }
                });
            }
        });
    }

    public void getUsersProfile(@NonNull List<String> list, boolean z, @NonNull TIMValueCallBack<List<TIMUserProfile>> tIMValueCallBack) {
        String str = TAG;
        QLog.i(str, "getUsersProfile called");
        if (tIMValueCallBack == null) {
            QLog.e(str, "getUsersProfile callback is null");
        } else if (list == null || list.isEmpty()) {
            QLog.e(str, "getUsersProfile, identifiers is null or empty");
        } else {
            FriendshipNativeManager.nativeGetUsersProfile(list, z, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "getUsersProfile success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("getUsersProfile fail = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.i(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public int getSelfProfile(@NonNull final TIMValueCallBack<TIMUserProfile> tIMValueCallBack) {
        String str = TAG;
        QLog.i(str, "getSelfProfile called");
        if (tIMValueCallBack == null) {
            QLog.e(str, "getSelfProfile, callback is null");
            return -1;
        }
        String loginUser = TIMManager.getInstance().getLoginUser();
        if (TextUtils.isEmpty(loginUser)) {
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(loginUser);
        getUsersProfile(arrayList, true, new TIMValueCallBack<List<TIMUserProfile>>() {
            public void onError(int i, String str) {
                tIMValueCallBack.onError(i, str);
            }

            public void onSuccess(List<TIMUserProfile> list) {
                tIMValueCallBack.onSuccess(list.get(0));
            }
        });
        return 0;
    }

    public TIMUserProfile querySelfProfile() {
        String loginUser = TIMManager.getInstance().getLoginUser();
        if (!TextUtils.isEmpty(loginUser)) {
            return queryUserProfile(loginUser);
        }
        QLog.e(TAG, "querySelfProfile, maybe not login");
        return null;
    }

    public TIMUserProfile queryUserProfile(String str) {
        if (!TextUtils.isEmpty(str)) {
            return FriendshipNativeManager.nativeQueryUserProfile(str);
        }
        QLog.e(TAG, "queryUserProfile identifier is empty!");
        return null;
    }

    public void modifySelfProfile(@NonNull HashMap<String, Object> hashMap, @NonNull TIMCallBack tIMCallBack) {
        String str = TAG;
        QLog.i(str, "modifySelfProfile called");
        if (hashMap == null || hashMap.size() <= 0) {
            QLog.e(str, "modifySelfProfile, profileMap is null or empty");
        } else if (tIMCallBack == null) {
            QLog.e(str, "modifySelfProfile callback is null");
        } else {
            FriendshipNativeManager.nativeModifySelfProfile(hashMap, new ICallback(tIMCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "modifySelfProfile success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("modifySelfProfile fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void getFriendList(@NonNull TIMValueCallBack<List<TIMFriend>> tIMValueCallBack) {
        String str = TAG;
        QLog.i(str, "getFriendList called");
        if (tIMValueCallBack == null) {
            QLog.e(str, "getFriendList callback is null");
        } else {
            FriendshipNativeManager.nativeGetFriendList(new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "getFriendList success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("getFriendList fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public List<TIMFriend> queryFriendList() {
        QLog.i(TAG, "queryFriendList called");
        return FriendshipNativeManager.nativeQueryFriendList();
    }

    public TIMFriend queryFriend(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("queryFriend called, identifier = ");
        sb.append(str);
        String sb2 = sb.toString();
        String str2 = TAG;
        QLog.i(str2, sb2);
        if (!TextUtils.isEmpty(str)) {
            return FriendshipNativeManager.nativeQueryFriend(str);
        }
        QLog.e(str2, "queryFriend, identifier is empty, ignore");
        return null;
    }

    public void addFriend(@NonNull TIMFriendRequest tIMFriendRequest, @NonNull TIMValueCallBack<TIMFriendResult> tIMValueCallBack) {
        String str = TAG;
        QLog.i(str, "addFriend called");
        if (tIMFriendRequest == null) {
            QLog.e(str, "addFriend, timAddFriendRequest is null");
        } else if (tIMValueCallBack == null) {
            QLog.e(str, "addFriend, cb is null");
        } else {
            if (TextUtils.isEmpty(tIMFriendRequest.getAddSource())) {
                tIMFriendRequest.setAddSource("AddSource_Type_Unknow");
            }
            FriendshipNativeManager.nativeAddFriend(tIMFriendRequest, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "addFriend success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("addFriend fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void deleteFriends(@NonNull List<String> list, @NonNull int i, @NonNull TIMValueCallBack<List<TIMFriendResult>> tIMValueCallBack) {
        String str = TAG;
        QLog.i(str, "delFriend called");
        if (list == null || list.size() == 0) {
            QLog.e(str, "delFriend, identifiers is empty");
        } else if (i != 1 && i != 2) {
            QLog.e(str, "delFriend, delFriendType must be TIMDelFriendType.TIM_FRIEND_DEL_SINGLE or TIMDelFriendType.TIM_FRIEND_DEL_BOTH");
        } else if (tIMValueCallBack == null) {
            QLog.e(str, "delFriend, cb is null");
        } else {
            FriendshipNativeManager.nativeDelFriend(list, i, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "delFriend success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("delFriend fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void modifyFriend(@NonNull String str, @NonNull HashMap<String, Object> hashMap, @NonNull TIMCallBack tIMCallBack) {
        String str2 = TAG;
        QLog.i(str2, "modifyFriend called");
        if (TextUtils.isEmpty(str)) {
            QLog.e(str2, "modifyFriend, identifier is empty");
        } else if (hashMap == null || hashMap.size() <= 0) {
            QLog.e(str2, "modifyFriend, profileMap is null or empty");
        } else if (tIMCallBack == null) {
            QLog.e(str2, "modifyFriend, cb is null");
        } else {
            FriendshipNativeManager.nativeModifyFriendProfile(str, hashMap, new ICallback(tIMCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "delFriend success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("delFriend fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void doResponse(TIMFriendResponse tIMFriendResponse, @NonNull TIMValueCallBack<TIMFriendResult> tIMValueCallBack) {
        String str = TAG;
        QLog.i(str, "doResponse called");
        if (tIMFriendResponse == null) {
            QLog.e(str, "doResponse, response is null");
        } else if (TextUtils.isEmpty(tIMFriendResponse.getIdentifier())) {
            QLog.e(str, "doResponse, identifier is empty");
        } else if (tIMFriendResponse.getResponseType() == 0 || tIMFriendResponse.getResponseType() == 1 || tIMFriendResponse.getResponseType() == 2) {
            if (tIMValueCallBack == null) {
                QLog.e(str, "doResponse, cb is null");
            }
            FriendshipNativeManager.nativeDoResponse(tIMFriendResponse, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "doResponse success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("doResponse fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        } else {
            QLog.e(str, "doResponse, delFriendType must be TIMFriendResponse.TIM_FRIEND_RESPONSE_AGREE or TIMFriendResponse.TIM_FRIEND_RESPONSE_AGREE_AND_ADD or TIMFriendResponse.TIM_FRIEND_RESPONSE_REJECT");
        }
    }

    public void createFriendGroup(List<String> list, List<String> list2, @NonNull TIMValueCallBack<List<TIMFriendResult>> tIMValueCallBack) {
        if (list == null || list.size() == 0) {
            QLog.e(TAG, "createFriendGroup group name list is empty");
        } else {
            FriendshipNativeManager.nativeCreateGroup(list, list2, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "createFriendGroup success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("createFriendGroup fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void getFriendGroups(List<String> list, @NonNull TIMValueCallBack<List<TIMFriendGroup>> tIMValueCallBack) {
        if (list != null && list.size() == 0) {
            list = null;
        }
        FriendshipNativeManager.nativeGetGroup(list, new ICallback(tIMValueCallBack) {
            public void done(Object obj) {
                QLog.i(TIMFriendshipManager.TAG, "createFriendGroup success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("createFriendGroup fail code = ");
                sb.append(i);
                sb.append(", desc = ");
                sb.append(str);
                QLog.e(TIMFriendshipManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void deleteFriendGroup(List<String> list, @NonNull TIMCallBack tIMCallBack) {
        if (list.size() == 0) {
            QLog.e(TAG, "deleteFriendGroup group name list is empty");
        } else {
            FriendshipNativeManager.nativeDeleteGroup(list, new ICallback(tIMCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "deleteFriendGroup success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("deleteFriendGroup fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void renameFriendGroup(String str, String str2, @NonNull TIMCallBack tIMCallBack) {
        boolean isEmpty = TextUtils.isEmpty(str2);
        String str3 = TAG;
        if (isEmpty) {
            QLog.e(str3, "renameFriendGroup new group name is empty");
        } else if (TextUtils.isEmpty(str)) {
            QLog.e(str3, "renameFriendGroup old group name is empty");
        } else {
            FriendshipNativeManager.nativeRenameFriendGroup(str, str2, new ICallback(tIMCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "renameFriendGroup success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("renameFriendGroup fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void addFriendsToFriendGroup(String str, List<String> list, @NonNull TIMValueCallBack<List<TIMFriendResult>> tIMValueCallBack) {
        boolean isEmpty = TextUtils.isEmpty(str);
        String str2 = TAG;
        if (isEmpty) {
            QLog.e(str2, "addFriendsToFriendGroup groupName is empty");
        } else if (list == null || list.size() == 0) {
            QLog.e(str2, "addFriendsToFriendGroup identifiers list is empty");
        } else {
            FriendshipNativeManager.nativeAddFriendsToFriendGroup(str, list, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "addFriendsToFriendGroup success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("addFriendsToFriendGroup fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void deleteFriendsFromFriendGroup(String str, List<String> list, @NonNull TIMValueCallBack<List<TIMFriendResult>> tIMValueCallBack) {
        boolean isEmpty = TextUtils.isEmpty(str);
        String str2 = TAG;
        if (isEmpty) {
            QLog.e(str2, "deleteFriendsFromFriendGroup groupName is empty");
        } else if (list == null || list.size() == 0) {
            QLog.e(str2, "deleteFriendsFromFriendGroup identifiers list is empty");
        } else {
            FriendshipNativeManager.nativeDeleteFriendsFromFriendGroup(str, list, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "deleteFriendsFromFriendGroup success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("deleteFriendsFromFriendGroup fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void getPendencyList(TIMFriendPendencyRequest tIMFriendPendencyRequest, @NonNull TIMValueCallBack<TIMFriendPendencyResponse> tIMValueCallBack) {
        if (tIMFriendPendencyRequest == null) {
            QLog.e(TAG, "getPendencyList timFriendPendencyRequest is null");
        } else {
            FriendshipNativeManager.nativeGetPendencyList(tIMFriendPendencyRequest.getTimPendencyGetType(), tIMFriendPendencyRequest.getSeq(), tIMFriendPendencyRequest.getTimestamp(), tIMFriendPendencyRequest.getNumPerPage(), new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "getPendencyList success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("getPendencyList fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void deletePendency(int i, List<String> list, @NonNull TIMValueCallBack<List<TIMFriendResult>> tIMValueCallBack) {
        if (list == null || list.size() == 0) {
            QLog.e(TAG, "deletePendency identifiers list is empty");
        } else {
            FriendshipNativeManager.nativeDeletePendency(i, list, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "deletePendency success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("deletePendency fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void pendencyReport(long j, @NonNull TIMCallBack tIMCallBack) {
        FriendshipNativeManager.nativePendencyReport(j, new ICallback(tIMCallBack) {
            public void done(Object obj) {
                QLog.i(TIMFriendshipManager.TAG, "deletePendency success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("deletePendency fail code = ");
                sb.append(i);
                sb.append(", desc = ");
                sb.append(str);
                QLog.e(TIMFriendshipManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void getBlackList(@NonNull TIMValueCallBack<List<TIMFriend>> tIMValueCallBack) {
        FriendshipNativeManager.nativeGetBlackList(new ICallback(tIMValueCallBack) {
            public void done(Object obj) {
                QLog.i(TIMFriendshipManager.TAG, "getBlackList success");
                super.done(obj);
            }

            public void fail(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("getBlackList fail code = ");
                sb.append(i);
                sb.append(", desc = ");
                sb.append(str);
                QLog.e(TIMFriendshipManager.TAG, sb.toString());
                super.fail(i, str);
            }
        });
    }

    public void addBlackList(List<String> list, @NonNull TIMValueCallBack<List<TIMFriendResult>> tIMValueCallBack) {
        if (list == null || list.size() == 0) {
            QLog.e(TAG, "addBlackList identifiers list is empty");
        } else {
            FriendshipNativeManager.nativeAddBlackList(list, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "addBlackList success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("addBlackList fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void deleteBlackList(@NonNull List<String> list, @NonNull TIMValueCallBack<List<TIMFriendResult>> tIMValueCallBack) {
        String str = TAG;
        if (list == null || list.size() == 0) {
            QLog.e(str, "deleteBlackList identifiers list is empty");
        } else if (tIMValueCallBack == null) {
            QLog.e(str, "deleteBlackList callback is null");
        } else {
            FriendshipNativeManager.nativeDeleteBlackList(list, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "deleteBlackList success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("deleteBlackList fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }

    public void checkFriends(@NonNull TIMFriendCheckInfo tIMFriendCheckInfo, @NonNull TIMValueCallBack<List<TIMCheckFriendResult>> tIMValueCallBack) {
        String str = TAG;
        if (tIMFriendCheckInfo == null) {
            QLog.e(str, "checkFriends checkInfo is null!");
        } else if (tIMValueCallBack == null) {
            QLog.e(str, "checkFriends callback is null!");
        } else {
            FriendshipNativeManager.nativeCheckFriends(tIMFriendCheckInfo, new ICallback(tIMValueCallBack) {
                public void done(Object obj) {
                    QLog.i(TIMFriendshipManager.TAG, "checkFriends success");
                    super.done(obj);
                }

                public void fail(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("checkFriends fail code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    QLog.e(TIMFriendshipManager.TAG, sb.toString());
                    super.fail(i, str);
                }
            });
        }
    }
}
