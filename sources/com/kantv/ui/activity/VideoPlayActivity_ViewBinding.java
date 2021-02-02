package com.kantv.ui.activity;

import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.TabPageIndicator;
import com.kantv.video.KTVideoPlayer;

public class VideoPlayActivity_ViewBinding implements Unbinder {
    private VideoPlayActivity target;
    private View view7f090066;
    private View view7f09008b;
    private View view7f0900c4;
    private View view7f09013f;
    private View view7f090262;
    private View view7f090267;
    private View view7f090268;
    private View view7f090279;
    private View view7f090312;
    private View view7f090327;
    private View view7f090360;
    private View view7f0903a9;
    private View view7f0903aa;

    @UiThread
    public VideoPlayActivity_ViewBinding(VideoPlayActivity videoPlayActivity) {
        this(videoPlayActivity, videoPlayActivity.getWindow().getDecorView());
    }

    @UiThread
    public VideoPlayActivity_ViewBinding(final VideoPlayActivity videoPlayActivity, View view) {
        this.target = videoPlayActivity;
        videoPlayActivity.mVideoPlayerRl = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.videoplayer_rl, "field 'mVideoPlayerRl'", RelativeLayout.class);
        videoPlayActivity.mKTVideoPlayer = (KTVideoPlayer) Utils.findRequiredViewAsType(view, R.id.ktv_videoplayer, "field 'mKTVideoPlayer'", KTVideoPlayer.class);
        videoPlayActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.videodetail_viewpager, "field 'mViewPager'", ViewPager.class);
        videoPlayActivity.mTabLayout = (TabPageIndicator) Utils.findRequiredViewAsType(view, R.id.tabLayout, "field 'mTabLayout'", TabPageIndicator.class);
        videoPlayActivity.tpView = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.tpview, "field 'tpView'", RelativeLayout.class);
        videoPlayActivity.progressBarSb = (SeekBar) Utils.findRequiredViewAsType(view, R.id.progress_tp, "field 'progressBarSb'", SeekBar.class);
        videoPlayActivity.totalTimeTv = (TextView) Utils.findRequiredViewAsType(view, R.id.total_tp, "field 'totalTimeTv'", TextView.class);
        videoPlayActivity.diviseTv = (TextView) Utils.findRequiredViewAsType(view, R.id.divise_tv, "field 'diviseTv'", TextView.class);
        videoPlayActivity.startIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.startiv_tp, "field 'startIv'", ImageView.class);
        videoPlayActivity.stateTv = (TextView) Utils.findRequiredViewAsType(view, R.id.state_tvheader, "field 'stateTv'", TextView.class);
        videoPlayActivity.currentTimeTv = (TextView) Utils.findRequiredViewAsType(view, R.id.current_tp, "field 'currentTimeTv'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.pausetv, "field 'pauseTv' and method 'onClick'");
        videoPlayActivity.pauseTv = (TextView) Utils.castView(findRequiredView, R.id.pausetv, "field 'pauseTv'", TextView.class);
        this.view7f090312 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        videoPlayActivity.mErrorText = (TextView) Utils.findRequiredViewAsType(view, R.id.videoplayer_errortext, "field 'mErrorText'", TextView.class);
        videoPlayActivity.shareUnlockLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.shareUnlock, "field 'shareUnlockLayout'", FrameLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.shareImg, "field 'shareImg' and method 'onClick'");
        videoPlayActivity.shareImg = (ImageView) Utils.castView(findRequiredView2, R.id.shareImg, "field 'shareImg'", ImageView.class);
        this.view7f0903aa = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        videoPlayActivity.loginRegUnlockLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.loginRegUnlock, "field 'loginRegUnlockLayout'", FrameLayout.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.score, "field 'scoreTV' and method 'onClick'");
        videoPlayActivity.scoreTV = (TextView) Utils.castView(findRequiredView3, R.id.score, "field 'scoreTV'", TextView.class);
        this.view7f090360 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        videoPlayActivity.videoDetailLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.video_about_layout, "field 'videoDetailLayout'", LinearLayout.class);
        videoPlayActivity.adSoundImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.ad_sound, "field 'adSoundImg'", ImageView.class);
        videoPlayActivity.mWebView = (WebView) Utils.findRequiredViewAsType(view, R.id.webview, "field 'mWebView'", WebView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.loaderror_layout, "field 'loadErrorLayout' and method 'onClick'");
        videoPlayActivity.loadErrorLayout = (LinearLayout) Utils.castView(findRequiredView4, R.id.loaderror_layout, "field 'loadErrorLayout'", LinearLayout.class);
        this.view7f090262 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        videoPlayActivity.videoDetailChildLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.videodetail_layout, "field 'videoDetailChildLayout'", LinearLayout.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.feedback, "field 'feedBack' and method 'onClick'");
        videoPlayActivity.feedBack = findRequiredView5;
        this.view7f09013f = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.bind_email_button, "field 'bindEmail' and method 'onClick'");
        videoPlayActivity.bindEmail = (TextView) Utils.castView(findRequiredView6, R.id.bind_email_button, "field 'bindEmail'", TextView.class);
        this.view7f09008b = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        videoPlayActivity.bindEmailContent = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.bind_email_content, "field 'bindEmailContent'", LinearLayout.class);
        String str = "method 'onClick'";
        View findRequiredView7 = Utils.findRequiredView(view, R.id.airplay_img, str);
        this.view7f090066 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, R.id.quit, str);
        this.view7f090327 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        View findRequiredView9 = Utils.findRequiredView(view, R.id.change, str);
        this.view7f0900c4 = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        View findRequiredView10 = Utils.findRequiredView(view, R.id.me_comment, str);
        this.view7f090279 = findRequiredView10;
        findRequiredView10.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        View findRequiredView11 = Utils.findRequiredView(view, R.id.shareDelImg, str);
        this.view7f0903a9 = findRequiredView11;
        findRequiredView11.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        View findRequiredView12 = Utils.findRequiredView(view, R.id.loginRegBack, str);
        this.view7f090267 = findRequiredView12;
        findRequiredView12.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
        View findRequiredView13 = Utils.findRequiredView(view, R.id.loginRegImg, str);
        this.view7f090268 = findRequiredView13;
        findRequiredView13.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoPlayActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        VideoPlayActivity videoPlayActivity = this.target;
        if (videoPlayActivity != null) {
            this.target = null;
            videoPlayActivity.mVideoPlayerRl = null;
            videoPlayActivity.mKTVideoPlayer = null;
            videoPlayActivity.mViewPager = null;
            videoPlayActivity.mTabLayout = null;
            videoPlayActivity.tpView = null;
            videoPlayActivity.progressBarSb = null;
            videoPlayActivity.totalTimeTv = null;
            videoPlayActivity.diviseTv = null;
            videoPlayActivity.startIv = null;
            videoPlayActivity.stateTv = null;
            videoPlayActivity.currentTimeTv = null;
            videoPlayActivity.pauseTv = null;
            videoPlayActivity.mErrorText = null;
            videoPlayActivity.shareUnlockLayout = null;
            videoPlayActivity.shareImg = null;
            videoPlayActivity.loginRegUnlockLayout = null;
            videoPlayActivity.scoreTV = null;
            videoPlayActivity.videoDetailLayout = null;
            videoPlayActivity.adSoundImg = null;
            videoPlayActivity.mWebView = null;
            videoPlayActivity.loadErrorLayout = null;
            videoPlayActivity.videoDetailChildLayout = null;
            videoPlayActivity.feedBack = null;
            videoPlayActivity.bindEmail = null;
            videoPlayActivity.bindEmailContent = null;
            this.view7f090312.setOnClickListener(null);
            this.view7f090312 = null;
            this.view7f0903aa.setOnClickListener(null);
            this.view7f0903aa = null;
            this.view7f090360.setOnClickListener(null);
            this.view7f090360 = null;
            this.view7f090262.setOnClickListener(null);
            this.view7f090262 = null;
            this.view7f09013f.setOnClickListener(null);
            this.view7f09013f = null;
            this.view7f09008b.setOnClickListener(null);
            this.view7f09008b = null;
            this.view7f090066.setOnClickListener(null);
            this.view7f090066 = null;
            this.view7f090327.setOnClickListener(null);
            this.view7f090327 = null;
            this.view7f0900c4.setOnClickListener(null);
            this.view7f0900c4 = null;
            this.view7f090279.setOnClickListener(null);
            this.view7f090279 = null;
            this.view7f0903a9.setOnClickListener(null);
            this.view7f0903a9 = null;
            this.view7f090267.setOnClickListener(null);
            this.view7f090267 = null;
            this.view7f090268.setOnClickListener(null);
            this.view7f090268 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
