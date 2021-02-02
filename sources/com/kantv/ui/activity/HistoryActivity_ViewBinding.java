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

public class HistoryActivity_ViewBinding implements Unbinder {
    private HistoryActivity target;
    private View view7f09006d;
    private View view7f090477;

    @UiThread
    public HistoryActivity_ViewBinding(HistoryActivity historyActivity) {
        this(historyActivity, historyActivity.getWindow().getDecorView());
    }

    @UiThread
    public HistoryActivity_ViewBinding(final HistoryActivity historyActivity, View view) {
        this.target = historyActivity;
        historyActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        historyActivity.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        historyActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        historyActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        historyActivity.titleRightTv = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        historyActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        historyActivity.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.watch_history_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        historyActivity.watchEditLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.watch_edit_ll, "field 'watchEditLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.all_watch_choice, "field 'allWatchChoiceTv' and method 'onClick'");
        historyActivity.allWatchChoiceTv = (TextView) Utils.castView(findRequiredView, R.id.all_watch_choice, "field 'allWatchChoiceTv'", TextView.class);
        this.view7f09006d = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                historyActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.watch_delete, "method 'onClick'");
        this.view7f090477 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                historyActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        HistoryActivity historyActivity = this.target;
        if (historyActivity != null) {
            this.target = null;
            historyActivity.titleRelateLayout = null;
            historyActivity.titleLeftLayout = null;
            historyActivity.titleLeftImg = null;
            historyActivity.titleRightImg = null;
            historyActivity.titleRightTv = null;
            historyActivity.titleTV = null;
            historyActivity.mRecyclerView = null;
            historyActivity.watchEditLayout = null;
            historyActivity.allWatchChoiceTv = null;
            this.view7f09006d.setOnClickListener(null);
            this.view7f09006d = null;
            this.view7f090477.setOnClickListener(null);
            this.view7f090477 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
