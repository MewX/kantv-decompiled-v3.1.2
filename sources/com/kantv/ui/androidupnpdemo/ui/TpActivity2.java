package com.kantv.ui.androidupnpdemo.ui;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.CastStateListener;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.common.GoogleApiAvailability;
import com.imkan.tv.R;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
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
import com.kantv.ui.androidupnpdemo.ui.TpActivity.PlaybackLocation;
import com.kantv.ui.androidupnpdemo.ui.TpActivity.PlaybackState;
import java.util.Collection;
import java.util.Timer;
import java.util.TimerTask;
import org.fourthline.cling.model.meta.Device;

public class TpActivity2 extends AppCompatActivity implements OnSeekBarChangeListener {
    public static final int ERROR_ACTION = 165;
    public static final int GET_POSITION_INFO_ACTION = 165;
    public static final int PAUSE_ACTION = 162;
    public static final int PLAY_ACTION = 161;
    public static final int STOP_ACTION = 163;
    /* access modifiers changed from: private */
    public static final String TAG = "TpActivity2";
    public static final int TRANSITIONING_ACTION = 164;
    private LinearLayout finishLayout;
    private Handler handler;
    /* access modifiers changed from: private */
    public BrowseRegistryListener mBrowseRegistryListener;
    private CastContext mCastContext;
    /* access modifiers changed from: private */
    public CastSession mCastSession;
    private CastStateListener mCastStateListener;
    /* access modifiers changed from: private */
    public ClingPlayControl mClingPlayControl;
    /* access modifiers changed from: private */
    public Context mContext;
    private ListView mDeviceList;
    /* access modifiers changed from: private */
    public ArrayAdapter<ClingDevice> mDevicesAdapter;
    /* access modifiers changed from: private */
    public Handler mHandler;
    private IntroductoryOverlay mIntroductoryOverlay;
    private boolean mIsHoneyCombOrAbove;
    /* access modifiers changed from: private */
    public PlaybackLocation mLocation;
    /* access modifiers changed from: private */
    public PlaybackState mPlaybackState;
    private SeekBar mSeekProgress;
    private SeekBar mSeekVolume;
    private SessionManagerListener<CastSession> mSessionManagerListener;
    private Switch mSwitchMute;
    /* access modifiers changed from: private */
    public TextView mTVSelected;
    /* access modifiers changed from: private */
    public Toolbar mToolbar;
    private BroadcastReceiver mTransportStateBroadcastReceiver;
    private ServiceConnection mUpnpServiceConnection;
    private MenuItem mediaRouteMenuItem;
    private Timer netSpeedTimer;
    private TextView refreshTv;
    /* access modifiers changed from: private */
    public RelativeLayout seachingRL;
    /* access modifiers changed from: private */
    public TextView titleTv;
    private String url;

