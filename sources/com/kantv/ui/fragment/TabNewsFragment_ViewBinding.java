package com.kantv.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.indicator.ScrollIndicatorView;
import com.kantv.ui.view.CircleImageView;

public class TabNewsFragment_ViewBinding implements Unbinder {
    private TabNewsFragment target;
    private View view7f09022a;
    private View view7f09022c;
    private View view7f090260;
    private View view7f090286;

    @UiThread
    public TabNewsFragment_ViewBinding(final TabNewsFragment tabNewsFragment, View view) {
        this.target = tabNewsFragment;
        tabNewsFragment.viewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.tab_new_viewPager, "field 'viewPager'", ViewPager.class);
        tabNewsFragment.scrollIndicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.moretab_new_indicator, "field 'scrollIndicatorView'", ScrollIndicatorView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.mine_head, "field 'mine_head' and method 'onClick'");
        tabNewsFragment.mine_head = (CircleImageView) Utils.castView(findRequiredView, R.id.mine_head, "field 'mine_head'", CircleImageView.class);
        this.view7f090286 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                tabNewsFragment.onClick(view);
            }
        });
        tabNewsFragment.tvSearch = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_search, "field 'tvSearch'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.ll_search, "field 'mSearchLayout' and method 'onClick'");
        tabNewsFragment.mSearchLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.ll_search, "field 'mSearchLayout'", LinearLayout.class);
        this.view7f090260 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                tabNewsFragment.onClick(view);
            }
        });
        tabNewsFragment.searchbar = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.search_rl, "field 'searchbar'", LinearLayout.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.iv_save, "field 'iv_save' and method 'onClick'");
        tabNewsFragment.iv_save = (ImageView) Utils.castView(findRequiredView3, R.id.iv_save, "field 'iv_save'", ImageView.class);
        this.view7f09022c = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                tabNewsFragment.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.iv_histroy, "field 'iv_histroy' and method 'onClick'");
        tabNewsFragment.iv_histroy = (ImageView) Utils.castView(findRequiredView4, R.id.iv_histroy, "field 'iv_histroy'", ImageView.class);
        this.view7f09022a = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                tabNewsFragment.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        TabNewsFragment tabNewsFragment = this.target;
        if (tabNewsFragment != null) {
            this.target = null;
            tabNewsFragment.viewPager = null;
            tabNewsFragment.scrollIndicatorView = null;
            tabNewsFragment.mine_head = null;
            tabNewsFragment.tvSearch = null;
            tabNewsFragment.mSearchLayout = null;
            tabNewsFragment.searchbar = null;
            tabNewsFragment.iv_save = null;
            tabNewsFragment.iv_histroy = null;
            this.view7f090286.setOnClickListener(null);
            this.view7f090286 = null;
            this.view7f090260.setOnClickListener(null);
            this.view7f090260 = null;
            this.view7f09022c.setOnClickListener(null);
            this.view7f09022c = null;
            this.view7f09022a.setOnClickListener(null);
            this.view7f09022a = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
