package com.kantv.ui.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class DownloadingActivity_ViewBinding implements Unbinder {
    private DownloadingActivity target;
    private View view7f09006f;
    private View view7f090070;
    private View view7f0900c7;
    private View view7f0900df;
    private View view7f0900f9;
    private View view7f090119;

    @UiThread
    public DownloadingActivity_ViewBinding(DownloadingActivity downloadingActivity) {
        this(downloadingActivity, downloadingActivity.getWindow().getDecorView());
    }

    @UiThread
    public DownloadingActivity_ViewBinding(final DownloadingActivity downloadingActivity, View view) {
        this.target = downloadingActivity;
        downloadingActivity.actionbarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'actionbarTitle'", TextView.class);
        downloadingActivity.actionbarMenu = (TextView) Utils.findRequiredViewAsType(view, R.id.offline_video_edit, "field 'actionbarMenu'", TextView.class);
        downloadingActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.downloading_recycler, "field 'mRecyclerView'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.allstart_ll, "field 'startLayout' and method 'onClick'");
        downloadingActivity.startLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.allstart_ll, "field 'startLayout'", LinearLayout.class);
        this.view7f09006f = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                downloadingActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.allstop_ll, "field 'stopLayout' and method 'onClick'");
        downloadingActivity.stopLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.allstop_ll, "field 'stopLayout'", LinearLayout.class);
        this.view7f090070 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                downloadingActivity.onClick(view);
            }
        });
        downloadingActivity.deleteLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.delete_ll, "field 'deleteLayout'", LinearLayout.class);
        downloadingActivity.startLl = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.start_ll, "field 'startLl'", LinearLayout.class);
        String str = "method 'onClick'";
        View findRequiredView3 = Utils.findRequiredView(view, R.id.common_title_left, str);
        this.view7f0900df = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                downloadingActivity.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.edit_ll, str);
        this.view7f090119 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                downloadingActivity.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.choice_all, str);
        this.view7f0900c7 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                downloadingActivity.onClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.delete, str);
        this.view7f0900f9 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                downloadingActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        DownloadingActivity downloadingActivity = this.target;
        if (downloadingActivity != null) {
            this.target = null;
            downloadingActivity.actionbarTitle = null;
            downloadingActivity.actionbarMenu = null;
            downloadingActivity.mRecyclerView = null;
            downloadingActivity.startLayout = null;
            downloadingActivity.stopLayout = null;
            downloadingActivity.deleteLayout = null;
            downloadingActivity.startLl = null;
            this.view7f09006f.setOnClickListener(null);
            this.view7f09006f = null;
            this.view7f090070.setOnClickListener(null);
            this.view7f090070 = null;
            this.view7f0900df.setOnClickListener(null);
            this.view7f0900df = null;
            this.view7f090119.setOnClickListener(null);
            this.view7f090119 = null;
            this.view7f0900c7.setOnClickListener(null);
            this.view7f0900c7 = null;
            this.view7f0900f9.setOnClickListener(null);
            this.view7f0900f9 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
