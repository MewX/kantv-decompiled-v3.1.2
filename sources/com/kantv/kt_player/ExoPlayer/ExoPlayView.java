package com.kantv.kt_player.ExoPlayer;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.exoplayer2.C;
import com.kantv.android.screen.androidupnpdemo.entity.ClingDevice;
import com.kantv.android.screen.androidupnpdemo.entity.IDevice;
import com.kantv.android.screen.androidupnpdemo.entity.TestEvent;
import com.kantv.android.screen.androidupnpdemo.service.manager.ClingManager;
import com.kantv.android.screen.androidupnpdemo.ui.TpActivity3;
import com.kantv.android.screen.androidupnpdemo.util.Utils;
import com.kantv.android.screen.manager.ScreenManager;
import com.kantv.android.screen.manager.ScreenManager.CallBack;
import com.kantv.android.screen.manager.ScreenManager.DlnaDeviceListener;
import com.kantv.android.screen.manager.ScreenManager.GoogleDeviceListener;
import com.kantv.android.screen.manager.ScreenManager.SamsungDeviceListener;
import com.kantv.kt_player.ExoPlayer.base.StandardGSYVideoPlayer;
import com.kantv.kt_player.ExoPlayer.builder.GSYVideoOptionBuilder;
import com.kantv.kt_player.ExoPlayer.utils.CommonUtil;
import com.kantv.kt_player.ExoPlayer.utils.OrientationUtils;
import com.kantv.kt_player.ExoPlayer.view.ShareView;
import com.kantv.kt_player.ExoPlayer.view.ShareView.IShareClick;
import com.kantv.kt_player.R;
import com.samsung.multiscreen.Service;
import com.tencent.connect.common.Constants;
import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.fourthline.cling.model.meta.Device;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

public class ExoPlayView extends StandardGSYVideoPlayer implements OnSeekBarChangeListener, StreamHandler {
    /* access modifiers changed from: private */
    public final Runnable TpSeekBarProgressUpdate = new Runnable() {
        public void run() {
            ScreenManager.getInstance(ExoPlayView.this.mContext).getCurrentTime(new CallBack() {
                public void onCurrentPosition(int i) {
                    ExoPlayView.this.mTpCurrentTime.setText(CommonUtil.stringForTime(i * 1000));
                    ExoPlayView.this.mTpSeekBar.setProgress(i);
                }
            });
            ExoPlayView.this.mHandler.postDelayed(this, 1000);
        }
    };
    private GSYVideoOptionBuilder gsyVideoOptionBuilder;
    /* access modifiers changed from: private */
    public boolean isInitScreenService;
    /* access modifiers changed from: private */
    public boolean isShowTpView;
    private ImageView mAirPlay;
    /* access modifiers changed from: private */
    public ViewGroup mBussinessLayout;
    private ClickListener mClickListener;
    /* access modifiers changed from: private */
    public List<ClingDevice> mClingDevices;
    EventSink mEventSink;
    public Handler mHandler;
    boolean mIsLive;
    private View mLineSwitch;
    private View mScreenShot;
    /* access modifiers changed from: private */
    public ShareView mShareView;
    /* access modifiers changed from: private */
    public List<Service> mSumsumDevices;
    /* access modifiers changed from: private */
    public TextView mTpCurrentTime;
    /* access modifiers changed from: private */
    public TextView mTpPlay;
    /* access modifiers changed from: private */
    public SeekBar mTpSeekBar;
    private TextView mTpState;
    private ImageView mTpStateBackground;
    private TextView mTpTotalTime;
    /* access modifiers changed from: private */
    public View mTpView;

    private class ClickListener implements OnClickListener {
        private ClickListener() {
        }

