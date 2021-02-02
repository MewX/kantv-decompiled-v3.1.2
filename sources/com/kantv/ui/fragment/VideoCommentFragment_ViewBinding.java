package com.kantv.ui.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class VideoCommentFragment_ViewBinding implements Unbinder {
    private VideoCommentFragment target;

    @UiThread
    public VideoCommentFragment_ViewBinding(VideoCommentFragment videoCommentFragment, View view) {
        this.target = videoCommentFragment;
        videoCommentFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.videocomment_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        videoCommentFragment.recycler_hot = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_hot, "field 'recycler_hot'", RecyclerView.class);
        videoCommentFragment.scroller = (NestedScrollView) Utils.findRequiredViewAsType(view, R.id.scroller, "field 'scroller'", NestedScrollView.class);
        videoCommentFragment.ll_more_hot = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_more_hot, "field 'll_more_hot'", LinearLayout.class);
        videoCommentFragment.tv_more_hot = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_more_hot, "field 'tv_more_hot'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        VideoCommentFragment videoCommentFragment = this.target;
        if (videoCommentFragment != null) {
            this.target = null;
            videoCommentFragment.mRecyclerView = null;
            videoCommentFragment.recycler_hot = null;
            videoCommentFragment.scroller = null;
            videoCommentFragment.ll_more_hot = null;
            videoCommentFragment.tv_more_hot = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
