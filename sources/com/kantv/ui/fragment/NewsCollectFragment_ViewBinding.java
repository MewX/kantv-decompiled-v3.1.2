package com.kantv.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class NewsCollectFragment_ViewBinding implements Unbinder {
    private NewsCollectFragment target;

    @UiThread
    public NewsCollectFragment_ViewBinding(NewsCollectFragment newsCollectFragment, View view) {
        this.target = newsCollectFragment;
        newsCollectFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_news_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        newsCollectFragment.mTop_margin = Utils.findRequiredView(view, R.id.top_margin, "field 'mTop_margin'");
        newsCollectFragment.mEmptyTip = (TextView) Utils.findRequiredViewAsType(view, R.id.empty_tip, "field 'mEmptyTip'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        NewsCollectFragment newsCollectFragment = this.target;
        if (newsCollectFragment != null) {
            this.target = null;
            newsCollectFragment.mRecyclerView = null;
            newsCollectFragment.mTop_margin = null;
            newsCollectFragment.mEmptyTip = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
