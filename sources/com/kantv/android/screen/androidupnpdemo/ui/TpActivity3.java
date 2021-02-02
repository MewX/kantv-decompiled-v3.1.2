package com.kantv.android.screen.androidupnpdemo.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaInfo.Builder;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.CastStateListener;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.images.WebImage;
import com.kantv.android.screen.R;
import com.kantv.android.screen.androidupnpdemo.entity.ClingDevice;
import com.kantv.android.screen.androidupnpdemo.entity.ClingDeviceList;
import com.kantv.android.screen.androidupnpdemo.entity.TestEvent;
import com.kantv.android.screen.androidupnpdemo.service.manager.ClingManager;
import com.kantv.android.screen.chromecast.ExpandedControlsActivity;
import com.kantv.android.screen.manager.ScreenManager;
import com.kantv.android.screen.samsung.TVListAdapter;
import com.samsung.multiscreen.Search;
import com.samsung.multiscreen.Service;
import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

public class TpActivity3 extends AppCompatActivity {
    private static final String TAG = "ScreenManager";
    private String currentProgressDetail;
    private LinearLayout finishLayout;
    private Handler handler = new Handler();
    private CastContext mCastContext;
    private CastStateListener mCastStateListener;
    /* access modifiers changed from: private */
    public Context mContext;
    public ArrayAdapter<ClingDevice> mDLNAAdapter;
    private ListView mDLNAList;
    private IntroductoryOverlay mIntroductoryOverlay;
    private PlaybackLocation mLocation;
    private String mPart;
    private String mPictureUrl;
    private PlaybackState mPlaybackState;
    private Search mSearch;
    private SeekBar mSeekProgress;
    private SeekBar mSeekVolume;
    private Service mService;
    private SessionManagerListener<CastSession> mSessionManagerListener;
    /* access modifiers changed from: private */
    public ListView mSunsamList;
    public TVListAdapter mSunsamListAdapter;
    private Switch mSwitchMute;
    private TextView mTVSelected;
    private String mTitle;
    /* access modifiers changed from: private */
    public Toolbar mToolbar;
    private TransportStateBroadcastReceiver mTransportStateBroadcastReceiver;
    private MenuItem mediaRouteMenuItem;
    /* access modifiers changed from: private */
    public LinearLayout refreshLayout;
    private TextView refreshTv;
    /* access modifiers changed from: private */
    public RelativeLayout seachingRL;
    private String tag;
    /* access modifiers changed from: private */
    public TextView titleTv;
    private String url;

    public enum PlaybackLocation {
        LOCAL,
        REMOTE
    }

    public enum PlaybackState {
        PLAYING,
        PAUSED,
        BUFFERING,
        IDLE
    }

