package com.kantv.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.ShapedImageView;

public class VideoDetailFragment_ViewBinding implements Unbinder {
    private VideoDetailFragment target;
    private View view7f090008;
    private View view7f09006a;
    private View view7f0900d1;
    private View view7f090112;
    private View view7f090397;

    @UiThread
    public VideoDetailFragment_ViewBinding(final VideoDetailFragment videoDetailFragment, View view) {
        this.target = videoDetailFragment;
        videoDetailFragment.mVideoName = (TextView) Utils.findRequiredViewAsType(view, R.id.video_detail_videoname, "field 'mVideoName'", TextView.class);
        videoDetailFragment.mPlayListRecycler = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.video_detail_playlist, "field 'mPlayListRecycler'", RecyclerView.class);
        videoDetailFragment.aboutLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.videodetails_about_rl, "field 'aboutLayout'", RelativeLayout.class);
        videoDetailFragment.mVideoAbout = (TextView) Utils.findRequiredViewAsType(view, R.id.about, "field 'mVideoAbout'", TextView.class);
        videoDetailFragment.mUpdatanum = (TextView) Utils.findRequiredViewAsType(view, R.id.fragment_videodetail_updatanum, "field 'mUpdatanum'", TextView.class);
        videoDetailFragment.videoDetailScore = (TextView) Utils.findRequiredViewAsType(view, R.id.video_detail_score, "field 'videoDetailScore'", TextView.class);
        videoDetailFragment.mStarTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.frg_star_txt, "field 'mStarTxt'", TextView.class);
        videoDetailFragment.mStarList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_videodetail_star, "field 'mStarList'", RecyclerView.class);
        videoDetailFragment.commentRecycler = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.comment_recycler, "field 'commentRecycler'", RecyclerView.class);
        videoDetailFragment.commentTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.comment_txt, "field 'commentTxt'", TextView.class);
        videoDetailFragment.detailCommentLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.detail_comment_ll, "field 'detailCommentLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.all_comment_tv, "field 'allCommentTv' and method 'onClick'");
        videoDetailFragment.allCommentTv = (TextView) Utils.castView(findRequiredView, R.id.all_comment_tv, "field 'allCommentTv'", TextView.class);
        this.view7f09006a = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoDetailFragment.onClick(view);
            }
        });
        videoDetailFragment.mRecommendList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_videodetail_recommend, "field 'mRecommendList'", RecyclerView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.about_extend, "field 'aboutExtendTV' and method 'onClick'");
        videoDetailFragment.aboutExtendTV = (TextView) Utils.castView(findRequiredView2, R.id.about_extend, "field 'aboutExtendTV'", TextView.class);
        this.view7f090008 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoDetailFragment.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.collectImg, "field 'collectImg' and method 'onClick'");
        videoDetailFragment.collectImg = (ImageView) Utils.castView(findRequiredView3, R.id.collectImg, "field 'collectImg'", ImageView.class);
        this.view7f0900d1 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoDetailFragment.onClick(view);
            }
        });
        videoDetailFragment.videoDetailAdImg = (ShapedImageView) Utils.findRequiredViewAsType(view, R.id.videodetail_adImg, "field 'videoDetailAdImg'", ShapedImageView.class);
        String str = "method 'onClick'";
        View findRequiredView4 = Utils.findRequiredView(view, R.id.download_video, str);
        this.view7f090112 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoDetailFragment.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.selectNum, str);
        this.view7f090397 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoDetailFragment.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        VideoDetailFragment videoDetailFragment = this.target;
        if (videoDetailFragment != null) {
            this.target = null;
            videoDetailFragment.mVideoName = null;
            videoDetailFragment.mPlayListRecycler = null;
            videoDetailFragment.aboutLayout = null;
            videoDetailFragment.mVideoAbout = null;
            videoDetailFragment.mUpdatanum = null;
            videoDetailFragment.videoDetailScore = null;
            videoDetailFragment.mStarTxt = null;
            videoDetailFragment.mStarList = null;
            videoDetailFragment.commentRecycler = null;
            videoDetailFragment.commentTxt = null;
            videoDetailFragment.detailCommentLayout = null;
            videoDetailFragment.allCommentTv = null;
            videoDetailFragment.mRecommendList = null;
            videoDetailFragment.aboutExtendTV = null;
            videoDetailFragment.collectImg = null;
            videoDetailFragment.videoDetailAdImg = null;
            this.view7f09006a.setOnClickListener(null);
            this.view7f09006a = null;
            this.view7f090008.setOnClickListener(null);
            this.view7f090008 = null;
            this.view7f0900d1.setOnClickListener(null);
            this.view7f0900d1 = null;
            this.view7f090112.setOnClickListener(null);
            this.view7f090112 = null;
            this.view7f090397.setOnClickListener(null);
            this.view7f090397 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
