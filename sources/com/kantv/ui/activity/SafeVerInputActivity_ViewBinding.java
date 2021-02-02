package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.verifyedittext.VerifyEditText;

public class SafeVerInputActivity_ViewBinding implements Unbinder {
    private SafeVerInputActivity target;
    private View view7f09008f;
    private View view7f09040c;
    private View view7f090443;

    @UiThread
    public SafeVerInputActivity_ViewBinding(SafeVerInputActivity safeVerInputActivity) {
        this(safeVerInputActivity, safeVerInputActivity.getWindow().getDecorView());
    }

    @UiThread
    public SafeVerInputActivity_ViewBinding(final SafeVerInputActivity safeVerInputActivity, View view) {
        this.target = safeVerInputActivity;
        safeVerInputActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        safeVerInputActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                safeVerInputActivity.onClick(view);
            }
        });
        safeVerInputActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        safeVerInputActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        safeVerInputActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        safeVerInputActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        safeVerInputActivity.titleRightTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTxt'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.ver_ok, "field 'verOkBtn' and method 'onClick'");
        safeVerInputActivity.verOkBtn = (TextView) Utils.castView(findRequiredView2, R.id.ver_ok, "field 'verOkBtn'", TextView.class);
        this.view7f090443 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                safeVerInputActivity.onClick(view);
            }
        });
        safeVerInputActivity.safeVerNum = (TextView) Utils.findRequiredViewAsType(view, R.id.safever_num, "field 'safeVerNum'", TextView.class);
        safeVerInputActivity.safeVerTip = (TextView) Utils.findRequiredViewAsType(view, R.id.safever_tv, "field 'safeVerTip'", TextView.class);
        safeVerInputActivity.verifyEditText = (VerifyEditText) Utils.findRequiredViewAsType(view, R.id.verifyEditText, "field 'verifyEditText'", VerifyEditText.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.bind_resend_tv, "field 'bindResendTv' and method 'onClick'");
        safeVerInputActivity.bindResendTv = (TextView) Utils.castView(findRequiredView3, R.id.bind_resend_tv, "field 'bindResendTv'", TextView.class);
        this.view7f09008f = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                safeVerInputActivity.onClick(view);
            }
        });
        safeVerInputActivity.vercodeTimer = (TextView) Utils.findRequiredViewAsType(view, R.id.vercodeTimer, "field 'vercodeTimer'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        SafeVerInputActivity safeVerInputActivity = this.target;
        if (safeVerInputActivity != null) {
            this.target = null;
            safeVerInputActivity.titleRelateLayout = null;
            safeVerInputActivity.titleLeftLayout = null;
            safeVerInputActivity.titleLeftImg = null;
            safeVerInputActivity.titleRightLayout = null;
            safeVerInputActivity.titleTV = null;
            safeVerInputActivity.titleRightImg = null;
            safeVerInputActivity.titleRightTxt = null;
            safeVerInputActivity.verOkBtn = null;
            safeVerInputActivity.safeVerNum = null;
            safeVerInputActivity.safeVerTip = null;
            safeVerInputActivity.verifyEditText = null;
            safeVerInputActivity.bindResendTv = null;
            safeVerInputActivity.vercodeTimer = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090443.setOnClickListener(null);
            this.view7f090443 = null;
            this.view7f09008f.setOnClickListener(null);
            this.view7f09008f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
