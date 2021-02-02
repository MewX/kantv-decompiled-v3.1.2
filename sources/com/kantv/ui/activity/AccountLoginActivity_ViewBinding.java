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

public class AccountLoginActivity_ViewBinding implements Unbinder {
    private AccountLoginActivity target;
    private View view7f09002d;
    private View view7f09002e;
    private View view7f090031;
    private View view7f090156;
    private View view7f090352;
    private View view7f09040c;
    private View view7f090430;

    @UiThread
    public AccountLoginActivity_ViewBinding(AccountLoginActivity accountLoginActivity) {
        this(accountLoginActivity, accountLoginActivity.getWindow().getDecorView());
    }

    @UiThread
    public AccountLoginActivity_ViewBinding(final AccountLoginActivity accountLoginActivity, View view) {
        this.target = accountLoginActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        accountLoginActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                accountLoginActivity.onClick(view);
            }
        });
        accountLoginActivity.titleTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTxt'", TextView.class);
        accountLoginActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.tv_right, "field 'titleRightTxt' and method 'onClick'");
        accountLoginActivity.titleRightTxt = (TextView) Utils.castView(findRequiredView2, R.id.tv_right, "field 'titleRightTxt'", TextView.class);
        this.view7f090430 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                accountLoginActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.account_area, "field 'accountArea' and method 'onClick'");
        accountLoginActivity.accountArea = (TextView) Utils.castView(findRequiredView3, R.id.account_area, "field 'accountArea'", TextView.class);
        this.view7f09002d = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                accountLoginActivity.onClick(view);
            }
        });
        accountLoginActivity.accountPhone = (EditText) Utils.findRequiredViewAsType(view, R.id.account_phone, "field 'accountPhone'", EditText.class);
        accountLoginActivity.accountPwd = (EditText) Utils.findRequiredViewAsType(view, R.id.account_pwd, "field 'accountPwd'", EditText.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.account_btn, "field 'accountBtn' and method 'onClick'");
        accountLoginActivity.accountBtn = (TextView) Utils.castView(findRequiredView4, R.id.account_btn, "field 'accountBtn'", TextView.class);
        this.view7f09002e = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                accountLoginActivity.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.rm_account, "field 'rmAccountImg' and method 'onClick'");
        accountLoginActivity.rmAccountImg = (ImageView) Utils.castView(findRequiredView5, R.id.rm_account, "field 'rmAccountImg'", ImageView.class);
        this.view7f090352 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                accountLoginActivity.onClick(view);
            }
        });
        accountLoginActivity.pwdSafe = (CheckBox) Utils.findRequiredViewAsType(view, R.id.account_pwd_safe, "field 'pwdSafe'", CheckBox.class);
        View findRequiredView6 = Utils.findRequiredView(view, R.id.account_login_type, "field 'accountLoginType' and method 'onClick'");
        accountLoginActivity.accountLoginType = (TextView) Utils.castView(findRequiredView6, R.id.account_login_type, "field 'accountLoginType'", TextView.class);
        this.view7f090031 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                accountLoginActivity.onClick(view);
            }
        });
        accountLoginActivity.accountLoginEmail = (ImageView) Utils.findRequiredViewAsType(view, R.id.account_login_email, "field 'accountLoginEmail'", ImageView.class);
        View findRequiredView7 = Utils.findRequiredView(view, R.id.forget_pwd, "method 'onClick'");
        this.view7f090156 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                accountLoginActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        AccountLoginActivity accountLoginActivity = this.target;
        if (accountLoginActivity != null) {
            this.target = null;
            accountLoginActivity.titleLeftLayout = null;
            accountLoginActivity.titleTxt = null;
            accountLoginActivity.titleRightImg = null;
            accountLoginActivity.titleRightTxt = null;
            accountLoginActivity.accountArea = null;
            accountLoginActivity.accountPhone = null;
            accountLoginActivity.accountPwd = null;
            accountLoginActivity.accountBtn = null;
            accountLoginActivity.rmAccountImg = null;
            accountLoginActivity.pwdSafe = null;
            accountLoginActivity.accountLoginType = null;
            accountLoginActivity.accountLoginEmail = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090430.setOnClickListener(null);
            this.view7f090430 = null;
            this.view7f09002d.setOnClickListener(null);
            this.view7f09002d = null;
            this.view7f09002e.setOnClickListener(null);
            this.view7f09002e = null;
            this.view7f090352.setOnClickListener(null);
            this.view7f090352 = null;
            this.view7f090031.setOnClickListener(null);
            this.view7f090031 = null;
            this.view7f090156.setOnClickListener(null);
            this.view7f090156 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
