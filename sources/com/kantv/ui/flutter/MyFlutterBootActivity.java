package com.kantv.ui.flutter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Message;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.view.ViewCompat;
import com.idlefish.flutterboost.containers.NewBoostFlutterActivity;
import com.idlefish.flutterboost.containers.NewBoostFlutterActivity.BackgroundMode;
import com.idlefish.flutterboost.containers.NewBoostFlutterActivity.SerializableMap;
import com.kantv.common.base.BaseApplication;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.common.view.MyHandler;
import com.kantv.kt_player.KtPlatformView;
import com.kantv.ui.activity.WelcomeActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.viewmodel.CommonViewModel;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.HashMap;
import java.util.Map;

public class MyFlutterBootActivity extends NewBoostFlutterActivity {
    public static String[] PERMISSIONS_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    public static final int REQUEST_EXTERNAL_STORAGE = 164;
    private String TAG = KtPlatformView.TAG;
    protected int bringToFrontFlag = 0;
    protected boolean isDestroy = false;
    protected MyHandler mMyHandler;
    protected Map<String, String> request = new HashMap();

    public static class NewEngineIntentBuilders {
        private final Class<? extends NewBoostFlutterActivity> activityClass;
        private String backgroundMode = MyFlutterBootActivity.DEFAULT_BACKGROUND_MODE;
        private Map params = new HashMap();
        private String url = "";

        protected NewEngineIntentBuilders(@NonNull Class<? extends NewBoostFlutterActivity> cls) {
            this.activityClass = cls;
        }

        public NewEngineIntentBuilders url(@NonNull String str) {
            this.url = str;
            return this;
        }

        public NewEngineIntentBuilders params(@NonNull Map map) {
            this.params = map;
            return this;
        }

        public NewEngineIntentBuilders backgroundMode(@NonNull BackgroundMode backgroundMode2) {
            this.backgroundMode = backgroundMode2.name();
            return this;
        }

        public Intent build(@NonNull Context context) {
            SerializableMap serializableMap = new SerializableMap();
            serializableMap.setMap(this.params);
            return new Intent(context, this.activityClass).putExtra("background_mode", this.backgroundMode).putExtra("destroy_engine_with_activity", false).putExtra("url", this.url).putExtra("params", serializableMap);
        }
    }

    /* access modifiers changed from: protected */
    public void handleIntent(Intent intent) {
    }

    /* access modifiers changed from: protected */
    public void handleMessages(Message message) {
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initStatusBar();
        BaseApplication.getInstance().addActivity(this);
        if (getIntent() != null) {
            handleIntent(getIntent());
        }
        this.mMyHandler = new MyHandler(this) {
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (MyFlutterBootActivity.this.mMyHandler.weakReference.get() != null) {
                    MyFlutterBootActivity.this.handleMessages(message);
                }
            }
        };
    }

    /* access modifiers changed from: protected */
    public void initStatusBar() {
        if (VERSION.SDK_INT >= 19) {
            getWindow().addFlags(67108864);
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) findViewById(16908290)).getChildAt(0);
            ViewCompat.setFitsSystemWindows(viewGroup, false);
            viewGroup.setClipToPadding(true);
        }
        if (VERSION.SDK_INT >= 21) {
            getWindow().clearFlags(201326592);
            getWindow().getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().setStatusBarColor(ViewCompat.MEASURED_SIZE_MASK);
        }
    }

    public void gotoActivity(Class cls) {
        startActivity(new Intent(this, cls));
    }

    public void gotoActivity(Bundle bundle, Class cls) {
        Intent intent = new Intent(this, cls);
        intent.putExtras(bundle);
        startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.isDestroy = true;
        BaseApplication.getInstance().finishActivity((Activity) this);
        MyHandler myHandler = this.mMyHandler;
        if (myHandler != null) {
            myHandler.removeCallbacksAndMessages(null);
            this.mMyHandler = null;
        }
    }

    public boolean isDestroy() {
        return this.isDestroy;
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        PreferenceUtil.put(Utils.getContext(), UserPreference.BACKGROUND_START_TIME, String.valueOf(System.currentTimeMillis() / 1000));
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        initBringToFront();
        this.mMyHandler.postDelayed(new Runnable() {
            public void run() {
                MyFlutterBootActivity.this.initStatusBar();
            }
        }, 100);
    }

    /* access modifiers changed from: protected */
    public void initBringToFront() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.BACKGROUND_START_TIME, "");
        if (!StringUtils.isEmpty(str)) {
            JudgeTime(Long.parseLong(str));
        }
    }

    public void JudgeTime(long j) {
        Long valueOf = Long.valueOf((System.currentTimeMillis() / 1000) - j);
        if (valueOf.longValue() > 300 && valueOf.longValue() < 1800) {
            this.bringToFrontFlag = 1;
            gotoActivity(WelcomeActivity.class);
        } else if (valueOf.longValue() >= 1800) {
            this.bringToFrontFlag = 2;
            gotoActivity(WelcomeActivity.class);
        } else {
            this.bringToFrontFlag = 0;
        }
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        String str;
        super.onRequestPermissionsResult(i, strArr, iArr);
        int i2 = 0;
        if (i != 0) {
            if (i != 163) {
                if (i == 164 && strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0 && iArr[0] != 0 && iArr[1] != 0 && !ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    CommonViewModel.openWriteStore(this);
                }
            } else if (strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0) {
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    str = "android.permission.ACCESS_FINE_LOCATION";
                    if (i2 >= strArr.length) {
                        break;
                    }
                    if (strArr[i2].equals(str) && iArr[i2] == 0) {
                        z = true;
                    }
                    if (strArr[i2].equals("android.permission.ACCESS_COARSE_LOCATION") && iArr[i2] == 0) {
                        z2 = true;
                    }
                    i2++;
                }
                if (!z || !z2) {
                    AILog.d(this.TAG, "onRequestPermissionsResult:定位授权请求被拒绝");
                    if (!ActivityCompat.shouldShowRequestPermissionRationale(this, str)) {
                        CommonViewModel.openGpsDialog(this);
                        return;
                    }
                    return;
                }
                AILog.d(this.TAG, "onRequestPermissionsResult:定位授权请求被允许");
            }
        } else if (strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0 && iArr[0] != 0 && !ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.CAMERA")) {
            CommonViewModel.openCamera(this);
        }
    }

    public static NewEngineIntentBuilders withNewEngines() {
        return new NewEngineIntentBuilders(MyFlutterBootActivity.class);
    }
}
