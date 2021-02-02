package com.kantv.ui;

import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import com.kantv.common.base.BaseActivity;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.activity.WelcomeActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.viewmodel.CommonViewModel;

public class PackageActivity extends BaseActivity {
    public static String[] PERMISSIONS_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    public static final int REQUEST_EXTERNAL_STORAGE = 164;
    private static final String TAG = "PackageActivity";
    protected int bringToFrontFlag = 0;

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        PreferenceUtil.put(Utils.getContext(), UserPreference.BACKGROUND_START_TIME, String.valueOf(System.currentTimeMillis() / 1000));
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        initBringToFront();
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
                    AILog.d(TAG, "onRequestPermissionsResult:定位授权请求被拒绝");
                    if (!ActivityCompat.shouldShowRequestPermissionRationale(this, str)) {
                        CommonViewModel.openGpsDialog(this);
                        return;
                    }
                    return;
                }
                AILog.d(TAG, "onRequestPermissionsResult:定位授权请求被允许");
            }
        } else if (strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0 && iArr[0] != 0 && !ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.CAMERA")) {
            CommonViewModel.openCamera(this);
        }
    }
}
