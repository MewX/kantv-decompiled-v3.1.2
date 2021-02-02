package com.tandong.bottomview.view;

import android.app.Dialog;
import android.content.Context;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;

public class BottomView {
    private int animationStyle;
    private Dialog bv;
    private Context context;
    private View convertView;
    private boolean isTop = false;
    private int theme;

    public BottomView(Context context2, int i, View view) {
        this.theme = i;
        this.context = context2;
        this.convertView = view;
    }

    public BottomView(Context context2, int i, int i2) {
        this.theme = i;
        this.context = context2;
        this.convertView = View.inflate(context2, i2, null);
    }

    public void showBottomView(boolean z) {
        int i = this.theme;
        if (i == 0) {
            this.bv = new Dialog(this.context);
        } else {
            this.bv = new Dialog(this.context, i);
        }
        this.bv.setCanceledOnTouchOutside(z);
        this.bv.getWindow().requestFeature(1);
        this.bv.setContentView(this.convertView);
        Window window = this.bv.getWindow();
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        LayoutParams attributes = window.getAttributes();
        attributes.width = defaultDisplay.getWidth() * 1;
        if (this.isTop) {
            attributes.gravity = 48;
        } else {
            attributes.gravity = 80;
        }
        int i2 = this.animationStyle;
        if (i2 != 0) {
            window.setWindowAnimations(i2);
        }
        window.setAttributes(attributes);
        this.bv.show();
    }

    public void setTopIfNecessary() {
        this.isTop = true;
    }

    public void setAnimation(int i) {
        this.animationStyle = i;
    }

    public View getView() {
        return this.convertView;
    }

    public void dismissBottomView() {
        Dialog dialog = this.bv;
        if (dialog != null) {
            dialog.dismiss();
        }
    }
}
