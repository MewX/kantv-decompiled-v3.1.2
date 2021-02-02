package com.kantv.ui.androidupnpdemo.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
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
import com.imkan.tv.R;
import com.kantv.common.log.AILog;
import com.kantv.ui.activity.VideoFullScreenActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.androidupnpdemo.entity.ClingDevice;
import com.kantv.ui.androidupnpdemo.entity.ClingDeviceList;
import com.kantv.ui.androidupnpdemo.service.manager.ClingManager;
import com.kantv.ui.bean.TestEvent;
import com.kantv.ui.chromecast.ExpandedControlsActivity;
import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.Timer;
import java.util.TimerTask;
import org.greenrobot.eventbus.EventBus;

public class TpActivity3 extends AppCompatActivity {
    /* access modifiers changed from: private */
    public static final String TAG = "TpActivity3";
    private LinearLayout finishLayout;
    private Handler handler;
    private CastContext mCastContext;
    /* access modifiers changed from: private */
    public CastSession mCastSession;
    private CastStateListener mCastStateListener;
    private Context mContext;
    private ListView mDeviceList;
    /* access modifiers changed from: private */
    public ArrayAdapter<ClingDevice> mDevicesAdapter;
    private IntroductoryOverlay mIntroductoryOverlay;
    private boolean mIsHoneyCombOrAbove;
    /* access modifiers changed from: private */
    public PlaybackLocation mLocation;
    private String mPart;
    private String mPictureUrl;
    /* access modifiers changed from: private */
    public PlaybackState mPlaybackState;
    private SeekBar mSeekProgress;
    private SeekBar mSeekVolume;
    private SessionManagerListener<CastSession> mSessionManagerListener;
    private Switch mSwitchMute;
    private TextView mTVSelected;
    private String mTitle;
    /* access modifiers changed from: private */
    public Toolbar mToolbar;
    private MenuItem mediaRouteMenuItem;
    private Timer netSpeedTimer;
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

