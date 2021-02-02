package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class StarAboutActivity_ViewBinding implements Unbinder {
    private StarAboutActivity target;
    private View view7f09040e;

    @UiThread
    public StarAboutActivity_ViewBinding(StarAboutActivity starAboutActivity) {
        this(starAboutActivity, starAboutActivity.getWindow().getDecorView());
    }

    @UiThread
    public StarAboutActivity_ViewBinding(final StarAboutActivity starAboutActivity, View view) {
        this.target = starAboutActivity;
        starAboutActivity.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        starAboutActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_right_ll, "field 'titleRightLayout' and method 'onClick'");
        starAboutActivity.titleRightLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        this.view7f09040e = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                starAboutActivity.onClick(view);
            }
        });
        starAboutActivity.starDetailImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.star_detail_bg, "field 'starDetailImg'", ImageView.class);
        starAboutActivity.starNameTv = (TextView) Utils.findRequiredViewAsType(view, R.id.starName, "field 'starNameTv'", TextView.class);
        starAboutActivity.starAboutTv = (TextView) Utils.findRequiredViewAsType(view, R.id.starAbout, "field 'starAboutTv'", TextView.class);
        starAboutActivity.starPlaceTv = (TextView) Utils.findRequiredViewAsType(view, R.id.starPlace, "field 'starPlaceTv'", TextView.class);
        starAboutActivity.starMsgTv = (TextView) Utils.findRequiredViewAsType(view, R.id.starMsg, "field 'starMsgTv'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        StarAboutActivity starAboutActivity = this.target;
        if (starAboutActivity != null) {
            this.target = null;
            starAboutActivity.titleLeftLayout = null;
            starAboutActivity.mTitle = null;
            starAboutActivity.titleRightLayout = null;
            starAboutActivity.starDetailImg = null;
            starAboutActivity.starNameTv = null;
            starAboutActivity.starAboutTv = null;
            starAboutActivity.starPlaceTv = null;
            starAboutActivity.starMsgTv = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
