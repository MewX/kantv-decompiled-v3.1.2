package com.kantv.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class SearchResultActivity_ViewBinding implements Unbinder {
    private SearchResultActivity target;
    private View view7f090341;
    private View view7f09037f;
    private View view7f090382;

    @UiThread
    public SearchResultActivity_ViewBinding(SearchResultActivity searchResultActivity) {
        this(searchResultActivity, searchResultActivity.getWindow().getDecorView());
    }

    @UiThread
    public SearchResultActivity_ViewBinding(final SearchResultActivity searchResultActivity, View view) {
        this.target = searchResultActivity;
        searchResultActivity.searchEdit = (EditText) Utils.findRequiredViewAsType(view, R.id.search_edit, "field 'searchEdit'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.search_delete, "field 'searchDeleteImg' and method 'onClick'");
        searchResultActivity.searchDeleteImg = (ImageView) Utils.castView(findRequiredView, R.id.search_delete, "field 'searchDeleteImg'", ImageView.class);
        this.view7f090382 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                searchResultActivity.onClick(view);
            }
        });
        searchResultActivity.mLoadErrorLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.loaderror_ll, "field 'mLoadErrorLayout'", LinearLayout.class);
        searchResultActivity.mStarTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.frg_star_txt, "field 'mStarTxt'", TextView.class);
        searchResultActivity.mStarRecycleView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_videodetail_star, "field 'mStarRecycleView'", RecyclerView.class);
        searchResultActivity.mVideoTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.frg_video_txt, "field 'mVideoTxt'", TextView.class);
        searchResultActivity.mVideoRecycleView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_videodetail_video, "field 'mVideoRecycleView'", RecyclerView.class);
        searchResultActivity.mNewTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.frg_new_txt, "field 'mNewTxt'", TextView.class);
        searchResultActivity.mNewRecycleVIew = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_new_star, "field 'mNewRecycleVIew'", RecyclerView.class);
        searchResultActivity.videoMore = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.look_more_video, "field 'videoMore'", LinearLayout.class);
        searchResultActivity.mNewMore = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.look_more_new, "field 'mNewMore'", LinearLayout.class);
        searchResultActivity.mVideoMoreText = (TextView) Utils.findRequiredViewAsType(view, R.id.look_more_video_txt, "field 'mVideoMoreText'", TextView.class);
        searchResultActivity.mNewMoreText = (TextView) Utils.findRequiredViewAsType(view, R.id.look_more_new_txt, "field 'mNewMoreText'", TextView.class);
        searchResultActivity.content = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.content, "field 'content'", LinearLayout.class);
        String str = "method 'onClick'";
        View findRequiredView2 = Utils.findRequiredView(view, R.id.search_cancel, str);
        this.view7f09037f = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                searchResultActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.request_film_tv, str);
        this.view7f090341 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                searchResultActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        SearchResultActivity searchResultActivity = this.target;
        if (searchResultActivity != null) {
            this.target = null;
            searchResultActivity.searchEdit = null;
            searchResultActivity.searchDeleteImg = null;
            searchResultActivity.mLoadErrorLayout = null;
            searchResultActivity.mStarTxt = null;
            searchResultActivity.mStarRecycleView = null;
            searchResultActivity.mVideoTxt = null;
            searchResultActivity.mVideoRecycleView = null;
            searchResultActivity.mNewTxt = null;
            searchResultActivity.mNewRecycleVIew = null;
            searchResultActivity.videoMore = null;
            searchResultActivity.mNewMore = null;
            searchResultActivity.mVideoMoreText = null;
            searchResultActivity.mNewMoreText = null;
            searchResultActivity.content = null;
            this.view7f090382.setOnClickListener(null);
            this.view7f090382 = null;
            this.view7f09037f.setOnClickListener(null);
            this.view7f09037f = null;
            this.view7f090341.setOnClickListener(null);
            this.view7f090341 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
