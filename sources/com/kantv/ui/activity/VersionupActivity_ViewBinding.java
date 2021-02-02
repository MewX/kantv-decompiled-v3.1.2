package com.kantv.ui.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class VersionupActivity_ViewBinding implements Unbinder {
    private VersionupActivity target;
    private View view7f09040c;

    @UiThread
    public VersionupActivity_ViewBinding(VersionupActivity versionupActivity) {
        this(versionupActivity, versionupActivity.getWindow().getDecorView());
    }

    @UiThread
    public VersionupActivity_ViewBinding(final VersionupActivity versionupActivity, View view) {
        this.target = versionupActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        versionupActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                versionupActivity.onClick(view);
            }
        });
        versionupActivity.mTitleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitleTv'", TextView.class);
        versionupActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        versionupActivity.mPresent = (TextView) Utils.findRequiredViewAsType(view, R.id.act_versionup_present, "field 'mPresent'", TextView.class);
        versionupActivity.mBt = (TextView) Utils.findRequiredViewAsType(view, R.id.act_versionup_bt, "field 'mBt'", TextView.class);
        versionupActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.act_versionup_title, "field 'mTitle'", TextView.class);
        versionupActivity.mText = (TextView) Utils.findRequiredViewAsType(view, R.id.act_versionup_text, "field 'mText'", TextView.class);
        versionupActivity.mInup = (TextView) Utils.findRequiredViewAsType(view, R.id.act_versionup_inup, "field 'mInup'", TextView.class);
        versionupActivity.progressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.versionup_progress, "field 'progressBar'", ProgressBar.class);
    }

    @CallSuper
    public void unbind() {
        VersionupActivity versionupActivity = this.target;
        if (versionupActivity != null) {
            this.target = null;
            versionupActivity.titleLeftLayout = null;
            versionupActivity.mTitleTv = null;
            versionupActivity.titleRightLayout = null;
            versionupActivity.mPresent = null;
            versionupActivity.mBt = null;
            versionupActivity.mTitle = null;
            versionupActivity.mText = null;
            versionupActivity.mInup = null;
            versionupActivity.progressBar = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