        public void onClick(View view) {
            int id = view.getId();
            if (id == R.id.airplay_img || id == R.id.change) {
                if (!ExoPlayView.this.isInitScreenService) {
                    ExoPlayView.this.isInitScreenService = true;
                    ExoPlayView.this.initScreenService();
                }
                Bundle bundle = new Bundle();
                bundle.putString("url", ExoPlayView.this.mUrl);
                bundle.putString("title", ExoPlayView.this.mTitle);
                Intent intent = new Intent(ExoPlayView.this.mContext, TpActivity3.class);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                intent.putExtras(bundle);
                ExoPlayView.this.mContext.startActivity(intent);
                ExoPlayView.this.onVideoPause();
            } else if (id == R.id.quit) {
                ExoPlayView.this.mBussinessLayout.removeView(ExoPlayView.this.mTpView);
                ExoPlayView.this.mBussinessLayout.setVisibility(8);
                ExoPlayView.this.isShowTpView = false;
                ScreenManager.getInstance(ExoPlayView.this.mContext).stop();
                ExoPlayView.this.mHandler.removeCallbacks(ExoPlayView.this.TpSeekBarProgressUpdate);
                ExoPlayView.this.onVideoResume();
            } else if (id == R.id.pausetv) {
                String string = ExoPlayView.this.getResources().getString(R.string.play);
                String string2 = ExoPlayView.this.getResources().getString(R.string.pause);
                if (ExoPlayView.this.mTpPlay.getText().equals(string)) {
                    ExoPlayView.this.mTpPlay.setText(string2);
                    ScreenManager.getInstance(ExoPlayView.this.mContext).pause();
                    return;
                }
                ExoPlayView.this.mTpPlay.setText(string);
                ScreenManager.getInstance(ExoPlayView.this.mContext).restartPlay();
            } else if (id == R.id.common_title_leftimg) {
                ExoPlayView.this.onBackPress(view);
            } else if (id == R.id.share_img) {
                if (!TextUtils.isEmpty(ExoPlayView.this.mUrl)) {
                    ExoPlayView.this.mShareView.setmShareUrl(ExoPlayView.this.mUrl);
                    ExoPlayView.this.mShareView.setTvTitle(ExoPlayView.this.mTitle);
                    ExoPlayView.this.mShareView.show();
                }
            } else if (id == R.id.line_switch && ExoPlayView.this.mIsLive && ExoPlayView.this.mEventSink != null) {
                Toast.makeText(ExoPlayView.this.mContext, "正在切换源", 0).show();
                HashMap hashMap = new HashMap();
                hashMap.put("event", "didClickSwitchBtn");
                ExoPlayView.this.mEventSink.success(hashMap);
            }
        }
    }

    public ExoPlayView(Context context, Boolean bool) {
        super(context, bool);
    }

    public ExoPlayView(Context context) {
        super(context);
    }

