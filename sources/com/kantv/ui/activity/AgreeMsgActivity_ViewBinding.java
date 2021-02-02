package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.TabPageIndicator;

public class AgreeMsgActivity_ViewBinding implements Unbinder {
    private AgreeMsgActivity target;

    @UiThread
    public AgreeMsgActivity_ViewBinding(AgreeMsgActivity agreeMsgActivity) {
        this(agreeMsgActivity, agreeMsgActivity.getWindow().getDecorView());
    }

    @UiThread
    public AgreeMsgActivity_ViewBinding(AgreeMsgActivity agreeMsgActivity, View view) {
        this.target = agreeMsgActivity;
        agreeMsgActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        agreeMsgActivity.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        agreeMsgActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        agreeMsgActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        agreeMsgActivity.titleRightTv = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        agreeMsgActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        agreeMsgActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.msg_viewpager, "field 'mViewPager'", ViewPager.class);
        agreeMsgActivity.mTabLayout = (TabPageIndicator) Utils.findRequiredViewAsType(view, R.id.tabLayout, "field 'mTabLayout'", TabPageIndicator.class);
    }

    @CallSuper
    public void unbind() {
        AgreeMsgActivity agreeMsgActivity = this.target;
        if (agreeMsgActivity != null) {
            this.target = null;
            agreeMsgActivity.titleRelateLayout = null;
            agreeMsgActivity.titleLeftLayout = null;
            agreeMsgActivity.titleLeftImg = null;
            agreeMsgActivity.titleRightImg = null;
            agreeMsgActivity.titleRightTv = null;
            agreeMsgActivity.titleTV = null;
            agreeMsgActivity.mViewPager = null;
            agreeMsgActivity.mTabLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
