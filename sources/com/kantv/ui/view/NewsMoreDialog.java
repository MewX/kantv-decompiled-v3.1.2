package com.kantv.ui.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import com.imkan.tv.R;
import com.kantv.common.utils.Utils;
import com.kantv.ui.utils.PreferenceUtil;

public class NewsMoreDialog extends Dialog {
    /* access modifiers changed from: private */
    public onClickback callback;
    /* access modifiers changed from: private */
    public String isCollect;
    private RadioButton mBigButton;
    private RadioButton mLargeButton;
    private RadioButton mMediumButton;
    private RadioButton mSmallButton;

    public interface onClickback {
        void onClick(int i);
    }

    public NewsMoreDialog(Context context, onClickback onclickback, String str) {
        this(context, (int) R.style.ShareDialog, str);
        this.callback = onclickback;
    }

    public NewsMoreDialog(Context context, int i, String str) {
        super(context, i);
        this.isCollect = "0";
        View inflate = getLayoutInflater().inflate(R.layout.dialog_newsmore, null);
        this.isCollect = str;
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

    private void setListener(final View view) {
        this.mSmallButton = (RadioButton) view.findViewById(R.id.news_size_small);
        this.mMediumButton = (RadioButton) view.findViewById(R.id.news_size_medium);
        this.mBigButton = (RadioButton) view.findViewById(R.id.news_size_big);
        this.mLargeButton = (RadioButton) view.findViewById(R.id.news_size_large);
        ((RadioGroup) view.findViewById(R.id.newsdetail_font_size)).setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                switch (i) {
                    case R.id.news_size_big /*2131296994*/:
                        if (NewsMoreDialog.this.callback != null) {
                            NewsMoreDialog.this.callback.onClick(3);
                            break;
                        }
                        break;
                    case R.id.news_size_large /*2131296995*/:
                        if (NewsMoreDialog.this.callback != null) {
                            NewsMoreDialog.this.callback.onClick(4);
                            break;
                        }
                        break;
                    case R.id.news_size_medium /*2131296996*/:
                        if (NewsMoreDialog.this.callback != null) {
                            NewsMoreDialog.this.callback.onClick(2);
                            break;
                        }
                        break;
                    case R.id.news_size_small /*2131296997*/:
                        if (NewsMoreDialog.this.callback != null) {
                            NewsMoreDialog.this.callback.onClick(1);
                            break;
                        }
                        break;
                }
                NewsMoreDialog.this.dismiss();
            }
        });
        String str = this.isCollect;
        String str2 = "1";
        if (str == null || !str.equals(str2)) {
            ((TextView) view.findViewById(R.id.newsmore_collect)).setCompoundDrawablesWithIntrinsicBounds(null, Utils.getContext().getResources().getDrawable(R.drawable.newsmore_favorite), null, null);
        } else {
            ((TextView) view.findViewById(R.id.newsmore_collect)).setCompoundDrawablesWithIntrinsicBounds(null, Utils.getContext().getResources().getDrawable(R.drawable.newsmore_favorite_selected), null, null);
        }
        view.findViewById(R.id.dialog_newsmore_exit).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                NewsMoreDialog.this.dismiss();
            }
        });
        view.findViewById(R.id.newsmore_collect_layout).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (NewsMoreDialog.this.callback != null) {
                    NewsMoreDialog.this.callback.onClick(5);
                }
                if (!((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                    return;
                }
                if (NewsMoreDialog.this.isCollect == null || !NewsMoreDialog.this.isCollect.equals("0")) {
                    ((TextView) view.findViewById(R.id.newsmore_collect)).setCompoundDrawablesWithIntrinsicBounds(null, Utils.getContext().getResources().getDrawable(R.drawable.newsmore_favorite), null, null);
                } else {
                    ((TextView) view.findViewById(R.id.newsmore_collect)).setCompoundDrawablesWithIntrinsicBounds(null, Utils.getContext().getResources().getDrawable(R.drawable.newsmore_favorite_selected), null, null);
                }
            }
        });
        String str3 = "2";
        String str4 = (String) PreferenceUtil.get(Utils.getContext(), "texttype", str3);
        if (str4.equals(str2)) {
            this.mSmallButton.setChecked(true);
        } else if (str4.equals(str3)) {
            this.mMediumButton.setChecked(true);
        } else if (str4.equals("3")) {
            this.mBigButton.setChecked(true);
        } else {
            this.mLargeButton.setChecked(true);
        }
    }

    public void show() {
        super.show();
    }
}
