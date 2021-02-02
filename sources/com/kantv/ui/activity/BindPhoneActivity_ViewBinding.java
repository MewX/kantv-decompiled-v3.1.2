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

public class BindPhoneActivity_ViewBinding implements Unbinder {
    private BindPhoneActivity target;
    private View view7f090089;
    private View view7f090091;
    private View view7f090092;
    private View view7f090096;
    private View view7f09040c;
    private View view7f090434;

    @UiThread
    public BindPhoneActivity_ViewBinding(BindPhoneActivity bindPhoneActivity) {
        this(bindPhoneActivity, bindPhoneActivity.getWindow().getDecorView());
    }

    @UiThread
    public BindPhoneActivity_ViewBinding(final BindPhoneActivity bindPhoneActivity, View view) {
        this.target = bindPhoneActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        bindPhoneActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindPhoneActivity.onClick(view);
            }
        });
        bindPhoneActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        bindPhoneActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.bind_area, "field 'bindArea' and method 'onClick'");
        bindPhoneActivity.bindArea = (TextView) Utils.castView(findRequiredView2, R.id.bind_area, "field 'bindArea'", TextView.class);
        this.view7f090089 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindPhoneActivity.onClick(view);
            }
        });
        bindPhoneActivity.bindPhone = (EditText) Utils.findRequiredViewAsType(view, R.id.bind_phone, "field 'bindPhone'", EditText.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.bind_vercode, "field 'bindVercode' and method 'onClick'");
        bindPhoneActivity.bindVercode = (EditText) Utils.castView(findRequiredView3, R.id.bind_vercode, "field 'bindVercode'", EditText.class);
        this.view7f090092 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindPhoneActivity.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.bindphone_btn, "field 'bindPhoneBtn' and method 'onClick'");
        bindPhoneActivity.bindPhoneBtn = (TextView) Utils.castView(findRequiredView4, R.id.bindphone_btn, "field 'bindPhoneBtn'", TextView.class);
        this.view7f090096 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindPhoneActivity.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.tv_vercode, "field 'vercodeTip' and method 'onClick'");
        bindPhoneActivity.vercodeTip = (TextView) Utils.castView(findRequiredView5, R.id.tv_vercode, "field 'vercodeTip'", TextView.class);
        this.view7f090434 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindPhoneActivity.onClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.bind_rm_phone, "field 'rmBindPhone' and method 'onClick'");
        bindPhoneActivity.rmBindPhone = (ImageView) Utils.castView(findRequiredView6, R.id.bind_rm_phone, "field 'rmBindPhone'", ImageView.class);
        this.view7f090091 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                bindPhoneActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        BindPhoneActivity bindPhoneActivity = this.target;
        if (bindPhoneActivity != null) {
            this.target = null;
            bindPhoneActivity.titleLeftLayout = null;
            bindPhoneActivity.mTitle = null;
            bindPhoneActivity.titleRightLayout = null;
            bindPhoneActivity.bindArea = null;
            bindPhoneActivity.bindPhone = null;
            bindPhoneActivity.bindVercode = null;
            bindPhoneActivity.bindPhoneBtn = null;
            bindPhoneActivity.vercodeTip = null;
            bindPhoneActivity.rmBindPhone = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090089.setOnClickListener(null);
            this.view7f090089 = null;
            this.view7f090092.setOnClickListener(null);
            this.view7f090092 = null;
            this.view7f090096.setOnClickListener(null);
            this.view7f090096 = null;
            this.view7f090434.setOnClickListener(null);
            this.view7f090434 = null;
            this.view7f090091.setOnClickListener(null);
            this.view7f090091 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
