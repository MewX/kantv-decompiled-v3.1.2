package com.kantv.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class NewsDetailActivity_ViewBinding implements Unbinder {
    private NewsDetailActivity target;
    private View view7f09006b;
    private View view7f090244;
    private View view7f0902ca;
    private View view7f0902cb;
    private View view7f0902ce;
    private View view7f0902cf;
    private View view7f0902d0;
    private View view7f0902d3;
    private View view7f0902da;
    private View view7f0902dd;
    private View view7f0902de;
    private View view7f0902df;
    private View view7f0902e0;
    private View view7f0902ea;

    @UiThread
    public NewsDetailActivity_ViewBinding(NewsDetailActivity newsDetailActivity) {
        this(newsDetailActivity, newsDetailActivity.getWindow().getDecorView());
    }

    @UiThread
    public NewsDetailActivity_ViewBinding(final NewsDetailActivity newsDetailActivity, View view) {
        this.target = newsDetailActivity;
        newsDetailActivity.scrollView = (NestedScrollView) Utils.findRequiredViewAsType(view, R.id.scrollView, "field 'scrollView'", NestedScrollView.class);
        newsDetailActivity.mNewsWeb = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.news_detail_web, "field 'mNewsWeb'", LinearLayout.class);
        newsDetailActivity.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.news_detail_progressBar, "field 'mProgressBar'", ProgressBar.class);
        newsDetailActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.news_comment_recycler, "field 'mRecyclerView'", RecyclerView.class);
        newsDetailActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.news_detail_title, "field 'mTitle'", TextView.class);
        newsDetailActivity.newsDetailLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.news_detail_ll, "field 'newsDetailLayout'", LinearLayout.class);
        newsDetailActivity.mNewsDetailSource = (TextView) Utils.findRequiredViewAsType(view, R.id.news_detail_source, "field 'mNewsDetailSource'", TextView.class);
        newsDetailActivity.mTime = (TextView) Utils.findRequiredViewAsType(view, R.id.news_detail_time, "field 'mTime'", TextView.class);
        newsDetailActivity.likeTv = (TextView) Utils.findRequiredViewAsType(view, R.id.like_tv, "field 'likeTv'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.like_img, "field 'likeImg' and method 'onClick'");
        newsDetailActivity.likeImg = (ImageView) Utils.castView(findRequiredView, R.id.like_img, "field 'likeImg'", ImageView.class);
        this.view7f090244 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.news_comment_tip, "field 'emptyNewsCommentTip' and method 'onClick'");
        newsDetailActivity.emptyNewsCommentTip = (TextView) Utils.castView(findRequiredView2, R.id.news_comment_tip, "field 'emptyNewsCommentTip'", TextView.class);
        this.view7f0902ce = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.all_newscomment_tv, "field 'allCommentTv' and method 'onClick'");
        newsDetailActivity.allCommentTv = (TextView) Utils.castView(findRequiredView3, R.id.all_newscomment_tv, "field 'allCommentTv'", TextView.class);
        this.view7f09006b = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        newsDetailActivity.newsCommentLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.news_comment_ll, "field 'newsCommentLayout'", LinearLayout.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.newscomment_num_tv, "field 'newsCommentNumTv' and method 'onClick'");
        newsDetailActivity.newsCommentNumTv = (TextView) Utils.castView(findRequiredView4, R.id.newscomment_num_tv, "field 'newsCommentNumTv'", TextView.class);
        this.view7f0902ea = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        newsDetailActivity.newsCommentNumLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.newscomment_num_layout, "field 'newsCommentNumLayout'", FrameLayout.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.news_comment_iv, "field 'newsCommentBottomBarIv' and method 'onClick'");
        newsDetailActivity.newsCommentBottomBarIv = (ImageView) Utils.castView(findRequiredView5, R.id.news_comment_iv, "field 'newsCommentBottomBarIv'", ImageView.class);
        this.view7f0902cb = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.news_loaderror_layout, "field 'newsLoadErrorLayout' and method 'onClick'");
        newsDetailActivity.newsLoadErrorLayout = (LinearLayout) Utils.castView(findRequiredView6, R.id.news_loaderror_layout, "field 'newsLoadErrorLayout'", LinearLayout.class);
        this.view7f0902da = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.news_comment, "field 'newsCommentEt' and method 'onClick'");
        newsDetailActivity.newsCommentEt = (EditText) Utils.castView(findRequiredView7, R.id.news_comment, "field 'newsCommentEt'", EditText.class);
        this.view7f0902ca = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        newsDetailActivity.newsDetailRateLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.newsdetail_rate_layout, "field 'newsDetailRateLayout'", LinearLayout.class);
        newsDetailActivity.newsDetailRateImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.newsdetail_rate_img, "field 'newsDetailRateImg'", ImageView.class);
        newsDetailActivity.newsDetailRateTv = (TextView) Utils.findRequiredViewAsType(view, R.id.newsdetail_rate_tv, "field 'newsDetailRateTv'", TextView.class);
        newsDetailActivity.newsPageStartLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.newspage_start_layout, "field 'newsPageStartLayout'", LinearLayout.class);
        newsDetailActivity.ll_news = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_news, "field 'll_news'", LinearLayout.class);
        newsDetailActivity.recycler_news = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_news, "field 'recycler_news'", RecyclerView.class);
        newsDetailActivity.ll_look = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_look, "field 'll_look'", LinearLayout.class);
        newsDetailActivity.recycler_look = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_look, "field 'recycler_look'", RecyclerView.class);
        newsDetailActivity.tv_more = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_more, "field 'tv_more'", TextView.class);
        String str = "method 'onClick'";
        View findRequiredView8 = Utils.findRequiredView(view, R.id.news_detail_back, str);
        this.view7f0902cf = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView9 = Utils.findRequiredView(view, R.id.news_detail_comment, str);
        this.view7f0902d0 = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView10 = Utils.findRequiredView(view, R.id.news_detail_share, str);
        this.view7f0902d3 = findRequiredView10;
        findRequiredView10.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView11 = Utils.findRequiredView(view, R.id.news_share_circle, str);
        this.view7f0902de = findRequiredView11;
        findRequiredView11.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView12 = Utils.findRequiredView(view, R.id.news_share_friend, str);
        this.view7f0902df = findRequiredView12;
        findRequiredView12.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView13 = Utils.findRequiredView(view, R.id.news_share_more, str);
        this.view7f0902e0 = findRequiredView13;
        findRequiredView13.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
        View findRequiredView14 = Utils.findRequiredView(view, R.id.news_set_more, str);
        this.view7f0902dd = findRequiredView14;
        findRequiredView14.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                newsDetailActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        NewsDetailActivity newsDetailActivity = this.target;
        if (newsDetailActivity != null) {
            this.target = null;
            newsDetailActivity.scrollView = null;
            newsDetailActivity.mNewsWeb = null;
            newsDetailActivity.mProgressBar = null;
            newsDetailActivity.mRecyclerView = null;
            newsDetailActivity.mTitle = null;
            newsDetailActivity.newsDetailLayout = null;
            newsDetailActivity.mNewsDetailSource = null;
            newsDetailActivity.mTime = null;
            newsDetailActivity.likeTv = null;
            newsDetailActivity.likeImg = null;
            newsDetailActivity.emptyNewsCommentTip = null;
            newsDetailActivity.allCommentTv = null;
            newsDetailActivity.newsCommentLayout = null;
            newsDetailActivity.newsCommentNumTv = null;
            newsDetailActivity.newsCommentNumLayout = null;
            newsDetailActivity.newsCommentBottomBarIv = null;
            newsDetailActivity.newsLoadErrorLayout = null;
            newsDetailActivity.newsCommentEt = null;
            newsDetailActivity.newsDetailRateLayout = null;
            newsDetailActivity.newsDetailRateImg = null;
            newsDetailActivity.newsDetailRateTv = null;
            newsDetailActivity.newsPageStartLayout = null;
            newsDetailActivity.ll_news = null;
            newsDetailActivity.recycler_news = null;
            newsDetailActivity.ll_look = null;
            newsDetailActivity.recycler_look = null;
            newsDetailActivity.tv_more = null;
            this.view7f090244.setOnClickListener(null);
            this.view7f090244 = null;
            this.view7f0902ce.setOnClickListener(null);
            this.view7f0902ce = null;
            this.view7f09006b.setOnClickListener(null);
            this.view7f09006b = null;
            this.view7f0902ea.setOnClickListener(null);
            this.view7f0902ea = null;
            this.view7f0902cb.setOnClickListener(null);
            this.view7f0902cb = null;
            this.view7f0902da.setOnClickListener(null);
            this.view7f0902da = null;
            this.view7f0902ca.setOnClickListener(null);
            this.view7f0902ca = null;
            this.view7f0902cf.setOnClickListener(null);
            this.view7f0902cf = null;
            this.view7f0902d0.setOnClickListener(null);
            this.view7f0902d0 = null;
            this.view7f0902d3.setOnClickListener(null);
            this.view7f0902d3 = null;
            this.view7f0902de.setOnClickListener(null);
            this.view7f0902de = null;
            this.view7f0902df.setOnClickListener(null);
            this.view7f0902df = null;
            this.view7f0902e0.setOnClickListener(null);
            this.view7f0902e0 = null;
            this.view7f0902dd.setOnClickListener(null);
            this.view7f0902dd = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
