package com.kantv.ui.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import com.imkan.tv.R;
import com.kantv.common.utils.Utils;

public class ToastUtils {
    public static boolean isShow = true;
    private static TextView mTextView;

    public static void showToast(Context context, String str) {
    }

    public static void showShort(CharSequence charSequence) {
        if (isShow) {
            View inflate = LayoutInflater.from(Utils.getContext()).inflate(R.layout.toast, null);
            mTextView = (TextView) inflate.findViewById(R.id.message);
            mTextView.setText(charSequence);
            Toast toast = new Toast(Utils.getContext());
            Context context = Utils.getContext();
            Utils.getContext();
            toast.setGravity(48, 0, ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getHeight() / 3);
            toast.setDuration(0);
            toast.setView(inflate);
            toast.show();
        }
    }

    public static void showShort(int i) {
        if (isShow) {
            Toast.makeText(Utils.getContext(), i, 0).show();
        }
    }

    public static void showLong(int i) {
        if (isShow) {
            Toast.makeText(Utils.getContext(), i, 1).show();
        }
    }

    public static void show(CharSequence charSequence, int i) {
        if (TextUtils.isEmpty(charSequence)) {
            charSequence = "";
        }
        if (isShow) {
            Toast.makeText(Utils.getContext(), charSequence, i).show();
        }
    }

    public static void show(int i, int i2) {
        if (isShow) {
            Toast.makeText(Utils.getContext(), i, i2).show();
        }
    }
}
