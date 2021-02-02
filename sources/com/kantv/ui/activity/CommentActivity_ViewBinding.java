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

public class CommentActivity_ViewBinding implements Unbinder {
    private CommentActivity target;
    private View view7f09040c;

    @UiThread
    public CommentActivity_ViewBinding(CommentActivity commentActivity) {
        this(commentActivity, commentActivity.getWindow().getDecorView());
    }

    @UiThread
    public CommentActivity_ViewBinding(final CommentActivity commentActivity, View view) {
        this.target = commentActivity;
        commentActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        commentActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                commentActivity.onClick(view);
            }
        });
        commentActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        commentActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        commentActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        commentActivity.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.allcomment_recycler, "field 'mRecyclerView'", XRecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        CommentActivity commentActivity = this.target;
        if (commentActivity != null) {
            this.target = null;
            commentActivity.titleRelateLayout = null;
            commentActivity.titleLeftLayout = null;
            commentActivity.titleLeftImg = null;
            commentActivity.mTitle = null;
            commentActivity.titleRightLayout = null;
            commentActivity.mRecyclerView = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
