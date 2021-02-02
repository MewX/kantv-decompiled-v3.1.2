package com.kantv.kt_player.ExoPlayer.base;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.kantv.kt_player.ExoPlayer.GSYVideoManager;
import com.kantv.kt_player.ExoPlayer.listener.GSYVideoShotListener;
import com.kantv.kt_player.ExoPlayer.listener.GSYVideoShotSaveListener;
import com.kantv.kt_player.ExoPlayer.utils.Debuger;
import com.kantv.kt_player.ExoPlayer.utils.NetworkUtils;
import com.kantv.kt_player.ExoPlayer.view.ENDownloadView;
import com.kantv.kt_player.ExoPlayer.view.ENPlayView;
import com.kantv.kt_player.R;
import java.io.File;

public class StandardGSYVideoPlayer extends GSYBaseVideoPlayer {
    protected Drawable mBottomProgressDrawable;
    protected Drawable mBottomShowProgressDrawable;
    protected Drawable mBottomShowProgressThumbDrawable;
    protected Dialog mBrightnessDialog;
    protected TextView mBrightnessDialogTv;
    protected ImageView mDialogIcon;
    protected ProgressBar mDialogProgressBar;
    protected Drawable mDialogProgressBarDrawable;
    protected int mDialogProgressHighLightColor = -11;
    protected int mDialogProgressNormalColor = -11;
    protected TextView mDialogSeekTime;
    protected TextView mDialogTotalTime;
    protected ProgressBar mDialogVolumeProgressBar;
    protected Dialog mProgressDialog;
    protected Dialog mVolumeDialog;
    protected Drawable mVolumeProgressDrawable;

    public StandardGSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public StandardGSYVideoPlayer(Context context) {
        super(context);
    }

