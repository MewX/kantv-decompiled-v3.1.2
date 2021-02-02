package com.kantv.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class VideoClassFragment_ViewBinding implements Unbinder {
    private VideoClassFragment target;

    @UiThread
    public VideoClassFragment_ViewBinding(VideoClassFragment videoClassFragment, View view) {
        this.target = videoClassFragment;
        videoClassFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.video_class, "field 'mRecyclerView'", XRecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        VideoClassFragment videoClassFragment = this.target;
        if (videoClassFragment != null) {
            this.target = null;
            videoClassFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
