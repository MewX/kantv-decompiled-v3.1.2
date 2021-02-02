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
import com.kantv.lib.indicator.ScrollIndicatorView;

public class NewCollectHistroyActivity_ViewBinding implements Unbinder {
    private NewCollectHistroyActivity target;
    private View view7f090069;
    private View view7f0900d2;

    @UiThread
    public NewCollectHistroyActivity_ViewBinding(NewCollectHistroyActivity newCollectHistroyActivity) {
        this(newCollectHistroyActivity, newCollectHistroyActivity.getWindow().getDecorView());
    }

    @UiThread
    public NewCollectHistroyActivity_ViewBinding(final NewCollectHistroyActivity newCollectHistroyActivity, View view) {
        this.target = newCollectHistroyActivity;
        newCollectHistroyActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        newCollectHistroyActivity.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        newCollectHistroyActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        newCollectHistroyActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        newCollectHistroyActivity.titleRightTv = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        newCollectHistroyActivity.collectEditLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.collect_edit_ll, "field 'collectEditLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.all_collect_choice, "field 'allCollectChoice' and method 'onClick'");
        newCollectHistroyActivity.allCollectChoice = (TextView) Utils.castView(findRequiredView, R.id.all_collect_choice, "field 'allCollectChoice'", TextView.class);
        this.view7f090069 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newCollectHistroyActivity.onClick(view);
            }
        });
        newCollectHistroyActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewPager, "field 'mViewPager'", ViewPager.class);
        newCollectHistroyActivity.mScrollIndicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.scrollIndicatorView, "field 'mScrollIndicatorView'", ScrollIndicatorView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.collect_delete, "method 'onClick'");
        this.view7f0900d2 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newCollectHistroyActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        NewCollectHistroyActivity newCollectHistroyActivity = this.target;
        if (newCollectHistroyActivity != null) {
            this.target = null;
            newCollectHistroyActivity.titleRelateLayout = null;
            newCollectHistroyActivity.titleLeftLayout = null;
            newCollectHistroyActivity.titleLeftImg = null;
            newCollectHistroyActivity.titleRightImg = null;
            newCollectHistroyActivity.titleRightTv = null;
            newCollectHistroyActivity.collectEditLayout = null;
            newCollectHistroyActivity.allCollectChoice = null;
            newCollectHistroyActivity.mViewPager = null;
            newCollectHistroyActivity.mScrollIndicatorView = null;
            this.view7f090069.setOnClickListener(null);
            this.view7f090069 = null;
            this.view7f0900d2.setOnClickListener(null);
            this.view7f0900d2 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
