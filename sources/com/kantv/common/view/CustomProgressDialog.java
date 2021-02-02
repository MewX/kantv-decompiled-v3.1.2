package com.kantv.common.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import com.kantv.common.R;
import java.lang.ref.WeakReference;

public class CustomProgressDialog extends Dialog {
    private static volatile CustomProgressDialog sDialog;
    private WeakReference<Context> mContextRef = new WeakReference<>(null);

    public CustomProgressDialog(Context context, CharSequence charSequence) {
        super(context, R.style.CustomProgressDialog);
        this.mContextRef = new WeakReference<>(context);
        addContentView(LayoutInflater.from(context).inflate(R.layout.dialog_custom_progress, null), new LayoutParams(-1, -1));
    }

    public static void show(Context context) {
        show(context, "loading...");
    }

    public static void show(Context context, CharSequence charSequence) {
        show(context, charSequence, true);
    }

    public static void show(Context context, CharSequence charSequence, boolean z) {
        if (sDialog != null && sDialog.isShowing()) {
            sDialog.dismiss();
        }
        if (context != null && (context instanceof Activity)) {
            sDialog = new CustomProgressDialog(context, charSequence);
            sDialog.setCancelable(z);
            if (sDialog != null && !sDialog.isShowing() && !((Activity) context).isFinishing()) {
                sDialog.show();
            }
        }
    }

    public static void stop() {
        if (sDialog != null && sDialog.isShowing()) {
            sDialog.dismiss();
        }
        sDialog = null;
    }
}
