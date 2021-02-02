package com.kantv.ui.flutter.handlers;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.google.android.exoplayer2.C;
import com.kantv.common.api.Api;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.MainActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.flutter.service.FlutterNativeBridge;
import com.kantv.ui.utils.LocationUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.view.ShareDialogImp;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tencent.connect.common.Constants;
import debug.KanApplication;
import fleamarket.taobao.com.xservicekit.handler.MessageHandler;
import fleamarket.taobao.com.xservicekit.handler.MessageResult;
import fleamarket.taobao.com.xservicekit.service.ServiceGateway;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FlutterNativeBridge_flutterCallNative implements MessageHandler<Map> {
    public static final String TAG = "FlutterBridgeNative";
    private Object mContext = null;

    public String service() {
        return "FlutterNativeBridge";
    }

    private boolean onCall(MessageResult<Map> messageResult, String str, Map map) throws Exception {
        HashMap hashMap = new HashMap();
        if (map != null) {
            hashMap.putAll(map);
        }
        boolean equals = str.equals("getUser");
        String str2 = "methodNameGetUser";
        String str3 = TAG;
        if (equals) {
            Map user = CommonViewModel.getUser();
            if (user != null) {
                hashMap.putAll(user);
                messageResult.success(hashMap);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(hashMap);
            Log.d(str3, sb.toString());
            return true;
        } else if (str.equals("getDomains")) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(hashMap);
            Log.d(str3, sb2.toString());
            String domain = Api.getDomain();
            String bootDomain = Api.getBootDomain();
            hashMap.put("dm", domain);
            hashMap.put("jsonDm", bootDomain);
            messageResult.success(hashMap);
            return true;
        } else if (str.equals("getCompleteRequestParams")) {
            hashMap.putAll(CommonViewModel.getCommonMap());
            messageResult.success(hashMap);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("reqestData：");
            sb3.append(hashMap);
            Log.d(str3, sb3.toString());
            return true;
        } else if (str.equals("getSvMaxHalfPreLoadCount")) {
            hashMap.put(ConversationControlOp.COUNT, Integer.valueOf(2));
            messageResult.success(hashMap);
            return true;
        } else {
            String str4 = "checkIsLogin";
            String str5 = "1";
            String str6 = "Login_State";
            String str7 = "0";
            int i = 0;
            if (str.equals(str4)) {
                boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), str6, Boolean.valueOf(false))).booleanValue();
                if (!booleanValue) {
                    str5 = str7;
                }
                hashMap.put(str4, str5);
                messageResult.success(hashMap);
                if (!booleanValue) {
                    CommonViewModel.showLoginDialog(KanApplication.getInstance().currentActivity());
                }
                return true;
            }
            String str8 = "";
            if (str.equals("getLocation")) {
                Location showLocation = LocationUtils.getInstance(Utils.getContext()).showLocation();
                String str9 = "latitude";
                String str10 = "longitude";
                if (showLocation != null) {
                    hashMap.put(str9, Double.toString(showLocation.getLatitude()));
                    hashMap.put(str10, Double.toString(showLocation.getLongitude()));
                } else {
                    hashMap.put(str10, str7);
                    hashMap.put(str9, str7);
                }
                hashMap.put("country", str8);
                hashMap.put("administrativeArea", str8);
                hashMap.put("subLocality", str8);
                hashMap.put("countryCode", str8);
                hashMap.put(UserPreference.CITY, str8);
                hashMap.put("locality", str8);
                hashMap.put("locationCity", str8);
                hashMap.put("phoneCode", str8);
                hashMap.put("phoneCodeVSCountry", str8);
                messageResult.success(hashMap);
                return true;
            }
            boolean equals2 = str.equals("showSharePannel");
            String str11 = "shareUrl";
            String str12 = "title";
            String str13 = UserPreference.SHARE_URL;
            if (equals2) {
                if (map != null) {
                    String str14 = (String) map.get(str12);
                    String str15 = (String) map.get(str11);
                    if (TextUtils.isEmpty(str15)) {
                        str15 = (String) PreferenceUtil.get(Utils.getContext(), str13, str8);
                    }
                    if (MainActivity.sRef != null) {
                        ((MainActivity) MainActivity.sRef.get()).showShareDialog(str14, str15);
                        messageResult.success(hashMap);
                    }
                }
                return true;
            } else if (str.equals("shareInPlatform")) {
                if (map != null) {
                    String str16 = (String) map.get(str12);
                    String str17 = (String) map.get(str11);
                    if (TextUtils.isEmpty(str17)) {
                        str17 = (String) PreferenceUtil.get(Utils.getContext(), str13, str8);
                    }
                    String str18 = (String) ((Map) map.get("shareInfo")).get(Constants.PARAM_PLATFORM);
                    ShareDialogImp shareDialogImp = new ShareDialogImp();
                    shareDialogImp.setTitle(str16);
                    shareDialogImp.setmNiShareUrl(str17);
                    shareDialogImp.onShare(Integer.valueOf(str18).intValue());
                }
                return true;
            } else if (str.equals("getAppDownloadPageUrl")) {
                hashMap.put("downloadPageUrl", PreferenceUtil.get(Utils.getContext(), str13, str8));
                messageResult.success(hashMap);
                return true;
            } else if (str.equals("jumpToVideoDetail")) {
                if (!(map == null || MainActivity.sRef == null)) {
                    String str19 = (String) map.get("tvid");
                    Intent intent = new Intent((Context) MainActivity.sRef.get(), VideoPlayActivity.class);
                    intent.putExtra("tid", str19);
                    intent.putExtra("seo", str8);
                    ((MainActivity) MainActivity.sRef.get()).startActivity(intent);
                    messageResult.success(hashMap);
                }
                return true;
            } else if (str.equals("didClickSvTextAd")) {
                if (map != null) {
                    String str20 = (String) hashMap.get("jumpUrl");
                    if (!StringUtils.isEmpty(str20) && str20.contains("http")) {
                        int intValue = ((Integer) hashMap.get("opentype")).intValue();
                        messageResult.success(hashMap);
                        if (intValue == 0) {
                            Intent intent2 = new Intent();
                            intent2.setAction("android.intent.action.VIEW");
                            intent2.setData(Uri.parse(str20));
                            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                            Utils.getContext().startActivity(intent2);
                        } else {
                            Bundle bundle = new Bundle();
                            bundle.putString("url", str20);
                            Intent intent3 = new Intent(Utils.getContext(), WebViewActivity.class);
                            intent3.setFlags(C.ENCODING_PCM_MU_LAW);
                            intent3.putExtras(bundle);
                            Utils.getContext().startActivity(intent3);
                        }
                    }
                }
                return true;
            } else if (str.equals("kickOffLoginAlert")) {
                if (map != null && ((Boolean) PreferenceUtil.get(Utils.getContext(), str6, Boolean.valueOf(false))).booleanValue()) {
                    CommonViewModel.showLoginDialog(KanApplication.getInstance().currentActivity());
                    messageResult.success(hashMap);
                }
                return true;
            } else if (str.equals("removeUser")) {
                if (map != null) {
                    CommonViewModel.showLoginDialog(KanApplication.getInstance().currentActivity());
                    messageResult.success(hashMap);
                }
                return true;
            } else if (str.equals("getLoginStatus")) {
                if (map != null) {
                    if (!((Boolean) PreferenceUtil.get(Utils.getContext(), str6, Boolean.valueOf(false))).booleanValue()) {
                        str5 = str7;
                    }
                    hashMap.put("loginStauts", str5);
                    messageResult.success(hashMap);
                }
                return true;
            } else if (!str.equals("loadRemoteDmsWithErrCode")) {
                return false;
            } else {
                if (map != null) {
                    String domain2 = Api.getDomain();
                    List<String> list = Api.API_DOMAIN;
                    while (true) {
                        if (i >= list.size()) {
                            break;
                        }
                        String str21 = (String) list.get(i);
                        if (!str21.equals(domain2)) {
                            hashMap.put("backUpDomainPref", str21);
                            messageResult.success(hashMap);
                            break;
                        }
                        i++;
                    }
                }
                return true;
            }
        }
    }

    public boolean onMethodCall(String str, Map map, MessageResult<Map> messageResult) {
        String str2 = "params";
        String str3 = "methodName";
        String str4 = TAG;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("onMethodCall: name:");
            sb.append((String) map.get(str3));
            sb.append(" params:");
            sb.append((Map) map.get(str2));
            Log.d(str4, sb.toString());
            onCall(messageResult, (String) map.get(str3), (Map) map.get(str2));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public List<String> handleMessageNames() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("flutterCallNative");
        return arrayList;
    }

    public Object getContext() {
        return this.mContext;
    }

    public void setContext(Object obj) {
        this.mContext = obj;
    }

    public static void register() {
        ServiceGateway.sharedInstance().registerHandler(new FlutterNativeBridge_flutterCallNative());
    }

    public static void offLine() {
        Log.d(TAG, "offLine:");
        HashMap hashMap = new HashMap();
        hashMap.put("msg", "您的账号已经在另外一台设备上登录，请重新登录");
        FlutterNativeBridge.nativeCallFlutter(new MessageResult<Map>() {
            public void success(Map map) {
                StringBuilder sb = new StringBuilder();
                sb.append("offline:success");
                sb.append(map);
                Log.d(FlutterNativeBridge_flutterCallNative.TAG, sb.toString());
            }

            public void error(String str, String str2, Object obj) {
                StringBuilder sb = new StringBuilder();
                sb.append("offline:error var1 ");
                sb.append(str);
                sb.append(" var2 ");
                sb.append(str2);
                sb.append(" var3 ");
                sb.append(obj);
                Log.d(FlutterNativeBridge_flutterCallNative.TAG, sb.toString());
            }

            public void notImplemented() {
                Log.d(FlutterNativeBridge_flutterCallNative.TAG, "offline:notImplemented");
            }
        }, "kickOffLoginAlert", hashMap);
    }
}
