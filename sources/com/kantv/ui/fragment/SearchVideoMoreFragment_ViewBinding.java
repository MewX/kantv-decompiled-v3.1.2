package com.kantv.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class SearchVideoMoreFragment_ViewBinding implements Unbinder {
    private SearchVideoMoreFragment target;

    @UiThread
    public SearchVideoMoreFragment_ViewBinding(SearchVideoMoreFragment searchVideoMoreFragment, View view) {
        this.target = searchVideoMoreFragment;
        searchVideoMoreFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_search_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        searchVideoMoreFragment.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        searchVideoMoreFragment.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        searchVideoMoreFragment.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        searchVideoMoreFragment.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        searchVideoMoreFragment.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        searchVideoMoreFragment.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        searchVideoMoreFragment.titleRightTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTxt'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        SearchVideoMoreFragment searchVideoMoreFragment = this.target;
        if (searchVideoMoreFragment != null) {
            this.target = null;
            searchVideoMoreFragment.mRecyclerView = null;
            searchVideoMoreFragment.titleRelateLayout = null;
            searchVideoMoreFragment.titleLeftLayout = null;
            searchVideoMoreFragment.titleLeftImg = null;
            searchVideoMoreFragment.titleRightLayout = null;
            searchVideoMoreFragment.titleTV = null;
            searchVideoMoreFragment.titleRightImg = null;
            searchVideoMoreFragment.titleRightTxt = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
