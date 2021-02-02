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

public class NewsCommentActivity_ViewBinding implements Unbinder {
    private NewsCommentActivity target;
    private View view7f09040c;

    @UiThread
    public NewsCommentActivity_ViewBinding(NewsCommentActivity newsCommentActivity) {
        this(newsCommentActivity, newsCommentActivity.getWindow().getDecorView());
    }

    @UiThread
    public NewsCommentActivity_ViewBinding(final NewsCommentActivity newsCommentActivity, View view) {
        this.target = newsCommentActivity;
        newsCommentActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        newsCommentActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsCommentActivity.onClick(view);
            }
        });
        newsCommentActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        newsCommentActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        newsCommentActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        newsCommentActivity.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.allcomment_recycler, "field 'mRecyclerView'", XRecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        NewsCommentActivity newsCommentActivity = this.target;
        if (newsCommentActivity != null) {
            this.target = null;
            newsCommentActivity.titleRelateLayout = null;
            newsCommentActivity.titleLeftLayout = null;
            newsCommentActivity.titleLeftImg = null;
            newsCommentActivity.mTitle = null;
            newsCommentActivity.titleRightLayout = null;
            newsCommentActivity.mRecyclerView = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