    private class TransportStateBroadcastReceiver extends BroadcastReceiver {
        private TransportStateBroadcastReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            StringBuilder sb = new StringBuilder();
            sb.append("Receive playback intent:");
            sb.append(action);
            Log.e(TpActivity3.TAG, sb.toString());
            if (!"com.zane.androidupnpdemo.action.playing".equals(action) && !"com.zane.androidupnpdemo.action.paused_playback".equals(action) && !"com.zane.androidupnpdemo.action.stopped".equals(action)) {
                "com.zane.androidupnpdemo.action.transitioning".equals(action);
            }
        }
    }

    public TpActivity3() {
        String str = "";
        this.tag = str;
        this.mTitle = str;
        this.mPart = str;
        this.mPictureUrl = str;
    }

    private void initCast() {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.mContext) == 0) {
            try {
                CastContext sharedInstance = CastContext.getSharedInstance(this.mContext);
                this.mSessionManagerListener = new SessionManagerListener<CastSession>() {
                    public void onSessionEnded(CastSession castSession, int i) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSessionEnded==");
                        sb.append(i);
                        Log.d(TpActivity3.TAG, sb.toString());
                        onApplicationDisconnected();
                    }

                    public void onSessionResumed(CastSession castSession, boolean z) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSessionResumed==");
                        sb.append(z);
                        Log.d(TpActivity3.TAG, sb.toString());
                        onApplicationConnected(castSession);
                    }

                    public void onSessionResumeFailed(CastSession castSession, int i) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSessionResumeFailed==");
                        sb.append(i);
                        Log.d(TpActivity3.TAG, sb.toString());
                        onApplicationDisconnected();
                    }

                    public void onSessionStarted(CastSession castSession, String str) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSessionStarted==");
                        sb.append(str);
                        Log.d(TpActivity3.TAG, sb.toString());
                        onApplicationConnected(castSession);
                    }

                    public void onSessionStartFailed(CastSession castSession, int i) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSessionStartFailed==");
                        sb.append(i);
                        Log.d(TpActivity3.TAG, sb.toString());
                        onApplicationDisconnected();
                    }

                    public void onSessionStarting(CastSession castSession) {
                        Log.d(TpActivity3.TAG, "onSessionStarting==");
                    }

                    public void onSessionEnding(CastSession castSession) {
                        Log.d(TpActivity3.TAG, "onSessionEnding==");
                    }

                    public void onSessionResuming(CastSession castSession, String str) {
                        Log.d(TpActivity3.TAG, "onSessionResuming==");
                    }

                    public void onSessionSuspended(CastSession castSession, int i) {
                        Log.d(TpActivity3.TAG, "onSessionSuspended==");
                    }

                    private void onApplicationConnected(CastSession castSession) {
                        Log.d(TpActivity3.TAG, "onApplicationConnected==");
                        ((Activity) TpActivity3.this.mContext).invalidateOptionsMenu();
                    }

                    private void onApplicationDisconnected() {
                        ((Activity) TpActivity3.this.mContext).invalidateOptionsMenu();
                    }
                };
                this.mCastStateListener = new CastStateListener() {
                    public void onCastStateChanged(int i) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("newState==");
                        sb.append(i);
                        String sb2 = sb.toString();
                        String str = TpActivity3.TAG;
                        Log.d(str, sb2);
                        TpActivity3.this.mToolbar.setVisibility(0);
                        if (i == 1) {
                            String str2 = "没有可用Chromecast设备";
                            Log.d(str, str2);
                            TpActivity3.this.titleTv.setText(str2);
                        } else if (i == 2) {
                            TpActivity3.this.titleTv.setText("点击右侧按钮连接Chromecast");
                            TpActivity3.this.mToolbar.setOnClickListener(new OnClickListener() {
                                public void onClick(View view) {
                                    Log.d(TpActivity3.TAG, "点击了谷歌投屏设备333333333");
                                    TpActivity3.this.togglePlayback();
                                }
                            });
                        } else if (i == 3) {
                            String str3 = "正在连接Chromecast";
                            Log.d(str, str3);
                            TpActivity3.this.titleTv.setText(str3);
                        } else if (i == 4) {
                            String str4 = "已连接Chromecast";
                            Log.d(str, str4);
                            TpActivity3.this.titleTv.setText(str4);
                            TpActivity3.this.togglePlayback();
                        }
                    }
                };
                sharedInstance.addCastStateListener(this.mCastStateListener);
                sharedInstance.getSessionManager().addSessionManagerListener(this.mSessionManagerListener, CastSession.class);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        initListeners();
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) == 0) {
            try {
                this.mCastContext = CastContext.getSharedInstance(this.mContext);
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
            }
            setupActionBar();
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_tp);
        if (getIntent().getExtras() != null) {
            Bundle extras = getIntent().getExtras();
            String str = "";
            this.url = extras.getString("url", str);
            this.tag = extras.getString("tag", str);
            this.mTitle = extras.getString("title", str);
            this.mPictureUrl = extras.getString(SocialConstants.PARAM_AVATAR_URI, str);
            this.mPart = extras.getString("part", str);
        }
        this.mContext = this;
        initView();
        initCast();
        EventBus.getDefault().register(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.handler.postDelayed(new Runnable() {
            public void run() {
                try {
                    int castState = CastContext.getSharedInstance(TpActivity3.this).getCastState();
                    String str = TpActivity3.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("***state ");
                    sb.append(castState);
                    Log.e(str, sb.toString());
                    if (castState == 1) {
                        TpActivity3.this.mToolbar.setVisibility(8);
                    } else {
                        TpActivity3.this.mToolbar.setVisibility(0);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, 2000);
    }

    private void initView() {
        this.mDLNAAdapter = new DevicesAdapter(this);
        this.mSunsamListAdapter = new TVListAdapter(this);
        this.mSunsamList = (ListView) findViewById(R.id.lv_devices);
        this.mDLNAList = (ListView) findViewById(R.id.dlna_devices_lv);
        this.mDLNAList.setOverScrollMode(2);
        this.mSunsamList.setOverScrollMode(2);
        this.mTVSelected = (TextView) findViewById(R.id.tv_selected);
        this.mSeekProgress = (SeekBar) findViewById(R.id.seekbar_progress);
        this.mSeekVolume = (SeekBar) findViewById(R.id.seekbar_volume);
        this.mSwitchMute = (Switch) findViewById(R.id.sw_mute);
        this.finishLayout = (LinearLayout) findViewById(R.id.common_title_left);
        this.refreshTv = (TextView) findViewById(R.id.common_title_right);
        this.titleTv = (TextView) findViewById(R.id.title_tb);
        this.refreshTv.setVisibility(0);
        this.refreshTv.setText("刷新");
        this.refreshLayout = (LinearLayout) findViewById(R.id.menu_li);
        this.refreshLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                TpActivity3.this.seachingRL.setVisibility(0);
                TpActivity3.this.refreshLayout.setVisibility(8);
                TpActivity3.this.onRefresh();
            }
        });
        this.mSunsamList.setVisibility(0);
        this.mDLNAAdapter = new DevicesAdapter(this);
        this.mSunsamListAdapter = new TVListAdapter(this);
        this.mSunsamList.setAdapter(this.mSunsamListAdapter);
        this.mDLNAList.setAdapter(this.mDLNAAdapter);
        updateAdapters();
        View inflate = LayoutInflater.from(this).inflate(R.layout.tp_foot_item, null);
        this.seachingRL = (RelativeLayout) inflate.findViewById(R.id.seaching);
        this.mDLNAList.addFooterView(inflate);
        this.mSeekProgress.setMax(15);
        this.mSeekVolume.setMax(100);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(TestEvent testEvent) {
        try {
            String str = testEvent.message;
            if (str.equals(TestEvent.ADD_DEVICE)) {
                updateAdapters();
            } else if (str.equals(TestEvent.REMOVE_DEVICE)) {
                updateAdapters();
            } else {
                str.equals(TestEvent.SELECT_DEVICE);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void updateAdapters() {
        List clingDevices = ScreenManager.getInstance(this).getClingDevices();
        if (clingDevices != null && clingDevices.size() > 0) {
            this.mDLNAAdapter.clear();
            this.mDLNAAdapter.addAll(clingDevices);
        }
        List sumsamDeivces = ScreenManager.getInstance(this).getSumsamDeivces();
        if (sumsamDeivces != null && sumsamDeivces.size() > 0) {
            this.mSunsamListAdapter.clear();
            this.mSunsamListAdapter.addAll(sumsamDeivces);
        }
        this.mDLNAAdapter.notifyDataSetChanged();
        this.mSunsamListAdapter.notifyDataSetChanged();
    }

    private void initListeners() {
        this.mSunsamList.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (i < TpActivity3.this.mSunsamList.getCount()) {
                    TestEvent testEvent = new TestEvent();
                    testEvent.message = TestEvent.SELECT_DEVICE;
                    testEvent.tag = 1006;
                    testEvent.positon = i;
                    EventBus.getDefault().post(testEvent);
                    TpActivity3.this.finish();
                }
            }
        });
        this.mDLNAList.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (i < TpActivity3.this.mDLNAAdapter.getCount()) {
                    TestEvent testEvent = new TestEvent();
                    testEvent.message = TestEvent.SELECT_DEVICE;
                    testEvent.tag = 1007;
                    testEvent.positon = i;
                    EventBus.getDefault().post(testEvent);
                    TpActivity3.this.finish();
                }
            }
        });
        this.handler.postDelayed(new Runnable() {
            public void run() {
                TpActivity3.this.seachingRL.setVisibility(8);
            }
        }, 1000);
        this.finishLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                TpActivity3.this.finish();
            }
        });
    }

    public void onRefresh() {
        this.mSunsamList.setEnabled(false);
        this.mSunsamList.setEnabled(true);
        refreshDeviceList();
    }

    private void refreshDeviceList() {
        Collection dmrDevices = ClingManager.getInstance().getDmrDevices();
        ClingDeviceList.getInstance().setClingDeviceList(dmrDevices);
        if (dmrDevices != null) {
            this.mDLNAAdapter.clear();
            this.mDLNAAdapter.addAll(dmrDevices);
            ScreenManager.getInstance(this).getClingDevices().clear();
            ScreenManager.getInstance(this).getClingDevices().addAll(dmrDevices);
        }
        this.handler.postDelayed(new Runnable() {
            public void run() {
                TpActivity3.this.seachingRL.setVisibility(8);
                TpActivity3.this.refreshLayout.setVisibility(0);
            }
        }, 1000);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) == 0) {
            getMenuInflater().inflate(R.menu.browse, menu);
            this.mediaRouteMenuItem = CastButtonFactory.setUpMediaRouteButton(getApplicationContext(), menu, R.id.media_route_menu_item);
        }
        return true;
    }

    private void setupActionBar() {
        this.mToolbar = (Toolbar) findViewById(R.id.toolbar);
        String str = "";
        this.mToolbar.setTitle((CharSequence) str);
        this.titleTv.setText(str);
        this.mToolbar.setTitleTextColor(getResources().getColor(R.color.white));
        this.titleTv.setText("点击右侧按钮连接Chromecast");
        setSupportActionBar(this.mToolbar);
    }

    private MediaInfo buildMediaInfo() {
        MediaMetadata mediaMetadata = new MediaMetadata(1);
        mediaMetadata.putString(MediaMetadata.KEY_SUBTITLE, this.mTitle);
        mediaMetadata.putString(MediaMetadata.KEY_TITLE, "");
        mediaMetadata.addImage(new WebImage(Uri.parse(this.mPictureUrl)));
        mediaMetadata.addImage(new WebImage(Uri.parse(this.mPictureUrl)));
        StringBuilder sb = new StringBuilder();
        sb.append("buildMediaInfo");
        sb.append(this.url);
        Log.d(TAG, sb.toString());
        return new Builder(this.url).setStreamType(1).setContentType("application/vnd.apple.mpegurl").setMetadata(mediaMetadata).setStreamDuration(0).build();
    }

    /* access modifiers changed from: private */
    public void togglePlayback() {
        loadRemoteMedia(0, true);
    }

    private void updatePlaybackLocation(PlaybackLocation playbackLocation) {
        this.mLocation = playbackLocation;
    }

    private void loadRemoteMedia(int i, boolean z) {
        Log.d(TAG, "loadRemoteMedia");
        try {
            CastContext sharedInstance = CastContext.getSharedInstance();
            if (sharedInstance != null) {
                final RemoteMediaClient remoteMediaClient = sharedInstance.getSessionManager().getCurrentCastSession().getRemoteMediaClient();
                if (remoteMediaClient != null) {
                    remoteMediaClient.addListener(new Listener() {
                        public void onAdBreakStatusUpdated() {
                        }

                        public void onMetadataUpdated() {
                        }

                        public void onPreloadStatusUpdated() {
                        }

                        public void onQueueStatusUpdated() {
                        }

                        public void onSendingRemoteMediaRequest() {
                        }

                        public void onStatusUpdated() {
                            TpActivity3.this.startActivity(new Intent(TpActivity3.this, ExpandedControlsActivity.class));
                            remoteMediaClient.removeListener(this);
                        }
                    });
                    remoteMediaClient.load(buildMediaInfo(), z, (long) i);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        Handler handler2 = this.handler;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        this.titleTv.setText("");
        TransportStateBroadcastReceiver transportStateBroadcastReceiver = this.mTransportStateBroadcastReceiver;
        if (transportStateBroadcastReceiver != null) {
            unregisterReceiver(transportStateBroadcastReceiver);
        }
        try {
            CastContext sharedInstance = CastContext.getSharedInstance();
            if (sharedInstance != null) {
                sharedInstance.removeCastStateListener(this.mCastStateListener);
                sharedInstance.getSessionManager().removeSessionManagerListener(this.mSessionManagerListener, CastSession.class);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        EventBus.getDefault().unregister(this);
    }
}