    public TpActivity3() {
        this.mIsHoneyCombOrAbove = VERSION.SDK_INT >= 11;
        String str = "";
        this.url = str;
        this.handler = new Handler();
        this.tag = str;
        this.mTitle = str;
        this.mPart = str;
        this.mPictureUrl = str;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_tp);
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
        initListeners();
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) != 0) {
            AILog.d(TAG, "onCreateSUCCESS");
            return;
        }
        AILog.d(TAG, "onCreateSUCCESS5555555999999");
        this.mCastStateListener = new CastStateListener() {
            public void onCastStateChanged(int i) {
                String access$000 = TpActivity3.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("newState==");
                sb.append(i);
                AILog.d(access$000, sb.toString());
            }
        };
        try {
            this.mCastContext = CastContext.getSharedInstance(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
        setupCastListener();
        CastContext castContext = this.mCastContext;
        if (castContext != null) {
            this.mCastSession = castContext.getSessionManager().getCurrentCastSession();
        }
        setupActionBar();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        Handler handler2 = this.handler;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        Timer timer = this.netSpeedTimer;
        if (timer != null) {
            timer.cancel();
            this.netSpeedTimer = null;
        }
        this.titleTv.setText("");
    }

    private void initView() {
        this.mDeviceList = (ListView) findViewById(R.id.lv_devices);
        this.mDeviceList.setOverScrollMode(2);
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
        if (this.tag.equals("full")) {
            this.mDevicesAdapter = VideoFullScreenActivity.mDevicesAdapter;
        } else {
            this.mDevicesAdapter = VideoPlayActivity.mDevicesAdapter;
        }
        this.mDeviceList.setAdapter(this.mDevicesAdapter);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tp_foot_item, null);
        this.seachingRL = (RelativeLayout) inflate.findViewById(R.id.seaching);
        RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(this).inflate(R.layout.tp_header_item, null).findViewById(R.id.chromecast_re);
        this.mDeviceList.addFooterView(inflate);
        this.mSeekProgress.setMax(15);
        this.mSeekVolume.setMax(100);
    }

    private void initListeners() {
        this.mDeviceList.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                String access$000 = TpActivity3.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("position");
                sb.append(i);
                sb.append("   ");
                sb.append(TpActivity3.this.mDevicesAdapter.getCount());
                AILog.d(access$000, sb.toString());
                if (i < TpActivity3.this.mDevicesAdapter.getCount()) {
                    Intent intent = new Intent();
                    intent.putExtra("name", i);
                    TpActivity3.this.setResult(1007, intent);
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
        this.mDeviceList.setEnabled(false);
        this.mDeviceList.setEnabled(true);
        refreshDeviceList();
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
                TpActivity3.this.seachingRL.setVisibility(8);
                TpActivity3.this.refreshLayout.setVisibility(0);
            }
        }, 1000);
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
            this.handler.postDelayed(new Runnable() {
                public void run() {
                    try {
                        int castState = CastContext.getSharedInstance(TpActivity3.this).getCastState();
                        StringBuilder sb = new StringBuilder();
                        sb.append("88state");
                        sb.append(castState);
                        Log.e("TAG", sb.toString());
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
            AILog.d(TAG, "onResume");
        }
        super.onResume();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
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

    private void setupActionBar() {
        this.mToolbar = (Toolbar) findViewById(R.id.toolbar);
        this.mToolbar.setTitle((CharSequence) "");
        CastSession castSession = this.mCastSession;
        if (castSession == null || !castSession.isConnected()) {
            String str = "点击右侧按钮连接Chromecast";
            AILog.d(TAG, str);
            this.titleTv.setText(str);
        } else {
            String str2 = "已连接Chromecast";
            AILog.d(TAG, str2);
            this.titleTv.setText(str2);
            this.mToolbar.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    AILog.d(TpActivity3.TAG, "点击了谷歌投屏设备333333333");
                    TpActivity3.this.togglePlayback();
                }
            });
        }
        this.mToolbar.setTitleTextColor(getResources().getColor(R.color.white));
        setSupportActionBar(this.mToolbar);
        this.netSpeedTimer = new Timer();
        this.netSpeedTimer.schedule(new TimerTask() {
            public void run() {
                TpActivity3.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (TpActivity3.this.mCastSession == null || !TpActivity3.this.mCastSession.isConnecting()) {
                            String str = "点击右侧按钮连接Chromecast";
                            String str2 = "已连接Chromecast";
                            if (TpActivity3.this.mCastSession == null || !TpActivity3.this.mCastSession.isConnected()) {
                                if (TpActivity3.this.titleTv.getText().equals(str2)) {
                                    TpActivity3.this.titleTv.setText(str);
                                    TpActivity3.this.mToolbar.setOnClickListener(new OnClickListener() {
                                        public void onClick(View view) {
                                            AILog.d(TpActivity3.TAG, "点击了谷歌投屏设备333333333");
                                        }
                                    });
                                }
                            } else if (TpActivity3.this.titleTv.getText().equals(str)) {
                                TpActivity3.this.titleTv.setText(str2);
                                TpActivity3.this.togglePlayback();
                            }
                        } else {
                            TpActivity3.this.titleTv.setText("正在连接Chromecast");
                        }
                    }
                });
            }
        }, 0, 100);
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

    private MediaInfo buildMediaInfo() {
        MediaMetadata mediaMetadata = new MediaMetadata(1);
        mediaMetadata.putString(MediaMetadata.KEY_SUBTITLE, this.mTitle);
        StringBuilder sb = new StringBuilder();
        sb.append("第");
        sb.append(this.mPart);
        sb.append("集");
        mediaMetadata.putString(MediaMetadata.KEY_TITLE, sb.toString());
        mediaMetadata.addImage(new WebImage(Uri.parse(this.mPictureUrl)));
        mediaMetadata.addImage(new WebImage(Uri.parse(this.mPictureUrl)));
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("buildMediaInfo");
        sb2.append(this.url);
        AILog.d(str, sb2.toString());
        return new Builder(this.url).setStreamType(1).setContentType("application/vnd.apple.mpegurl").setMetadata(mediaMetadata).setStreamDuration(0).build();
    }

    private void setupCastListener() {
        AILog.d(TAG, "setupCastListener==");
        this.mSessionManagerListener = new SessionManagerListener<CastSession>() {
            public void onSessionEnded(CastSession castSession, int i) {
                String access$000 = TpActivity3.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionEnded==");
                sb.append(i);
                AILog.d(access$000, sb.toString());
                onApplicationDisconnected();
            }

            public void onSessionResumed(CastSession castSession, boolean z) {
                String access$000 = TpActivity3.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionResumed==");
                sb.append(z);
                AILog.d(access$000, sb.toString());
                onApplicationConnected(castSession);
            }

            public void onSessionResumeFailed(CastSession castSession, int i) {
                String access$000 = TpActivity3.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionResumeFailed==");
                sb.append(i);
                AILog.d(access$000, sb.toString());
                onApplicationDisconnected();
            }

            public void onSessionStarted(CastSession castSession, String str) {
                String access$000 = TpActivity3.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionStarted==");
                sb.append(str);
                AILog.d(access$000, sb.toString());
                onApplicationConnected(castSession);
            }

            public void onSessionStartFailed(CastSession castSession, int i) {
                String access$000 = TpActivity3.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionStartFailed==");
                sb.append(i);
                AILog.d(access$000, sb.toString());
                onApplicationDisconnected();
            }

            public void onSessionStarting(CastSession castSession) {
                AILog.d(TpActivity3.TAG, "onSessionStarting==");
            }

            public void onSessionEnding(CastSession castSession) {
                AILog.d(TpActivity3.TAG, "onSessionEnding==");
            }

            public void onSessionResuming(CastSession castSession, String str) {
                AILog.d(TpActivity3.TAG, "onSessionResuming==");
            }

            public void onSessionSuspended(CastSession castSession, int i) {
                AILog.d(TpActivity3.TAG, "onSessionSuspended==");
            }

            private void onApplicationConnected(CastSession castSession) {
                AILog.d(TpActivity3.TAG, "onApplicationConnected==");
                TpActivity3.this.mCastSession = castSession;
                TpActivity3.this.invalidateOptionsMenu();
            }

            private void onApplicationDisconnected() {
                TpActivity3.this.updatePlaybackLocation(PlaybackLocation.LOCAL);
                TpActivity3.this.mPlaybackState = PlaybackState.IDLE;
                TpActivity3.this.mLocation = PlaybackLocation.LOCAL;
                TpActivity3.this.invalidateOptionsMenu();
            }
        };
    }

    /* access modifiers changed from: private */
    public void togglePlayback() {
        CastSession castSession = this.mCastSession;
        if (castSession != null && castSession.isConnected()) {
            loadRemoteMedia(0, true);
        }
    }

    /* access modifiers changed from: private */
    public void updatePlaybackLocation(PlaybackLocation playbackLocation) {
        this.mLocation = playbackLocation;
    }

    private void loadRemoteMedia(int i, boolean z) {
        CastSession castSession = this.mCastSession;
        if (castSession != null) {
            final RemoteMediaClient remoteMediaClient = castSession.getRemoteMediaClient();
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
                TestEvent testEvent = new TestEvent();
                testEvent.message = "fullscreen";
                testEvent.tag = 0;
                EventBus.getDefault().post(testEvent);
                finish();
            }
        }
    }
}
