package com.kantv.flt_tencent_im;

import io.flutter.plugin.common.MethodChannel.Result;
import java.util.Map;

public interface IPluginMessage {
    public static final String onConnFailed = "onConnFailed";
    public static final String onConnSucc = "onConnSucc";
    public static final String onConnecting = "onConnecting";
    public static final String onDisconnect = "onDisconnect";
    public static final String onForceOffline = "onForceOffline";
    public static final String onNewMessage = "onNewMessage";
    public static final String onReConnFailed = "onReConnFailed";
    public static final String onRefresh = "onRefresh";
    public static final String onRefreshConversations = "onRefreshConversations";
    public static final String onUserSigExpired = "onUserSigExpired";

    void getMessage(Map map, Result result);

    void getProfiles(Map map, Result result);

    void joinGroup(Map map, Result result);

    void login(Map map, Result result);

    void loginOut(Map map, Result result);

    void quitGroup(Map map, Result result);

    void sendTextMsg(Map map, Result result);
}
