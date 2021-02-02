package fleamarket.taobao.com.xservicekit;

import android.os.Build.VERSION;
import fleamarket.taobao.com.xservicekit.message.MessengerFacade;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

public class XserviceKitPlugin implements MethodCallHandler {
    public static void registerWith(Registrar registrar) {
        new MethodChannel(registrar.messenger(), "xservice_kit").setMethodCallHandler(new XserviceKitPlugin());
        MessengerFacade.sharedInstance().setMessenger(registrar.messenger());
    }

    public void onMethodCall(MethodCall methodCall, Result result) {
        if (methodCall.method.equals("getPlatformVersion")) {
            StringBuilder sb = new StringBuilder();
            sb.append("Android ");
            sb.append(VERSION.RELEASE);
            result.success(sb.toString());
            return;
        }
        result.notImplemented();
    }
}
