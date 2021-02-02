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

public class HotListActivity_ViewBinding implements Unbinder {
    private HotListActivity target;
    private View view7f09040c;
    private View view7f09040e;

    @UiThread
    public HotListActivity_ViewBinding(HotListActivity hotListActivity) {
        this(hotListActivity, hotListActivity.getWindow().getDecorView());
    }

    @UiThread
    public HotListActivity_ViewBinding(final HotListActivity hotListActivity, View view) {
        this.target = hotListActivity;
        hotListActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        hotListActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                hotListActivity.onClick(view);
            }
        });
        hotListActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        hotListActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        hotListActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        hotListActivity.hotListBg = (ImageView) Utils.findRequiredViewAsType(view, R.id.hot_list_bg, "field 'hotListBg'", ImageView.class);
        hotListActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewpager, "field 'mViewPager'", ViewPager.class);
        hotListActivity.mTabLayout = (TabPageIndicator) Utils.findRequiredViewAsType(view, R.id.tabLayout, "field 'mTabLayout'", TabPageIndicator.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.title_right_ll, "method 'onClick'");
        this.view7f09040e = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                hotListActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        HotListActivity hotListActivity = this.target;
        if (hotListActivity != null) {
            this.target = null;
            hotListActivity.titleRelateLayout = null;
            hotListActivity.titleLeftLayout = null;
            hotListActivity.titleLeftImg = null;
            hotListActivity.titleTV = null;
            hotListActivity.titleRightImg = null;
            hotListActivity.hotListBg = null;
            hotListActivity.mViewPager = null;
            hotListActivity.mTabLayout = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
