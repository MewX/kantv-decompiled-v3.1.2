package com.kantv.ui.activity;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.androidupnpdemo.control.ClingPlayControl;
import com.kantv.ui.androidupnpdemo.control.callback.ControlCallback;
import com.kantv.ui.androidupnpdemo.control.callback.ControlReceiveCallback;
import com.kantv.ui.androidupnpdemo.entity.ClingDevice;
import com.kantv.ui.androidupnpdemo.entity.ClingDeviceList;
import com.kantv.ui.androidupnpdemo.entity.IDevice;
import com.kantv.ui.androidupnpdemo.entity.IResponse;
import com.kantv.ui.androidupnpdemo.listener.BrowseRegistryListener;
import com.kantv.ui.androidupnpdemo.listener.DeviceListChangedListener;
import com.kantv.ui.androidupnpdemo.service.ClingUpnpService;
import com.kantv.ui.androidupnpdemo.service.ClingUpnpService.LocalBinder;
import com.kantv.ui.androidupnpdemo.service.manager.ClingManager;
import com.kantv.ui.androidupnpdemo.service.manager.DeviceManager;
import com.kantv.ui.androidupnpdemo.ui.DevicesAdapter;
import com.kantv.ui.androidupnpdemo.ui.TpActivity3;
import com.kantv.ui.bean.TestEvent;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.download.SettingsManager;
import com.kantv.ui.m3u8downloader.server.EncryptM3U8Server;
import com.kantv.ui.manager.UpnpManager;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.video.DownloadVideoPlayer;
import com.shuyu.gsyvideoplayer.GSYVideoManager;
import com.shuyu.gsyvideoplayer.builder.GSYVideoOptionBuilder;
import com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack;
import com.shuyu.gsyvideoplayer.listener.LockClickListener;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.utils.OrientationUtils;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import debug.KanApplication;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import master.flame.danmaku.danmaku.model.android.DanmakuFactory;
import okhttp3.ResponseBody;
import org.fourthline.cling.model.meta.Device;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class VideoFullScreenActivity extends PackageActivity implements OnSeekBarChangeListener {
    public static final int ERROR_ACTION = 165;
    public static final int GET_POSITION_INFO_ACTION = 165;
    public static final int PAUSE_ACTION = 162;
    public static final int PLAY_ACTION = 161;
    private static final int RESULT_CODE = 1005;
    public static final int STOP_ACTION = 163;
    public static final int SUCCES_ACTION = 167;
    private static final String TAG = "VideoFullScreenActivity";
    public static final int TRANSITIONING_ACTION = 164;
    public static ArrayAdapter<ClingDevice> mDevicesAdapter;
    /* access modifiers changed from: private */
    public String TpUrl;
    /* access modifiers changed from: private */
    public String currentProgressDetail;
    private long currentTime;
    /* access modifiers changed from: private */
    public Handler handler = new Handler();
    /* access modifiers changed from: private */
    public boolean isOnDestroy = false;
    private boolean isnotchage;
    /* access modifiers changed from: private */
    public boolean isnotshow;
    private EncryptM3U8Server m3u8Server = new EncryptM3U8Server();
    /* access modifiers changed from: private */
    public BrowseRegistryListener mBrowseRegistryListener;
    /* access modifiers changed from: private */
    public ClingPlayControl mClingPlayControl;
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public Handler mHandler;
    /* access modifiers changed from: private */
    public JSONObject mTime;
    /* access modifiers changed from: private */
    public JSONArray mTimeArray;
    private BroadcastReceiver mTransportStateBroadcastReceiver;
    private ServiceConnection mUpnpServiceConnection;
    private String mUrl = null;
    private Timer netSpeedTimer;
    /* access modifiers changed from: private */
    public int notshowTime;
    /* access modifiers changed from: private */
    public OrientationUtils orientationUtils;
    private long partId;
    /* access modifiers changed from: private */
    public boolean play;
    /* access modifiers changed from: private */
    public Timer stateSpeedTimer = new Timer();
    /* access modifiers changed from: private */
    public String title;
    /* access modifiers changed from: private */
    public DownloadVideoPlayer videoPlayer;

    private final class InnerHandler extends Handler {
        private InnerHandler() {
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            String str = "Execute ERROR_ACTION";
            String str2 = VideoFullScreenActivity.TAG;
            switch (i) {
                case 161:
                    Log.i(str2, "Execute PLAY_ACTION");
                    AILog.d(str2, "handleMessage正在投放");
                    VideoFullScreenActivity.this.mClingPlayControl.setCurrentState(1);
                    return;
                case 162:
                    Log.i(str2, "Execute PAUSE_ACTION");
                    AILog.d(str2, "handleMessage暂停");
                    VideoFullScreenActivity.this.mClingPlayControl.setCurrentState(2);
                    return;
                case 163:
                    AILog.d(str2, "handleMessage停止");
                    VideoFullScreenActivity.this.mClingPlayControl.setCurrentState(3);
                    return;
                case 164:
                    Log.i(str2, "Execute TRANSITIONING_ACTION");
                    AILog.d(str2, "handleMessage正在连接");
                    return;
                case 165:
                    Log.e(str2, str);
                    AILog.d(str2, "handleMessage投放失败");
                    return;
                case 167:
                    Log.e(str2, str);
                    AILog.d(str2, "handleMessage投放成功");
                    VideoFullScreenActivity.this.videoPlayer.setTpStateText("投放成功");
                    VideoFullScreenActivity.this.setingProgress();
                    return;
                default:
                    return;
            }
        }
    }

    private class TransportStateBroadcastReceiver extends BroadcastReceiver {
        private TransportStateBroadcastReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            StringBuilder sb = new StringBuilder();
            sb.append("Receive playback intent:");
            sb.append(action);
            Log.e(VideoFullScreenActivity.TAG, sb.toString());
            if ("com.zane.androidupnpdemo.action.playing".equals(action)) {
                VideoFullScreenActivity.this.mHandler.sendEmptyMessage(161);
            } else if ("com.zane.androidupnpdemo.action.paused_playback".equals(action)) {
                VideoFullScreenActivity.this.mHandler.sendEmptyMessage(162);
            } else if ("com.zane.androidupnpdemo.action.stopped".equals(action)) {
                VideoFullScreenActivity.this.mHandler.sendEmptyMessage(163);
            } else if ("com.zane.androidupnpdemo.action.transitioning".equals(action)) {
                VideoFullScreenActivity.this.mHandler.sendEmptyMessage(164);
            }
        }
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public VideoFullScreenActivity() {
        String str = "";
        this.currentProgressDetail = str;
        this.mHandler = new InnerHandler();
        this.play = true;
        this.isnotchage = false;
        this.partId = 0;
        this.TpUrl = str;
        this.mClingPlayControl = new ClingPlayControl();
        this.mBrowseRegistryListener = new BrowseRegistryListener();
        this.isnotshow = false;
        this.currentTime = 0;
        this.mUpnpServiceConnection = new ServiceConnection() {
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                AILog.d(VideoFullScreenActivity.TAG, "mUpnpServiceConnection onServiceConnected");
                ClingUpnpService service = ((LocalBinder) iBinder).getService();
                ClingManager instance = ClingManager.getInstance();
                instance.setUpnpService(service);
                instance.setDeviceManager(new DeviceManager());
                instance.getRegistry().addListener(VideoFullScreenActivity.this.mBrowseRegistryListener);
                instance.searchDevices();
            }

            public void onServiceDisconnected(ComponentName componentName) {
                AILog.d(VideoFullScreenActivity.TAG, "mUpnpServiceConnection onServiceDisconnected");
                ClingManager.getInstance().setUpnpService(null);
            }
        };
    }

    /* access modifiers changed from: private */
    public void stop() {
        this.mClingPlayControl.stop(new ControlCallback() {
            public void success(IResponse iResponse) {
                Log.e(VideoFullScreenActivity.TAG, "stop success");
            }

            public void fail(IResponse iResponse) {
                Log.e(VideoFullScreenActivity.TAG, "stop fail");
            }
        });
        TestEvent testEvent = new TestEvent();
        testEvent.message = ConfigBuilder.DEFAULT_DART_ENTRYPOINT;
        testEvent.tag = 3;
        EventBus.getDefault().post(testEvent);
    }

    /* access modifiers changed from: private */
    public void pause() {
        this.mClingPlayControl.pause(new ControlCallback() {
            public void success(IResponse iResponse) {
                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        VideoFullScreenActivity.this.videoPlayer.player.pauseTv.setText("播放");
                    }
                });
            }

            public void fail(IResponse iResponse) {
                VideoFullScreenActivity.this.getCurPlay().isIfCurrentIsFullscreen();
                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        VideoFullScreenActivity.this.videoPlayer.player.pauseTv.setText("暂停");
                    }
                });
            }
        });
    }

    public void getPositionInfo() {
        this.mClingPlayControl.getPositionInfo(new ControlReceiveCallback() {
            public void receive(IResponse iResponse) {
                int parseInt;
                int parseInt2;
                VideoFullScreenActivity.this.currentProgressDetail = iResponse.getResponse().toString();
                String str = "RelTime:";
                if (VideoFullScreenActivity.this.currentProgressDetail.contains(str)) {
                    String[] split = VideoFullScreenActivity.this.currentProgressDetail.split(str);
                    if (split.length >= 1) {
                        String str2 = "Duration:";
                        if (split[1].contains(str2)) {
                            String[] split2 = split[1].split(str2);
                            if (split2 != null) {
                                String str3 = ":";
                                if (split2[0].contains(str3)) {
                                    String[] split3 = split2[0].split(str3);
                                    if (split3 != null) {
                                        final int i = 0;
                                        for (int i2 = 0; i2 < split3.length; i2++) {
                                            if (i2 == 0) {
                                                parseInt2 = Integer.parseInt(split3[0].trim()) * 60;
                                            } else if (i2 == 1) {
                                                parseInt2 = Integer.parseInt(split3[1].trim());
                                            } else if (i2 == 2) {
                                                parseInt = Integer.parseInt(split3[2].trim());
                                                i += parseInt;
                                            }
                                            parseInt = parseInt2 * 60;
                                            i += parseInt;
                                        }
                                        String stringForTime = CommonUtil.stringForTime(i * 1000);
                                        if (stringForTime != null) {
                                            VideoFullScreenActivity.this.getCurPlay().isIfCurrentIsFullscreen();
                                            VideoFullScreenActivity.this.videoPlayer.player.progressBarSb.setProgress(i);
                                            VideoFullScreenActivity.this.videoPlayer.player.currentTimeTv.setText(stringForTime);
                                            if (i == VideoFullScreenActivity.this.videoPlayer.player.progressBarSb.getMax()) {
                                                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                                                    public void run() {
                                                        if (VideoFullScreenActivity.this.videoPlayer.player.stateTv.getText().equals("正在投屏中")) {
                                                            VideoFullScreenActivity.this.videoPlayer.player.stateTv.setText("播放结束");
                                                        }
                                                    }
                                                });
                                            }
                                            if (VideoFullScreenActivity.this.isnotshow) {
                                                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                                                    public void run() {
                                                        if (i == 0) {
                                                            VideoFullScreenActivity.this.videoPlayer.player.stateTv.setText("播放结束");
                                                        } else {
                                                            VideoFullScreenActivity.this.videoPlayer.player.stateTv.setText("正在投屏中");
                                                        }
                                                    }
                                                });
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            public void success(IResponse iResponse) {
                StringBuilder sb = new StringBuilder();
                sb.append("getPositionInfo success ");
                sb.append(iResponse.getResponse().toString());
                AILog.d(VideoFullScreenActivity.TAG, sb.toString());
            }

            public void fail(IResponse iResponse) {
                StringBuilder sb = new StringBuilder();
                sb.append("getPositionInfo fail ");
                sb.append(iResponse.getResponse().toString());
                AILog.d(VideoFullScreenActivity.TAG, sb.toString());
            }
        });
    }

    public void onStopTrackingTouch(final SeekBar seekBar) {
        runOnUiThread(new Runnable() {
            public void run() {
                int progress = seekBar.getProgress() * 1000;
                VideoFullScreenActivity.this.videoPlayer.player.currentTimeTv.setText(CommonUtil.stringForTime(progress));
                StringBuilder sb = new StringBuilder();
                sb.append("currentProgress");
                sb.append(progress);
                AILog.d(VideoFullScreenActivity.TAG, sb.toString());
                VideoFullScreenActivity.this.mClingPlayControl.seek(progress, new ControlCallback() {
                    public void success(IResponse iResponse) {
                        AILog.d(VideoFullScreenActivity.TAG, "currentProgress seek success");
                    }

                    public void fail(IResponse iResponse) {
                        AILog.d(VideoFullScreenActivity.TAG, "currentProgress seek fail");
                    }
                });
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_video_fullscreen);
        initView2();
        EventBus.getDefault().register(this);
        mDevicesAdapter = new DevicesAdapter(this);
        initListeners();
        bindServices();
        registerReceivers();
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                if (VideoFullScreenActivity.this.isnotshow) {
                    VideoFullScreenActivity.this.getCurPlay().release();
                }
            }
        }, 3000);
        onClick();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN31);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void bindServices() {
        bindService(new Intent(this, ClingUpnpService.class), this.mUpnpServiceConnection, 1);
    }

    private void registerReceivers() {
        this.mTransportStateBroadcastReceiver = new TransportStateBroadcastReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.zane.androidupnpdemo.action.playing");
        intentFilter.addAction("com.zane.androidupnpdemo.action.paused_playback");
        intentFilter.addAction("com.zane.androidupnpdemo.action.stopped");
        intentFilter.addAction("com.zane.androidupnpdemo.action.transitioning");
        registerReceiver(this.mTransportStateBroadcastReceiver, intentFilter);
    }

    public static String suffixName(File file) {
        String name = file.getName();
        return name.substring(name.lastIndexOf("."), name.length());
    }

    private void initView2() {
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(1024, 1024);
        this.videoPlayer = (DownloadVideoPlayer) findViewById(R.id.videoView);
        Bundle extras = getIntent().getExtras();
        String str = TAG;
        if (extras != null) {
            this.mUrl = extras.getString("M3U8_URL");
            StringBuilder sb = new StringBuilder();
            sb.append("onCreate URL");
            sb.append(this.mUrl);
            AILog.d(str, sb.toString());
            this.title = extras.getString("title");
            String str2 = "-";
            if (this.title.contains(str2)) {
                String[] split = this.title.split(str2);
                if (split.length >= 3) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(split[0]);
                    sb2.append(" ");
                    sb2.append(split[1]);
                    this.title = sb2.toString();
                    try {
                        this.partId = Long.parseLong(split[2]);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(this.partId);
                        sb3.append("");
                        requestSwitchOver(sb3.toString());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            this.isnotshow = extras.getBoolean("isnotshow", false);
        }
        getEndTime();
        this.m3u8Server.execute();
        String createLocalHttpUrl = this.m3u8Server.createLocalHttpUrl(this.mUrl);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("onCreate  localUrl");
        sb4.append(createLocalHttpUrl);
        sb4.append("    ");
        sb4.append(this.title);
        AILog.d(str, sb4.toString());
        this.orientationUtils = new OrientationUtils(this, this.videoPlayer);
        this.orientationUtils.setEnable(true);
        GSYVideoOptionBuilder videoTitle = new GSYVideoOptionBuilder().setIsTouchWiget(true).setRotateViewAuto(false).setLockLand(false).setShowFullAnimation(false).setNeedLockFull(true).setSeekRatio(1.0f).setUrl(createLocalHttpUrl).setCacheWithPlay(true).setVideoTitle(this.title);
        this.videoPlayer.setVideoAllCallBack(new GSYSampleCallBack() {
            public void onPrepared(String str, Object... objArr) {
                super.onPrepared(str, objArr);
                VideoFullScreenActivity.this.orientationUtils.setEnable(true);
            }

            public void onAutoComplete(String str, Object... objArr) {
                super.onAutoComplete(str, objArr);
            }

            public void onClickStartError(String str, Object... objArr) {
                super.onClickStartError(str, objArr);
            }

            public void onQuitFullscreen(String str, Object... objArr) {
                super.onQuitFullscreen(str, objArr);
                if (VideoFullScreenActivity.this.orientationUtils != null) {
                    VideoFullScreenActivity.this.orientationUtils.backToProtVideo();
                }
            }

            public void onPlayError(String str, Object... objArr) {
                super.onPlayError(str, objArr);
            }
        });
        videoTitle.build((StandardGSYVideoPlayer) this.videoPlayer);
        this.videoPlayer.setmWindow(getWindow());
        this.videoPlayer.setBackFromFullScreenListener(new OnClickListener() {
            public void onClick(View view) {
                VideoFullScreenActivity.this.finish();
            }
        });
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                VideoFullScreenActivity.this.setPlayermSeekRatio();
            }
        }, DanmakuFactory.MIN_DANMAKU_DURATION);
        this.videoPlayer.setLockClickListener(new LockClickListener() {
            public void onClick(View view, boolean z) {
                if (VideoFullScreenActivity.this.orientationUtils != null) {
                    VideoFullScreenActivity.this.orientationUtils.setEnable(!z);
                }
            }
        });
        this.videoPlayer.getCurrentPlayer().startPlayLogic();
        this.stateSpeedTimer.schedule(new TimerTask() {
            public void run() {
                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (VideoFullScreenActivity.this.videoPlayer != null && VideoFullScreenActivity.this.videoPlayer.getCurrentPlayer() != null) {
                            int currentState = VideoFullScreenActivity.this.videoPlayer.getCurrentPlayer().getCurrentState();
                            StringBuilder sb = new StringBuilder();
                            sb.append("runOnUiThread currentstate=");
                            sb.append(currentState);
                            String sb2 = sb.toString();
                            String str = VideoFullScreenActivity.TAG;
                            AILog.d(str, sb2);
                            if (currentState == 2) {
                                if (VideoFullScreenActivity.this.mTime != null && VideoFullScreenActivity.this.mTimeArray != null) {
                                    int i = 0;
                                    while (true) {
                                        if (i >= VideoFullScreenActivity.this.mTimeArray.length()) {
                                            break;
                                        }
                                        JSONObject jSONObject = (JSONObject) VideoFullScreenActivity.this.mTimeArray.opt(i);
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("onCreate arrayJson");
                                        sb3.append(jSONObject.toString());
                                        AILog.d(str, sb3.toString());
                                        if (jSONObject != null) {
                                            if (VideoFullScreenActivity.this.title.equals(jSONObject.optString("name"))) {
                                                int optInt = jSONObject.optInt("time");
                                                String str2 = "您上次看在";
                                                String stringForTime = CommonUtil.stringForTime(optInt);
                                                StringBuilder sb4 = new StringBuilder();
                                                sb4.append(str2);
                                                sb4.append(stringForTime);
                                                sb4.append("处，看TV自动为你续集");
                                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb4.toString());
                                                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(SupportMenu.CATEGORY_MASK);
                                                StringBuilder sb5 = new StringBuilder();
                                                sb5.append(stringForTime);
                                                sb5.append(str2);
                                                spannableStringBuilder.setSpan(foregroundColorSpan, 5, sb5.toString().length(), 34);
                                                VideoFullScreenActivity.this.handler.postDelayed(new Runnable() {
                                                    public void run() {
                                                    }
                                                }, DanmakuFactory.MIN_DANMAKU_DURATION);
                                                VideoFullScreenActivity.this.videoPlayer.seekTo((long) optInt);
                                                break;
                                            }
                                        }
                                        i++;
                                    }
                                }
                                VideoFullScreenActivity.this.stateSpeedTimer.cancel();
                            }
                        }
                    }
                });
            }
        }, 0, 800);
        this.videoPlayer.startWindowFullscreen(this, false, false);
        this.videoPlayer.player.tpIv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                Bundle bundle = new Bundle();
                Intent intent = new Intent(VideoFullScreenActivity.this, TpActivity3.class);
                bundle.putString("url", VideoFullScreenActivity.this.TpUrl);
                bundle.putString("title", VideoFullScreenActivity.this.TpUrl);
                bundle.putString("tag", "full");
                intent.putExtras(bundle);
                VideoFullScreenActivity.this.startActivityForResult(intent, 1005);
            }
        });
        if (this.isnotshow) {
            this.videoPlayer.getCurrentPlayer().onVideoPause();
            this.videoPlayer.player.tpview.setVisibility(0);
            setTpProgress2();
            boolean z = false;
            for (int i = 0; i < UpnpManager.getInstance(this).mDevicesAdapter.getCount(); i++) {
                ClingDevice clingDevice = (ClingDevice) UpnpManager.getInstance(this).mDevicesAdapter.getItem(i);
                StringBuilder sb5 = new StringBuilder();
                sb5.append("item");
                sb5.append(clingDevice.getDevice().getDetails().getFriendlyName());
                sb5.append("       ");
                sb5.append(clingDevice.isSelected());
                AILog.d(str, sb5.toString());
                if (clingDevice.isSelected()) {
                    String format = String.format(getString(R.string.selectedText), new Object[]{clingDevice.getDevice().getDetails().getFriendlyName()});
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("selectedDeviceName");
                    sb6.append(format);
                    AILog.d(str, sb6.toString());
                    if (!format.isEmpty()) {
                        this.videoPlayer.player.diviseTv.setText(format);
                    }
                    z = true;
                }
            }
            if (!z) {
                this.videoPlayer.player.stateTv.setText("连接失败");
            }
        }
        this.videoPlayer.player.titleTv.setText(this.title);
        this.netSpeedTimer = new Timer();
        this.netSpeedTimer.schedule(new TimerTask() {
            public void run() {
                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (VideoFullScreenActivity.this.videoPlayer != null) {
                            new SimpleDateFormat("HH:mm").format(new Date(System.currentTimeMillis()));
                        }
                    }
                });
                if (VideoFullScreenActivity.this.videoPlayer != null && VideoFullScreenActivity.this.videoPlayer.getCurrentPlayer() != null) {
                    int currentState = VideoFullScreenActivity.this.videoPlayer.getCurrentPlayer().getCurrentState();
                    VideoFullScreenActivity.this.notshowTime = VideoFullScreenActivity.this.notshowTime + 1;
                    StringBuilder sb = new StringBuilder();
                    sb.append("currentstate");
                    sb.append(currentState);
                    AILog.d(VideoFullScreenActivity.TAG, sb.toString());
                    if (currentState == 6) {
                        VideoFullScreenActivity.this.finish();
                    }
                }
            }
        }, 0, 1000);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(TestEvent testEvent) {
        if (testEvent.message.equals("fullscreen") && testEvent.tag == 0) {
            finish();
        }
    }

    /* access modifiers changed from: private */
    public void setPlayermSeekRatio() {
        int duration = this.videoPlayer.getCurrentPlayer().getDuration();
        String str = TAG;
        if (duration <= 1800000) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.videoPlayer.getCurrentPlayer().getDuration());
            sb.append(" 小于30  8");
            AILog.d(str, sb.toString());
            this.videoPlayer.getCurrentPlayer().setSeekRatio(8.0f);
        } else if (this.videoPlayer.getCurrentPlayer().getDuration() > 1800000 && this.videoPlayer.getCurrentPlayer().getDuration() <= 3600000) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.videoPlayer.getCurrentPlayer().getDuration());
            sb2.append(" 小于60  8");
            AILog.d(str, sb2.toString());
            this.videoPlayer.getCurrentPlayer().setSeekRatio(15.0f);
        } else if (this.videoPlayer.getCurrentPlayer().getDuration() > 3600000 && this.videoPlayer.getCurrentPlayer().getDuration() <= 5400000) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.videoPlayer.getCurrentPlayer().getDuration());
            sb3.append(" 小于90  8");
            AILog.d(str, sb3.toString());
            this.videoPlayer.getCurrentPlayer().setSeekRatio(22.0f);
        } else if (this.videoPlayer.getCurrentPlayer().getDuration() <= 5400000 || this.videoPlayer.getCurrentPlayer().getDuration() > 72000000) {
            this.videoPlayer.getCurrentPlayer().setSeekRatio(36.0f);
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(this.videoPlayer.getCurrentPlayer().getDuration());
            sb4.append(" 小于120  8");
            AILog.d(str, sb4.toString());
            this.videoPlayer.getCurrentPlayer().setSeekRatio(30.0f);
        }
    }

    private void setTpProgress2() {
        int i = UpnpManager.getInstance(this).progressMax;
        String stringForTime = CommonUtil.stringForTime(i * 1000);
        StringBuilder sb = new StringBuilder();
        sb.append("stTime =  ");
        sb.append(stringForTime);
        AILog.d(TAG, sb.toString());
        this.videoPlayer.player.progressBarSb.setMax(i);
        this.videoPlayer.player.progressBarSb.setOnSeekBarChangeListener(this);
        this.videoPlayer.player.totalTimeTv.setText(stringForTime);
    }

    private void initListeners() {
        this.mBrowseRegistryListener.setOnDeviceListChangedListener(new DeviceListChangedListener() {
            public void onDeviceAdded(final IDevice iDevice) {
                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        VideoFullScreenActivity.mDevicesAdapter.add((ClingDevice) iDevice);
                        StringBuilder sb = new StringBuilder();
                        sb.append("onDeviceAdded mBrowseRegistryListener");
                        sb.append(iDevice);
                        String sb2 = sb.toString();
                        String str = VideoFullScreenActivity.TAG;
                        AILog.d(str, sb2);
                        UpnpManager.getInstance(VideoFullScreenActivity.this).mDevicesAdapter = VideoFullScreenActivity.mDevicesAdapter;
                        for (int i = 0; i < VideoFullScreenActivity.mDevicesAdapter.getCount(); i++) {
                            ClingDevice clingDevice = (ClingDevice) VideoFullScreenActivity.mDevicesAdapter.getItem(i);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("item");
                            sb3.append(clingDevice.getDevice().getDetails().getFriendlyName());
                            sb3.append("       ");
                            sb3.append(clingDevice.isSelected());
                            AILog.d(str, sb3.toString());
                            ClingDevice clingDevice2 = (ClingDevice) VideoFullScreenActivity.mDevicesAdapter.getItem(i);
                            Device device = clingDevice.getDevice();
                            if (UpnpManager.getInstance(VideoFullScreenActivity.this).name.equals(device.getDetails().getFriendlyName())) {
                                ClingManager.getInstance().setSelectedDevice(clingDevice2);
                                if (!Utils.isNull(device)) {
                                    VideoFullScreenActivity.this.setingProgress();
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                });
            }

            public void onDeviceRemoved(final IDevice iDevice) {
                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        VideoFullScreenActivity.mDevicesAdapter.remove((ClingDevice) iDevice);
                        StringBuilder sb = new StringBuilder();
                        sb.append("onDeviceRemoved mBrowseRegistryListener");
                        sb.append(iDevice);
                        AILog.d(VideoFullScreenActivity.TAG, sb.toString());
                        UpnpManager.getInstance(VideoFullScreenActivity.this).mDevicesAdapter = VideoFullScreenActivity.mDevicesAdapter;
                    }
                });
            }
        });
    }

    public void setingProgress() {
        this.netSpeedTimer.schedule(new TimerTask() {
            public void run() {
                AILog.d(VideoFullScreenActivity.TAG, "获取播放状态中");
                VideoFullScreenActivity.this.getPositionInfo();
            }
        }, 0, 1000);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        AILog.d(TAG, "onResume");
        this.m3u8Server.decrypt();
        if (this.play) {
            getCurPlay().onVideoResume();
        }
        this.play = true;
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.m3u8Server.encrypt();
        String str = TAG;
        AILog.d(str, "onPause");
        this.videoPlayer.getCurrentPlayer().onVideoPause();
        int currentPositionWhenPlaying = this.videoPlayer.getCurrentPlayer().getCurrentPositionWhenPlaying();
        if (currentPositionWhenPlaying > 3000) {
            currentPositionWhenPlaying -= 3000;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("destroyTime");
        sb.append(currentPositionWhenPlaying);
        AILog.d(str, sb.toString());
        if (currentPositionWhenPlaying > 0) {
            try {
                JSONObject jSONObject = this.mTime;
                String str2 = SettingsManager.DOWNVIDEOTIME;
                String str3 = SettingsManager.DOWNVIDEOTIMEARRAY;
                if (jSONObject != null) {
                    if (this.mTimeArray != null) {
                        boolean z = true;
                        for (int i = 0; i < this.mTimeArray.length(); i++) {
                            if (((JSONObject) this.mTimeArray.get(i)).optString("name").equals(this.title)) {
                                this.mTimeArray.put(i, toJSON(this.title, currentPositionWhenPlaying));
                                z = false;
                            }
                        }
                        if (z) {
                            this.mTimeArray.put(toJSON(this.title, currentPositionWhenPlaying));
                        }
                        this.mTime.put(str3, this.mTimeArray);
                        PreferenceUtil.put(Utils.getContext(), str2, this.mTime.toString());
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("destroyTime mTime");
                        sb2.append(this.mTime.toString());
                        AILog.d(str, sb2.toString());
                        return;
                    }
                }
                this.mTime = new JSONObject();
                this.mTimeArray = new JSONArray();
                this.mTimeArray.put(toJSON(this.title, currentPositionWhenPlaying));
                this.mTime.put(str3, this.mTimeArray);
                PreferenceUtil.put(Utils.getContext(), str2, this.mTime.toString());
                StringBuilder sb3 = new StringBuilder();
                sb3.append("destroyTime 2mTime");
                sb3.append(this.mTime.toString());
                AILog.d(str, sb3.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.isOnDestroy = true;
        AILog.d(TAG, "onDestroy");
        unregister();
        this.m3u8Server.finish();
        this.videoPlayer.getCurrentPlayer().release();
        this.videoPlayer.release();
        GSYVideoManager.releaseAllVideos();
        EventBus.getDefault().unregister(this);
        this.videoPlayer.setVideoAllCallBack(null);
        this.videoPlayer = null;
        Timer timer = this.netSpeedTimer;
        if (timer != null) {
            timer.cancel();
            this.netSpeedTimer = null;
        }
        Handler handler2 = this.mHandler;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.mHandler = null;
            this.handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        ServiceConnection serviceConnection = this.mUpnpServiceConnection;
        if (serviceConnection != null) {
            unbindService(serviceConnection);
        }
    }

    public JSONObject toJSON(String str, int i) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", str);
        jSONObject.put("time", i);
        return jSONObject;
    }

    private void getEndTime() {
        String str = TAG;
        try {
            String str2 = (String) PreferenceUtil.get(Utils.getContext(), SettingsManager.DOWNVIDEOTIME, "");
            if (!str2.isEmpty()) {
                this.mTime = new JSONObject(str2);
                this.mTimeArray = this.mTime.getJSONArray(SettingsManager.DOWNVIDEOTIMEARRAY);
                StringBuilder sb = new StringBuilder();
                sb.append("iniDownload mDownloadDetail     ");
                sb.append(this.mTime.toString());
                AILog.d(str, sb.toString());
            }
        } catch (JSONException e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("iniDownload e     ");
            sb2.append(e.toString());
            AILog.d(str, sb2.toString());
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append("requestCode");
        sb.append(i);
        sb.append("  resultCode ");
        sb.append(i2);
        String sb2 = sb.toString();
        String str = TAG;
        AILog.d(str, sb2);
        if (i == 1005 && i2 == 1006) {
            AILog.d(str, "onResumeonActivityResult");
            this.play = false;
            int intValue = ((Integer) intent.getExtras().get("name")).intValue();
            runOnUiThread(new Runnable() {
                public void run() {
                    VideoFullScreenActivity.this.videoPlayer.player.tpview.setVisibility(0);
                }
            });
            ClingDevice clingDevice = (ClingDevice) mDevicesAdapter.getItem(intValue);
            if (!Utils.isNull(clingDevice)) {
                ClingManager.getInstance().setSelectedDevice(clingDevice);
                Device device = clingDevice.getDevice();
                if (!Utils.isNull(device)) {
                    String format = String.format(getString(R.string.selectedText), new Object[]{device.getDetails().getFriendlyName()});
                    StringBuilder sb3 = new StringBuilder();
                    String str2 = "selectedDeviceName";
                    sb3.append(str2);
                    sb3.append(format);
                    AILog.d(str, sb3.toString());
                    if (!format.isEmpty()) {
                        this.videoPlayer.player.diviseTv.setText(format);
                    }
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(str2);
                    sb4.append(format);
                    AILog.d(str, sb4.toString());
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("itemshifou");
                    sb5.append(clingDevice.isSelected());
                    AILog.d(str, sb5.toString());
                    boolean isIfCurrentIsFullscreen = getCurPlay().isIfCurrentIsFullscreen();
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("full");
                    sb6.append(isIfCurrentIsFullscreen);
                    AILog.d(str, sb6.toString());
                    if (isIfCurrentIsFullscreen) {
                        this.videoPlayer.setTpViewVisible(true);
                        this.videoPlayer.setTpDviseText(format);
                    }
                    setTpProgress();
                    play();
                    onClick();
                    String str3 = "";
                    UpnpManager.getInstance(this).seo = str3;
                    UpnpManager.getInstance(this).tid = str3;
                    UpnpManager.getInstance(this).name = device.getDetails().getFriendlyName();
                    UpnpManager.getInstance(this).title = this.title;
                    UpnpManager.getInstance(this).url = this.mUrl;
                }
            }
        }
    }

    private void setTpProgress() {
        int currentPositionWhenPlaying = this.videoPlayer.getCurrentPlayer().getCurrentPositionWhenPlaying();
        int duration = this.videoPlayer.getCurrentPlayer().getDuration();
        int i = duration / 1000;
        UpnpManager.getInstance(this).progressMax = i;
        String stringForTime = CommonUtil.stringForTime(currentPositionWhenPlaying);
        String stringForTime2 = CommonUtil.stringForTime(duration);
        StringBuilder sb = new StringBuilder();
        sb.append("cTime =  ");
        sb.append(currentPositionWhenPlaying);
        sb.append("     scTime= ");
        sb.append(stringForTime);
        sb.append("    tTime ");
        sb.append(duration);
        sb.append("  stTime   ");
        sb.append(stringForTime2);
        sb.append("  Time/1000  ");
        sb.append(i);
        AILog.d(TAG, sb.toString());
        getCurPlay().isIfCurrentIsFullscreen();
        this.videoPlayer.player.progressBarSb.setMax(i);
        this.videoPlayer.player.progressBarSb.setOnSeekBarChangeListener(this);
        this.videoPlayer.player.totalTimeTv.setText(stringForTime2);
        this.videoPlayer.player.currentTimeTv.setText(stringForTime);
        getCurPlay().release();
    }

    /* access modifiers changed from: private */
    public GSYVideoPlayer getCurPlay() {
        if (this.videoPlayer.getFullWindowPlayer() != null) {
            return this.videoPlayer.getFullWindowPlayer();
        }
        return this.videoPlayer;
    }

    private void play() {
        StringBuilder sb = new StringBuilder();
        sb.append("play url");
        sb.append(this.TpUrl);
        AILog.d(TAG, sb.toString());
        if (this.mClingPlayControl.getCurrentState() == 3) {
            this.mClingPlayControl.playNew(this.TpUrl, new ControlCallback() {
                public void success(IResponse iResponse) {
                    String str = VideoFullScreenActivity.TAG;
                    AILog.d(str, "play success");
                    TestEvent testEvent = new TestEvent();
                    testEvent.message = ConfigBuilder.DEFAULT_DART_ENTRYPOINT;
                    testEvent.tag = 4;
                    EventBus.getDefault().post(testEvent);
                    VideoFullScreenActivity.this.mHandler.sendEmptyMessage(167);
                    ClingManager.getInstance().registerAVTransport(VideoFullScreenActivity.this.mContext);
                    ClingManager.getInstance().registerRenderingControl(VideoFullScreenActivity.this.mContext);
                    boolean isIfCurrentIsFullscreen = VideoFullScreenActivity.this.getCurPlay().isIfCurrentIsFullscreen();
                    StringBuilder sb = new StringBuilder();
                    sb.append("full");
                    sb.append(isIfCurrentIsFullscreen);
                    AILog.d(str, sb.toString());
                    VideoFullScreenActivity.this.videoPlayer.setTpStateText("投放成功");
                    VideoFullScreenActivity.this.videoPlayer.player.pauseTv.setText("暂停");
                }

                public void fail(IResponse iResponse) {
                    String str = VideoFullScreenActivity.TAG;
                    AILog.d(str, "play fail");
                    VideoFullScreenActivity.this.mHandler.sendEmptyMessage(165);
                    boolean isIfCurrentIsFullscreen = VideoFullScreenActivity.this.getCurPlay().isIfCurrentIsFullscreen();
                    StringBuilder sb = new StringBuilder();
                    sb.append("full");
                    sb.append(isIfCurrentIsFullscreen);
                    AILog.d(str, sb.toString());
                    VideoFullScreenActivity.this.videoPlayer.setTpStateText("投放失败");
                    VideoFullScreenActivity.this.videoPlayer.player.pauseTv.setText("播放");
                }
            });
        } else {
            this.mClingPlayControl.play(new ControlCallback() {
                public void success(IResponse iResponse) {
                    VideoFullScreenActivity.this.getCurPlay().isIfCurrentIsFullscreen();
                    VideoFullScreenActivity.this.videoPlayer.player.stateTv.setText("投放成功");
                    VideoFullScreenActivity.this.videoPlayer.player.pauseTv.setText("暂停");
                    TestEvent testEvent = new TestEvent();
                    testEvent.message = ConfigBuilder.DEFAULT_DART_ENTRYPOINT;
                    testEvent.tag = 4;
                    EventBus.getDefault().post(testEvent);
                }

                public void fail(IResponse iResponse) {
                    VideoFullScreenActivity.this.mHandler.sendEmptyMessage(165);
                    VideoFullScreenActivity.this.getCurPlay().isIfCurrentIsFullscreen();
                    VideoFullScreenActivity.this.videoPlayer.setTpStateText("投放失败");
                    VideoFullScreenActivity.this.videoPlayer.player.pauseTv.setText("暂停");
                }
            });
        }
    }

    private void onClick() {
        this.videoPlayer.player.quitTv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                VideoFullScreenActivity.this.videoPlayer.player.tpview.setVisibility(8);
                VideoFullScreenActivity.this.videoPlayer.player.stateTv.setText("");
                VideoFullScreenActivity.this.stop();
                VideoFullScreenActivity.this.play = true;
                VideoFullScreenActivity.this.finish();
            }
        });
        this.videoPlayer.player.pauseTv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (VideoFullScreenActivity.this.videoPlayer.player.pauseTv.getText().equals("暂停")) {
                    VideoFullScreenActivity.this.pause();
                } else {
                    VideoFullScreenActivity.this.restartPlay();
                }
            }
        });
        this.videoPlayer.player.changeTv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                Bundle bundle = new Bundle();
                bundle.putString("tag", "full");
                Intent intent = new Intent(VideoFullScreenActivity.this, TpActivity3.class);
                intent.putExtras(bundle);
                VideoFullScreenActivity.this.startActivityForResult(intent, 1005);
            }
        });
    }

    public void restartPlay() {
        this.mClingPlayControl.play(new ControlCallback() {
            public void success(IResponse iResponse) {
                AILog.d(VideoFullScreenActivity.TAG, "play success");
                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        VideoFullScreenActivity.this.videoPlayer.player.pauseTv.setText("暂停");
                    }
                });
            }

            public void fail(IResponse iResponse) {
                AILog.d(VideoFullScreenActivity.TAG, "play fail");
                VideoFullScreenActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        VideoFullScreenActivity.this.mHandler.sendEmptyMessage(165);
                        VideoFullScreenActivity.this.videoPlayer.setTpStateText("投放失败");
                        VideoFullScreenActivity.this.videoPlayer.player.pauseTv.setText("播放");
                    }
                });
            }
        });
    }

    public void requestSwitchOver(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("requestSwitchOver");
        sb.append(str);
        AILog.d(TAG, sb.toString());
        HashMap hashMap = new HashMap();
        hashMap.put("noncestr", SignConfig.noncestr);
        hashMap.put("timestamp", SignConfig.timestamp);
        hashMap.put("sbID", SignConfig.sbID);
        hashMap.put("sign", SignConfig.sign);
        hashMap.put("part_id", str);
        hashMap.put("devicetype", "0");
        hashMap.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            hashMap.put("_token", KanApplication.token);
        }
        Api.getService().requestUrl(hashMap).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoFullScreenActivity.this.isOnDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            VideoFullScreenActivity.this.TpUrl = jsonObject.optString("data");
                            VideoFullScreenActivity.this.videoPlayer.player.tpIv.setVisibility(0);
                        } else {
                            ToastUtils.showShort((CharSequence) "数据请求失败，请稍后再试。。");
                        }
                    }
                }
            }
        });
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        StringBuilder sb = new StringBuilder();
        sb.append("onConfigurationChanged");
        sb.append(configuration.orientation);
        sb.append("");
        AILog.d(TAG, sb.toString());
        if (configuration.orientation == 2) {
            long j = this.currentTime;
            if (j > 4) {
                this.currentTime = j - 3;
            }
            this.videoPlayer.seekTo(this.currentTime);
        }
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.currentTime = (long) this.videoPlayer.getCurrentPositionWhenPlaying();
        StringBuilder sb = new StringBuilder();
        sb.append("onSaveInstanceState");
        sb.append(this.currentTime);
        AILog.d(TAG, sb.toString());
    }

    private void refreshDeviceList(final RelativeLayout relativeLayout, final TextView textView) {
        Collection dmrDevices = ClingManager.getInstance().getDmrDevices();
        ClingDeviceList.getInstance().setClingDeviceList(dmrDevices);
        if (dmrDevices != null) {
            mDevicesAdapter.clear();
            mDevicesAdapter.addAll(dmrDevices);
        }
        this.handler.postDelayed(new Runnable() {
            public void run() {
                relativeLayout.setVisibility(8);
                textView.setVisibility(0);
            }
        }, 1000);
    }

    public void unregister() {
        BroadcastReceiver broadcastReceiver = this.mTransportStateBroadcastReceiver;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
    }
}
