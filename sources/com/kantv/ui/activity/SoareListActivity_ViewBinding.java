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
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.TabPageIndicator;

public class SoareListActivity_ViewBinding implements Unbinder {
    private SoareListActivity target;
    private View view7f09040c;
    private View view7f09040e;

    @UiThread
    public SoareListActivity_ViewBinding(SoareListActivity soareListActivity) {
        this(soareListActivity, soareListActivity.getWindow().getDecorView());
    }

    @UiThread
    public SoareListActivity_ViewBinding(final SoareListActivity soareListActivity, View view) {
        this.target = soareListActivity;
        soareListActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        soareListActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                soareListActivity.onClick(view);
            }
        });
        soareListActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        soareListActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        soareListActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        soareListActivity.hotListBg = (ImageView) Utils.findRequiredViewAsType(view, R.id.hot_list_bg, "field 'hotListBg'", ImageView.class);
        soareListActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewpager, "field 'mViewPager'", ViewPager.class);
        soareListActivity.mTabLayout = (TabPageIndicator) Utils.findRequiredViewAsType(view, R.id.tabLayout, "field 'mTabLayout'", TabPageIndicator.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.title_right_ll, "method 'onClick'");
        this.view7f09040e = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                soareListActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        SoareListActivity soareListActivity = this.target;
        if (soareListActivity != null) {
            this.target = null;
            soareListActivity.titleRelateLayout = null;
            soareListActivity.titleLeftLayout = null;
            soareListActivity.titleLeftImg = null;
            soareListActivity.titleTV = null;
            soareListActivity.titleRightImg = null;
            soareListActivity.hotListBg = null;
            soareListActivity.mViewPager = null;
            soareListActivity.mTabLayout = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
