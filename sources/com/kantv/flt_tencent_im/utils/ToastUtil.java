package com.kantv.flt_tencent_im.utils;

import android.widget.Toast;
import com.kantv.flt_tencent_im.TUIKit;

public class ToastUtil {
    /* access modifiers changed from: private */
    public static Toast mToast;

    public static final void toastLongMessage(final String str) {
        BackgroundTasks.getInstance().runOnUiThread(new Runnable() {
            public void run() {
                if (ToastUtil.mToast != null) {
                    ToastUtil.mToast.cancel();
                    ToastUtil.mToast = null;
                }
                ToastUtil.mToast = Toast.makeText(TUIKit.getAppContext(), str, 1);
                ToastUtil.mToast.show();
            }
        });
    }

    public static final void toastShortMessage(final String str) {
        BackgroundTasks.getInstance().runOnUiThread(new Runnable() {
            public void run() {
                if (ToastUtil.mToast != null) {
                    ToastUtil.mToast.cancel();
                    ToastUtil.mToast = null;
                }
                ToastUtil.mToast = Toast.makeText(TUIKit.getAppContext(), str, 0);
                ToastUtil.mToast.show();
            }
        });
    }
}
