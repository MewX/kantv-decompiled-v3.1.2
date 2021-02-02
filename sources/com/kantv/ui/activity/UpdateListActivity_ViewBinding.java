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

public class UpdateListActivity_ViewBinding implements Unbinder {
    private UpdateListActivity target;
    private View view7f09040c;
    private View view7f09040e;

    @UiThread
    public UpdateListActivity_ViewBinding(UpdateListActivity updateListActivity) {
        this(updateListActivity, updateListActivity.getWindow().getDecorView());
    }

    @UiThread
    public UpdateListActivity_ViewBinding(final UpdateListActivity updateListActivity, View view) {
        this.target = updateListActivity;
        updateListActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        updateListActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                updateListActivity.onClick(view);
            }
        });
        updateListActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        updateListActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        updateListActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        updateListActivity.hotListBg = (ImageView) Utils.findRequiredViewAsType(view, R.id.hot_list_bg, "field 'hotListBg'", ImageView.class);
        updateListActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewpager, "field 'mViewPager'", ViewPager.class);
        updateListActivity.mTabLayout = (TabPageIndicator) Utils.findRequiredViewAsType(view, R.id.tabLayout, "field 'mTabLayout'", TabPageIndicator.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.title_right_ll, "method 'onClick'");
        this.view7f09040e = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                updateListActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        UpdateListActivity updateListActivity = this.target;
        if (updateListActivity != null) {
            this.target = null;
            updateListActivity.titleRelateLayout = null;
            updateListActivity.titleLeftLayout = null;
            updateListActivity.titleLeftImg = null;
            updateListActivity.titleTV = null;
            updateListActivity.titleRightImg = null;
            updateListActivity.hotListBg = null;
            updateListActivity.mViewPager = null;
            updateListActivity.mTabLayout = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
