package com.kantv.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class NewsFragment_ViewBinding implements Unbinder {
    private NewsFragment target;

    @UiThread
    public NewsFragment_ViewBinding(NewsFragment newsFragment, View view) {
        this.target = newsFragment;
        newsFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_news_recycler, "field 'mRecyclerView'", XRecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        NewsFragment newsFragment = this.target;
        if (newsFragment != null) {
            this.target = null;
            newsFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