    public ExoPlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        super.init(context);
        this.mHandler = new Handler();
        this.id = ID;
        ID++;
        this.mOrientationUtils = new OrientationUtils((Activity) context, this);
        this.mOrientationUtils.setEnable(isRotateViewAuto());
        this.mOrientationUtils.setRotateWithSystem(this.mRotateWithSystem);
        initViews();
        EventBus.getDefault().register(this);
    }

    public void setDefaultConfig() {
        String str = "";
        this.gsyVideoOptionBuilder = new GSYVideoOptionBuilder().setIsTouchWiget(true).setRotateViewAuto(false).setLockLand(false).setAutoFullWithSize(false).setShowFullAnimation(false).setNeedLockFull(true).setSeekRatio(1.0f).setDismissControlTime(5000).setUrl(str).setCacheWithPlay(true).setVideoTitle(str);
        this.gsyVideoOptionBuilder.build((StandardGSYVideoPlayer) this);
    }

    private void initViews() {
        this.mClickListener = new ClickListener();
        this.mBussinessLayout = (ViewGroup) findViewById(R.id.businessLayout);
        this.mAirPlay = (ImageView) findViewById(R.id.airplay_img);
        this.mAirPlay.setOnClickListener(this.mClickListener);
        getFullscreenButton().setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (!ExoPlayView.this.isIfCurrentIsFullscreen()) {
                    if (ExoPlayView.this.mOrientationUtils != null) {
                        ExoPlayView.this.mOrientationUtils.resolveByClick();
                    }
                    ExoPlayView exoPlayView = ExoPlayView.this;
                    exoPlayView.startWindowFullscreen(exoPlayView.mContext, true, true);
                } else if (ExoPlayView.this.mBackFromFullScreenListener == null) {
                    ExoPlayView.this.clearFullscreenLayout();
                } else {
                    ExoPlayView.this.mBackFromFullScreenListener.onClick(view);
                }
            }
        });
        findViewById(R.id.share_img).setOnClickListener(this.mClickListener);
        this.mShareView = new ShareView(this.mContext);
        this.mShareView.setShareClick(new IShareClick() {
            public void shareClick(int i) {
                if (ExoPlayView.this.mEventSink != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("event", "didSelectSharePanelItem");
                    HashMap hashMap2 = new HashMap();
                    String str = "";
                    hashMap2.put("appName", str);
                    StringBuilder sb = new StringBuilder();
                    sb.append(i);
                    sb.append(str);
                    hashMap2.put(Constants.PARAM_PLATFORM, sb.toString());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(ExoPlayView.this.mTitle);
                    sb2.append(str);
                    hashMap2.put("title", sb2.toString());
                    hashMap2.put("higImage", str);
                    hashMap2.put("norImage", str);
                    hashMap2.put("key", "linkShare");
                    hashMap2.put("type", "0");
                    hashMap.put("item", hashMap2);
                    ExoPlayView.this.mEventSink.success(hashMap);
                }
            }
        });
        if (getBackButton() != null) {
            getBackButton().setVisibility(0);
            getBackButton().setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    ExoPlayView.this.onBackPress(view);
                }
            });
        }
        this.mLineSwitch = findViewById(R.id.line_switch);
        this.mScreenShot = findViewById(R.id.screen_shot);
    }

    /* access modifiers changed from: private */
    public void onBackPress(View view) {
        if (isIfCurrentIsFullscreen()) {
            if (this.mBackFromFullScreenListener == null) {
                clearFullscreenLayout();
            } else {
                this.mBackFromFullScreenListener.onClick(view);
            }
        } else if (this.mEventSink != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("event", "didClickBackBtn");
            this.mEventSink.success(hashMap);
        }
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setIsLive(boolean z) {
        this.mIsLive = z;
        if (this.mIsLive) {
            this.mProgressBar.setEnabled(false);
            this.mLineSwitch.setVisibility(0);
            this.mLineSwitch.setOnClickListener(this.mClickListener);
        }
    }

    public int getDuration() {
        if (!this.mIsLive) {
            return super.getDuration();
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    public void setProgressAndTime(int i, int i2, int i3, int i4) {
        if (!this.mIsLive) {
            super.setProgressAndTime(i, i2, i3, i4);
        }
    }

    public int getCurrentPositionWhenPlaying() {
        if (!this.mIsLive) {
            return super.getCurrentPositionWhenPlaying();
        }
        return 0;
    }

    public int getPlayPosition() {
        return super.getPlayPosition();
    }

    public void onListen(Object obj, EventSink eventSink) {
        this.mEventSink = eventSink;
    }

    public void onCancel(Object obj) {
        this.mEventSink = null;
    }

    /* access modifiers changed from: protected */
    public void changeUiToPreparingShow() {
        super.changeUiToPreparingShow();
        updateLiveUi();
    }

    /* access modifiers changed from: protected */
    public void changeUiToPlayingShow() {
        super.changeUiToPlayingShow();
        updateLiveUi();
    }

    /* access modifiers changed from: protected */
    public void changeUiToPauseShow() {
        super.changeUiToPauseShow();
        updateLiveUi();
    }

    /* access modifiers changed from: protected */
    public void changeUiToPlayingBufferingShow() {
        super.changeUiToPlayingBufferingShow();
        updateLiveUi();
    }

    /* access modifiers changed from: protected */
    public void changeUiToCompleteShow() {
        super.changeUiToCompleteShow();
        updateLiveUi();
    }

    /* access modifiers changed from: protected */
    public void changeUiToError() {
        super.changeUiToError();
        setViewShowState(this.mLineSwitch, 8);
    }

    /* access modifiers changed from: protected */
    public void changeUiToNormal() {
        super.changeUiToNormal();
        updateLiveUi();
    }

    /* access modifiers changed from: protected */
    public void hideAllWidget() {
        super.hideAllWidget();
        setViewShowState(this.mLineSwitch, 8);
    }

    /* access modifiers changed from: protected */
    public void changeUiToClear() {
        super.changeUiToClear();
        updateLiveUi();
        setViewShowState(this.mLineSwitch, 8);
    }

    private void updateLiveUi() {
        setViewShowState(this.mLineSwitch, this.mIsLive ? 0 : 8);
        if (this.mIsLive) {
            setViewShowState(this.mStartButton, 4);
            setViewShowState(this.mCurrentTimeTextView, 4);
            setViewShowState(this.mTotalTimeTextView, 4);
            setViewShowState(this.mProgressBar, 4);
        }
    }

    private void initTpView() {
        if (this.mTpView == null) {
            this.mTpView = LayoutInflater.from(this.mContext).inflate(R.layout.kt_tping, null);
            this.mTpView.findViewById(R.id.quit).setOnClickListener(this.mClickListener);
            this.mTpView.findViewById(R.id.pausetv).setOnClickListener(this.mClickListener);
            this.mTpView.findViewById(R.id.common_title_leftimg).setOnClickListener(this.mClickListener);
            this.mTpView.findViewById(R.id.change).setOnClickListener(this.mClickListener);
            this.mTpState = (TextView) this.mTpView.findViewById(R.id.state_tvheader);
            this.mTpPlay = (TextView) this.mTpView.findViewById(R.id.pausetv);
            this.mTpStateBackground = (ImageView) this.mTpView.findViewById(R.id.tpback_iv);
            this.mTpCurrentTime = (TextView) this.mTpView.findViewById(R.id.current_tp);
            this.mTpTotalTime = (TextView) this.mTpView.findViewById(R.id.total_tp);
            this.mTpSeekBar = (SeekBar) this.mTpView.findViewById(R.id.progress_tp);
        }
    }

    /* access modifiers changed from: private */
    public void initScreenService() {
        this.mClingDevices = new ArrayList();
        this.mSumsumDevices = new ArrayList();
        ScreenManager instance = ScreenManager.getInstance(this.mContext);
        instance.initScreenService();
        instance.setDlnaDeviceListener(new DlnaDeviceListener() {
            public void onDlnaDeviceAdd(final IDevice iDevice) {
                ExoPlayView.this.mHandler.post(new Runnable() {
                    public void run() {
                        ExoPlayView.this.mClingDevices.add((ClingDevice) iDevice);
                        StringBuilder sb = new StringBuilder();
                        sb.append("onDeviceAdded mBrowseRegistryListener");
                        sb.append(iDevice);
                        String str = "ScreenManager";
                        Log.d(str, sb.toString());
                        for (int i = 0; i < ExoPlayView.this.mClingDevices.size(); i++) {
                            ClingDevice clingDevice = (ClingDevice) ExoPlayView.this.mClingDevices.get(i);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("item ");
                            sb2.append(clingDevice.getDevice().getDetails().getFriendlyName());
                            sb2.append("       ");
                            sb2.append(clingDevice.isSelected());
                            Log.d(str, sb2.toString());
                            ClingDevice clingDevice2 = (ClingDevice) ExoPlayView.this.mClingDevices.get(i);
                            Device device = clingDevice.getDevice();
                            if (ScreenManager.getInstance(ExoPlayView.this.mContext).name.equals(device.getDetails().getFriendlyName())) {
                                ClingManager.getInstance().setSelectedDevice(clingDevice2);
                                if (Utils.isNull(device)) {
                                    return;
                                }
                            }
                        }
                    }
                });
            }

            public void onDlnaDeviceRemoved(final IDevice iDevice) {
                ExoPlayView.this.mHandler.post(new Runnable() {
                    public void run() {
                        ExoPlayView.this.mClingDevices.remove((ClingDevice) iDevice);
                        StringBuilder sb = new StringBuilder();
                        sb.append("onDeviceRemoved mBrowseRegistryListener");
                        sb.append(iDevice);
                        Log.d("ScreenManager", sb.toString());
                    }
                });
            }
        });
        instance.setGoogleDeviceListener(new GoogleDeviceListener() {
            public void onGoogleDeviceState(int i) {
            }
        });
        instance.setSamsungDeviceListener(new SamsungDeviceListener() {
            public void onSamsungDeviceAdd(final Service service) {
                if (!ExoPlayView.this.mSumsumDevices.contains(service)) {
                    ExoPlayView.this.mHandler.post(new Runnable() {
                        public void run() {
                            ExoPlayView.this.mSumsumDevices.add(service);
                            StringBuilder sb = new StringBuilder();
                            sb.append("TVListAdapter.add(service): ");
                            sb.append(service);
                            Log.v("ScreenManager", sb.toString());
                        }
                    });
                }
            }

            public void onSamsungDeviceRemoved(Service service) {
                ExoPlayView.this.mSumsumDevices.remove(service);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(TestEvent testEvent) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onEvent ");
        sb.append(testEvent);
        Log.d(str, sb.toString());
        try {
            String str2 = testEvent.message;
            if (!str2.equals(TestEvent.ADD_DEVICE)) {
                if (!str2.equals(TestEvent.REMOVE_DEVICE)) {
                    if (str2.equals(TestEvent.SELECT_DEVICE)) {
                        this.mHandler.removeCallbacks(this.TpSeekBarProgressUpdate);
                        onVideoPause();
                        this.mBussinessLayout.removeAllViews();
                        if (this.mTpView == null) {
                            initTpView();
                        }
                        if (isIfCurrentIsFullscreen()) {
                            float dimension = getResources().getDimension(R.dimen.space_150);
                            this.mTpStateBackground.getLayoutParams().height = (int) dimension;
                            ((LayoutParams) this.mTpState.getLayoutParams()).topMargin = (int) (dimension / 2.0f);
                        } else {
                            float dimension2 = getResources().getDimension(R.dimen.space_80);
                            this.mTpStateBackground.getLayoutParams().height = (int) dimension2;
                            ((LayoutParams) this.mTpState.getLayoutParams()).topMargin = (int) (dimension2 / 2.0f);
                        }
                        this.mTpTotalTime.setText(CommonUtil.stringForTime(getDuration()));
                        this.mTpSeekBar.setMax(getDuration() / 1000);
                        this.mTpPlay.setText(getResources().getString(R.string.pause));
                        this.mBussinessLayout.addView(this.mTpView);
                        this.mBussinessLayout.setVisibility(0);
                        this.isShowTpView = true;
                        ScreenManager.getInstance(this.mContext).selectDevice(testEvent.positon, testEvent.tag, this.mUrl, this.mTitle);
                        this.mTpSeekBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
                            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                            }

                            public void onStartTrackingTouch(SeekBar seekBar) {
                            }

                            public void onStopTrackingTouch(SeekBar seekBar) {
                                int progress = seekBar.getProgress() * 1000;
                                String stringForTime = CommonUtil.stringForTime(progress);
                                ScreenManager.getInstance(ExoPlayView.this.mContext).seek(progress);
                                ExoPlayView.this.mTpCurrentTime.setText(stringForTime);
                            }
                        });
                        this.mHandler.post(this.TpSeekBarProgressUpdate);
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("onActivityResume@");
                        sb2.append(((Activity) this.mContext).getLocalClassName());
                        if (!str2.equals(sb2.toString())) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("onActivityPaused@");
                            sb3.append(((Activity) this.mContext).getLocalClassName());
                            if (str2.equals(sb3.toString()) && !this.isShowTpView) {
                                onVideoPause();
                            }
                        } else if (!this.isShowTpView) {
                            onVideoResume();
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getLayoutId() {
        return R.layout.kt_video_normal;
    }

    public void release() {
        super.release();
        if (this.isInitScreenService) {
            ScreenManager.getInstance(this.mContext).release();
        }
        this.mContext = null;
        EventBus.getDefault().unregister(this);
    }
}
