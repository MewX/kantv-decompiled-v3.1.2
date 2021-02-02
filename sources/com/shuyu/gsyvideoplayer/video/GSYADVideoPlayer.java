package com.shuyu.gsyvideoplayer.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.shuyu.gsyvideoplayer.GSYVideoADManager;
import com.shuyu.gsyvideoplayer.R;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoViewBridge;

public class GSYADVideoPlayer extends StandardGSYVideoPlayer {
    protected boolean isFirstPrepared;
    protected TextView mADTime;
    protected View mJumpAd;

    /* access modifiers changed from: protected */
    public void touchDoubleUp() {
    }

    public GSYADVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public GSYADVideoPlayer(Context context) {
        super(context);
    }

    public GSYADVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        super.init(context);
        this.mJumpAd = findViewById(R.id.jump_ad);
        this.mADTime = (TextView) findViewById(R.id.ad_time);
        View view = this.mJumpAd;
        if (view != null) {
            view.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (GSYADVideoPlayer.this.getGSYVideoManager().listener() != null) {
                        GSYADVideoPlayer.this.getGSYVideoManager().listener().onAutoCompletion();
                    }
                }
            });
        }
    }

    public int getLayoutId() {
        return R.layout.video_layout_ad;
    }

    public GSYVideoViewBridge getGSYVideoManager() {
        GSYVideoADManager.instance().initContext(getContext().getApplicationContext());
        return GSYVideoADManager.instance();
    }

    /* access modifiers changed from: protected */
    public boolean backFromFull(Context context) {
        return GSYVideoADManager.backFromWindowFull(context);
    }

    /* access modifiers changed from: protected */
    public void releaseVideos() {
        GSYVideoADManager.releaseAllVideos();
    }

    /* access modifiers changed from: protected */
    public int getFullId() {
        return GSYVideoADManager.FULLSCREEN_ID;
    }

    /* access modifiers changed from: protected */
    public int getSmallId() {
        return GSYVideoADManager.SMALL_ID;
    }

    public void onPrepared() {
        super.onPrepared();
        this.isFirstPrepared = true;
        changeAdUIState();
    }

    public void onClick(View view) {
        if (view.getId() != R.id.start) {
            super.onClick(view);
        } else if (this.mCurrentState == 7) {
            clickStartIcon();
        }
    }

    /* access modifiers changed from: protected */
    public void updateStartImage() {
        if (this.mStartButton != null && (this.mStartButton instanceof ImageView)) {
            ImageView imageView = (ImageView) this.mStartButton;
            if (this.mCurrentState == 2) {
                imageView.setImageResource(R.drawable.empty_drawable);
            } else if (this.mCurrentState == 7) {
                imageView.setImageResource(R.drawable.video_click_error_selector);
            } else {
                imageView.setImageResource(R.drawable.empty_drawable);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceMove(float f, float f2, float f3) {
        if (!this.mChangePosition) {
            super.touchSurfaceMove(f, f2, f3);
        }
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceMoveFullLogic(float f, float f2) {
        if (f > ((float) this.mThreshold) || f2 > ((float) this.mThreshold)) {
            int screenWidth = CommonUtil.getScreenWidth(getContext());
            if (f < ((float) this.mThreshold) || Math.abs(((float) screenWidth) - this.mDownX) <= ((float) this.mSeekEndOffset)) {
                super.touchSurfaceMoveFullLogic(f, f2);
                return;
            }
            this.mChangePosition = true;
            this.mDownPosition = getCurrentPositionWhenPlaying();
        }
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceUp() {
        if (!this.mChangePosition) {
            super.touchSurfaceUp();
        }
    }

    /* access modifiers changed from: protected */
    public void hideAllWidget() {
        if (!this.isFirstPrepared) {
            super.hideAllWidget();
        }
    }

    /* access modifiers changed from: protected */
    public void setProgressAndTime(int i, int i2, int i3, int i4) {
        super.setProgressAndTime(i, i2, i3, i4);
        TextView textView = this.mADTime;
        if (textView != null && i3 > 0) {
            int i5 = i4 / 1000;
            int i6 = i3 / 1000;
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(i5 - i6);
            textView.setText(sb.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        GSYADVideoPlayer gSYADVideoPlayer = (GSYADVideoPlayer) gSYBaseVideoPlayer2;
        gSYADVideoPlayer.isFirstPrepared = ((GSYADVideoPlayer) gSYBaseVideoPlayer).isFirstPrepared;
        gSYADVideoPlayer.changeAdUIState();
    }

    public void release() {
        super.release();
        TextView textView = this.mADTime;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* access modifiers changed from: protected */
    public void changeAdUIState() {
        View view = this.mJumpAd;
        int i = 8;
        if (view != null) {
            view.setVisibility(this.isFirstPrepared ? 0 : 8);
        }
        TextView textView = this.mADTime;
        if (textView != null) {
            if (this.isFirstPrepared) {
                i = 0;
            }
            textView.setVisibility(i);
        }
        if (this.mBottomContainer != null) {
            this.mBottomContainer.setBackgroundColor(this.isFirstPrepared ? 0 : getContext().getResources().getColor(R.color.bottom_container_bg));
        }
        int i2 = 4;
        if (this.mCurrentTimeTextView != null) {
            this.mCurrentTimeTextView.setVisibility(this.isFirstPrepared ? 4 : 0);
        }
        if (this.mTotalTimeTextView != null) {
            this.mTotalTimeTextView.setVisibility(this.isFirstPrepared ? 4 : 0);
        }
        if (this.mProgressBar != null) {
            SeekBar seekBar = this.mProgressBar;
            if (!this.isFirstPrepared) {
                i2 = 0;
            }
            seekBar.setVisibility(i2);
            this.mProgressBar.setEnabled(!this.isFirstPrepared);
        }
    }

    public void removeFullWindowViewOnly() {
        ViewGroup viewGroup = (ViewGroup) CommonUtil.scanForActivity(getContext()).findViewById(16908290);
        View findViewById = viewGroup.findViewById(getFullId());
        if (!(findViewById == null || findViewById.getParent() == null)) {
            viewGroup.removeView((ViewGroup) findViewById.getParent());
        }
        this.mIfCurrentIsFullscreen = false;
    }
}
