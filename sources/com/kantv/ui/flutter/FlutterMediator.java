package com.kantv.ui.flutter;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import com.idlefish.flutterboost.NewFlutterBoost;
import com.idlefish.flutterboost.NewFlutterBoost.BoostLifecycleListener;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import com.kantv.flt_tencent_im.FltTencentImPlugin;
import com.kantv.flt_tencent_im.FltTencentImPlugin.ISecretKey;
import com.kantv.flt_tencent_im.FltTencentImPlugin.ISecretKey.NickNameAndFaceCallBakc;
import com.kantv.flt_tencent_im.FltTencentImPlugin.ISecretKey.SecretKeyCallBack;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.flutter.service.FlutterNativeBridgeRegister;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.viewmodel.CommonViewModel;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.flutter.embedding.android.FlutterView.RenderMode;
import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;
import java.util.HashMap;

public class FlutterMediator implements StreamHandler {
    public void onCancel(Object obj) {
    }

    public void onListen(Object obj, EventSink eventSink) {
    }

    public static void init(Application application) {
        $$Lambda$FlutterMediator$XRtpyzhVuhqId0b0cOk3TrsPwnU r0 = $$Lambda$FlutterMediator$XRtpyzhVuhqId0b0cOk3TrsPwnU.INSTANCE;
        NewFlutterBoost.instance().init(new ConfigBuilder(application, r0).isDebug(false).whenEngineStart(ConfigBuilder.ANY_ACTIVITY_CREATED).renderMode(RenderMode.texture).lifecycleListener(new BoostLifecycleListener() {
            public void onEngineCreated() {
            }

            public void onEngineDestroy() {
            }

            public void onPluginsRegistered() {
                new MethodChannel(NewFlutterBoost.instance().engineProvider().getDartExecutor(), "methodChannel");
                Log.e("MyApplication", "MethodChannel create");
                GeneratedPluginRegistrant.registerWith(NewFlutterBoost.instance().getPluginRegistry());
                FlutterNativeBridgeRegister.register();
                FltTencentImPlugin.getIntance().setISecretKey(new ISecretKey() {
                    public void getSecretKey(String str, SecretKeyCallBack secretKeyCallBack) {
                        CommonViewModel.getSecretKey(str, secretKeyCallBack);
                    }

                    public void getNickNameAndFaceUrl(String str, NickNameAndFaceCallBakc nickNameAndFaceCallBakc) {
                        String str2 = (String) PreferenceUtil.get("ACCOUNTID", SignConfig.sbID);
                        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && str2.equals(str)) {
                            nickNameAndFaceCallBakc.onNickNameAndFaceUrl((String) PreferenceUtil.get("name", "游客"), (String) PreferenceUtil.get("Photo", ""));
                        }
                    }
                });
                HashMap hashMap = new HashMap();
                hashMap.put(SettingsJsonConstants.APP_IDENTIFIER_KEY, (String) PreferenceUtil.get("ACCOUNTID", SignConfig.sbID));
                FltTencentImPlugin.getIntance().login(hashMap, null);
            }
        }).build());
    }
}
