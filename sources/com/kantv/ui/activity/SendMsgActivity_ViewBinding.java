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

public class SendMsgActivity_ViewBinding implements Unbinder {
    private SendMsgActivity target;

    @UiThread
    public SendMsgActivity_ViewBinding(SendMsgActivity sendMsgActivity) {
        this(sendMsgActivity, sendMsgActivity.getWindow().getDecorView());
    }

    @UiThread
    public SendMsgActivity_ViewBinding(SendMsgActivity sendMsgActivity, View view) {
        this.target = sendMsgActivity;
        sendMsgActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        sendMsgActivity.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        sendMsgActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        sendMsgActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        sendMsgActivity.titleRightTv = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        sendMsgActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        sendMsgActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.msg_viewpager, "field 'mViewPager'", ViewPager.class);
        sendMsgActivity.mTabLayout = (TabPageIndicator) Utils.findRequiredViewAsType(view, R.id.tabLayout, "field 'mTabLayout'", TabPageIndicator.class);
    }

    @CallSuper
    public void unbind() {
        SendMsgActivity sendMsgActivity = this.target;
        if (sendMsgActivity != null) {
            this.target = null;
            sendMsgActivity.titleRelateLayout = null;
            sendMsgActivity.titleLeftLayout = null;
            sendMsgActivity.titleLeftImg = null;
            sendMsgActivity.titleRightImg = null;
            sendMsgActivity.titleRightTv = null;
            sendMsgActivity.titleTV = null;
            sendMsgActivity.mViewPager = null;
            sendMsgActivity.mTabLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
