package com.kantv.ui.activity;

import android.view.View;
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

public class BindEmailActivity_ViewBinding implements Unbinder {
    private BindEmailActivity target;
    private View view7f090090;
    private View view7f090094;
    private View view7f09040c;

    @UiThread
    public BindEmailActivity_ViewBinding(BindEmailActivity bindEmailActivity) {
        this(bindEmailActivity, bindEmailActivity.getWindow().getDecorView());
    }

    @UiThread
    public BindEmailActivity_ViewBinding(final BindEmailActivity bindEmailActivity, View view) {
        this.target = bindEmailActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        bindEmailActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindEmailActivity.onClick(view);
            }
        });
        bindEmailActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        bindEmailActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        bindEmailActivity.bindEmail = (EditText) Utils.findRequiredViewAsType(view, R.id.bind_email, "field 'bindEmail'", EditText.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.bindemail_btn, "field 'bindEmailBtn' and method 'onClick'");
        bindEmailActivity.bindEmailBtn = (TextView) Utils.castView(findRequiredView2, R.id.bindemail_btn, "field 'bindEmailBtn'", TextView.class);
        this.view7f090094 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindEmailActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.bind_rm_email, "field 'rmBindEmail' and method 'onClick'");
        bindEmailActivity.rmBindEmail = (ImageView) Utils.castView(findRequiredView3, R.id.bind_rm_email, "field 'rmBindEmail'", ImageView.class);
        this.view7f090090 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindEmailActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        BindEmailActivity bindEmailActivity = this.target;
        if (bindEmailActivity != null) {
            this.target = null;
            bindEmailActivity.titleLeftLayout = null;
            bindEmailActivity.mTitle = null;
            bindEmailActivity.titleRightLayout = null;
            bindEmailActivity.bindEmail = null;
            bindEmailActivity.bindEmailBtn = null;
            bindEmailActivity.rmBindEmail = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090094.setOnClickListener(null);
            this.view7f090094 = null;
            this.view7f090090.setOnClickListener(null);
            this.view7f090090 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
