package com.kantv.ui.flutter.service;

import fleamarket.taobao.com.xservicekit.handler.MessageResult;
import fleamarket.taobao.com.xservicekit.service.ServiceGateway;
import fleamarket.taobao.com.xservicekit.service.ServiceTemplate;
import io.flutter.plugin.common.MethodChannel.Result;
import java.util.HashMap;
import java.util.Map;

public class FlutterNativeBridge {
    private static final ServiceTemplate mService = new ServiceTemplate("FlutterNativeBridge");

    public static ServiceTemplate getService() {
        return mService;
    }

    public static void register() {
        ServiceGateway.sharedInstance().addService(mService);
    }

    public static void nativeCallFlutter(final MessageResult<Map> messageResult, String str, Map map) {
        HashMap hashMap = new HashMap();
        hashMap.put("methodName", str);
        hashMap.put("params", map);
        ServiceTemplate serviceTemplate = mService;
        serviceTemplate.invoke("nativeCallFlutter", hashMap, serviceTemplate.methodChannelName(), new Result() {
            public void success(Object obj) {
                if (obj instanceof Map) {
                    messageResult.success((Map) obj);
                    return;
                }
                String str = "";
                messageResult.error("return type error code dart code", str, str);
            }

            public void error(String str, String str2, Object obj) {
                MessageResult messageResult = messageResult;
                if (messageResult != null) {
                    messageResult.error(str, str2, obj);
                }
            }

            public void notImplemented() {
                MessageResult messageResult = messageResult;
                if (messageResult != null) {
                    messageResult.notImplemented();
                }
            }
        });
    }
}
