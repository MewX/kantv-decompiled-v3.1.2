package com.kantv.flt_tencent_im;

import android.content.Context;
import android.text.TextUtils;
import com.kantv.flt_tencent_im.base.IMEventListener;
import com.kantv.flt_tencent_im.base.IUIKitCallBack;
import com.kantv.flt_tencent_im.config.TUIKitConfigs;
import com.kantv.flt_tencent_im.modules.message.MessageInfoUtil;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMFriendAllowType;
import com.tencent.imsdk.TIMFriendshipManager;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMUserProfile;
import java.util.HashMap;

public class TUIKit {
    public static void init(Context context, int i, TUIKitConfigs tUIKitConfigs) {
        TUIKitImpl.init(context, i, tUIKitConfigs);
    }

    public static void unInit() {
        TUIKitImpl.unInit();
    }

    public static Context getAppContext() {
        return TUIKitImpl.getAppContext();
    }

    public static TUIKitConfigs getConfigs() {
        return TUIKitImpl.getConfigs();
    }

    public static void addIMEventListener(IMEventListener iMEventListener) {
        TUIKitImpl.addIMEventListener(iMEventListener);
    }

    public static void removeIMEventListener(IMEventListener iMEventListener) {
        TUIKitImpl.removeIMEventListener(iMEventListener);
    }

    public static void login(String str, String str2, IUIKitCallBack iUIKitCallBack) {
        TUIKitImpl.login(str, str2, iUIKitCallBack);
    }

    public static void autoLogin(String str, IUIKitCallBack iUIKitCallBack) {
        TUIKitImpl.autoLogin(str, iUIKitCallBack);
    }

    public static void loginOut(IUIKitCallBack iUIKitCallBack) {
        TUIKitImpl.loginOut(iUIKitCallBack);
    }

    public static void joinGroup(String str, IUIKitCallBack iUIKitCallBack) {
        TUIKitImpl.joinGroup(str, iUIKitCallBack);
    }

    public static void quitGroup(String str, IUIKitCallBack iUIKitCallBack) {
        TUIKitImpl.quitGroup(str, iUIKitCallBack);
    }

    public static void getMessage(TIMConversation tIMConversation, int i, TIMMessage tIMMessage, IUIKitCallBack iUIKitCallBack) {
        TUIKitImpl.getMessage(tIMConversation, i, tIMMessage, iUIKitCallBack);
    }

    public static void sendMessage(TIMConversation tIMConversation, String str, String str2, IUIKitCallBack iUIKitCallBack) {
        TUIKitImpl.sendMessage(tIMConversation, MessageInfoUtil.buildTextMessage(str2).getTIMMessage(), iUIKitCallBack);
    }

    public static void updateProfile(String str, String str2) {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            hashMap.put(TIMUserProfile.TIM_PROFILE_TYPE_KEY_FACEURL, str);
        }
        hashMap.put(TIMUserProfile.TIM_PROFILE_TYPE_KEY_NICK, str2);
        hashMap.put(TIMUserProfile.TIM_PROFILE_TYPE_KEY_LOCATION, "sz");
        hashMap.put(TIMUserProfile.TIM_PROFILE_TYPE_KEY_ALLOWTYPE, TIMFriendAllowType.TIM_FRIEND_NEED_CONFIRM);
        TIMFriendshipManager.getInstance().modifySelfProfile(hashMap, new TIMCallBack() {
            public void onError(int i, String str) {
            }

            public void onSuccess() {
            }
        });
    }
}
