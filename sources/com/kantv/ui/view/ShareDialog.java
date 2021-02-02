package com.kantv.ui.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import com.imkan.tv.R;

public class ShareDialog extends Dialog {
    /* access modifiers changed from: private */
    public onClickback callback;

    public interface onClickback {
        void onShare(int i);
    }

    public ShareDialog(Context context, onClickback onclickback) {
        this(context, (int) R.style.ShareDialog);
        this.callback = onclickback;
    }

    public ShareDialog(Context context, int i) {
        super(context, i);
        View inflate = getLayoutInflater().inflate(R.layout.dialog_share, null);
        setCanceledOnTouchOutside(true);
        setListener(inflate);
        super.setContentView(inflate);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setGravity(80);
        window.setLayout(-1, -2);
    }

    private void setListener(View view) {
        view.findViewById(R.id.dialog_share_bt1).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ShareDialog.this.callback.onShare(2);
                ShareDialog.this.dismiss();
            }
        });
        view.findViewById(R.id.dialog_share_bt2).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ShareDialog.this.callback.onShare(1);
                ShareDialog.this.dismiss();
            }
        });
        view.findViewById(R.id.dialog_share_bt3).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ShareDialog.this.callback.onShare(4);
                ShareDialog.this.dismiss();
            }
        });
        view.findViewById(R.id.dialog_share_bt4).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ShareDialog.this.callback.onShare(5);
                ShareDialog.this.dismiss();
            }
        });
        view.findViewById(R.id.dialog_share_bt5).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ShareDialog.this.callback.onShare(3);
                ShareDialog.this.dismiss();
            }
        });
        view.findViewById(R.id.dialog_share_bt6).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ShareDialog.this.callback.onShare(0);
                ShareDialog.this.dismiss();
            }
        });
        view.findViewById(R.id.dialog_share_exit).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ShareDialog.this.callback.onShare(200);
                ShareDialog.this.dismiss();
            }
        });
    }

    public void show() {
        super.show();
    }
}
