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

public class RegisterActivity_ViewBinding implements Unbinder {
    private RegisterActivity target;
    private View view7f090335;
    private View view7f09033b;
    private View view7f09033c;
    private View view7f09033d;
    private View view7f09040c;
    private View view7f090434;

    @UiThread
    public RegisterActivity_ViewBinding(RegisterActivity registerActivity) {
        this(registerActivity, registerActivity.getWindow().getDecorView());
    }

    @UiThread
    public RegisterActivity_ViewBinding(final RegisterActivity registerActivity, View view) {
        this.target = registerActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        registerActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                registerActivity.onClick(view);
            }
        });
        registerActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        registerActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.reg_area, "field 'regArea' and method 'onClick'");
        registerActivity.regArea = (TextView) Utils.castView(findRequiredView2, R.id.reg_area, "field 'regArea'", TextView.class);
        this.view7f090335 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                registerActivity.onClick(view);
            }
        });
        registerActivity.regPhone = (EditText) Utils.findRequiredViewAsType(view, R.id.reg_phone, "field 'regPhone'", EditText.class);
        registerActivity.regPwd = (EditText) Utils.findRequiredViewAsType(view, R.id.reg_pwd, "field 'regPwd'", EditText.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.reg_vercode, "field 'regVercode' and method 'onClick'");
        registerActivity.regVercode = (EditText) Utils.castView(findRequiredView3, R.id.reg_vercode, "field 'regVercode'", EditText.class);
        this.view7f09033c = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                registerActivity.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.register_btn, "field 'regBtn' and method 'onClick'");
        registerActivity.regBtn = (TextView) Utils.castView(findRequiredView4, R.id.register_btn, "field 'regBtn'", TextView.class);
        this.view7f09033d = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                registerActivity.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.tv_vercode, "field 'vercodeTip' and method 'onClick'");
        registerActivity.vercodeTip = (TextView) Utils.castView(findRequiredView5, R.id.tv_vercode, "field 'vercodeTip'", TextView.class);
        this.view7f090434 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                registerActivity.onClick(view);
            }
        });
        registerActivity.regPwdSafe = (CheckBox) Utils.findRequiredViewAsType(view, R.id.pwd_safe, "field 'regPwdSafe'", CheckBox.class);
        View findRequiredView6 = Utils.findRequiredView(view, R.id.reg_rm_phone, "field 'rmRegPhone' and method 'onClick'");
        registerActivity.rmRegPhone = (ImageView) Utils.castView(findRequiredView6, R.id.reg_rm_phone, "field 'rmRegPhone'", ImageView.class);
        this.view7f09033b = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                registerActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        RegisterActivity registerActivity = this.target;
        if (registerActivity != null) {
            this.target = null;
            registerActivity.titleLeftLayout = null;
            registerActivity.mTitle = null;
            registerActivity.titleRightLayout = null;
            registerActivity.regArea = null;
            registerActivity.regPhone = null;
            registerActivity.regPwd = null;
            registerActivity.regVercode = null;
            registerActivity.regBtn = null;
            registerActivity.vercodeTip = null;
            registerActivity.regPwdSafe = null;
            registerActivity.rmRegPhone = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090335.setOnClickListener(null);
            this.view7f090335 = null;
            this.view7f09033c.setOnClickListener(null);
            this.view7f09033c = null;
            this.view7f09033d.setOnClickListener(null);
            this.view7f09033d = null;
            this.view7f090434.setOnClickListener(null);
            this.view7f090434 = null;
            this.view7f09033b.setOnClickListener(null);
            this.view7f09033b = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
