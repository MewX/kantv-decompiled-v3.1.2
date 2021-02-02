package com.kantv.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class NewsHistroyFragment_ViewBinding implements Unbinder {
    private NewsHistroyFragment target;

    @UiThread
    public NewsHistroyFragment_ViewBinding(NewsHistroyFragment newsHistroyFragment, View view) {
        this.target = newsHistroyFragment;
        newsHistroyFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_news_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        newsHistroyFragment.mTop_margin = Utils.findRequiredView(view, R.id.top_margin, "field 'mTop_margin'");
        newsHistroyFragment.mEmptyTip = (TextView) Utils.findRequiredViewAsType(view, R.id.empty_tip, "field 'mEmptyTip'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        NewsHistroyFragment newsHistroyFragment = this.target;
        if (newsHistroyFragment != null) {
            this.target = null;
            newsHistroyFragment.mRecyclerView = null;
            newsHistroyFragment.mTop_margin = null;
            newsHistroyFragment.mEmptyTip = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
