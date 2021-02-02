package com.kantv.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class LoginActivity_ViewBinding implements Unbinder {
    private LoginActivity target;
    private View view7f090232;
    private View view7f09026a;
    private View view7f09026b;
    private View view7f09026f;
    private View view7f090270;

    @UiThread
    public LoginActivity_ViewBinding(LoginActivity loginActivity) {
        this(loginActivity, loginActivity.getWindow().getDecorView());
    }

    @UiThread
    public LoginActivity_ViewBinding(final LoginActivity loginActivity, View view) {
        this.target = loginActivity;
        loginActivity.mLoginPhone = (EditText) Utils.findRequiredViewAsType(view, R.id.login_phone, "field 'mLoginPhone'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.login_area, "field 'mLoginArea' and method 'onClick'");
        loginActivity.mLoginArea = (TextView) Utils.castView(findRequiredView, R.id.login_area, "field 'mLoginArea'", TextView.class);
        this.view7f09026a = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                loginActivity.onClick(view);
            }
        });
        loginActivity.mLoginEmail = (ImageView) Utils.findRequiredViewAsType(view, R.id.login_email, "field 'mLoginEmail'", ImageView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.login_revmobile, "field 'rmMobileImg' and method 'onClick'");
        loginActivity.rmMobileImg = (ImageView) Utils.castView(findRequiredView2, R.id.login_revmobile, "field 'rmMobileImg'", ImageView.class);
        this.view7f09026f = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                loginActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.login_btn, "field 'loginBtn' and method 'onClick'");
        loginActivity.loginBtn = (TextView) Utils.castView(findRequiredView3, R.id.login_btn, "field 'loginBtn'", TextView.class);
        this.view7f09026b = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                loginActivity.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.login_type, "field 'loginType' and method 'onClick'");
        loginActivity.loginType = (TextView) Utils.castView(findRequiredView4, R.id.login_type, "field 'loginType'", TextView.class);
        this.view7f090270 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                loginActivity.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.jump_tv, "method 'onClick'");
        this.view7f090232 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                loginActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        LoginActivity loginActivity = this.target;
        if (loginActivity != null) {
            this.target = null;
            loginActivity.mLoginPhone = null;
            loginActivity.mLoginArea = null;
            loginActivity.mLoginEmail = null;
            loginActivity.rmMobileImg = null;
            loginActivity.loginBtn = null;
            loginActivity.loginType = null;
            this.view7f09026a.setOnClickListener(null);
            this.view7f09026a = null;
            this.view7f09026f.setOnClickListener(null);
            this.view7f09026f = null;
            this.view7f09026b.setOnClickListener(null);
            this.view7f09026b = null;
            this.view7f090270.setOnClickListener(null);
            this.view7f090270 = null;
            this.view7f090232.setOnClickListener(null);
            this.view7f090232 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
