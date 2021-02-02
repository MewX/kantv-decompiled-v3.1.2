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

public class CollectActivity_ViewBinding implements Unbinder {
    private CollectActivity target;
    private View view7f090069;
    private View view7f0900d2;

    @UiThread
    public CollectActivity_ViewBinding(CollectActivity collectActivity) {
        this(collectActivity, collectActivity.getWindow().getDecorView());
    }

    @UiThread
    public CollectActivity_ViewBinding(final CollectActivity collectActivity, View view) {
        this.target = collectActivity;
        collectActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        collectActivity.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        collectActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        collectActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        collectActivity.titleRightTv = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        collectActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        collectActivity.collectEditLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.collect_edit_ll, "field 'collectEditLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.all_collect_choice, "field 'allCollectChoice' and method 'onClick'");
        collectActivity.allCollectChoice = (TextView) Utils.castView(findRequiredView, R.id.all_collect_choice, "field 'allCollectChoice'", TextView.class);
        this.view7f090069 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                collectActivity.onClick(view);
            }
        });
        collectActivity.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.collect_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.collect_delete, "method 'onClick'");
        this.view7f0900d2 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                collectActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        CollectActivity collectActivity = this.target;
        if (collectActivity != null) {
            this.target = null;
            collectActivity.titleRelateLayout = null;
            collectActivity.titleLeftLayout = null;
            collectActivity.titleLeftImg = null;
            collectActivity.titleRightImg = null;
            collectActivity.titleRightTv = null;
            collectActivity.titleTV = null;
            collectActivity.collectEditLayout = null;
            collectActivity.allCollectChoice = null;
            collectActivity.mRecyclerView = null;
            this.view7f090069.setOnClickListener(null);
            this.view7f090069 = null;
            this.view7f0900d2.setOnClickListener(null);
            this.view7f0900d2 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
