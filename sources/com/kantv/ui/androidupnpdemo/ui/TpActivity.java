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
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.androidupnpdemo.entity.ClingDevice;
import com.kantv.ui.androidupnpdemo.entity.ClingDeviceList;
import com.kantv.ui.androidupnpdemo.service.manager.ClingManager;
import com.kantv.ui.bean.TestEvent;
import com.kantv.ui.chromecast.ExpandedControlsActivity;
import com.kantv.ui.samsung.TVListAdapter;
import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.Timer;
import java.util.TimerTask;
import org.greenrobot.eventbus.EventBus;

public class TpActivity extends AppCompatActivity {
    /* access modifiers changed from: private */
    public static final String TAG = "TpActivity";
    private LinearLayout finishLayout;
    private Handler handler;
    private CastContext mCastContext;
    /* access modifiers changed from: private */
    public CastSession mCastSession;
    private CastStateListener mCastStateListener;
    private Context mContext;
    private ListView mDLNAList;
    private ListView mDeviceList;
    /* access modifiers changed from: private */
    public TVListAdapter mDeviceListAdapter;
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

    public TpActivity() {
        this.mIsHoneyCombOrAbove = VERSION.SDK_INT >= 11;
        this.mCastContext = null;
        this.mDeviceListAdapter = null;
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
            String str = "url";
            String str2 = "";
            this.url = extras.getString(str, str2);
            this.tag = extras.getString("tag", str2);
            this.mTitle = extras.getString("title", str2);
            this.mPictureUrl = extras.getString(SocialConstants.PARAM_AVATAR_URI, str2);
            this.mPart = extras.getString("part", str2);
            String str3 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(this.url);
            AILog.d(str3, sb.toString());
            String str4 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("mTitle33");
            sb2.append(this.mTitle);
            AILog.d(str4, sb2.toString());
            String str5 = TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("mPictureUrl");
            sb3.append(this.mPictureUrl);
            AILog.d(str5, sb3.toString());
            String str6 = TAG;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("mPart");
            sb4.append(this.mPart);
            AILog.d(str6, sb4.toString());
        }
        this.mContext = this;
        initView();
        initListeners();
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.mContext) != 0) {
            AILog.d(TAG, "ConnectionResult.SUCCESS fail");
            return;
        }
        AILog.d(TAG, "ConnectionResult.SUCCESS");
        try {
            this.mCastStateListener = new CastStateListener() {
                public void onCastStateChanged(int i) {
                    String access$000 = TpActivity.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("newState==");
                    sb.append(i);
                    AILog.d(access$000, sb.toString());
                }
            };
            this.mCastContext = CastContext.getSharedInstance(this.mContext);
            if (this.mCastContext != null) {
                setupCastListener();
                this.mCastSession = this.mCastContext.getSessionManager().getCurrentCastSession();
                setupActionBar();
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
        Timer timer = this.netSpeedTimer;
        if (timer != null) {
            timer.cancel();
            this.netSpeedTimer = null;
        }
        this.titleTv.setText("");
    }

    private void initView() {
        this.mDeviceList = (ListView) findViewById(R.id.lv_devices);
        this.mDLNAList = (ListView) findViewById(R.id.dlna_devices_lv);
        this.mDLNAList.setOverScrollMode(2);
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
                TpActivity.this.seachingRL.setVisibility(0);
                TpActivity.this.refreshLayout.setVisibility(8);
                TpActivity.this.onRefresh();
            }
        });
        if (!this.tag.equals("full")) {
            this.mDevicesAdapter = VideoPlayActivity.mDevicesAdapter;
            this.mDeviceListAdapter = VideoPlayActivity.mDeviceListAdapter;
        }
        this.mDLNAList.setAdapter(this.mDevicesAdapter);
        this.mDeviceList.setAdapter(this.mDeviceListAdapter);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tp_foot_item, null);
        this.seachingRL = (RelativeLayout) inflate.findViewById(R.id.seaching);
        RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(this).inflate(R.layout.tp_header_item, null).findViewById(R.id.chromecast_re);
        this.mDLNAList.addFooterView(inflate);
        this.mSeekProgress.setMax(15);
        this.mSeekVolume.setMax(100);
    }

    private void initListeners() {
        this.mDeviceList.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                String access$000 = TpActivity.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("position");
                sb.append(i);
                sb.append("   ");
                sb.append(TpActivity.this.mDeviceListAdapter.getCount());
                AILog.d(access$000, sb.toString());
                if (i < TpActivity.this.mDeviceListAdapter.getCount()) {
                    Intent intent = new Intent();
                    intent.putExtra("name", i);
                    TpActivity.this.setResult(1006, intent);
                    TpActivity.this.finish();
                }
            }
        });
        this.mDLNAList.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                String access$000 = TpActivity.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("position");
                sb.append(i);
                sb.append("   ");
                sb.append(TpActivity.this.mDevicesAdapter.getCount());
                AILog.d(access$000, sb.toString());
                if (i < TpActivity.this.mDevicesAdapter.getCount()) {
                    Intent intent = new Intent();
                    intent.putExtra("name", i);
                    TpActivity.this.setResult(1007, intent);
                    TpActivity.this.finish();
                }
            }
        });
        this.handler.postDelayed(new Runnable() {
            public void run() {
                TpActivity.this.seachingRL.setVisibility(8);
            }
        }, 1000);
        this.finishLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                TpActivity.this.finish();
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
                TpActivity.this.seachingRL.setVisibility(8);
                TpActivity.this.refreshLayout.setVisibility(0);
            }
        }, 1000);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        AILog.d(TAG, "onResume");
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this.mContext) != 0) {
            AILog.d(TAG, "ConnectionResult.SUCCESS fail");
            return;
        }
        AILog.d(TAG, "ConnectionResult.SUCCESS");
        CastContext castContext = this.mCastContext;
        if (castContext != null) {
            castContext.addCastStateListener(this.mCastStateListener);
            this.mCastContext.getSessionManager().addSessionManagerListener(this.mSessionManagerListener, CastSession.class);
        }
        CastSession castSession = this.mCastSession;
        if (castSession == null || !castSession.isConnected()) {
            updatePlaybackLocation(PlaybackLocation.LOCAL);
        } else {
            updatePlaybackLocation(PlaybackLocation.REMOTE);
        }
        this.handler.postDelayed(new Runnable() {
            public void run() {
                try {
                    int castState = CastContext.getSharedInstance(TpActivity.this).getCastState();
                    String access$000 = TpActivity.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("***state ");
                    sb.append(castState);
                    Log.e(access$000, sb.toString());
                    if (castState == 1) {
                        TpActivity.this.mToolbar.setVisibility(8);
                    } else {
                        TpActivity.this.mToolbar.setVisibility(0);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, 2000);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) != 0) {
            AILog.d(TAG, "onCreateOptionsMenu onCreateSUCCESS fail");
        } else {
            getMenuInflater().inflate(R.menu.browse, menu);
            this.mediaRouteMenuItem = CastButtonFactory.setUpMediaRouteButton(getApplicationContext(), menu, R.id.media_route_menu_item);
            AILog.d(TAG, "onCreateOptionsMenu onCreateSUCCESS");
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
                    TpActivity.this.togglePlayback();
                }
            });
        }
        this.mToolbar.setTitleTextColor(getResources().getColor(R.color.white));
        setSupportActionBar(this.mToolbar);
        this.netSpeedTimer = new Timer();
        this.netSpeedTimer.schedule(new TimerTask() {
            public void run() {
                TpActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (TpActivity.this.mCastSession == null || !TpActivity.this.mCastSession.isConnecting()) {
                            String str = "点击右侧按钮连接Chromecast";
                            String str2 = "已连接Chromecast";
                            if (TpActivity.this.mCastSession == null || !TpActivity.this.mCastSession.isConnected()) {
                                if (TpActivity.this.titleTv.getText().equals(str2)) {
                                    TpActivity.this.titleTv.setText(str);
                                    TpActivity.this.mToolbar.setOnClickListener(new OnClickListener() {
                                        public void onClick(View view) {
                                            AILog.d(TpActivity.TAG, "点击了谷歌投屏设备333333333");
                                        }
                                    });
                                }
                            } else if (TpActivity.this.titleTv.getText().equals(str)) {
                                TpActivity.this.titleTv.setText(str2);
                                TpActivity.this.togglePlayback();
                            }
                        } else {
                            TpActivity.this.titleTv.setText("正在连接Chromecast");
                        }
                    }
                });
            }
        }, 0, 100);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this) != 0) {
            AILog.d(TAG, "onPause onCreateSUCCESS fail");
        } else {
            CastContext castContext = this.mCastContext;
            if (castContext != null) {
                castContext.removeCastStateListener(this.mCastStateListener);
            }
            AILog.d(TAG, "onPause onCreateSUCCESS");
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
                String access$000 = TpActivity.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionEnded==");
                sb.append(i);
                AILog.d(access$000, sb.toString());
                onApplicationDisconnected();
            }

            public void onSessionResumed(CastSession castSession, boolean z) {
                String access$000 = TpActivity.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionResumed==");
                sb.append(z);
                AILog.d(access$000, sb.toString());
                onApplicationConnected(castSession);
            }

            public void onSessionResumeFailed(CastSession castSession, int i) {
                String access$000 = TpActivity.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionResumeFailed==");
                sb.append(i);
                AILog.d(access$000, sb.toString());
                onApplicationDisconnected();
            }

            public void onSessionStarted(CastSession castSession, String str) {
                String access$000 = TpActivity.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionStarted==");
                sb.append(str);
                AILog.d(access$000, sb.toString());
                onApplicationConnected(castSession);
            }

            public void onSessionStartFailed(CastSession castSession, int i) {
                String access$000 = TpActivity.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("onSessionStartFailed==");
                sb.append(i);
                AILog.d(access$000, sb.toString());
                onApplicationDisconnected();
            }

            public void onSessionStarting(CastSession castSession) {
                AILog.d(TpActivity.TAG, "onSessionStarting==");
            }

            public void onSessionEnding(CastSession castSession) {
                AILog.d(TpActivity.TAG, "onSessionEnding==");
            }

            public void onSessionResuming(CastSession castSession, String str) {
                AILog.d(TpActivity.TAG, "onSessionResuming==");
            }

            public void onSessionSuspended(CastSession castSession, int i) {
                AILog.d(TpActivity.TAG, "onSessionSuspended==");
            }

            private void onApplicationConnected(CastSession castSession) {
                AILog.d(TpActivity.TAG, "onApplicationConnected==");
                TpActivity.this.mCastSession = castSession;
                TpActivity.this.invalidateOptionsMenu();
            }

            private void onApplicationDisconnected() {
                TpActivity.this.updatePlaybackLocation(PlaybackLocation.LOCAL);
                TpActivity.this.mPlaybackState = PlaybackState.IDLE;
                TpActivity.this.mLocation = PlaybackLocation.LOCAL;
                TpActivity.this.invalidateOptionsMenu();
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
                        TpActivity.this.startActivity(new Intent(TpActivity.this, ExpandedControlsActivity.class));
                        remoteMediaClient.removeListener(this);
                    }
                });
                remoteMediaClient.load(buildMediaInfo(), z, (long) i);
                TestEvent testEvent = new TestEvent();
                testEvent.message = "videoplay";
                testEvent.tag = 0;
                EventBus.getDefault().post(testEvent);
                finish();
            }
        }
    }
}
