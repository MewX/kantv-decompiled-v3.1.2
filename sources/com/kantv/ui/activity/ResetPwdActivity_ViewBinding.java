package com.kantv.ui.activity;

import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class ResetPwdActivity_ViewBinding implements Unbinder {
    private ResetPwdActivity target;
    private View view7f090344;
    private View view7f090345;
    private View view7f090346;
    private View view7f09034b;
    private View view7f09034c;
    private View view7f09034d;
    private View view7f09040c;
    private View view7f090445;

    @UiThread
    public ResetPwdActivity_ViewBinding(ResetPwdActivity resetPwdActivity) {
        this(resetPwdActivity, resetPwdActivity.getWindow().getDecorView());
    }

    @UiThread
    public ResetPwdActivity_ViewBinding(final ResetPwdActivity resetPwdActivity, View view) {
        this.target = resetPwdActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        resetPwdActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                resetPwdActivity.onClick(view);
            }
        });
        resetPwdActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        resetPwdActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.reset_area, "field 'resetArea' and method 'onClick'");
        resetPwdActivity.resetArea = (TextView) Utils.castView(findRequiredView2, R.id.reset_area, "field 'resetArea'", TextView.class);
        this.view7f090344 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                resetPwdActivity.onClick(view);
            }
        });
        resetPwdActivity.resetPhone = (EditText) Utils.findRequiredViewAsType(view, R.id.reset_phone, "field 'resetPhone'", EditText.class);
        resetPwdActivity.resetPassword = (EditText) Utils.findRequiredViewAsType(view, R.id.reset_pwd, "field 'resetPassword'", EditText.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.vercode_tip, "field 'vercodeTip' and method 'onClick'");
        resetPwdActivity.vercodeTip = (TextView) Utils.castView(findRequiredView3, R.id.vercode_tip, "field 'vercodeTip'", TextView.class);
        this.view7f090445 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                resetPwdActivity.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.reset_vercode, "field 'resetVercode' and method 'onClick'");
        resetPwdActivity.resetVercode = (EditText) Utils.castView(findRequiredView4, R.id.reset_vercode, "field 'resetVercode'", EditText.class);
        this.view7f09034c = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                resetPwdActivity.onClick(view);
            }
        });
        resetPwdActivity.resetPwdSafe = (CheckBox) Utils.findRequiredViewAsType(view, R.id.reset_pwd_safe, "field 'resetPwdSafe'", CheckBox.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.reset_btn, "field 'resetBtn' and method 'onClick'");
        resetPwdActivity.resetBtn = (TextView) Utils.castView(findRequiredView5, R.id.reset_btn, "field 'resetBtn'", TextView.class);
        this.view7f090345 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                resetPwdActivity.onClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.reset_rm_phone, "field 'rmPhoneImg' and method 'onClick'");
        resetPwdActivity.rmPhoneImg = (ImageView) Utils.castView(findRequiredView6, R.id.reset_rm_phone, "field 'rmPhoneImg'", ImageView.class);
        this.view7f09034b = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                resetPwdActivity.onClick(view);
            }
        });
        resetPwdActivity.rmEmailImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.reset_rm_email, "field 'rmEmailImg'", ImageView.class);
        resetPwdActivity.emailResetPwdLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.email_resetpwd_ll, "field 'emailResetPwdLayout'", LinearLayout.class);
        resetPwdActivity.phoneResetPwdLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.phone_resetpwd_ll, "field 'phoneResetPwdLayout'", LinearLayout.class);
        View findRequiredView7 = Utils.findRequiredView(view, R.id.resetpwd_login_type, "field 'resetPwdLoginType' and method 'onClick'");
        resetPwdActivity.resetPwdLoginType = (TextView) Utils.castView(findRequiredView7, R.id.resetpwd_login_type, "field 'resetPwdLoginType'", TextView.class);
        this.view7f09034d = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                resetPwdActivity.onClick(view);
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, R.id.reset_email_pwd, "field 'resetEmailPwd' and method 'onClick'");
        resetPwdActivity.resetEmailPwd = (TextView) Utils.castView(findRequiredView8, R.id.reset_email_pwd, "field 'resetEmailPwd'", TextView.class);
        this.view7f090346 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                resetPwdActivity.onClick(view);
            }
        });
        resetPwdActivity.accountEmail = (EditText) Utils.findRequiredViewAsType(view, R.id.account_email, "field 'accountEmail'", EditText.class);
    }

    @CallSuper
    public void unbind() {
        ResetPwdActivity resetPwdActivity = this.target;
        if (resetPwdActivity != null) {
            this.target = null;
            resetPwdActivity.titleLeftLayout = null;
            resetPwdActivity.mTitle = null;
            resetPwdActivity.titleRightLayout = null;
            resetPwdActivity.resetArea = null;
            resetPwdActivity.resetPhone = null;
            resetPwdActivity.resetPassword = null;
            resetPwdActivity.vercodeTip = null;
            resetPwdActivity.resetVercode = null;
            resetPwdActivity.resetPwdSafe = null;
            resetPwdActivity.resetBtn = null;
            resetPwdActivity.rmPhoneImg = null;
            resetPwdActivity.rmEmailImg = null;
            resetPwdActivity.emailResetPwdLayout = null;
            resetPwdActivity.phoneResetPwdLayout = null;
            resetPwdActivity.resetPwdLoginType = null;
            resetPwdActivity.resetEmailPwd = null;
            resetPwdActivity.accountEmail = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090344.setOnClickListener(null);
            this.view7f090344 = null;
            this.view7f090445.setOnClickListener(null);
            this.view7f090445 = null;
            this.view7f09034c.setOnClickListener(null);
            this.view7f09034c = null;
            this.view7f090345.setOnClickListener(null);
            this.view7f090345 = null;
            this.view7f09034b.setOnClickListener(null);
            this.view7f09034b = null;
            this.view7f09034d.setOnClickListener(null);
            this.view7f09034d = null;
            this.view7f090346.setOnClickListener(null);
            this.view7f090346 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
