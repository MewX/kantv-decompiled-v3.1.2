package com.kantv.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class VideoScoreActivity_ViewBinding implements Unbinder {
    private VideoScoreActivity target;
    private View view7f090361;
    private View view7f090364;
    private View view7f090366;

    @UiThread
    public VideoScoreActivity_ViewBinding(VideoScoreActivity videoScoreActivity) {
        this(videoScoreActivity, videoScoreActivity.getWindow().getDecorView());
    }

    @UiThread
    public VideoScoreActivity_ViewBinding(final VideoScoreActivity videoScoreActivity, View view) {
        this.target = videoScoreActivity;
        videoScoreActivity.mScoreHeadBg = (ImageView) Utils.findRequiredViewAsType(view, R.id.score_head_bg, "field 'mScoreHeadBg'", ImageView.class);
        videoScoreActivity.mFilmHead = (ImageView) Utils.findRequiredViewAsType(view, R.id.score_video_head, "field 'mFilmHead'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.score_share, "field 'mScoreShareImg' and method 'onClick'");
        videoScoreActivity.mScoreShareImg = (ImageView) Utils.castView(findRequiredView, R.id.score_share, "field 'mScoreShareImg'", ImageView.class);
        this.view7f090366 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoScoreActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.score_exit, "field 'scoreExitImg' and method 'onClick'");
        videoScoreActivity.scoreExitImg = (ImageView) Utils.castView(findRequiredView2, R.id.score_exit, "field 'scoreExitImg'", ImageView.class);
        this.view7f090361 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoScoreActivity.onClick(view);
            }
        });
        videoScoreActivity.scoreTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.score_title, "field 'scoreTitle'", TextView.class);
        videoScoreActivity.mRatingBar = (RatingBar) Utils.findRequiredViewAsType(view, R.id.ratingBar, "field 'mRatingBar'", RatingBar.class);
        videoScoreActivity.socoreMsgTv = (TextView) Utils.findRequiredViewAsType(view, R.id.score_msg, "field 'socoreMsgTv'", TextView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.score_ok, "field 'scoreOk' and method 'onClick'");
        videoScoreActivity.scoreOk = (TextView) Utils.castView(findRequiredView3, R.id.score_ok, "field 'scoreOk'", TextView.class);
        this.view7f090364 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                videoScoreActivity.onClick(view);
            }
        });
        videoScoreActivity.commentEdit = (EditText) Utils.findRequiredViewAsType(view, R.id.comment_edit, "field 'commentEdit'", EditText.class);
    }

    @CallSuper
    public void unbind() {
        VideoScoreActivity videoScoreActivity = this.target;
        if (videoScoreActivity != null) {
            this.target = null;
            videoScoreActivity.mScoreHeadBg = null;
            videoScoreActivity.mFilmHead = null;
            videoScoreActivity.mScoreShareImg = null;
            videoScoreActivity.scoreExitImg = null;
            videoScoreActivity.scoreTitle = null;
            videoScoreActivity.mRatingBar = null;
            videoScoreActivity.socoreMsgTv = null;
            videoScoreActivity.scoreOk = null;
            videoScoreActivity.commentEdit = null;
            this.view7f090366.setOnClickListener(null);
            this.view7f090366 = null;
            this.view7f090361.setOnClickListener(null);
            this.view7f090361 = null;
            this.view7f090364.setOnClickListener(null);
            this.view7f090364 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
