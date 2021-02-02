package com.kantv.video;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.kantv.common.utils.Utils;
import com.kantv.video.OnDoubleClickListener.DoubleClickCallback;
import com.kantv.video.util.AudioUtil;
import com.kantv.video.util.Definition.UserPreference;
import com.kantv.video.util.PreferenceUtil;
import com.shuyu.gsyvideoplayer.GSYVideoManager;
import com.shuyu.gsyvideoplayer.player.PlayerFactory;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.tandong.bottomview.view.BottomView;

public class DownloadVideoPlayer extends StandardGSYVideoPlayer {
    private static final String TAG = "DownloadVideoPlayer";
    Runnable FastGuideRunnable = new Runnable() {
        public void run() {
            DownloadVideoPlayer.this.mGuideVideoFastLayout.setAlpha(0.0f);
            int access$200 = DownloadVideoPlayer.this.count * 10 * 1000;
            if (DownloadVideoPlayer.this.getCurrentPositionWhenPlaying() + access$200 < DownloadVideoPlayer.this.getDuration()) {
                try {
                    DownloadVideoPlayer.this.getGSYVideoManager().seekTo((long) (DownloadVideoPlayer.this.getCurrentPositionWhenPlaying() + access$200));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            DownloadVideoPlayer.this.count = 0;
        }
    };
    Runnable PrevGuideRunnable = new Runnable() {
        public void run() {
            DownloadVideoPlayer.this.mGuideVideoBeforeLayout.setAlpha(0.0f);
            int access$200 = DownloadVideoPlayer.this.count * 10 * 1000;
            if (DownloadVideoPlayer.this.getCurrentPositionWhenPlaying() > access$200) {
                try {
                    DownloadVideoPlayer.this.getGSYVideoManager().seekTo((long) (DownloadVideoPlayer.this.getCurrentPositionWhenPlaying() - access$200));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            DownloadVideoPlayer.this.count = 0;
        }
    };
    public TextView changeTv;
    /* access modifiers changed from: private */
    public int count = 0;
    public TextView currentTimeTv;
    public TextView diviseTv;
    public boolean isQp = false;
    /* access modifiers changed from: private */
    public int mBrightnessNum;
    /* access modifiers changed from: private */
    public LinearLayout mGuideVideoBeforeLayout;
    /* access modifiers changed from: private */
    public LinearLayout mGuideVideoFastLayout;
    /* access modifiers changed from: private */
    public TextView mGuideVideoFastTv;
    /* access modifiers changed from: private */
    public TextView mGuideVideoPrevTv;
    /* access modifiers changed from: private */
    public Handler mHandler = new Handler();
    private ImageView mMore;
    private ImageView mNext;
    private TextView mSelections;
    private ImageView mShare;
    /* access modifiers changed from: private */
    public int mVoiceNum;
    /* access modifiers changed from: private */
    public Window mWindow;
    public TextView pauseTv;
    public DownloadVideoPlayer player;
    public SeekBar progressBarSb;
    public TextView quitTv;
    /* access modifiers changed from: private */
    public float speed = 1.0f;
    public TextView stateTv;
    public TextView titleTv;
    public TextView totalTimeTv;
    public ImageView tpIv;
    public View tpview;

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void setmWindow(Window window) {
        this.mWindow = window;
    }

    public DownloadVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public DownloadVideoPlayer(Context context) {
        super(context);
    }

    public DownloadVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z, boolean z2) {
        this.player = (DownloadVideoPlayer) super.startWindowFullscreen(context, z, z2);
        DownloadVideoPlayer downloadVideoPlayer = this.player;
        if (downloadVideoPlayer != null) {
            downloadVideoPlayer.mShare = this.mShare;
            downloadVideoPlayer.mWindow = this.mWindow;
            downloadVideoPlayer.mMore = this.mMore;
            downloadVideoPlayer.diviseTv = (TextView) getFullWindowPlayer().findViewById(R.id.divise_tv);
            this.player.changeTv = (TextView) getFullWindowPlayer().findViewById(R.id.change);
            this.player.quitTv = (TextView) getFullWindowPlayer().findViewById(R.id.quit);
            this.player.tpview = getFullWindowPlayer().findViewById(R.id.tpview);
            this.player.stateTv = (TextView) getFullWindowPlayer().findViewById(R.id.state_tv);
            this.player.pauseTv = (TextView) getFullWindowPlayer().findViewById(R.id.pause);
            this.player.currentTimeTv = (TextView) getFullWindowPlayer().findViewById(R.id.current_thp);
            this.player.progressBarSb = (SeekBar) getFullWindowPlayer().findViewById(R.id.progress_thp);
            this.player.totalTimeTv = (TextView) getFullWindowPlayer().findViewById(R.id.total_thp);
        }
        return this.player;
    }

    public int getLayoutId() {
        if (this.mIfCurrentIsFullscreen) {
            this.isQp = true;
            return R.layout.video_land_download;
        }
        this.isQp = false;
        return R.layout.video_normal;
    }

    public void onPrepared() {
        super.onPrepared();
        Log.d(TAG, "onPrepared");
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        PlayerFactory.setPlayManager(MyFullScreenManager.class);
        super.init(context);
        this.mShare = (ImageView) findViewById(R.id.share_img);
        this.mMore = (ImageView) findViewById(R.id.more);
        this.tpIv = (ImageView) findViewById(R.id.airplay_img);
        this.titleTv = (TextView) findViewById(R.id.title);
        this.mShare.setVisibility(8);
        if (this.mIfCurrentIsFullscreen) {
            this.mGuideVideoBeforeLayout = (LinearLayout) findViewById(R.id.guide_video_before);
            this.mGuideVideoPrevTv = (TextView) findViewById(R.id.guide_prev_tv);
            this.mGuideVideoFastLayout = (LinearLayout) findViewById(R.id.guide_video_fast);
            this.mGuideVideoFastTv = (TextView) findViewById(R.id.guide_fast_tv);
            this.mGuideVideoBeforeLayout.setOnTouchListener(new OnDoubleClickListener(new DoubleClickCallback() {
                public void onDoubleClick() {
                    if (DownloadVideoPlayer.this.mCurrentState == 5) {
                        try {
                            DownloadVideoPlayer.this.getGSYVideoManager().start();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        DownloadVideoPlayer.this.setStateAndUi(2);
                        return;
                    }
                    DownloadVideoPlayer.this.count = DownloadVideoPlayer.this.count + 1;
                    DownloadVideoPlayer.this.mGuideVideoBeforeLayout.setAlpha(0.8f);
                    DownloadVideoPlayer.this.mGuideVideoPrevTv.setText(String.format(Utils.getString(R.string.prev_tv), new Object[]{Integer.toString(DownloadVideoPlayer.this.count * 10)}));
                    DownloadVideoPlayer.this.startPrevGuideTimer();
                }

                public void onSingleClick() {
                    if (DownloadVideoPlayer.this.mGuideVideoBeforeLayout.getAlpha() > 0.0f) {
                        DownloadVideoPlayer.this.count = DownloadVideoPlayer.this.count + 1;
                        DownloadVideoPlayer.this.mGuideVideoPrevTv.setText(String.format(Utils.getString(R.string.prev_tv), new Object[]{Integer.toString(DownloadVideoPlayer.this.count * 10)}));
                        if (DownloadVideoPlayer.this.mHandler != null) {
                            DownloadVideoPlayer.this.mHandler.removeCallbacks(DownloadVideoPlayer.this.PrevGuideRunnable);
                            DownloadVideoPlayer.this.startPrevGuideTimer();
                        }
                    }
                }
            }));
            this.mGuideVideoFastLayout.setOnTouchListener(new OnDoubleClickListener(new DoubleClickCallback() {
                public void onDoubleClick() {
                    if (DownloadVideoPlayer.this.mCurrentState == 5) {
                        try {
                            DownloadVideoPlayer.this.getGSYVideoManager().start();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        DownloadVideoPlayer.this.setStateAndUi(2);
                        return;
                    }
                    DownloadVideoPlayer.this.count = DownloadVideoPlayer.this.count + 1;
                    DownloadVideoPlayer.this.mGuideVideoFastLayout.setAlpha(0.8f);
                    DownloadVideoPlayer.this.mGuideVideoFastTv.setText(String.format(Utils.getString(R.string.fast_tv), new Object[]{Integer.toString(DownloadVideoPlayer.this.count * 10)}));
                    DownloadVideoPlayer.this.startFastGuideTimer();
                }

                public void onSingleClick() {
                    if (DownloadVideoPlayer.this.mGuideVideoFastLayout.getAlpha() > 0.0f) {
                        DownloadVideoPlayer.this.count = DownloadVideoPlayer.this.count + 1;
                        DownloadVideoPlayer.this.mGuideVideoFastTv.setText(String.format(Utils.getString(R.string.fast_tv), new Object[]{Integer.toString(DownloadVideoPlayer.this.count * 10)}));
                        if (DownloadVideoPlayer.this.mHandler != null) {
                            DownloadVideoPlayer.this.mHandler.removeCallbacks(DownloadVideoPlayer.this.FastGuideRunnable);
                            DownloadVideoPlayer.this.startFastGuideTimer();
                        }
                    }
                }
            }));
            this.mMore.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    final BottomView bottomView = new BottomView(DownloadVideoPlayer.this.getContext(), R.style.BottomViewTheme_Defalut, R.layout.item_videomore);
                    bottomView.setAnimation(R.style.BottomToTopAnim);
                    bottomView.showBottomView(true);
                    RadioGroup radioGroup = (RadioGroup) bottomView.getView().findViewById(R.id.group);
                    RadioButton radioButton = (RadioButton) bottomView.getView().findViewById(R.id.rb1);
                    RadioButton radioButton2 = (RadioButton) bottomView.getView().findViewById(R.id.rb2);
                    RadioButton radioButton3 = (RadioButton) bottomView.getView().findViewById(R.id.rb3);
                    RadioButton radioButton4 = (RadioButton) bottomView.getView().findViewById(R.id.rb4);
                    RadioButton radioButton5 = (RadioButton) bottomView.getView().findViewById(R.id.rb5);
                    RadioButton radioButton6 = (RadioButton) bottomView.getView().findViewById(R.id.rb6);
                    RadioButton radioButton7 = (RadioButton) bottomView.getView().findViewById(R.id.rb7);
                    RadioButton radioButton8 = (RadioButton) bottomView.getView().findViewById(R.id.rb8);
                    bottomView.getView().findViewById(R.id.videomore_layout).setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            BottomView bottomView = bottomView;
                            if (bottomView != null) {
                                bottomView.dismissBottomView();
                            }
                        }
                    });
                    bottomView.getView().findViewById(R.id.videomore_content_layout).setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                        }
                    });
                    bottomView.getView().findViewById(R.id.videoset_cache).setAlpha(0.5f);
                    bottomView.getView().findViewById(R.id.videoset_lineswitch).setAlpha(0.5f);
                    bottomView.getView().findViewById(R.id.videoset_collect).setAlpha(0.5f);
                    bottomView.getView().findViewById(R.id.videoset_timer).setAlpha(0.5f);
                    bottomView.getView().findViewById(R.id.videoset_airplay).setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            BottomView bottomView = bottomView;
                            if (bottomView != null) {
                                bottomView.dismissBottomView();
                            }
                            if (DownloadVideoPlayer.this.tpIv != null) {
                                DownloadVideoPlayer.this.tpIv.callOnClick();
                            }
                        }
                    });
                    ((Switch) bottomView.getView().findViewById(R.id.autoSkipSwitch)).setChecked(((Boolean) PreferenceUtil.get(Utils.getContext(), UserPreference.AUTO_SKIP_VIDEO, Boolean.valueOf(true))).booleanValue());
                    ((Switch) bottomView.getView().findViewById(R.id.autoSkipSwitch)).setOnCheckedChangeListener(new OnCheckedChangeListener() {
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            String str = UserPreference.AUTO_SKIP_VIDEO;
                            if (z) {
                                PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(true));
                            } else {
                                PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(false));
                            }
                        }
                    });
                    bottomView.getView().findViewById(R.id.autoskip_layout).setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            Context context = Utils.getContext();
                            Boolean valueOf = Boolean.valueOf(true);
                            String str = UserPreference.AUTO_SKIP_VIDEO;
                            boolean booleanValue = ((Boolean) PreferenceUtil.get(context, str, valueOf)).booleanValue();
                            if (booleanValue) {
                                PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(false));
                            } else {
                                PreferenceUtil.put(Utils.getContext(), str, valueOf);
                            }
                            ((Switch) bottomView.getView().findViewById(R.id.autoSkipSwitch)).setChecked(!booleanValue);
                        }
                    });
                    SeekBar seekBar = (SeekBar) bottomView.getView().findViewById(R.id.seekbar1);
                    SeekBar seekBar2 = (SeekBar) bottomView.getView().findViewById(R.id.seekbar2);
                    final AudioUtil audioUtil = new AudioUtil(DownloadVideoPlayer.this.getContext(), DownloadVideoPlayer.this.mWindow);
                    DownloadVideoPlayer.this.mVoiceNum = audioUtil.getMediaVolume();
                    seekBar.setProgress(DownloadVideoPlayer.this.mVoiceNum);
                    DownloadVideoPlayer.this.mBrightnessNum = audioUtil.getSystemBrightness();
                    seekBar2.setProgress(DownloadVideoPlayer.this.mBrightnessNum);
                    seekBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
                        public void onStartTrackingTouch(SeekBar seekBar) {
                        }

                        public void onStopTrackingTouch(SeekBar seekBar) {
                        }

                        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                            DownloadVideoPlayer.this.mVoiceNum = i;
                            audioUtil.setMediaVolume(i);
                        }
                    });
                    seekBar2.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
                        public void onStartTrackingTouch(SeekBar seekBar) {
                        }

                        public void onStopTrackingTouch(SeekBar seekBar) {
                        }

                        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                            DownloadVideoPlayer.this.mBrightnessNum = i;
                            audioUtil.changeAppBrightness(i);
                        }
                    });
                    if (((double) DownloadVideoPlayer.this.speed) == 0.25d) {
                        radioButton.setChecked(true);
                    } else if (((double) DownloadVideoPlayer.this.speed) == 0.5d) {
                        radioButton2.setChecked(true);
                    } else if (DownloadVideoPlayer.this.speed == 1.0f) {
                        radioButton3.setChecked(true);
                    } else if (((double) DownloadVideoPlayer.this.speed) == 1.25d) {
                        radioButton4.setChecked(true);
                    } else if (((double) DownloadVideoPlayer.this.speed) == 1.5d) {
                        radioButton5.setChecked(true);
                    } else if (DownloadVideoPlayer.this.speed == 2.0f) {
                        radioButton6.setChecked(true);
                    } else if (DownloadVideoPlayer.this.speed == 3.0f) {
                        radioButton7.setChecked(true);
                    } else if (DownloadVideoPlayer.this.speed == 5.0f) {
                        radioButton8.setChecked(true);
                    }
                    radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
                        public void onCheckedChanged(RadioGroup radioGroup, @IdRes int i) {
                            if (i == R.id.rb1) {
                                DownloadVideoPlayer.this.setSpeed(0.5f);
                                DownloadVideoPlayer.this.speed = 0.5f;
                            } else if (i == R.id.rb2) {
                                DownloadVideoPlayer.this.setSpeed(0.75f);
                                DownloadVideoPlayer.this.speed = 0.75f;
                            } else if (i == R.id.rb3) {
                                DownloadVideoPlayer.this.setSpeed(1.0f);
                                DownloadVideoPlayer.this.speed = 1.0f;
                            } else if (i == R.id.rb4) {
                                DownloadVideoPlayer.this.setSpeed(1.25f);
                                DownloadVideoPlayer.this.speed = 1.25f;
                            } else if (i == R.id.rb5) {
                                DownloadVideoPlayer.this.setSpeed(1.5f);
                                DownloadVideoPlayer.this.speed = 1.5f;
                            } else if (i == R.id.rb6) {
                                DownloadVideoPlayer.this.setSpeed(2.0f);
                                DownloadVideoPlayer.this.speed = 2.0f;
                            } else if (i == R.id.rb7) {
                                DownloadVideoPlayer.this.setSpeed(3.0f);
                                DownloadVideoPlayer.this.speed = 3.0f;
                            } else if (i == R.id.rb8) {
                                DownloadVideoPlayer.this.setSpeed(5.0f);
                                DownloadVideoPlayer.this.speed = 5.0f;
                            }
                        }
                    });
                }
            });
        }
    }

    public void setTpViewVisible(boolean z) {
        if (z) {
            this.player.tpview.setVisibility(0);
        } else {
            this.player.tpview.setVisibility(8);
        }
    }

    public void setTpDviseText(String str) {
        this.player.diviseTv.setText(str);
    }

    public void setTpStateText(String str) {
        this.player.stateTv.setText(str);
    }

    public int getEnlargeImageRes() {
        return R.drawable.full_screen;
    }

    public int getShrinkImageRes() {
        return R.drawable.full_screen;
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        int progress = (seekBar.getProgress() * getDuration()) / 100;
        if (GSYVideoManager.instance().getPlayer() != null && this.mHadPlay) {
            int progress2 = (seekBar.getProgress() * getDuration()) / 100;
            getCurrentPlayer().isIfCurrentIsFullscreen();
            this.mCurrentTimeTextView.setText(CommonUtil.stringForTime(progress2));
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            if (isIfCurrentIsFullscreen()) {
                Debuger.printfLog("onClickSeekbarFullscreen");
                this.mVideoAllCallBack.onClickSeekbarFullscreen(this.mOriginUrl, this.mTitle, this);
            } else {
                Debuger.printfLog("onClickSeekbar");
                this.mVideoAllCallBack.onClickSeekbar(this.mOriginUrl, this.mTitle, this);
            }
        }
        if (GSYVideoManager.instance().getPlayer() != null && this.mHadPlay) {
            try {
                GSYVideoManager.instance().getPlayer().seekTo((long) ((seekBar.getProgress() * getDuration()) / 100));
            } catch (Exception e) {
                Debuger.printfWarning(e.toString());
            }
        }
    }

    /* access modifiers changed from: private */
    public void startPrevGuideTimer() {
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.postDelayed(this.PrevGuideRunnable, 1500);
    }

    /* access modifiers changed from: private */
    public void startFastGuideTimer() {
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.postDelayed(this.FastGuideRunnable, 1500);
    }

    /* access modifiers changed from: protected */
    public void hideAllWidget() {
        super.hideAllWidget();
        this.mBottomProgressBar.setVisibility(8);
    }
}
