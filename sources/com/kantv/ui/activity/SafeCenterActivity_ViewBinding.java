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

public class SafeCenterActivity_ViewBinding implements Unbinder {
    private SafeCenterActivity target;
    private View view7f09035a;
    private View view7f09035b;
    private View view7f09040c;

    @UiThread
    public SafeCenterActivity_ViewBinding(SafeCenterActivity safeCenterActivity) {
        this(safeCenterActivity, safeCenterActivity.getWindow().getDecorView());
    }

    @UiThread
    public SafeCenterActivity_ViewBinding(final SafeCenterActivity safeCenterActivity, View view) {
        this.target = safeCenterActivity;
        safeCenterActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        safeCenterActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                safeCenterActivity.onClick(view);
            }
        });
        safeCenterActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        safeCenterActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        safeCenterActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        safeCenterActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        safeCenterActivity.titleRightTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTxt'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.safecenter_phone, "field 'safecenter_phone' and method 'onClick'");
        safeCenterActivity.safecenter_phone = (LinearLayout) Utils.castView(findRequiredView2, R.id.safecenter_phone, "field 'safecenter_phone'", LinearLayout.class);
        this.view7f09035b = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                safeCenterActivity.onClick(view);
            }
        });
        safeCenterActivity.bindPhoneTv = (TextView) Utils.findRequiredViewAsType(view, R.id.bindphone, "field 'bindPhoneTv'", TextView.class);
        safeCenterActivity.bindEmailTv = (TextView) Utils.findRequiredViewAsType(view, R.id.bindemail, "field 'bindEmailTv'", TextView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.safecenter_email, "method 'onClick'");
        this.view7f09035a = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                safeCenterActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        SafeCenterActivity safeCenterActivity = this.target;
        if (safeCenterActivity != null) {
            this.target = null;
            safeCenterActivity.titleRelateLayout = null;
            safeCenterActivity.titleLeftLayout = null;
            safeCenterActivity.titleLeftImg = null;
            safeCenterActivity.titleRightLayout = null;
            safeCenterActivity.titleTV = null;
            safeCenterActivity.titleRightImg = null;
            safeCenterActivity.titleRightTxt = null;
            safeCenterActivity.safecenter_phone = null;
            safeCenterActivity.bindPhoneTv = null;
            safeCenterActivity.bindEmailTv = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09035b.setOnClickListener(null);
            this.view7f09035b = null;
            this.view7f09035a.setOnClickListener(null);
            this.view7f09035a = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
