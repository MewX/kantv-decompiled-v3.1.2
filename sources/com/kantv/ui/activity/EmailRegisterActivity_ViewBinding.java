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

public class EmailRegisterActivity_ViewBinding implements Unbinder {
    private EmailRegisterActivity target;
    private View view7f09033a;
    private View view7f09033d;
    private View view7f09040c;

    @UiThread
    public EmailRegisterActivity_ViewBinding(EmailRegisterActivity emailRegisterActivity) {
        this(emailRegisterActivity, emailRegisterActivity.getWindow().getDecorView());
    }

    @UiThread
    public EmailRegisterActivity_ViewBinding(final EmailRegisterActivity emailRegisterActivity, View view) {
        this.target = emailRegisterActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        emailRegisterActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                emailRegisterActivity.onClick(view);
            }
        });
        emailRegisterActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        emailRegisterActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        emailRegisterActivity.regEmail = (EditText) Utils.findRequiredViewAsType(view, R.id.reg_email, "field 'regEmail'", EditText.class);
        emailRegisterActivity.regPwd = (EditText) Utils.findRequiredViewAsType(view, R.id.reg_pwd, "field 'regPwd'", EditText.class);
        emailRegisterActivity.regMorePwd = (EditText) Utils.findRequiredViewAsType(view, R.id.reg_more_pwd, "field 'regMorePwd'", EditText.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.register_btn, "field 'regBtn' and method 'onClick'");
        emailRegisterActivity.regBtn = (TextView) Utils.castView(findRequiredView2, R.id.register_btn, "field 'regBtn'", TextView.class);
        this.view7f09033d = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                emailRegisterActivity.onClick(view);
            }
        });
        emailRegisterActivity.regPwdSafe = (CheckBox) Utils.findRequiredViewAsType(view, R.id.pwd_safe, "field 'regPwdSafe'", CheckBox.class);
        emailRegisterActivity.regMorePwdSafe = (CheckBox) Utils.findRequiredViewAsType(view, R.id.pwd_again_safe, "field 'regMorePwdSafe'", CheckBox.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.reg_rm_email, "field 'rmRegEmail' and method 'onClick'");
        emailRegisterActivity.rmRegEmail = (ImageView) Utils.castView(findRequiredView3, R.id.reg_rm_email, "field 'rmRegEmail'", ImageView.class);
        this.view7f09033a = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                emailRegisterActivity.onClick(view);
            }
        });
        emailRegisterActivity.pwdPopImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.pwd_pop, "field 'pwdPopImg'", ImageView.class);
    }

    @CallSuper
    public void unbind() {
        EmailRegisterActivity emailRegisterActivity = this.target;
        if (emailRegisterActivity != null) {
            this.target = null;
            emailRegisterActivity.titleLeftLayout = null;
            emailRegisterActivity.mTitle = null;
            emailRegisterActivity.titleRightLayout = null;
            emailRegisterActivity.regEmail = null;
            emailRegisterActivity.regPwd = null;
            emailRegisterActivity.regMorePwd = null;
            emailRegisterActivity.regBtn = null;
            emailRegisterActivity.regPwdSafe = null;
            emailRegisterActivity.regMorePwdSafe = null;
            emailRegisterActivity.rmRegEmail = null;
            emailRegisterActivity.pwdPopImg = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09033d.setOnClickListener(null);
            this.view7f09033d = null;
            this.view7f09033a.setOnClickListener(null);
            this.view7f09033a = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
