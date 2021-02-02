package com.kantv.ui.activity;

import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import com.kantv.common.base.BaseSimpleActivity;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.viewmodel.CommonViewModel;

public class PackageSimpleActivity extends BaseSimpleActivity {
    private static final String TAG = "PackageSimpleActivity";
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
        if (i == 163 && strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0) {
            int i2 = 0;
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
    }
}