    public StandardGSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        super.init(context);
        if (this.mBottomProgressDrawable != null) {
            this.mBottomProgressBar.setProgressDrawable(this.mBottomProgressDrawable);
        }
        if (this.mBottomShowProgressDrawable != null) {
            this.mProgressBar.setProgressDrawable(this.mBottomProgressDrawable);
        }
        if (this.mBottomShowProgressThumbDrawable != null) {
            this.mProgressBar.setThumb(this.mBottomShowProgressThumbDrawable);
        }
    }

    public GSYVideoViewBridge getGSYVideoManager() {
        GSYVideoManager.instance().initContext(getContext().getApplicationContext());
        return GSYVideoManager.instance();
    }

    /* access modifiers changed from: protected */
    public boolean backFromFull(Context context) {
        return GSYVideoManager.backFromWindowFull(context);
    }

    /* access modifiers changed from: protected */
    public void releaseVideos() {
        GSYVideoManager.releaseAllVideos();
    }

    public int getLayoutId() {
        return R.layout.kt_video_layout_standard;
    }

    public void startPlayLogic() {
        if (this.mVideoAllCallBack != null) {
            Debuger.printfLog("onClickStartThumb");
            this.mVideoAllCallBack.onClickStartThumb(this.mOriginUrl, this.mTitle, this);
        }
        prepareVideo();
        startDismissControlViewTimer();
    }

    /* access modifiers changed from: protected */
    public void showWifiDialog() {
        if (!NetworkUtils.isAvailable(this.mContext)) {
            startPlayLogic();
            return;
        }
        Builder builder = new Builder(getActivityContext());
        builder.setMessage(getResources().getString(R.string.tips_not_wifi));
        builder.setPositiveButton(getResources().getString(R.string.tips_not_wifi_confirm), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                StandardGSYVideoPlayer.this.startPlayLogic();
            }
        });
        builder.setNegativeButton(getResources().getString(R.string.tips_not_wifi_cancel), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    /* access modifiers changed from: protected */
    public void showProgressDialog(float f, String str, int i, String str2, int i2) {
        if (this.mProgressDialog == null) {
            View inflate = LayoutInflater.from(getActivityContext()).inflate(getProgressDialogLayoutId(), null);
            if (inflate.findViewById(getProgressDialogProgressId()) instanceof ProgressBar) {
                this.mDialogProgressBar = (ProgressBar) inflate.findViewById(getProgressDialogProgressId());
                Drawable drawable = this.mDialogProgressBarDrawable;
                if (drawable != null) {
                    this.mDialogProgressBar.setProgressDrawable(drawable);
                }
            }
            if (inflate.findViewById(getProgressDialogCurrentDurationTextId()) instanceof TextView) {
                this.mDialogSeekTime = (TextView) inflate.findViewById(getProgressDialogCurrentDurationTextId());
            }
            if (inflate.findViewById(getProgressDialogAllDurationTextId()) instanceof TextView) {
                this.mDialogTotalTime = (TextView) inflate.findViewById(getProgressDialogAllDurationTextId());
            }
            if (inflate.findViewById(getProgressDialogImageId()) instanceof ImageView) {
                this.mDialogIcon = (ImageView) inflate.findViewById(getProgressDialogImageId());
            }
            this.mProgressDialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mProgressDialog.setContentView(inflate);
            this.mProgressDialog.getWindow().addFlags(8);
            this.mProgressDialog.getWindow().addFlags(32);
            this.mProgressDialog.getWindow().addFlags(16);
            this.mProgressDialog.getWindow().setLayout(getWidth(), getHeight());
            int i3 = this.mDialogProgressNormalColor;
            if (i3 != -11) {
                TextView textView = this.mDialogTotalTime;
                if (textView != null) {
                    textView.setTextColor(i3);
                }
            }
            int i4 = this.mDialogProgressHighLightColor;
            if (i4 != -11) {
                TextView textView2 = this.mDialogSeekTime;
                if (textView2 != null) {
                    textView2.setTextColor(i4);
                }
            }
            LayoutParams attributes = this.mProgressDialog.getWindow().getAttributes();
            attributes.gravity = 48;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mProgressDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mProgressDialog.isShowing()) {
            this.mProgressDialog.show();
        }
        TextView textView3 = this.mDialogSeekTime;
        if (textView3 != null) {
            textView3.setText(str);
        }
        TextView textView4 = this.mDialogTotalTime;
        if (textView4 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(" / ");
            sb.append(str2);
            textView4.setText(sb.toString());
        }
        if (i2 > 0) {
            ProgressBar progressBar = this.mDialogProgressBar;
            if (progressBar != null) {
                progressBar.setProgress((i * 100) / i2);
            }
        }
        if (f > 0.0f) {
            ImageView imageView = this.mDialogIcon;
            if (imageView != null) {
                imageView.setBackgroundResource(R.drawable.video_forward_icon);
                return;
            }
            return;
        }
        ImageView imageView2 = this.mDialogIcon;
        if (imageView2 != null) {
            imageView2.setBackgroundResource(R.drawable.video_backward_icon);
        }
    }

    /* access modifiers changed from: protected */
    public void dismissProgressDialog() {
        Dialog dialog = this.mProgressDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mProgressDialog = null;
        }
    }

    /* access modifiers changed from: protected */
    public void showVolumeDialog(float f, int i) {
        if (this.mVolumeDialog == null) {
            View inflate = LayoutInflater.from(getActivityContext()).inflate(getVolumeLayoutId(), null);
            if (inflate.findViewById(getVolumeProgressId()) instanceof ProgressBar) {
                this.mDialogVolumeProgressBar = (ProgressBar) inflate.findViewById(getVolumeProgressId());
                Drawable drawable = this.mVolumeProgressDrawable;
                if (drawable != null) {
                    ProgressBar progressBar = this.mDialogVolumeProgressBar;
                    if (progressBar != null) {
                        progressBar.setProgressDrawable(drawable);
                    }
                }
            }
            this.mVolumeDialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mVolumeDialog.setContentView(inflate);
            this.mVolumeDialog.getWindow().addFlags(8);
            this.mVolumeDialog.getWindow().addFlags(32);
            this.mVolumeDialog.getWindow().addFlags(16);
            this.mVolumeDialog.getWindow().setLayout(-2, -2);
            LayoutParams attributes = this.mVolumeDialog.getWindow().getAttributes();
            attributes.gravity = 8388659;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mVolumeDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mVolumeDialog.isShowing()) {
            this.mVolumeDialog.show();
        }
        ProgressBar progressBar2 = this.mDialogVolumeProgressBar;
        if (progressBar2 != null) {
            progressBar2.setProgress(i);
        }
    }

    /* access modifiers changed from: protected */
    public void dismissVolumeDialog() {
        Dialog dialog = this.mVolumeDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mVolumeDialog = null;
        }
    }

    /* access modifiers changed from: protected */
    public void showBrightnessDialog(float f) {
        if (this.mBrightnessDialog == null) {
            View inflate = LayoutInflater.from(getActivityContext()).inflate(getBrightnessLayoutId(), null);
            if (inflate.findViewById(getBrightnessTextId()) instanceof TextView) {
                this.mBrightnessDialogTv = (TextView) inflate.findViewById(getBrightnessTextId());
            }
            this.mBrightnessDialog = new Dialog(getActivityContext(), R.style.video_style_dialog_progress);
            this.mBrightnessDialog.setContentView(inflate);
            this.mBrightnessDialog.getWindow().addFlags(8);
            this.mBrightnessDialog.getWindow().addFlags(32);
            this.mBrightnessDialog.getWindow().addFlags(16);
            this.mBrightnessDialog.getWindow().getDecorView().setSystemUiVisibility(2);
            this.mBrightnessDialog.getWindow().setLayout(-2, -2);
            LayoutParams attributes = this.mBrightnessDialog.getWindow().getAttributes();
            attributes.gravity = 8388661;
            attributes.width = getWidth();
            attributes.height = getHeight();
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            attributes.x = iArr[0];
            attributes.y = iArr[1];
            this.mBrightnessDialog.getWindow().setAttributes(attributes);
        }
        if (!this.mBrightnessDialog.isShowing()) {
            this.mBrightnessDialog.show();
        }
        TextView textView = this.mBrightnessDialogTv;
        if (textView != null) {
            StringBuilder sb = new StringBuilder();
            sb.append((int) (f * 100.0f));
            sb.append("%");
            textView.setText(sb.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void dismissBrightnessDialog() {
        Dialog dialog = this.mBrightnessDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.mBrightnessDialog = null;
        }
    }

    /* access modifiers changed from: protected */
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        StandardGSYVideoPlayer standardGSYVideoPlayer = (StandardGSYVideoPlayer) gSYBaseVideoPlayer;
        StandardGSYVideoPlayer standardGSYVideoPlayer2 = (StandardGSYVideoPlayer) gSYBaseVideoPlayer2;
        if (!(standardGSYVideoPlayer2.mProgressBar == null || standardGSYVideoPlayer.mProgressBar == null)) {
            standardGSYVideoPlayer2.mProgressBar.setProgress(standardGSYVideoPlayer.mProgressBar.getProgress());
            standardGSYVideoPlayer2.mProgressBar.setSecondaryProgress(standardGSYVideoPlayer.mProgressBar.getSecondaryProgress());
        }
        if (!(standardGSYVideoPlayer2.mTotalTimeTextView == null || standardGSYVideoPlayer.mTotalTimeTextView == null)) {
            standardGSYVideoPlayer2.mTotalTimeTextView.setText(standardGSYVideoPlayer.mTotalTimeTextView.getText());
        }
        if (standardGSYVideoPlayer2.mCurrentTimeTextView != null && standardGSYVideoPlayer.mCurrentTimeTextView != null) {
            standardGSYVideoPlayer2.mCurrentTimeTextView.setText(standardGSYVideoPlayer.mCurrentTimeTextView.getText());
        }
    }

    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z, boolean z2) {
        GSYBaseVideoPlayer startWindowFullscreen = super.startWindowFullscreen(context, z, z2);
        if (startWindowFullscreen != null) {
            StandardGSYVideoPlayer standardGSYVideoPlayer = (StandardGSYVideoPlayer) startWindowFullscreen;
            standardGSYVideoPlayer.setLockClickListener(this.mLockClickListener);
            standardGSYVideoPlayer.setNeedLockFull(isNeedLockFull());
            initFullUI(standardGSYVideoPlayer);
        }
        return startWindowFullscreen;
    }

    /* access modifiers changed from: protected */
    public void onClickUiToggle() {
        if (!this.mIfCurrentIsFullscreen || !this.mLockCurScreen || !this.mNeedLockFull) {
            if (this.mCurrentState == 1) {
                if (this.mBottomContainer != null) {
                    if (this.mBottomContainer.getVisibility() == 0) {
                        changeUiToPrepareingClear();
                    } else {
                        changeUiToPreparingShow();
                    }
                }
            } else if (this.mCurrentState == 2) {
                if (this.mBottomContainer != null) {
                    if (this.mBottomContainer.getVisibility() == 0) {
                        changeUiToPlayingClear();
                    } else {
                        changeUiToPlayingShow();
                    }
                }
            } else if (this.mCurrentState == 5) {
                if (this.mBottomContainer != null) {
                    if (this.mBottomContainer.getVisibility() == 0) {
                        changeUiToPauseClear();
                    } else {
                        changeUiToPauseShow();
                    }
                }
            } else if (this.mCurrentState == 6) {
                if (this.mBottomContainer != null) {
                    if (this.mBottomContainer.getVisibility() == 0) {
                        changeUiToCompleteClear();
                    } else {
                        changeUiToCompleteShow();
                    }
                }
            } else if (this.mCurrentState == 3 && this.mBottomContainer != null) {
                if (this.mBottomContainer.getVisibility() == 0) {
                    changeUiToPlayingBufferingClear();
                } else {
                    changeUiToPlayingBufferingShow();
                }
            }
            return;
        }
        setViewShowState(this.mLockScreen, 0);
    }

    /* access modifiers changed from: protected */
    public void hideAllWidget() {
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mStartButton, 4);
    }

    /* access modifiers changed from: protected */
    public void changeUiToNormal() {
        Debuger.printfLog("changeUiToNormal");
        int i = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        ImageView imageView = this.mLockScreen;
        if (!this.mIfCurrentIsFullscreen || !this.mNeedLockFull) {
            i = 8;
        }
        setViewShowState(imageView, i);
        updateStartImage();
        if (this.mLoadingProgressBar instanceof ENDownloadView) {
            ((ENDownloadView) this.mLoadingProgressBar).reset();
        }
    }

    /* access modifiers changed from: protected */
    public void changeUiToPreparingShow() {
        Debuger.printfLog("changeUiToPreparingShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        if ((this.mLoadingProgressBar instanceof ENDownloadView) && ((ENDownloadView) this.mLoadingProgressBar).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).start();
        }
    }

    /* access modifiers changed from: protected */
    public void changeUiToPlayingShow() {
        Debuger.printfLog("changeUiToPlayingShow");
        int i = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        ImageView imageView = this.mLockScreen;
        if (!this.mIfCurrentIsFullscreen || !this.mNeedLockFull) {
            i = 8;
        }
        setViewShowState(imageView, i);
        if (this.mLoadingProgressBar instanceof ENDownloadView) {
            ((ENDownloadView) this.mLoadingProgressBar).reset();
        }
        updateStartImage();
    }

    /* access modifiers changed from: protected */
    public void changeUiToPauseShow() {
        Debuger.printfLog("changeUiToPauseShow");
        int i = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        ImageView imageView = this.mLockScreen;
        if (!this.mIfCurrentIsFullscreen || !this.mNeedLockFull) {
            i = 8;
        }
        setViewShowState(imageView, i);
        if (this.mLoadingProgressBar instanceof ENDownloadView) {
            ((ENDownloadView) this.mLoadingProgressBar).reset();
        }
        updateStartImage();
        updatePauseCover();
    }

    /* access modifiers changed from: protected */
    public void changeUiToPlayingBufferingShow() {
        Debuger.printfLog("changeUiToPlayingBufferingShow");
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        if ((this.mLoadingProgressBar instanceof ENDownloadView) && ((ENDownloadView) this.mLoadingProgressBar).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).start();
        }
    }

    /* access modifiers changed from: protected */
    public void changeUiToCompleteShow() {
        Debuger.printfLog("changeUiToCompleteShow");
        int i = 0;
        setViewShowState(this.mTopContainer, 0);
        setViewShowState(this.mBottomContainer, 0);
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 4);
        ImageView imageView = this.mLockScreen;
        if (!this.mIfCurrentIsFullscreen || !this.mNeedLockFull) {
            i = 8;
        }
        setViewShowState(imageView, i);
        if (this.mLoadingProgressBar instanceof ENDownloadView) {
            ((ENDownloadView) this.mLoadingProgressBar).reset();
        }
        updateStartImage();
    }

    /* access modifiers changed from: protected */
    public void changeUiToError() {
        Debuger.printfLog("changeUiToError");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        int i = 0;
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        ImageView imageView = this.mLockScreen;
        if (!this.mIfCurrentIsFullscreen || !this.mNeedLockFull) {
            i = 8;
        }
        setViewShowState(imageView, i);
        if (this.mLoadingProgressBar instanceof ENDownloadView) {
            ((ENDownloadView) this.mLoadingProgressBar).reset();
        }
        updateStartImage();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissVolumeDialog();
        dismissBrightnessDialog();
    }

    /* access modifiers changed from: protected */
    public int getProgressDialogLayoutId() {
        return R.layout.kt_video_progress_dialog;
    }

    /* access modifiers changed from: protected */
    public int getProgressDialogProgressId() {
        return R.id.duration_progressbar;
    }

    /* access modifiers changed from: protected */
    public int getProgressDialogCurrentDurationTextId() {
        return R.id.tv_current;
    }

    /* access modifiers changed from: protected */
    public int getProgressDialogAllDurationTextId() {
        return R.id.tv_duration;
    }

    /* access modifiers changed from: protected */
    public int getProgressDialogImageId() {
        return R.id.duration_image_tip;
    }

    /* access modifiers changed from: protected */
    public int getVolumeLayoutId() {
        return R.layout.kt_video_volume_dialog;
    }

    /* access modifiers changed from: protected */
    public int getVolumeProgressId() {
        return R.id.volume_progressbar;
    }

    /* access modifiers changed from: protected */
    public int getBrightnessLayoutId() {
        return R.layout.kt_video_brightness;
    }

    /* access modifiers changed from: protected */
    public int getBrightnessTextId() {
        return R.id.app_video_brightness;
    }

    /* access modifiers changed from: protected */
    public void changeUiToPrepareingClear() {
        Debuger.printfLog("changeUiToPrepareingClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        if (this.mLoadingProgressBar instanceof ENDownloadView) {
            ((ENDownloadView) this.mLoadingProgressBar).reset();
        }
    }

    /* access modifiers changed from: protected */
    public void changeUiToPlayingClear() {
        Debuger.printfLog("changeUiToPlayingClear");
        changeUiToClear();
        setViewShowState(this.mBottomProgressBar, 0);
    }

    /* access modifiers changed from: protected */
    public void changeUiToPauseClear() {
        Debuger.printfLog("changeUiToPauseClear");
        changeUiToClear();
        setViewShowState(this.mBottomProgressBar, 0);
        updatePauseCover();
    }

    /* access modifiers changed from: protected */
    public void changeUiToPlayingBufferingClear() {
        Debuger.printfLog("changeUiToPlayingBufferingClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 0);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 0);
        setViewShowState(this.mLockScreen, 8);
        if ((this.mLoadingProgressBar instanceof ENDownloadView) && ((ENDownloadView) this.mLoadingProgressBar).getCurrentState() == 0) {
            ((ENDownloadView) this.mLoadingProgressBar).start();
        }
        updateStartImage();
    }

    /* access modifiers changed from: protected */
    public void changeUiToClear() {
        Debuger.printfLog("changeUiToClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        setViewShowState(this.mStartButton, 4);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 4);
        setViewShowState(this.mBottomProgressBar, 4);
        setViewShowState(this.mLockScreen, 8);
        if (this.mLoadingProgressBar instanceof ENDownloadView) {
            ((ENDownloadView) this.mLoadingProgressBar).reset();
        }
    }

    /* access modifiers changed from: protected */
    public void changeUiToCompleteClear() {
        Debuger.printfLog("changeUiToCompleteClear");
        setViewShowState(this.mTopContainer, 4);
        setViewShowState(this.mBottomContainer, 4);
        int i = 0;
        setViewShowState(this.mStartButton, 0);
        setViewShowState(this.mLoadingProgressBar, 4);
        setViewShowState(this.mThumbImageViewLayout, 0);
        setViewShowState(this.mBottomProgressBar, 0);
        ImageView imageView = this.mLockScreen;
        if (!this.mIfCurrentIsFullscreen || !this.mNeedLockFull) {
            i = 8;
        }
        setViewShowState(imageView, i);
        if (this.mLoadingProgressBar instanceof ENDownloadView) {
            ((ENDownloadView) this.mLoadingProgressBar).reset();
        }
        updateStartImage();
    }

    /* access modifiers changed from: protected */
    public void updateStartImage() {
        if (this.mStartButton instanceof ENPlayView) {
            ENPlayView eNPlayView = (ENPlayView) this.mStartButton;
            eNPlayView.setDuration(500);
            if (this.mCurrentState == 2) {
                eNPlayView.play();
            } else if (this.mCurrentState == 7) {
                eNPlayView.pause();
            } else {
                eNPlayView.pause();
            }
        } else if (this.mStartButton instanceof ImageView) {
            ImageView imageView = (ImageView) this.mStartButton;
            if (this.mCurrentState == 2) {
                imageView.setImageResource(R.drawable.video_click_pause_selector);
            } else if (this.mCurrentState == 7) {
                imageView.setImageResource(R.drawable.video_click_error_selector);
            } else {
                imageView.setImageResource(R.drawable.video_click_play_selector);
            }
        }
    }

    private void initFullUI(StandardGSYVideoPlayer standardGSYVideoPlayer) {
        Drawable drawable = this.mBottomProgressDrawable;
        if (drawable != null) {
            standardGSYVideoPlayer.setBottomProgressBarDrawable(drawable);
        }
        Drawable drawable2 = this.mBottomShowProgressDrawable;
        if (drawable2 != null) {
            Drawable drawable3 = this.mBottomShowProgressThumbDrawable;
            if (drawable3 != null) {
                standardGSYVideoPlayer.setBottomShowProgressBarDrawable(drawable2, drawable3);
            }
        }
        Drawable drawable4 = this.mVolumeProgressDrawable;
        if (drawable4 != null) {
            standardGSYVideoPlayer.setDialogVolumeProgressBar(drawable4);
        }
        Drawable drawable5 = this.mDialogProgressBarDrawable;
        if (drawable5 != null) {
            standardGSYVideoPlayer.setDialogProgressBar(drawable5);
        }
        int i = this.mDialogProgressHighLightColor;
        if (i >= 0) {
            int i2 = this.mDialogProgressNormalColor;
            if (i2 >= 0) {
                standardGSYVideoPlayer.setDialogProgressColor(i, i2);
            }
        }
    }

    public void setBottomShowProgressBarDrawable(Drawable drawable, Drawable drawable2) {
        this.mBottomShowProgressDrawable = drawable;
        this.mBottomShowProgressThumbDrawable = drawable2;
        if (this.mProgressBar != null) {
            this.mProgressBar.setProgressDrawable(drawable);
            this.mProgressBar.setThumb(drawable2);
        }
    }

    public void setBottomProgressBarDrawable(Drawable drawable) {
        this.mBottomProgressDrawable = drawable;
        if (this.mBottomProgressBar != null) {
            this.mBottomProgressBar.setProgressDrawable(drawable);
        }
    }

    public void setDialogVolumeProgressBar(Drawable drawable) {
        this.mVolumeProgressDrawable = drawable;
    }

    public void setDialogProgressBar(Drawable drawable) {
        this.mDialogProgressBarDrawable = drawable;
    }

    public void setDialogProgressColor(int i, int i2) {
        this.mDialogProgressHighLightColor = i;
        this.mDialogProgressNormalColor = i2;
    }

    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener) {
        taskShotPic(gSYVideoShotListener, false);
    }

    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        if (getCurrentPlayer().getRenderProxy() != null) {
            getCurrentPlayer().getRenderProxy().taskShotPic(gSYVideoShotListener, z);
        }
    }

    public void saveFrame(File file, GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        saveFrame(file, false, gSYVideoShotSaveListener);
    }

    public void saveFrame(File file, boolean z, GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        if (getCurrentPlayer().getRenderProxy() != null) {
            getCurrentPlayer().getRenderProxy().saveFrame(file, z, gSYVideoShotSaveListener);
        }
    }

    public void restartTimerTask() {
        startProgressTimer();
        startDismissControlViewTimer();
    }
}
