package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class FilterActivity_ViewBinding implements Unbinder {
    private FilterActivity target;
    private View view7f09040c;
    private View view7f09040e;

    @UiThread
    public FilterActivity_ViewBinding(FilterActivity filterActivity) {
        this(filterActivity, filterActivity.getWindow().getDecorView());
    }

    @UiThread
    public FilterActivity_ViewBinding(final FilterActivity filterActivity, View view) {
        this.target = filterActivity;
        filterActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        filterActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                filterActivity.onClick(view);
            }
        });
        filterActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        filterActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        filterActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        filterActivity.filterItemRV = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.filter_item_rv, "field 'filterItemRV'", RecyclerView.class);
        filterActivity.filterHead = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.filter_head, "field 'filterHead'", LinearLayout.class);
        filterActivity.filterTV = (TextView) Utils.findRequiredViewAsType(view, R.id.filter_tv, "field 'filterTV'", TextView.class);
        filterActivity.mFilterXRV = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.filter_rv, "field 'mFilterXRV'", XRecyclerView.class);
        filterActivity.filterToolBarLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.filter_toolbar, "field 'filterToolBarLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.title_right_ll, "method 'onClick'");
        this.view7f09040e = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                filterActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        FilterActivity filterActivity = this.target;
        if (filterActivity != null) {
            this.target = null;
            filterActivity.titleRelateLayout = null;
            filterActivity.titleLeftLayout = null;
            filterActivity.titleLeftImg = null;
            filterActivity.titleTV = null;
            filterActivity.titleRightImg = null;
            filterActivity.filterItemRV = null;
            filterActivity.filterHead = null;
            filterActivity.filterTV = null;
            filterActivity.mFilterXRV = null;
            filterActivity.filterToolBarLayout = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
