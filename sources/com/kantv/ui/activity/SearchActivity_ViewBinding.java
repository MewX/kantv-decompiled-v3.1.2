package com.kantv.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class SearchActivity_ViewBinding implements Unbinder {
    private SearchActivity target;
    private View view7f09037f;
    private View view7f090382;

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity) {
        this(searchActivity, searchActivity.getWindow().getDecorView());
    }

    @UiThread
    public SearchActivity_ViewBinding(final SearchActivity searchActivity, View view) {
        this.target = searchActivity;
        searchActivity.mSearchEdit = (EditText) Utils.findRequiredViewAsType(view, R.id.search_edit, "field 'mSearchEdit'", EditText.class);
        searchActivity.mSearchXRecycler = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.search_recycler, "field 'mSearchXRecycler'", XRecyclerView.class);
        searchActivity.mKeyWorkdRecycle = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.keyWork_recycler, "field 'mKeyWorkdRecycle'", XRecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.search_delete, "field 'searchDeleteImg' and method 'onClick'");
        searchActivity.searchDeleteImg = (ImageView) Utils.castView(findRequiredView, R.id.search_delete, "field 'searchDeleteImg'", ImageView.class);
        this.view7f090382 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                searchActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.search_cancel, "method 'onClick'");
        this.view7f09037f = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                searchActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        SearchActivity searchActivity = this.target;
        if (searchActivity != null) {
            this.target = null;
            searchActivity.mSearchEdit = null;
            searchActivity.mSearchXRecycler = null;
            searchActivity.mKeyWorkdRecycle = null;
            searchActivity.searchDeleteImg = null;
            this.view7f090382.setOnClickListener(null);
            this.view7f090382 = null;
            this.view7f09037f.setOnClickListener(null);
            this.view7f09037f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
