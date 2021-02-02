package com.kantv.ui.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.TabPageIndicator;

public class StarActivity_ViewBinding implements Unbinder {
    private StarActivity target;
    private View view7f090186;
    private View view7f0903cc;
    private View view7f0903d2;

    @UiThread
    public StarActivity_ViewBinding(StarActivity starActivity) {
        this(starActivity, starActivity.getWindow().getDecorView());
    }

    @UiThread
    public StarActivity_ViewBinding(final StarActivity starActivity, View view) {
        this.target = starActivity;
        starActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.act_star_viewpager, "field 'mViewPager'", ViewPager.class);
        starActivity.mTabLayout = (TabPageIndicator) Utils.findRequiredViewAsType(view, R.id.star_tabLayout, "field 'mTabLayout'", TabPageIndicator.class);
        starActivity.mStarHeadBg = (ImageView) Utils.findRequiredViewAsType(view, R.id.star_head_bg, "field 'mStarHeadBg'", ImageView.class);
        starActivity.mHead = (ImageView) Utils.findRequiredViewAsType(view, R.id.star_head, "field 'mHead'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.star_share, "field 'mShareBt' and method 'onClick'");
        starActivity.mShareBt = (ImageView) Utils.castView(findRequiredView, R.id.star_share, "field 'mShareBt'", ImageView.class);
        this.view7f0903d2 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                starActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.star_exit, "field 'starExitImg' and method 'onClick'");
        starActivity.starExitImg = (ImageView) Utils.castView(findRequiredView2, R.id.star_exit, "field 'starExitImg'", ImageView.class);
        this.view7f0903cc = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                starActivity.onClick(view);
            }
        });
        starActivity.mStarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.star_title, "field 'mStarTitle'", TextView.class);
        starActivity.mStarPlace = (TextView) Utils.findRequiredViewAsType(view, R.id.star_place, "field 'mStarPlace'", TextView.class);
        starActivity.mStarMsg = (TextView) Utils.findRequiredViewAsType(view, R.id.star_msg, "field 'mStarMsg'", TextView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.head_layout, "field 'starAboutLayout' and method 'onClick'");
        starActivity.starAboutLayout = (FrameLayout) Utils.castView(findRequiredView3, R.id.head_layout, "field 'starAboutLayout'", FrameLayout.class);
        this.view7f090186 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                starActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        StarActivity starActivity = this.target;
        if (starActivity != null) {
            this.target = null;
            starActivity.mViewPager = null;
            starActivity.mTabLayout = null;
            starActivity.mStarHeadBg = null;
            starActivity.mHead = null;
            starActivity.mShareBt = null;
            starActivity.starExitImg = null;
            starActivity.mStarTitle = null;
            starActivity.mStarPlace = null;
            starActivity.mStarMsg = null;
            starActivity.starAboutLayout = null;
            this.view7f0903d2.setOnClickListener(null);
            this.view7f0903d2 = null;
            this.view7f0903cc.setOnClickListener(null);
            this.view7f0903cc = null;
            this.view7f090186.setOnClickListener(null);
            this.view7f090186 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
