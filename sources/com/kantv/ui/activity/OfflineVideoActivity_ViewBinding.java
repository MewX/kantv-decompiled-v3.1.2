package com.kantv.ui.activity;

import android.view.View;
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

public class OfflineVideoActivity_ViewBinding implements Unbinder {
    private OfflineVideoActivity target;
    private View view7f09006c;
    private View view7f0900df;
    private View view7f090119;
    private View view7f090456;

    @UiThread
    public OfflineVideoActivity_ViewBinding(OfflineVideoActivity offlineVideoActivity) {
        this(offlineVideoActivity, offlineVideoActivity.getWindow().getDecorView());
    }

    @UiThread
    public OfflineVideoActivity_ViewBinding(final OfflineVideoActivity offlineVideoActivity, View view) {
        this.target = offlineVideoActivity;
        offlineVideoActivity.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.offline_video_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        offlineVideoActivity.editTV = (TextView) Utils.findRequiredViewAsType(view, R.id.offline_video_edit, "field 'editTV'", TextView.class);
        offlineVideoActivity.deleteLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.delete_ll, "field 'deleteLayout'", LinearLayout.class);
        offlineVideoActivity.noDataLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.noDataRl, "field 'noDataLayout'", RelativeLayout.class);
        offlineVideoActivity.cacheLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.cache_ll, "field 'cacheLayout'", LinearLayout.class);
        offlineVideoActivity.cacheNum = (TextView) Utils.findRequiredViewAsType(view, R.id.download_num, "field 'cacheNum'", TextView.class);
        offlineVideoActivity.noCacheVideoTip = (TextView) Utils.findRequiredViewAsType(view, R.id.noCacheVideo, "field 'noCacheVideoTip'", TextView.class);
        String str = "method 'onClick'";
        View findRequiredView = Utils.findRequiredView(view, R.id.common_title_left, str);
        this.view7f0900df = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                offlineVideoActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.edit_ll, str);
        this.view7f090119 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                offlineVideoActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.all_video_choice, str);
        this.view7f09006c = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                offlineVideoActivity.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.video_delete, str);
        this.view7f090456 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                offlineVideoActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        OfflineVideoActivity offlineVideoActivity = this.target;
        if (offlineVideoActivity != null) {
            this.target = null;
            offlineVideoActivity.mRecyclerView = null;
            offlineVideoActivity.editTV = null;
            offlineVideoActivity.deleteLayout = null;
            offlineVideoActivity.noDataLayout = null;
            offlineVideoActivity.cacheLayout = null;
            offlineVideoActivity.cacheNum = null;
            offlineVideoActivity.noCacheVideoTip = null;
            this.view7f0900df.setOnClickListener(null);
            this.view7f0900df = null;
            this.view7f090119.setOnClickListener(null);
            this.view7f090119 = null;
            this.view7f09006c.setOnClickListener(null);
            this.view7f09006c = null;
            this.view7f090456.setOnClickListener(null);
            this.view7f090456 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