    private final class InnerHandler extends Handler {
        private InnerHandler() {
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 161:
                    Log.i(TpActivity2.TAG, "Execute PLAY_ACTION");
                    Toast.makeText(TpActivity2.this.mContext, "正在投放", 0).show();
                    TpActivity2.this.mClingPlayControl.setCurrentState(1);
                    return;
                case 162:
                    Log.i(TpActivity2.TAG, "Execute PAUSE_ACTION");
                    TpActivity2.this.mClingPlayControl.setCurrentState(2);
                    return;
                case 163:
                    Log.i(TpActivity2.TAG, "Execute STOP_ACTION");
                    TpActivity2.this.mClingPlayControl.setCurrentState(3);
                    return;
                case 164:
                    Log.i(TpActivity2.TAG, "Execute TRANSITIONING_ACTION");
                    Toast.makeText(TpActivity2.this.mContext, "正在连接", 0).show();
                    return;
                case 165:
                    Log.e(TpActivity2.TAG, "Execute ERROR_ACTION");
                    Toast.makeText(TpActivity2.this.mContext, "投放失败", 0).show();
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
            String access$100 = TpActivity2.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Receive playback intent:");
            sb.append(action);
            Log.e(access$100, sb.toString());
            if ("com.zane.androidupnpdemo.action.playing".equals(action)) {
                TpActivity2.this.mHandler.sendEmptyMessage(161);
            } else if ("com.zane.androidupnpdemo.action.paused_playback".equals(action)) {
                TpActivity2.this.mHandler.sendEmptyMessage(162);
            } else if ("com.zane.androidupnpdemo.action.stopped".equals(action)) {
                TpActivity2.this.mHandler.sendEmptyMessage(163);
            } else if ("com.zane.androidupnpdemo.action.transitioning".equals(action)) {
                TpActivity2.this.mHandler.sendEmptyMessage(164);
            }
        }
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    public TpActivity2() {
        this.mIsHoneyCombOrAbove = VERSION.SDK_INT >= 11;
        this.mHandler = new InnerHandler();
        this.url = "";
        this.handler = new Handler();
        this.mClingPlayControl = new ClingPlayControl();
        this.mBrowseRegistryListener = new BrowseRegistryListener();
        this.mUpnpServiceConnection = new ServiceConnection() {
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.e(TpActivity2.TAG, "mUpnpServiceConnection onServiceConnected");
                ClingUpnpService service = ((LocalBinder) iBinder).getService();
                ClingManager instance = ClingManager.getInstance();
                instance.setUpnpService(service);
                instance.setDeviceManager(new DeviceManager());
                instance.getRegistry().addListener(TpActivity2.this.mBrowseRegistryListener);
                instance.searchDevices();
            }

            public void onServiceDisconnected(ComponentName componentName) {
                Log.e(TpActivity2.TAG, "mUpnpServiceConnection onServiceDisconnected");
                ClingManager.getInstance().setUpnpService(null);
            }
        };
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_tp);
        if (getIntent().getExtras() != null) {
            String str = "url";
            this.url = getIntent().getExtras().getString(str);
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(this.url);
            AILog.d(str2, sb.toString());
        }
        this.mContext = this;
        initView();
        initListeners();
        bindServices();
        registerReceivers();
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) != 0) {
            AILog.d(TAG, "onCreateSUCCESS");
            return;
        }
        AILog.d(TAG, "onCreateSUCCESS5555555999999");
        this.mCastStateListener = new CastStateListener() {
            public void onCastStateChanged(int i) {
                String access$100 = TpActivity2.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("newState==");
                sb.append(i);
                AILog.d(access$100, sb.toString());
            }
        };
        try {
            this.mCastContext = CastContext.getSharedInstance(this);
            setupCastListener();
            this.mCastSession = this.mCastContext.getSessionManager().getCurrentCastSession();
        } catch (Exception e) {
            e.printStackTrace();
        }
        setupActionBar();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) != 0) {
            AILog.d(TAG, "onCreateSUCCESS");
        } else {
            this.mCastContext.addCastStateListener(this.mCastStateListener);
            this.mCastContext.getSessionManager().addSessionManagerListener(this.mSessionManagerListener, CastSession.class);
            CastSession castSession = this.mCastSession;
            if (castSession == null || !castSession.isConnected()) {
                updatePlaybackLocation(PlaybackLocation.LOCAL);
            } else {
                updatePlaybackLocation(PlaybackLocation.REMOTE);
            }
            AILog.d(TAG, "onResume");
            this.handler.postDelayed(new Runnable() {
                public void run() {
                    int castState = CastContext.getSharedInstance(TpActivity2.this).getCastState();
                    StringBuilder sb = new StringBuilder();
                    sb.append("88state");
                    sb.append(castState);
                    Log.e("TAG", sb.toString());
                    if (castState == 1) {
                        TpActivity2.this.mToolbar.setVisibility(8);
                    } else {
                        TpActivity2.this.mToolbar.setVisibility(0);
                    }
                }
            }, 2000);
        }
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) != 0) {
            AILog.d(TAG, "onCreateSUCCESS");
        } else {
            this.mCastContext.removeCastStateListener(this.mCastStateListener);
            AILog.d(TAG, "onCreateSUCCESS5555555");
        }
        super.onPause();
    }

    private void setupActionBar() {
        this.mToolbar = (Toolbar) findViewById(R.id.toolbar);
        this.titleTv = (TextView) findViewById(R.id.title_tb);
        this.mToolbar.setTitle((CharSequence) "");
        this.titleTv.setText("点击右侧按钮连接chromecast");
        this.mToolbar.setTitleTextColor(getResources().getColor(R.color.white));
        setSupportActionBar(this.mToolbar);
        this.netSpeedTimer = new Timer();
        this.netSpeedTimer.schedule(new TimerTask() {
            public void run() {
                TpActivity2.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (TpActivity2.this.mCastSession == null || !TpActivity2.this.mCastSession.isConnecting()) {
                            String str = "点击右侧按钮连接chromecast";
                            String str2 = "已连接chromecast";
                            if (TpActivity2.this.mCastSession == null || !TpActivity2.this.mCastSession.isConnected()) {
                                if (TpActivity2.this.titleTv.getText().equals(str2)) {
                                    TpActivity2.this.titleTv.setText(str);
                                }
                            } else if (TpActivity2.this.titleTv.getText().equals(str)) {
                                TpActivity2.this.titleTv.setText(str2);
                            }
                        } else {
                            TpActivity2.this.titleTv.setText("正在连接chromecast");
                        }
                    }
                });
            }
        }, 0, 100);
    }

    private void setupCastListener() {
        this.mSessionManagerListener = new SessionManagerListener<CastSession>() {
            public void onSessionEnding(CastSession castSession) {
            }

            public void onSessionResuming(CastSession castSession, String str) {
            }

            public void onSessionStarting(CastSession castSession) {
            }

            public void onSessionSuspended(CastSession castSession, int i) {
            }

            public void onSessionEnded(CastSession castSession, int i) {
                onApplicationDisconnected();
            }

            public void onSessionResumed(CastSession castSession, boolean z) {
                onApplicationConnected(castSession);
            }

            public void onSessionResumeFailed(CastSession castSession, int i) {
                onApplicationDisconnected();
            }

            public void onSessionStarted(CastSession castSession, String str) {
                onApplicationConnected(castSession);
            }

            public void onSessionStartFailed(CastSession castSession, int i) {
                onApplicationDisconnected();
            }

            private void onApplicationConnected(CastSession castSession) {
                TpActivity2.this.mCastSession = castSession;
                TpActivity2.this.invalidateOptionsMenu();
            }

            private void onApplicationDisconnected() {
                TpActivity2.this.updatePlaybackLocation(PlaybackLocation.LOCAL);
                TpActivity2.this.mPlaybackState = PlaybackState.IDLE;
                TpActivity2.this.mLocation = PlaybackLocation.LOCAL;
                TpActivity2.this.invalidateOptionsMenu();
            }
        };
    }

    /* access modifiers changed from: private */
    public void updatePlaybackLocation(PlaybackLocation playbackLocation) {
        this.mLocation = playbackLocation;
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) != 0) {
            AILog.d(TAG, "onCreateSUCCESS");
        } else {
            getMenuInflater().inflate(R.menu.browse, menu);
            this.mediaRouteMenuItem = CastButtonFactory.setUpMediaRouteButton(getApplicationContext(), menu, R.id.media_route_menu_item);
            AILog.d(TAG, "onCreateSUCCESS5555555");
        }
        return true;
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

    private void bindServices() {
        bindService(new Intent(this, ClingUpnpService.class), this.mUpnpServiceConnection, 1);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        unbindService(this.mUpnpServiceConnection);
        unregisterReceiver(this.mTransportStateBroadcastReceiver);
        ClingManager.getInstance().destroy();
        ClingDeviceList.getInstance().destroy();
        Timer timer = this.netSpeedTimer;
        if (timer != null) {
            timer.cancel();
            this.netSpeedTimer = null;
        }
    }

    private void initView() {
        this.mDeviceList = (ListView) findViewById(R.id.lv_devices);
        this.mTVSelected = (TextView) findViewById(R.id.tv_selected);
        this.mSeekProgress = (SeekBar) findViewById(R.id.seekbar_progress);
        this.mSeekVolume = (SeekBar) findViewById(R.id.seekbar_volume);
        this.mSwitchMute = (Switch) findViewById(R.id.sw_mute);
        this.finishLayout = (LinearLayout) findViewById(R.id.common_title_left);
        this.mDevicesAdapter = new DevicesAdapter(this.mContext);
        this.mDeviceList.setAdapter(this.mDevicesAdapter);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tp_foot_item, null);
        this.seachingRL = (RelativeLayout) inflate.findViewById(R.id.seaching);
        this.mDeviceList.addFooterView(inflate);
        this.refreshTv = (TextView) findViewById(R.id.common_title_right);
        this.refreshTv.setVisibility(0);
        this.refreshTv.setText("刷新");
        this.refreshTv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                TpActivity2.this.seachingRL.setVisibility(0);
                TpActivity2.this.onRefresh();
            }
        });
        this.mSeekProgress.setMax(15);
        this.mSeekVolume.setMax(100);
    }

    private void initListeners() {
        this.mDeviceList.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                String access$100 = TpActivity2.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("position");
                sb.append(i);
                sb.append("   ");
                sb.append(TpActivity2.this.mDevicesAdapter.getCount());
                AILog.d(access$100, sb.toString());
                int i2 = i - 1;
                if (i2 < TpActivity2.this.mDevicesAdapter.getCount() && i != 0) {
                    ClingDevice clingDevice = (ClingDevice) TpActivity2.this.mDevicesAdapter.getItem(i2);
                    if (!Utils.isNull(clingDevice)) {
                        ClingManager.getInstance().setSelectedDevice(clingDevice);
                        Device device = clingDevice.getDevice();
                        if (!Utils.isNull(device)) {
                            String format = String.format(TpActivity2.this.getString(R.string.selectedText), new Object[]{device.getDetails().getFriendlyName()});
                            String access$1002 = TpActivity2.TAG;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("selectedDeviceName");
                            sb2.append(format);
                            AILog.d(access$1002, sb2.toString());
                            TpActivity2.this.mTVSelected.setText(format);
                        }
                    }
                }
            }
        });
        this.mBrowseRegistryListener.setOnDeviceListChangedListener(new DeviceListChangedListener() {
            public void onDeviceAdded(final IDevice iDevice) {
                TpActivity2.this.runOnUiThread(new Runnable() {
                    public void run() {
                        TpActivity2.this.mDevicesAdapter.add((ClingDevice) iDevice);
                        String access$100 = TpActivity2.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("onDeviceAdded mBrowseRegistryListener");
                        sb.append(iDevice);
                        AILog.d(access$100, sb.toString());
                        TpActivity2.this.seachingRL.setVisibility(8);
                    }
                });
            }

            public void onDeviceRemoved(final IDevice iDevice) {
                TpActivity2.this.runOnUiThread(new Runnable() {
                    public void run() {
                        TpActivity2.this.mDevicesAdapter.remove((ClingDevice) iDevice);
                        String access$100 = TpActivity2.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("onDeviceRemoved mBrowseRegistryListener");
                        sb.append(iDevice);
                        AILog.d(access$100, sb.toString());
                    }
                });
            }
        });
        this.mSwitchMute.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                TpActivity2.this.mClingPlayControl.setMute(z, new ControlCallback() {
                    public void success(IResponse iResponse) {
                        Log.e(TpActivity2.TAG, "setMute success");
                    }

                    public void fail(IResponse iResponse) {
                        Log.e(TpActivity2.TAG, "setMute fail");
                    }
                });
            }
        });
        this.finishLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                TpActivity2.this.finish();
            }
        });
        this.mSeekProgress.setOnSeekBarChangeListener(this);
        this.mSeekVolume.setOnSeekBarChangeListener(this);
    }

    private void refreshDeviceList() {
        Collection dmrDevices = ClingManager.getInstance().getDmrDevices();
        ClingDeviceList.getInstance().setClingDeviceList(dmrDevices);
        if (dmrDevices != null) {
            this.mDevicesAdapter.clear();
            this.mDevicesAdapter.addAll(dmrDevices);
        }
        this.handler.postDelayed(new Runnable() {
            public void run() {
                TpActivity2.this.seachingRL.setVisibility(8);
            }
        }, 2000);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.bt_pause /*2131296417*/:
                pause();
                return;
            case R.id.bt_play /*2131296418*/:
                play();
                return;
            case R.id.bt_stop /*2131296419*/:
                stop();
                return;
            default:
                return;
        }
    }

    private void stop() {
        this.mClingPlayControl.stop(new ControlCallback() {
            public void success(IResponse iResponse) {
                Log.e(TpActivity2.TAG, "stop success");
            }

            public void fail(IResponse iResponse) {
                Log.e(TpActivity2.TAG, "stop fail");
            }
        });
    }

    private void pause() {
        this.mClingPlayControl.pause(new ControlCallback() {
            public void success(IResponse iResponse) {
                Log.e(TpActivity2.TAG, "pause success");
            }

            public void fail(IResponse iResponse) {
                Log.e(TpActivity2.TAG, "pause fail");
            }
        });
    }

    public void getPositionInfo() {
        this.mClingPlayControl.getPositionInfo(new ControlReceiveCallback() {
            public void fail(IResponse iResponse) {
            }

            public void receive(IResponse iResponse) {
            }

            public void success(IResponse iResponse) {
            }
        });
    }

    private void play() {
        if (this.mClingPlayControl.getCurrentState() == 3) {
            this.mClingPlayControl.playNew(this.url, new ControlCallback() {
                public void success(IResponse iResponse) {
                    Log.e(TpActivity2.TAG, "play success");
                    ClingManager.getInstance().registerAVTransport(TpActivity2.this.mContext);
                    ClingManager.getInstance().registerRenderingControl(TpActivity2.this.mContext);
                }

                public void fail(IResponse iResponse) {
                    Log.e(TpActivity2.TAG, "play fail");
                    TpActivity2.this.mHandler.sendEmptyMessage(165);
                }
            });
        } else {
            this.mClingPlayControl.play(new ControlCallback() {
                public void success(IResponse iResponse) {
                    Log.e(TpActivity2.TAG, "play success");
                }

                public void fail(IResponse iResponse) {
                    Log.e(TpActivity2.TAG, "play fail");
                    TpActivity2.this.mHandler.sendEmptyMessage(165);
                }
            });
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        Log.e(TAG, "Start Seek");
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        Log.e(TAG, "Stop Seek");
        switch (seekBar.getId()) {
            case R.id.seekbar_progress /*2131297172*/:
                this.mClingPlayControl.seek(seekBar.getProgress() * 1000, new ControlCallback() {
                    public void success(IResponse iResponse) {
                        Log.e(TpActivity2.TAG, "seek success");
                    }

                    public void fail(IResponse iResponse) {
                        Log.e(TpActivity2.TAG, "seek fail");
                    }
                });
                return;
            case R.id.seekbar_volume /*2131297173*/:
                this.mClingPlayControl.setVolume(seekBar.getProgress(), new ControlCallback() {
                    public void success(IResponse iResponse) {
                        Log.e(TpActivity2.TAG, "volume success");
                    }

                    public void fail(IResponse iResponse) {
                        Log.e(TpActivity2.TAG, "volume fail");
                    }
                });
                return;
            default:
                return;
        }
    }

    public void onRefresh() {
        this.mDeviceList.setEnabled(false);
        this.mDeviceList.setEnabled(true);
        refreshDeviceList();
    }
}
