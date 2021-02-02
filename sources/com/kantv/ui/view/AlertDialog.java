package com.kantv.ui.view;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.imkan.tv.R;

public class AlertDialog {
    private Button btn_neg;
    private Button btn_pos;
    private Context context;
    /* access modifiers changed from: private */
    public Dialog dialog;
    private Display display;
    private ImageView img_line;
    private LinearLayout lLayout_bg;
    private Typeface op;
    private boolean showMsg = false;
    private boolean showNegBtn = false;
    private boolean showPosBtn = false;
    private boolean showTitle = false;
    private TextView txt_msg;
    private TextView txt_title;

    public AlertDialog(Context context2) {
        this.context = context2;
        this.display = ((WindowManager) context2.getSystemService("window")).getDefaultDisplay();
    }

    public AlertDialog builder() {
        View inflate = LayoutInflater.from(this.context).inflate(R.layout.view_alertdialog, null);
        this.lLayout_bg = (LinearLayout) inflate.findViewById(R.id.lLayout_bg);
        this.txt_title = (TextView) inflate.findViewById(R.id.txt_title);
        this.txt_title.setVisibility(8);
        this.context.getAssets();
        this.txt_msg = (TextView) inflate.findViewById(R.id.txt_msg);
        this.txt_msg.setVisibility(8);
        this.btn_neg = (Button) inflate.findViewById(R.id.btn_neg);
        this.btn_neg.setVisibility(8);
        this.btn_pos = (Button) inflate.findViewById(R.id.btn_pos);
        this.btn_pos.setVisibility(8);
        this.img_line = (ImageView) inflate.findViewById(R.id.img_line);
        this.img_line.setVisibility(8);
        this.dialog = new Dialog(this.context, R.style.AlertDialogStyle);
        this.dialog.setContentView(inflate);
        LinearLayout linearLayout = this.lLayout_bg;
        double width = (double) this.display.getWidth();
        Double.isNaN(width);
        linearLayout.setLayoutParams(new LayoutParams((int) (width * 0.85d), -2));
        return this;
    }

    public AlertDialog setTitle(String str) {
        this.showTitle = true;
        String str2 = "";
        if (str2.equals(str)) {
            this.txt_title.setText(str2);
        } else {
            this.txt_title.setText(str);
        }
        return this;
    }

    public AlertDialog setMsg(String str) {
        this.showMsg = true;
        String str2 = "";
        if (str2.equals(str)) {
            this.txt_msg.setText(str2);
        } else {
            this.txt_msg.setText(str);
        }
        return this;
    }

    public AlertDialog setCancelable(boolean z) {
        this.dialog.setCancelable(z);
        return this;
    }

    public AlertDialog setPositiveButton(String str, final OnClickListener onClickListener) {
        this.showPosBtn = true;
        String str2 = "";
        if (str2.equals(str)) {
            this.btn_pos.setText(str2);
        } else {
            this.btn_pos.setText(str);
        }
        this.btn_pos.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                onClickListener.onClick(view);
                AlertDialog.this.dialog.dismiss();
            }
        });
        return this;
    }

    public AlertDialog setNegativeButton(String str, final OnClickListener onClickListener) {
        this.showNegBtn = true;
        String str2 = "";
        if (str2.equals(str)) {
            this.btn_neg.setText(str2);
        } else {
            this.btn_neg.setText(str);
        }
        this.btn_neg.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                onClickListener.onClick(view);
                AlertDialog.this.dialog.dismiss();
            }
        });
        return this;
    }

    private void setLayout() {
        String str = "";
        if (!this.showTitle && !this.showMsg) {
            this.txt_title.setText(str);
            this.txt_title.setVisibility(0);
        }
        if (this.showTitle) {
            this.txt_title.setVisibility(0);
        }
        if (this.showMsg) {
            this.txt_msg.setVisibility(0);
        }
        if (!this.showPosBtn && !this.showNegBtn) {
            this.btn_pos.setText(str);
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(R.drawable.alertdialog_single_selector);
            this.btn_pos.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    AlertDialog.this.dialog.dismiss();
                }
            });
        }
        if (this.showPosBtn && this.showNegBtn) {
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(R.drawable.alertdialog_right_selector);
            this.btn_neg.setVisibility(0);
            this.btn_neg.setBackgroundResource(R.drawable.alertdialog_left_selector);
            this.img_line.setVisibility(0);
        }
        if (this.showPosBtn && !this.showNegBtn) {
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(R.drawable.alertdialog_single_selector);
        }
        if (!this.showPosBtn && this.showNegBtn) {
            this.btn_neg.setVisibility(0);
            this.btn_neg.setBackgroundResource(R.drawable.alertdialog_single_selector);
        }
    }

    public void show() {
        setLayout();
        this.dialog.show();
    }
}
