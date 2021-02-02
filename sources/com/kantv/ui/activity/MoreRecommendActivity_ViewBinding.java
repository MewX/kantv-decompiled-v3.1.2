package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class MoreRecommendActivity_ViewBinding implements Unbinder {
    private MoreRecommendActivity target;
    private View view7f09040c;

    @UiThread
    public MoreRecommendActivity_ViewBinding(MoreRecommendActivity moreRecommendActivity) {
        this(moreRecommendActivity, moreRecommendActivity.getWindow().getDecorView());
    }

    @UiThread
    public MoreRecommendActivity_ViewBinding(final MoreRecommendActivity moreRecommendActivity, View view) {
        this.target = moreRecommendActivity;
        moreRecommendActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        moreRecommendActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                moreRecommendActivity.onClick(view);
            }
        });
        moreRecommendActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        moreRecommendActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        moreRecommendActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        moreRecommendActivity.moreRecommendRV = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.more_recommend_rv, "field 'moreRecommendRV'", XRecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        MoreRecommendActivity moreRecommendActivity = this.target;
        if (moreRecommendActivity != null) {
            this.target = null;
            moreRecommendActivity.titleRelateLayout = null;
            moreRecommendActivity.titleLeftLayout = null;
            moreRecommendActivity.titleLeftImg = null;
            moreRecommendActivity.titleTV = null;
            moreRecommendActivity.titleRightImg = null;
            moreRecommendActivity.moreRecommendRV = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
