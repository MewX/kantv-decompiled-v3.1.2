package com.kantv.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class SearchFragment_ViewBinding implements Unbinder {
    private SearchFragment target;

    @UiThread
    public SearchFragment_ViewBinding(SearchFragment searchFragment, View view) {
        this.target = searchFragment;
        searchFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_search_recycler, "field 'mRecyclerView'", XRecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        SearchFragment searchFragment = this.target;
        if (searchFragment != null) {
            this.target = null;
            searchFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
