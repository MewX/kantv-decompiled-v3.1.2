package com.kantv.ui.fragment;

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
import com.kantv.lib.indicator.ScrollIndicatorView;

public class TabTvFragment_ViewBinding implements Unbinder {
    private TabTvFragment target;
    private View view7f09013f;
    private View view7f090260;
    private View view7f090286;

    @UiThread
    public TabTvFragment_ViewBinding(final TabTvFragment tabTvFragment, View view) {
        this.target = tabTvFragment;
        tabTvFragment.viewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.tab_top_viewPager, "field 'viewPager'", ViewPager.class);
        tabTvFragment.scrollIndicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.moretab_indicator, "field 'scrollIndicatorView'", ScrollIndicatorView.class);
        tabTvFragment.tvSearch = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_search, "field 'tvSearch'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.ll_search, "field 'mSearchLayout' and method 'onClick'");
        tabTvFragment.mSearchLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.ll_search, "field 'mSearchLayout'", LinearLayout.class);
        this.view7f090260 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                tabTvFragment.onClick(view);
            }
        });
        tabTvFragment.searchbar = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.search_rl, "field 'searchbar'", RelativeLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.feedback, "field 'feedBackImg' and method 'onClick'");
        tabTvFragment.feedBackImg = (ImageView) Utils.castView(findRequiredView2, R.id.feedback, "field 'feedBackImg'", ImageView.class);
        this.view7f09013f = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                tabTvFragment.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.mine_head, "method 'onClick'");
        this.view7f090286 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                tabTvFragment.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        TabTvFragment tabTvFragment = this.target;
        if (tabTvFragment != null) {
            this.target = null;
            tabTvFragment.viewPager = null;
            tabTvFragment.scrollIndicatorView = null;
            tabTvFragment.tvSearch = null;
            tabTvFragment.mSearchLayout = null;
            tabTvFragment.searchbar = null;
            tabTvFragment.feedBackImg = null;
            this.view7f090260.setOnClickListener(null);
            this.view7f090260 = null;
            this.view7f09013f.setOnClickListener(null);
            this.view7f09013f = null;
            this.view7f090286.setOnClickListener(null);
            this.view7f090286 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
