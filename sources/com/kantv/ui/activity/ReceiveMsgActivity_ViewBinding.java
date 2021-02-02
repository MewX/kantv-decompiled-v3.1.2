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

public class ReceiveMsgActivity_ViewBinding implements Unbinder {
    private ReceiveMsgActivity target;

    @UiThread
    public ReceiveMsgActivity_ViewBinding(ReceiveMsgActivity receiveMsgActivity) {
        this(receiveMsgActivity, receiveMsgActivity.getWindow().getDecorView());
    }

    @UiThread
    public ReceiveMsgActivity_ViewBinding(ReceiveMsgActivity receiveMsgActivity, View view) {
        this.target = receiveMsgActivity;
        receiveMsgActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        receiveMsgActivity.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        receiveMsgActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        receiveMsgActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        receiveMsgActivity.titleRightTv = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        receiveMsgActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        receiveMsgActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.msg_viewpager, "field 'mViewPager'", ViewPager.class);
        receiveMsgActivity.mTabLayout = (TabPageIndicator) Utils.findRequiredViewAsType(view, R.id.tabLayout, "field 'mTabLayout'", TabPageIndicator.class);
    }

    @CallSuper
    public void unbind() {
        ReceiveMsgActivity receiveMsgActivity = this.target;
        if (receiveMsgActivity != null) {
            this.target = null;
            receiveMsgActivity.titleRelateLayout = null;
            receiveMsgActivity.titleLeftLayout = null;
            receiveMsgActivity.titleLeftImg = null;
            receiveMsgActivity.titleRightImg = null;
            receiveMsgActivity.titleRightTv = null;
            receiveMsgActivity.titleTV = null;
            receiveMsgActivity.mViewPager = null;
            receiveMsgActivity.mTabLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
