package com.kantv.ui.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.alibaba.fastjson.JSON;
import com.bumptech.glide.Glide;
import com.danikula.videocache.HttpProxyCacheServer;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.bean.AdBean;
import com.kantv.common.bean.PlayRecordBean;
import com.kantv.common.interfaces.ClickCallback;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.GpsUtil;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
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
import com.kantv.ui.androidupnpdemo.ui.TpActivity;
import com.kantv.ui.androidupnpdemo.ui.TpActivity3;
import com.kantv.ui.bean.MovieHitroyBeanJson;
import com.kantv.ui.bean.String4Bean;
import com.kantv.ui.bean.String8Bean;
import com.kantv.ui.bean.TestEvent;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.HttpRequest;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.fragment.VideoCommentFragment;
import com.kantv.ui.fragment.VideoDetailFragment;
import com.kantv.ui.manager.UpnpManager;
import com.kantv.ui.samsung.CastStateMachineSingleton;
import com.kantv.ui.samsung.CastStates;
import com.kantv.ui.samsung.MediaLauncherSingleton;
import com.kantv.ui.samsung.TVListAdapter;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.ActionSheetDialog;
import com.kantv.ui.view.ActionSheetDialog.OnSheetItemClickListener;
import com.kantv.ui.view.ActionSheetDialog.SheetItemColor;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.view.TabPageIndicator;
import com.kantv.ui.view.TabPageIndicator.IndicatorMode;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.kantv.video.KTVideoPlayer;
import com.kantv.video.KTVideoPlayer.SendDanmuListener;
import com.kantv.video.MyExoPlayer;
import com.kantv.video.util.AudioUtil;
import com.samsung.multiscreen.Search;
import com.samsung.multiscreen.Search.OnServiceFoundListener;
import com.samsung.multiscreen.Search.OnServiceLostListener;
import com.samsung.multiscreen.Search.OnStartListener;
import com.samsung.multiscreen.Search.OnStopListener;
import com.samsung.multiscreen.Service;
import com.shuyu.gsyvideoplayer.GSYVideoManager;
import com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack;
import com.shuyu.gsyvideoplayer.listener.LockClickListener;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.utils.OrientationUtils;
import com.tandong.bottomview.view.BottomView;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX.Req;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.mm.opensdk.modelmsg.WXWebpageObject;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.tencent.open.SocialConstants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import debug.KanApplication;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutionException;
import java.util.regex.Pattern;
import okhttp3.ResponseBody;
import org.fourthline.cling.binding.xml.Descriptor;
import org.fourthline.cling.model.meta.Device;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q.rorbin.badgeview.QBadgeView;
import retrofit2.Call;
import retrofit2.Response;

public class VideoPlayActivity extends PackageActivity implements OnSeekBarChangeListener {
    public static final int ERROR_ACTION = 165;
    public static final int GET_POSITION_INFO_ACTION = 165;
    public static final int PAUSE_ACTION = 162;
    public static final int PLAY_ACTION = 161;
    private static final int RESULT_CODE = 1005;
    public static final int STOP_ACTION = 163;
    public static final int SUCCES_ACTION = 167;
    public static final String TAG = "VideoPlayActivity";
    public static final int TRANSITIONING_ACTION = 164;
    public static TVListAdapter mDeviceListAdapter = null;
    public static ArrayAdapter<ClingDevice> mDevicesAdapter = null;
    /* access modifiers changed from: private */
    public static String must_shared = "-1";
    private IWXAPI WXApi;
    private final int WX_CODE;
    private List<AdBean> adBeans;
    @BindView(2131296353)
    ImageView adSoundImg;
    /* access modifiers changed from: private */
    public IWXAPI api;
    public Bundle b;
    @BindView(2131296395)
    TextView bindEmail;
    @BindView(2131296396)
    LinearLayout bindEmailContent;
    ClickCallback clickCallback;
    /* access modifiers changed from: private */
    public String commentSumNum;
    /* access modifiers changed from: private */
    public String currentProgressDetail;
    private long currentTime;
    @BindView(2131296496)
    TextView currentTimeTv;
    public String currentUrl;
    private int destroy;
    @BindView(2131296526)
    TextView diviseTv;
    @BindView(2131296575)
    View feedBack;
    public String filmImgUrl;
    private FragmentPagerAdapter fragmentPagerAdapter;
    BottomView fullAdBottomView;
    BottomView fullShareBottomView;
    /* access modifiers changed from: private */
    public String history;
    public boolean isPause;
    /* access modifiers changed from: private */
    public boolean isPlay;
    /* access modifiers changed from: private */
    public boolean isXianlu;
    public boolean isnotshow;
    /* access modifiers changed from: private */
    public String kafka_domain;
    /* access modifiers changed from: private */
    public int lineNum;
    @BindView(2131296866)
    LinearLayout loadErrorLayout;
    public boolean login;
    @BindView(2131296873)
    FrameLayout loginRegUnlockLayout;
    private AdBean mAdbean;
    AudioUtil mAudioUtil;
    /* access modifiers changed from: private */
    public BrowseRegistryListener mBrowseRegistryListener;
    /* access modifiers changed from: private */
    public List<String4Bean> mCircuitData;
    /* access modifiers changed from: private */
    public ClingPlayControl mClingPlayControl;
    /* access modifiers changed from: private */
    public Context mContext;
    private int mCount;
    @BindView(2131297385)
    public TextView mErrorText;
    /* access modifiers changed from: private */
    public List<Fragment> mFragmentData = new ArrayList();
    /* access modifiers changed from: private */
    public Handler mHandler;
    @BindView(2131296820)
    public KTVideoPlayer mKTVideoPlayer;
    public String mPartId;
    /* access modifiers changed from: private */
    public JSONObject mPlayinfo;
    private Search mSearch;
    private int mSeg;
    public String mSeo;
    private Service mService;
    @BindView(2131297255)
    TabPageIndicator mTabLayout;
    /* access modifiers changed from: private */
    public Tencent mTencent;
    public String mTid;
    private BroadcastReceiver mTransportStateBroadcastReceiver;
    private ServiceConnection mUpnpServiceConnection;
    public String mUrl;
    /* access modifiers changed from: private */
    public VideoCommentFragment mVideoCommentFragment = null;
    public VideoDetailFragment mVideoDetailFragment = null;
    @BindView(2131297386)
    RelativeLayout mVideoPlayerRl;
    @BindView(2131297380)
    ViewPager mViewPager;
    /* access modifiers changed from: private */
    public int mVoiceNum;
    @BindView(2131297406)
    WebView mWebView;
    private Timer netSpeedTimer;
    /* access modifiers changed from: private */
    public OrientationUtils orientationUtils = null;
    @BindView(2131297042)
    TextView pauseTv;
    private boolean play;
    @BindView(2131297057)
    SeekBar progressBarSb;
    private HttpProxyCacheServer proxy;
    @BindView(2131297120)
    TextView scoreTV;
    public String shareFilmImgUrl;
    @BindView(2131297194)
    ImageView shareImg;
    /* access modifiers changed from: private */
    public String shareLettersId;
    /* access modifiers changed from: private */
    public String sharePlanDesc;
    /* access modifiers changed from: private */
    public String sharePlanTitle;
    @BindView(2131297196)
    FrameLayout shareUnlockLayout;
    public String shareurl;
    public String showInfoSort;
    @BindView(2131297242)
    ImageView startIv;
    /* access modifiers changed from: private */
    public Timer stateSpeedTimer;
    @BindView(2131297244)
    TextView stateTv;
    /* access modifiers changed from: private */
    public boolean stopRecordTimer;
    @BindView(2131297308)
    TextView totalTimeTv;
    public boolean tpChoice;
    @BindView(2131297311)
    RelativeLayout tpView;
    /* access modifiers changed from: private */
    public String tvTitle;
    public String uniShareUrl;
    /* access modifiers changed from: private */
    public String userScore;
    private boolean videoAdFinished;
    @BindView(2131297377)
    LinearLayout videoDetailChildLayout;
    @BindView(2131297358)
    LinearLayout videoDetailLayout;
    private Timer watchRecordTimer;

    private final class InnerHandler extends Handler {
        private InnerHandler() {
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            String str = VideoPlayActivity.TAG;
            switch (i) {
                case 161:
                    AILog.d(str, "handleMessage正在投放");
                    VideoPlayActivity.this.mClingPlayControl.setCurrentState(1);
                    break;
                case 162:
                    AILog.d(str, "handleMessage暂停");
                    VideoPlayActivity.this.mClingPlayControl.setCurrentState(2);
                    break;
                case 163:
                    AILog.d(str, "handleMessage停止");
                    VideoPlayActivity.this.mClingPlayControl.setCurrentState(3);
                    break;
                case 164:
                    AILog.d(str, "handleMessage正在连接");
                    break;
                case 165:
                    AILog.d(str, "handleMessage投放失败");
                    break;
                case 167:
                    AILog.d(str, "handleMessage投放成功");
                    if (VideoPlayActivity.this.mKTVideoPlayer != null && VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer() != null) {
                        boolean isIfCurrentIsFullscreen = VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen();
                        StringBuilder sb = new StringBuilder();
                        sb.append("full");
                        sb.append(isIfCurrentIsFullscreen);
                        AILog.d(str, sb.toString());
                        if (isIfCurrentIsFullscreen) {
                            VideoPlayActivity.this.mKTVideoPlayer.setTpStateText("投放成功");
                        }
                        VideoPlayActivity.this.setingProgress();
                        break;
                    } else {
                        return;
                    }
                    break;
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
            Log.e(VideoPlayActivity.TAG, sb.toString());
            if ("com.zane.androidupnpdemo.action.playing".equals(action)) {
                VideoPlayActivity.this.mHandler.sendEmptyMessage(161);
            } else if ("com.zane.androidupnpdemo.action.paused_playback".equals(action)) {
                VideoPlayActivity.this.mHandler.sendEmptyMessage(162);
            } else if ("com.zane.androidupnpdemo.action.stopped".equals(action)) {
                VideoPlayActivity.this.mHandler.sendEmptyMessage(163);
            } else if ("com.zane.androidupnpdemo.action.transitioning".equals(action)) {
                VideoPlayActivity.this.mHandler.sendEmptyMessage(164);
            }
        }
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public VideoPlayActivity() {
        String str = "";
        this.currentUrl = str;
        this.tvTitle = str;
        this.shareurl = str;
        this.uniShareUrl = str;
        this.filmImgUrl = str;
        this.shareFilmImgUrl = str;
        this.showInfoSort = str;
        this.mSearch = null;
        this.mService = null;
        this.isnotshow = false;
        this.tpChoice = false;
        this.play = true;
        this.currentProgressDetail = str;
        this.netSpeedTimer = new Timer();
        this.stateSpeedTimer = new Timer();
        this.mClingPlayControl = new ClingPlayControl();
        this.destroy = 0;
        this.mHandler = new InnerHandler();
        this.mPartId = null;
        this.login = false;
        this.mCircuitData = new ArrayList();
        this.isXianlu = false;
        this.lineNum = 1;
        this.currentTime = 0;
        this.history = str;
        this.watchRecordTimer = null;
        this.stopRecordTimer = false;
        this.shareLettersId = str;
        this.sharePlanTitle = str;
        this.sharePlanDesc = str;
        this.fullShareBottomView = null;
        this.fullAdBottomView = null;
        this.mCount = 0;
        this.mAudioUtil = null;
        this.mVoiceNum = 0;
        this.userScore = str;
        this.commentSumNum = str;
        this.mSeg = 0;
        this.videoAdFinished = false;
        this.proxy = null;
        this.mBrowseRegistryListener = new BrowseRegistryListener();
        this.mUpnpServiceConnection = new ServiceConnection() {
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                Log.e(VideoPlayActivity.TAG, "mUpnpServiceConnection onServiceConnected");
                ClingUpnpService service = ((LocalBinder) iBinder).getService();
                ClingManager instance = ClingManager.getInstance();
                instance.setUpnpService(service);
                instance.setDeviceManager(new DeviceManager());
                instance.getRegistry().addListener(VideoPlayActivity.this.mBrowseRegistryListener);
                instance.searchDevices();
            }

            public void onServiceDisconnected(ComponentName componentName) {
                Log.e(VideoPlayActivity.TAG, "mUpnpServiceConnection onServiceDisconnected");
                ClingManager.getInstance().setUpnpService(null);
            }
        };
        this.adBeans = new ArrayList();
        this.clickCallback = new ClickCallback() {
            public void onShare(int i) {
                Intent intent;
                String str = "";
                if (i != 0) {
                    String str2 = "您还未安装微信客户端";
                    String str3 = "qudao";
                    String str4 = "num";
                    String str5 = "1";
                    if (i == 1) {
                        CommonViewModel.tongJiShare(VideoPlayActivity.this.shareurl, VideoPlayActivity.this.mTid, str);
                        if (!VideoPlayActivity.this.api.isWXAppInstalled()) {
                            ToastUtils.showShort((CharSequence) str2);
                            return;
                        }
                        VideoPlayActivity.this.wxShare(0);
                        Bundle bundle = new Bundle();
                        bundle.putString(str4, str5);
                        bundle.putString(str3, "微信好友");
                    } else if (i == 2) {
                        CommonViewModel.tongJiShare(VideoPlayActivity.this.shareurl, VideoPlayActivity.this.mTid, str);
                        if (!VideoPlayActivity.this.api.isWXAppInstalled()) {
                            ToastUtils.showShort((CharSequence) str2);
                            return;
                        }
                        VideoPlayActivity.this.wxShare(1);
                        Bundle bundle2 = new Bundle();
                        bundle2.putString(str4, str5);
                        bundle2.putString(str3, "微信朋友圈");
                    } else if (i != 3) {
                        String str6 = "summary";
                        String str7 = "】,看一次赚到一次";
                        String str8 = "我正在看TV上看【";
                        String str9 = "title";
                        String str10 = "req_type";
                        String str11 = "您的设备当前未安装QQ！";
                        if (i == 4) {
                            CommonViewModel.tongJiShare(VideoPlayActivity.this.shareurl, VideoPlayActivity.this.mTid, str);
                            if (Utils.isQQClientAvailable(VideoPlayActivity.this)) {
                                Bundle bundle3 = new Bundle();
                                bundle3.putInt(str10, 1);
                                StringBuilder sb = new StringBuilder();
                                sb.append(str8);
                                sb.append(VideoPlayActivity.this.tvTitle);
                                sb.append(str7);
                                bundle3.putString(str9, sb.toString());
                                bundle3.putString(str6, VideoPlayActivity.this.getString(R.string.share6));
                                bundle3.putString("targetUrl", VideoPlayActivity.this.uniShareUrl);
                                bundle3.putString("imageUrl", VideoPlayActivity.this.getString(R.string.share4));
                                VideoPlayActivity.this.mTencent.shareToQQ(VideoPlayActivity.this, bundle3, new IUiListener() {
                                    public void onCancel() {
                                    }

                                    public void onComplete(Object obj) {
                                    }

                                    public void onError(UiError uiError) {
                                    }
                                });
                                Bundle bundle4 = new Bundle();
                                bundle4.putString(str4, str5);
                                bundle4.putString(str3, "QQ好友");
                            } else {
                                ToastUtils.showShort((CharSequence) str11);
                            }
                        } else if (i == 5) {
                            CommonViewModel.tongJiShare(VideoPlayActivity.this.shareurl, VideoPlayActivity.this.mTid, str);
                            if (Utils.isQQClientAvailable(VideoPlayActivity.this)) {
                                Bundle bundle5 = new Bundle();
                                bundle5.putInt(str10, 1);
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(str8);
                                sb2.append(VideoPlayActivity.this.tvTitle);
                                sb2.append(str7);
                                bundle5.putString(str9, sb2.toString());
                                bundle5.putString(str6, VideoPlayActivity.this.getString(R.string.share6));
                                bundle5.putString("targetUrl", VideoPlayActivity.this.uniShareUrl);
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(VideoPlayActivity.this.getString(R.string.share4));
                                bundle5.putStringArrayList("imageUrl", arrayList);
                                VideoPlayActivity.this.mTencent.shareToQzone(VideoPlayActivity.this, bundle5, new IUiListener() {
                                    public void onCancel() {
                                    }

                                    public void onComplete(Object obj) {
                                    }

                                    public void onError(UiError uiError) {
                                    }
                                });
                                Bundle bundle6 = new Bundle();
                                bundle6.putString(str4, str5);
                                bundle6.putString(str3, "QQ空间");
                            } else {
                                ToastUtils.showShort((CharSequence) str11);
                            }
                        } else if (i == 8) {
                            CommonViewModel.tongJiOperate("screening", VideoPlayActivity.this.mTid);
                            if (!VideoPlayActivity.this.currentUrl.isEmpty()) {
                                new Thread(new Runnable() {
                                    public void run() {
                                        VideoPlayActivity.this.initSamsungDeviceListener();
                                    }
                                }).start();
                                Bundle bundle7 = new Bundle();
                                bundle7.putString("url", VideoPlayActivity.this.currentUrl);
                                boolean isIfCurrentIsFullscreen = VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen();
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("full");
                                sb3.append(isIfCurrentIsFullscreen);
                                AILog.d(VideoPlayActivity.TAG, sb3.toString());
                                if (isIfCurrentIsFullscreen) {
                                    intent = new Intent(VideoPlayActivity.this, TpActivity3.class);
                                } else {
                                    intent = new Intent(VideoPlayActivity.this, TpActivity.class);
                                }
                                intent.putExtras(bundle7);
                                VideoPlayActivity.this.startActivityForResult(intent, 1005);
                            }
                        } else if (i != 9) {
                            switch (i) {
                                case 16:
                                    if (!CommonViewModel.play_delay(true, VideoPlayActivity.this.mKTVideoPlayer, VideoPlayActivity.this) && VideoPlayActivity.this.mVideoDetailFragment != null && VideoPlayActivity.this.mVideoDetailFragment.mPlayData != null && VideoPlayActivity.this.mVideoDetailFragment.mPlayData.size() > 0) {
                                        if (VideoPlayActivity.this.mVideoDetailFragment.mPosition + 1 >= VideoPlayActivity.this.mVideoDetailFragment.mPlayData.size()) {
                                            ToastUtils.showShort((CharSequence) "最后一集了！");
                                            break;
                                        } else {
                                            ((String8Bean) VideoPlayActivity.this.mVideoDetailFragment.mPlayData.get(VideoPlayActivity.this.mVideoDetailFragment.mPosition)).setStr8(str5);
                                            ((String8Bean) VideoPlayActivity.this.mVideoDetailFragment.mPlayData.get(VideoPlayActivity.this.mVideoDetailFragment.mPosition + 1)).setStr8("0");
                                            VideoPlayActivity videoPlayActivity = VideoPlayActivity.this;
                                            videoPlayActivity.mPartId = ((String8Bean) videoPlayActivity.mVideoDetailFragment.mPlayData.get(VideoPlayActivity.this.mVideoDetailFragment.mPosition + 1)).getStr1();
                                            String str22 = ((String8Bean) VideoPlayActivity.this.mVideoDetailFragment.mPlayData.get(VideoPlayActivity.this.mVideoDetailFragment.mPosition + 1)).getStr2();
                                            if (VideoPlayActivity.this.mVideoDetailFragment.mAdapter != null) {
                                                VideoPlayActivity.this.mVideoDetailFragment.mAdapter.notifyDataSetChanged();
                                            }
                                            VideoPlayActivity.this.mVideoDetailFragment.requestSwitchVideo(VideoPlayActivity.this.mPartId, str22);
                                            break;
                                        }
                                    }
                                case 17:
                                    if (VideoPlayActivity.this.mVideoDetailFragment != null) {
                                        VideoPlayActivity.this.mVideoDetailFragment.showFullSelectVideoDialog();
                                        break;
                                    }
                                    break;
                                case 18:
                                    if (VideoPlayActivity.this.mVideoDetailFragment != null) {
                                        VideoPlayActivity.this.mVideoDetailFragment.initOnlineStatus("download");
                                        break;
                                    }
                                    break;
                                case 19:
                                    if (VideoPlayActivity.this.mVideoDetailFragment != null) {
                                        VideoPlayActivity.this.mVideoDetailFragment.requestCollect();
                                        break;
                                    }
                                    break;
                                default:
                                    switch (i) {
                                        case 200:
                                            CommonViewModel.tongJiShare(VideoPlayActivity.this.shareurl, VideoPlayActivity.this.mTid, str);
                                            new Bundle().putString(str4, str5);
                                            break;
                                        case R.id.adBack /*2131296339*/:
                                            if (!VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen()) {
                                                VideoPlayActivity.this.finish();
                                                break;
                                            } else {
                                                VideoPlayActivity.this.mKTVideoPlayer.onBackFullscreen();
                                                if (VideoPlayActivity.this.orientationUtils != null) {
                                                    VideoPlayActivity.this.orientationUtils.resolveByClick();
                                                    break;
                                                }
                                            }
                                            break;
                                        case R.id.adFull /*2131296341*/:
                                            if (VideoPlayActivity.this.orientationUtils != null) {
                                                VideoPlayActivity.this.orientationUtils.resolveByClick();
                                            }
                                            VideoPlayActivity.this.mKTVideoPlayer.startWindowFullscreen(VideoPlayActivity.this, true, true);
                                            break;
                                        case R.id.ad_layout /*2131296349*/:
                                            if (VideoPlayActivity.this.mKTVideoPlayer != null) {
                                                KTVideoPlayer kTVideoPlayer = (KTVideoPlayer) VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer();
                                                if (kTVideoPlayer.isPlayAd()) {
                                                    MyExoPlayer mediaPlayer = kTVideoPlayer.getMediaPlayer();
                                                    if (mediaPlayer != null) {
                                                        AdBean tag = mediaPlayer.getTag();
                                                        if (tag != null) {
                                                            try {
                                                                CommonViewModel.adsClick(tag.get_id());
                                                            } catch (Exception e) {
                                                                e.printStackTrace();
                                                            }
                                                            int opentype = tag.getOpentype();
                                                            Bundle bundle8 = new Bundle();
                                                            if (opentype != 0) {
                                                                bundle8.putString("url", tag.getUrl());
                                                                Intent intent2 = new Intent(Utils.getContext(), WebViewActivity.class);
                                                                intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                                                intent2.putExtras(bundle8);
                                                                Utils.getContext().startActivity(intent2);
                                                                break;
                                                            } else {
                                                                Intent intent3 = new Intent();
                                                                intent3.setAction("android.intent.action.VIEW");
                                                                intent3.setData(Uri.parse(tag.getUrl()));
                                                                intent3.setFlags(C.ENCODING_PCM_MU_LAW);
                                                                Utils.getContext().startActivity(intent3);
                                                                break;
                                                            }
                                                        }
                                                    } else {
                                                        return;
                                                    }
                                                }
                                            } else {
                                                return;
                                            }
                                            break;
                                        case R.id.ad_sound /*2131296353*/:
                                            if (VideoPlayActivity.this.mAudioUtil.getMediaVolume() > 0) {
                                                VideoPlayActivity videoPlayActivity2 = VideoPlayActivity.this;
                                                videoPlayActivity2.mVoiceNum = videoPlayActivity2.mAudioUtil.getMediaVolume();
                                                VideoPlayActivity.this.mAudioUtil.setMediaVolume(0);
                                                VideoPlayActivity.this.adSoundImg.setImageResource(R.drawable.ad_sound_off);
                                            } else {
                                                VideoPlayActivity videoPlayActivity3 = VideoPlayActivity.this;
                                                videoPlayActivity3.mVoiceNum = videoPlayActivity3.mAudioUtil.getMediaVolume();
                                                if (VideoPlayActivity.this.mVoiceNum > 0) {
                                                    VideoPlayActivity.this.mAudioUtil.setMediaVolume(VideoPlayActivity.this.mVoiceNum);
                                                }
                                                VideoPlayActivity.this.adSoundImg.setImageResource(R.drawable.ad_sound_on);
                                            }
                                            StringBuilder sb4 = new StringBuilder();
                                            sb4.append("***mVoiceNum: ");
                                            sb4.append(VideoPlayActivity.this.mVoiceNum);
                                            sb4.append("  *** MediaVolume: ");
                                            sb4.append(VideoPlayActivity.this.mAudioUtil.getMediaVolume());
                                            AILog.d("ad_sound", sb4.toString());
                                            break;
                                    }
                            }
                        } else if (VideoPlayActivity.this.isXianlu) {
                            VideoPlayActivity.this.lineNum = ((Integer) PreferenceUtil.get(Utils.getContext(), UserPreference.LINE_NUM, Integer.valueOf(1))).intValue();
                            if (VideoPlayActivity.this.mCircuitData != null && VideoPlayActivity.this.mCircuitData.size() > 1) {
                                if (VideoPlayActivity.this.lineNum < VideoPlayActivity.this.mCircuitData.size()) {
                                    VideoPlayActivity videoPlayActivity4 = VideoPlayActivity.this;
                                    videoPlayActivity4.initLineSwitchData(videoPlayActivity4.lineNum + 1);
                                } else {
                                    VideoPlayActivity.this.initLineSwitchData(1);
                                }
                            }
                        }
                    } else {
                        CommonViewModel.tongJiShare(VideoPlayActivity.this.shareurl, VideoPlayActivity.this.mTid, str);
                        if (!VideoPlayActivity.this.api.isWXAppInstalled()) {
                            ToastUtils.showShort((CharSequence) str2);
                            return;
                        }
                        VideoPlayActivity.this.wxShare(2);
                        Bundle bundle9 = new Bundle();
                        bundle9.putString(str4, str5);
                        bundle9.putString(str3, "微信收藏");
                    }
                } else {
                    CommonViewModel.tongJiShare(VideoPlayActivity.this.shareurl, VideoPlayActivity.this.mTid, str);
                }
            }
        };
        this.WX_CODE = 100;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.video_play);
        this.mContext = this;
        this.mAudioUtil = new AudioUtil(this, getWindow());
        this.proxy = KanApplication.getProxy(getApplicationContext());
        initBase();
        initStatusBar();
        initView();
        initScreenService();
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                if (VideoPlayActivity.this.isnotshow) {
                    VideoPlayActivity.this.mKTVideoPlayer.release();
                }
            }
        }, 3000);
        this.stateSpeedTimer.schedule(new TimerTask() {
            public void run() {
                if (VideoPlayActivity.this.mKTVideoPlayer != null && VideoPlayActivity.this.mKTVideoPlayer.getCurrentState() == 2) {
                    VideoPlayActivity.this.runOnUiThread(new Runnable() {
                        public void run() {
                            VideoPlayActivity.this.setPlayermSeekRatio();
                        }
                    });
                    VideoPlayActivity.this.stateSpeedTimer.cancel();
                }
            }
        }, 0, 1000);
        CommonViewModel.checkHadBindEmak(this, this.bindEmailContent, this.feedBack);
    }

    private void initScreenService() {
        initListeners();
        new Thread(new Runnable() {
            public void run() {
                VideoPlayActivity.this.initSamsungDeviceListener();
            }
        }).start();
        bindServices();
        registerReceivers();
    }

    private void initView() {
        this.login = ((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue();
        if (getIntent().getExtras() != null) {
            this.b = getIntent().getExtras();
            String str = "tid";
            this.mTid = this.b.getString(str);
            String str2 = "seo";
            this.mSeo = this.b.getString(str2);
            this.isnotshow = this.b.getBoolean("isnotshow", false);
            if (!StringUtils.isEmpty(this.b.getString("pushtype"))) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                    public void run() {
                        String str = Event.SHARE;
                        try {
                            JSONObject jsonObject = StringUtils.toJsonObject(VideoPlayActivity.this.b.getString("data"));
                            if (jsonObject != null) {
                                VideoPlayActivity.this.mPlayinfo = StringUtils.toJsonObject(jsonObject.optString("playinfo"));
                                StringUtils.toJsonObject(jsonObject.optString("userInfo"));
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("info"));
                                VideoPlayActivity.this.kafka_domain = jsonObject.getString("kafka_domain");
                                VideoPlayActivity.this.initVideoDetail(VideoPlayActivity.this.mTid);
                                String str2 = "part";
                                String str3 = "0";
                                if (VideoPlayActivity.this.mPlayinfo != null) {
                                    VideoPlayActivity.this.currentUrl = VideoPlayActivity.this.mPlayinfo.optString("url");
                                    VideoPlayActivity.this.shareurl = VideoPlayActivity.this.mPlayinfo.optString("shareUrl");
                                    VideoPlayActivity.this.uniShareUrl = VideoPlayActivity.this.mPlayinfo.optString("uniShareUrl");
                                    VideoPlayActivity.this.history = VideoPlayActivity.this.mPlayinfo.optString("history");
                                    if (!StringUtils.isEmpty(VideoPlayActivity.this.history) && StringUtils.toJsonObject(VideoPlayActivity.this.history) != null && !StringUtils.toJsonObject(VideoPlayActivity.this.history).optString(str2).equals(str3) && VideoPlayActivity.this.scoreTV != null) {
                                        VideoPlayActivity.this.scoreTV.setEnabled(true);
                                    }
                                }
                                VideoPlayActivity.this.login = true;
                                String str4 = "photo";
                                if (jsonObject2 != null) {
                                    VideoPlayActivity.this.tvTitle = jsonObject2.optString("title");
                                    VideoPlayActivity.this.filmImgUrl = jsonObject2.optString(str4);
                                    VideoPlayActivity.this.showInfoSort = jsonObject2.optString("show_partinfoSort");
                                    if (!StringUtils.isEmpty(VideoPlayActivity.this.showInfoSort) && VideoPlayActivity.this.showInfoSort.equals(str3) && VideoPlayActivity.this.mVideoDetailFragment != null) {
                                        VideoPlayActivity.this.mVideoDetailFragment.setOrder(true);
                                    }
                                }
                                if (VideoPlayActivity.this.mPlayinfo != null) {
                                    VideoPlayActivity.must_shared = VideoPlayActivity.this.mPlayinfo.optString("must_shared");
                                    if (!StringUtils.isEmpty(VideoPlayActivity.must_shared) && !VideoPlayActivity.must_shared.equals("-1")) {
                                        new Handler().postDelayed(new Runnable() {
                                            public void run() {
                                                if (VideoPlayActivity.this.mKTVideoPlayer != null) {
                                                    VideoPlayActivity.this.mKTVideoPlayer.onVideoPause();
                                                    VideoPlayActivity.this.mKTVideoPlayer.hideAllUI();
                                                }
                                            }
                                        }, 3000);
                                        if (!StringUtils.isEmpty(VideoPlayActivity.this.mPlayinfo.optString(str))) {
                                            JSONObject jsonObject3 = StringUtils.toJsonObject(VideoPlayActivity.this.mPlayinfo.optString(str));
                                            if (jsonObject3 != null) {
                                                if (!StringUtils.isEmpty(jsonObject3.optString(str4))) {
                                                    GlideUtils.loadimage2(jsonObject3.optString(str4), VideoPlayActivity.this.shareImg);
                                                }
                                                VideoPlayActivity.this.shareLettersId = jsonObject3.optString("letters_id");
                                            }
                                        }
                                        VideoPlayActivity.this.shareUnlockLayout.setVisibility(0);
                                        VideoPlayActivity.this.shareUnlockLayout.setClickable(true);
                                    }
                                }
                                if (VideoPlayActivity.this.mVideoDetailFragment != null) {
                                    VideoPlayActivity.this.mVideoDetailFragment.initInfoView(jsonObject, VideoPlayActivity.this.b.getString(str2), VideoPlayActivity.this.b.getString("part_id"), str3);
                                }
                                VideoPlayActivity.this.playVideoControl(str3);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }, 800);
            } else {
                String str3 = this.mSeo;
                if (str3 == null || !str3.equals("zhuanti")) {
                    String str4 = "part_id";
                    if (StringUtils.isEmpty(this.b.getString(str4))) {
                        initRequest(this.b.getString(str), "", "", "0", "1", this.b.getString(str2), true);
                    } else {
                        initRequest(this.b.getString(str), this.b.getString(str4), this.b.getString("part"), "1", "1", this.b.getString(str2), true);
                    }
                } else {
                    initVideoTopic();
                }
            }
            if (this.isnotshow) {
                this.tpView.setVisibility(0);
                this.mKTVideoPlayer.hideAllUI();
                setTpProgress2();
                boolean z = false;
                for (int i = 0; i < UpnpManager.getInstance(this).mDevicesAdapter.getCount(); i++) {
                    ClingDevice clingDevice = (ClingDevice) UpnpManager.getInstance(this).mDevicesAdapter.getItem(i);
                    StringBuilder sb = new StringBuilder();
                    sb.append("item");
                    sb.append(clingDevice.getDevice().getDetails().getFriendlyName());
                    sb.append("       ");
                    sb.append(clingDevice.isSelected());
                    String sb2 = sb.toString();
                    String str5 = TAG;
                    AILog.d(str5, sb2);
                    if (clingDevice.isSelected()) {
                        String format = String.format(getString(R.string.selectedText), new Object[]{clingDevice.getDevice().getDetails().getFriendlyName()});
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("selectedDeviceName");
                        sb3.append(format);
                        AILog.d(str5, sb3.toString());
                        if (!format.isEmpty()) {
                            this.diviseTv.setText(format);
                        }
                        z = true;
                    }
                }
                if (!z) {
                    this.stateTv.setText("连接失败");
                }
            }
            try {
                this.mTencent = Tencent.createInstance("1106453625", Utils.getContext());
            } catch (Exception e) {
                e.printStackTrace();
            }
            String str6 = "wx70cbf5b9aacb0e47";
            this.api = WXAPIFactory.createWXAPI(this, str6, false);
            this.api.registerApp(str6);
        }
        mDevicesAdapter = new DevicesAdapter(this);
        mDeviceListAdapter = new TVListAdapter(this);
        this.orientationUtils = new OrientationUtils(this, this.mKTVideoPlayer);
        this.orientationUtils.setEnable(false);
        this.mKTVideoPlayer.getFullscreenButton().setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (VideoPlayActivity.this.orientationUtils != null) {
                    VideoPlayActivity.this.orientationUtils.resolveByClick();
                }
                VideoPlayActivity.this.mKTVideoPlayer.startWindowFullscreen(VideoPlayActivity.this, true, true);
            }
        });
        this.mKTVideoPlayer.setSendDanmuListener(new SendDanmuListener() {
            public void onSend(String str) {
                VideoPlayActivity.this.sendDanmu(str);
            }

            public void getDanmuListener() {
                VideoPlayActivity.this.getDanmuList();
            }
        });
        this.mKTVideoPlayer.setVideoAllCallBack(new GSYSampleCallBack() {
            public void onPrepared(String str, Object... objArr) {
                super.onPrepared(str, objArr);
                if (VideoPlayActivity.this.orientationUtils != null) {
                    VideoPlayActivity.this.orientationUtils.setEnable(true);
                }
                VideoPlayActivity.this.isPlay = true;
            }

            public void onAutoComplete(String str, Object... objArr) {
                super.onAutoComplete(str, objArr);
            }

            public void onClickStartError(String str, Object... objArr) {
                super.onClickStartError(str, objArr);
            }

            public void onQuitFullscreen(String str, Object... objArr) {
                super.onQuitFullscreen(str, objArr);
                if (VideoPlayActivity.this.orientationUtils != null) {
                    VideoPlayActivity.this.orientationUtils.backToProtVideo();
                }
            }
        });
        this.mKTVideoPlayer.setLockClickListener(new LockClickListener() {
            public void onClick(View view, boolean z) {
                if (VideoPlayActivity.this.orientationUtils != null) {
                    VideoPlayActivity.this.orientationUtils.setEnable(!z);
                }
            }
        });
        this.mKTVideoPlayer.getBackButton().setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                VideoPlayActivity.this.finish();
            }
        });
        this.mKTVideoPlayer.setWindow(getWindow());
        this.mKTVideoPlayer.setClickCallback(this.clickCallback);
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

    /* access modifiers changed from: private */
    public void setPlayermSeekRatio() {
        KTVideoPlayer kTVideoPlayer = this.mKTVideoPlayer;
        if (kTVideoPlayer != null) {
            int duration = kTVideoPlayer.getDuration();
            String str = TAG;
            if (duration <= 1800000) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.mKTVideoPlayer.getDuration());
                sb.append(" 小于30  8");
                AILog.d(str, sb.toString());
                this.mKTVideoPlayer.setSeekRatio(8.0f);
            } else if (this.mKTVideoPlayer.getDuration() > 1800000 && this.mKTVideoPlayer.getDuration() <= 3600000) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.mKTVideoPlayer.getDuration());
                sb2.append(" 小于60  8");
                AILog.d(str, sb2.toString());
                this.mKTVideoPlayer.setSeekRatio(15.0f);
            } else if (this.mKTVideoPlayer.getDuration() > 3600000 && this.mKTVideoPlayer.getDuration() <= 5400000) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(this.mKTVideoPlayer.getDuration());
                sb3.append(" 小于90  8");
                AILog.d(str, sb3.toString());
                this.mKTVideoPlayer.setSeekRatio(22.0f);
            } else if (this.mKTVideoPlayer.getDuration() <= 5400000 || this.mKTVideoPlayer.getDuration() > 72000000) {
                this.mKTVideoPlayer.setSeekRatio(36.0f);
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(this.mKTVideoPlayer.getDuration());
                sb4.append(" 小于120  8");
                AILog.d(str, sb4.toString());
                this.mKTVideoPlayer.setSeekRatio(30.0f);
            }
        }
    }

    private void initListeners() {
        this.mBrowseRegistryListener.setOnDeviceListChangedListener(new DeviceListChangedListener() {
            public void onDeviceAdded(final IDevice iDevice) {
                VideoPlayActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        VideoPlayActivity.mDevicesAdapter.add((ClingDevice) iDevice);
                        StringBuilder sb = new StringBuilder();
                        sb.append("onDeviceAdded mBrowseRegistryListener");
                        sb.append(iDevice);
                        String sb2 = sb.toString();
                        String str = VideoPlayActivity.TAG;
                        AILog.d(str, sb2);
                        UpnpManager.getInstance(VideoPlayActivity.this).mDevicesAdapter = VideoPlayActivity.mDevicesAdapter;
                        for (int i = 0; i < VideoPlayActivity.mDevicesAdapter.getCount(); i++) {
                            ClingDevice clingDevice = (ClingDevice) VideoPlayActivity.mDevicesAdapter.getItem(i);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("item");
                            sb3.append(clingDevice.getDevice().getDetails().getFriendlyName());
                            sb3.append("       ");
                            sb3.append(clingDevice.isSelected());
                            AILog.d(str, sb3.toString());
                            ClingDevice clingDevice2 = (ClingDevice) VideoPlayActivity.mDevicesAdapter.getItem(i);
                            Device device = clingDevice.getDevice();
                            if (UpnpManager.getInstance(VideoPlayActivity.this).name.equals(device.getDetails().getFriendlyName())) {
                                ClingManager.getInstance().setSelectedDevice(clingDevice2);
                                if (!Utils.isNull(device)) {
                                    VideoPlayActivity.this.setingProgress();
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                });
            }

            public void onDeviceRemoved(final IDevice iDevice) {
                VideoPlayActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        VideoPlayActivity.mDevicesAdapter.remove((ClingDevice) iDevice);
                        StringBuilder sb = new StringBuilder();
                        sb.append("onDeviceRemoved mBrowseRegistryListener");
                        sb.append(iDevice);
                        AILog.d(VideoPlayActivity.TAG, sb.toString());
                        UpnpManager.getInstance(VideoPlayActivity.this).mDevicesAdapter = VideoPlayActivity.mDevicesAdapter;
                    }
                });
            }
        });
    }

    /* access modifiers changed from: private */
    public void initSamsungDeviceListener() {
        try {
            TVListAdapter tVListAdapter = mDeviceListAdapter;
            String str = TAG;
            if (tVListAdapter == null) {
                AILog.w(str, "Can't start Discovery.");
                return;
            }
            if (this.mSearch == null) {
                this.mSearch = Service.search(Utils.getContext());
                StringBuilder sb = new StringBuilder();
                sb.append("Device (");
                sb.append(this.mSearch);
                sb.append(") Search instantiated..");
                AILog.v(str, sb.toString());
                this.mSearch.setOnServiceFoundListener(new OnServiceFoundListener() {
                    public void onFound(final Service service) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("setOnServiceFoundListener(): onFound(): Service Added: ");
                        sb.append(service);
                        String sb2 = sb.toString();
                        String str = VideoPlayActivity.TAG;
                        AILog.v(str, sb2);
                        if (service == null) {
                            AILog.w(str, "updateTVList(): NULL service!!!");
                            return;
                        }
                        if (!VideoPlayActivity.mDeviceListAdapter.contains(service)) {
                            VideoPlayActivity.this.runOnUiThread(new Runnable() {
                                public void run() {
                                    VideoPlayActivity.mDeviceListAdapter.add(service);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("TVListAdapter.add(service): ");
                                    sb.append(service);
                                    AILog.v(VideoPlayActivity.TAG, sb.toString());
                                }
                            });
                        }
                    }
                });
                this.mSearch.setOnStartListener(new OnStartListener() {
                    public void onStart() {
                        AILog.v(VideoPlayActivity.TAG, "Starting Discovery.");
                    }
                });
                this.mSearch.setOnStopListener(new OnStopListener() {
                    public void onStop() {
                        AILog.v(VideoPlayActivity.TAG, "Discovery Stopped.");
                    }
                });
                this.mSearch.setOnServiceLostListener(new OnServiceLostListener() {
                    public void onLost(Service service) {
                        AILog.v(VideoPlayActivity.TAG, "Discovery: Service Lost!!!");
                        if (service != null) {
                            VideoPlayActivity.mDeviceListAdapter.remove(service);
                        }
                    }
                });
            }
            if (this.mSearch.start(Boolean.valueOf(true))) {
                AILog.v(str, "Discovery Already Started..");
            } else {
                AILog.v(str, "New Discovery Started..");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void lineSwitchDialog() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this);
        actionSheetDialog.builder();
        actionSheetDialog.setTitle("请选择播放线路");
        for (final int i = 1; i < 4; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append("线路");
            sb.append(i);
            actionSheetDialog.addSheetItem(sb.toString(), SheetItemColor.Blue, new OnSheetItemClickListener() {
                public void onClick(int i) {
                    VideoPlayActivity.this.initLineSwitchData(i);
                }
            });
        }
        actionSheetDialog.show();
    }

    /* access modifiers changed from: private */
    public String getImagePath(String str) {
        try {
            return ((File) Glide.with((FragmentActivity) this).load(str).downloadOnly(200, 200).get()).getAbsolutePath();
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* access modifiers changed from: private */
    public void wxShare(int i) {
        Bitmap bitmap;
        try {
            WXWebpageObject wXWebpageObject = new WXWebpageObject();
            wXWebpageObject.webpageUrl = this.uniShareUrl;
            WXMediaMessage wXMediaMessage = new WXMediaMessage(wXWebpageObject);
            if (!StringUtils.isEmpty(this.sharePlanTitle)) {
                wXMediaMessage.title = this.sharePlanTitle;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("我正在看TV上看【");
                sb.append(this.tvTitle);
                sb.append("】,看一次赚到一次");
                wXMediaMessage.title = sb.toString();
            }
            if (!StringUtils.isEmpty(this.sharePlanDesc)) {
                wXMediaMessage.description = this.sharePlanDesc;
            } else {
                wXMediaMessage.description = getString(R.string.share2);
            }
            if (StringUtils.isEmpty(this.shareFilmImgUrl)) {
                bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
            } else {
                bitmap = BitmapFactory.decodeFile(this.shareFilmImgUrl);
            }
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, 100, 100, true);
            bitmap.recycle();
            wXMediaMessage.thumbData = Utils.bmpToByteArray(createScaledBitmap, true);
            Req req = new Req();
            req.transaction = buildTransaction("webpage");
            req.message = wXMediaMessage;
            req.scene = i;
            this.api.sendReq(req);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public void wxShareUnlock(int i) {
        Bitmap bitmap;
        try {
            WXWebpageObject wXWebpageObject = new WXWebpageObject();
            wXWebpageObject.webpageUrl = this.shareurl;
            WXMediaMessage wXMediaMessage = new WXMediaMessage(wXWebpageObject);
            if (!StringUtils.isEmpty(this.sharePlanTitle)) {
                wXMediaMessage.title = this.sharePlanTitle;
            } else {
                wXMediaMessage.title = String.format(getString(R.string.shareunlock1), new Object[]{this.tvTitle});
            }
            if (!StringUtils.isEmpty(this.sharePlanDesc)) {
                wXMediaMessage.description = this.sharePlanDesc;
            } else {
                wXMediaMessage.description = getString(R.string.shareunlock2);
            }
            if (StringUtils.isEmpty(this.shareFilmImgUrl)) {
                bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
            } else {
                bitmap = BitmapFactory.decodeFile(this.shareFilmImgUrl);
            }
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, 100, 100, true);
            bitmap.recycle();
            wXMediaMessage.thumbData = Utils.bmpToByteArray(createScaledBitmap, true);
            Req req = new Req();
            req.transaction = buildTransaction("webpage");
            req.message = wXMediaMessage;
            req.scene = i;
            this.api.sendReq(req);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String buildTransaction(String str) {
        if (str == null) {
            return String.valueOf(System.currentTimeMillis());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(System.currentTimeMillis());
        return sb.toString();
    }

    private void setTpProgress2() {
        int i = UpnpManager.getInstance(this).progressMax;
        String stringForTime = CommonUtil.stringForTime(i * 1000);
        StringBuilder sb = new StringBuilder();
        sb.append("stTime =  ");
        sb.append(stringForTime);
        AILog.d(TAG, sb.toString());
        this.progressBarSb.setMax(i);
        this.progressBarSb.setOnSeekBarChangeListener(this);
        this.totalTimeTv.setText(stringForTime);
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
        if (i == 1005) {
            String str2 = "name";
            String str3 = "onResumeonActivityResult";
            if (i2 == 1006) {
                AILog.d(str, str3);
                this.play = false;
                int intValue = ((Integer) intent.getExtras().get(str2)).intValue();
                runOnUiThread(new Runnable() {
                    public void run() {
                        VideoPlayActivity.this.tpView.setVisibility(0);
                        VideoPlayActivity.this.mKTVideoPlayer.hideAllUI();
                        VideoPlayActivity.this.tpChoice = true;
                    }
                });
                TVListAdapter tVListAdapter = mDeviceListAdapter;
                if (tVListAdapter != null && tVListAdapter.getCount() != 0 && intValue < mDeviceListAdapter.getCount()) {
                    this.mService = (Service) mDeviceListAdapter.getItem(intValue);
                    MediaLauncherSingleton.getInstance(this).setService(this.mService);
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        ToastUtils.showShort((CharSequence) "*** InterruptedException ");
                        e.printStackTrace();
                    }
                    MediaLauncherSingleton.getInstance(this).playContent(this.currentUrl, this.tvTitle, "");
                }
            } else if (i2 == 1007) {
                AILog.d(str, str3);
                this.play = false;
                int intValue2 = ((Integer) intent.getExtras().get(str2)).intValue();
                runOnUiThread(new Runnable() {
                    public void run() {
                        VideoPlayActivity.this.tpView.setVisibility(0);
                        VideoPlayActivity.this.mKTVideoPlayer.hideAllUI();
                        VideoPlayActivity.this.tpChoice = true;
                    }
                });
                ArrayAdapter<ClingDevice> arrayAdapter = mDevicesAdapter;
                if (arrayAdapter != null && arrayAdapter.getCount() != 0) {
                    ClingDevice clingDevice = (ClingDevice) mDevicesAdapter.getItem(intValue2);
                    if (!Utils.isNull(clingDevice)) {
                        ClingManager.getInstance().setSelectedDevice(clingDevice);
                        Device device = clingDevice.getDevice();
                        if (!Utils.isNull(device)) {
                            String format = String.format(getString(R.string.selectedText), new Object[]{device.getDetails().getFriendlyName()});
                            StringBuilder sb3 = new StringBuilder();
                            String str4 = "selectedDeviceName";
                            sb3.append(str4);
                            sb3.append(format);
                            AILog.d(str, sb3.toString());
                            if (!format.isEmpty()) {
                                this.diviseTv.setText(format);
                            }
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str4);
                            sb4.append(format);
                            AILog.d(str, sb4.toString());
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("itemshifou");
                            sb5.append(clingDevice.isSelected());
                            AILog.d(str, sb5.toString());
                            boolean isIfCurrentIsFullscreen = this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen();
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("full");
                            sb6.append(isIfCurrentIsFullscreen);
                            AILog.d(str, sb6.toString());
                            if (isIfCurrentIsFullscreen) {
                                this.mKTVideoPlayer.setTpViewVisible(true);
                                this.mKTVideoPlayer.setTpDviseText(format);
                            }
                            setTpProgress();
                            play();
                            UpnpManager.getInstance(this).seo = this.mSeo;
                            UpnpManager.getInstance(this).tid = this.mTid;
                            UpnpManager.getInstance(this).name = device.getDetails().getFriendlyName();
                        }
                    }
                }
            }
        } else if (i != 10 && i == 100) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append("onActivityResult ");
            sb7.append(i);
            sb7.append(" ");
            sb7.append(i2);
            AILog.i(str, sb7.toString());
            if (i2 != -1) {
                finish();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        this.mKTVideoPlayer.getCurrentPlayer().onVideoPause();
        this.isPause = true;
        this.destroy = 2;
        this.stopRecordTimer = true;
        pushVideoExitTime();
        savePlayTime();
        super.onPause();
    }

    private void savePlayTime() {
        String str;
        String str2;
        int currentPositionWhenPlaying = this.mKTVideoPlayer.getCurrentPositionWhenPlaying();
        if (currentPositionWhenPlaying > 0) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
            String format = simpleDateFormat.format(Integer.valueOf(currentPositionWhenPlaying));
            VideoDetailFragment videoDetailFragment = this.mVideoDetailFragment;
            String str3 = "";
            if (videoDetailFragment != null) {
                String str4 = videoDetailFragment.mPlayName;
                if (this.mVideoDetailFragment.mPlayData.size() > this.mVideoDetailFragment.mPosition) {
                    String str32 = ((String8Bean) this.mVideoDetailFragment.mPlayData.get(this.mVideoDetailFragment.mPosition)).getStr3();
                    if (Pattern.compile("[0-9]*").matcher(str32).matches()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("第");
                        sb.append(str32);
                        sb.append("集");
                        str32 = sb.toString();
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str32);
                    sb2.append(", ");
                    sb2.append(format);
                    str3 = sb2.toString();
                }
                str2 = str4;
                str = str3;
            } else {
                str2 = str3;
                str = str2;
            }
            MovieHitroyBeanJson movieHitroyBeanJson = new MovieHitroyBeanJson(this.mTid, this.mSeo, str2, str, this.filmImgUrl);
            PreferenceUtil.put(this, UserPreference.MOVIEHISTROY, JSON.toJSONString(movieHitroyBeanJson));
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        if (this.destroy == 0) {
            this.destroy = 1;
        }
        if (this.play && must_shared.equals("-1")) {
            this.mKTVideoPlayer.getCurrentPlayer().onVideoResume();
        }
        this.play = true;
        this.isPause = false;
        super.onResume();
        this.login = ((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue();
        if (this.login) {
            this.loginRegUnlockLayout.setVisibility(8);
        }
        this.stopRecordTimer = false;
    }

    public void onBackPressed() {
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.backToProtVideo();
        }
        if (!GSYVideoManager.backFromWindowFull(this)) {
            super.onBackPressed();
        }
    }

    /* access modifiers changed from: private */
    public void parseAds(JSONObject jSONObject) {
        String str = "ads";
        String str2 = "play_preplay";
        String str3 = "seconds";
        String str4 = TAG;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(jSONObject.toString());
            sb.append("");
            AILog.d(str4, sb.toString());
            this.adBeans.clear();
            this.mCount = 0;
            if (jSONObject != null && !StringUtils.isEmpty(jSONObject.optString(str2))) {
                JSONObject jsonObject = StringUtils.toJsonObject(jSONObject.optString(str2));
                if (!StringUtils.isEmpty(jsonObject.optString(str))) {
                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject.optString(str));
                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                        for (int i = 0; i < jsonArray.length(); i++) {
                            JSONObject jSONObject2 = jsonArray.getJSONObject(i);
                            if (jSONObject2 != null) {
                                AdBean adBean = new AdBean();
                                if (StringUtils.isStr2Num(jSONObject2.getString(str3))) {
                                    this.mCount += Integer.parseInt(jSONObject2.getString(str3));
                                    adBean.setSeconds(Integer.parseInt(jSONObject2.getString(str3)));
                                }
                                String string = jSONObject2.getString("photo");
                                if (!StringUtils.isEmpty(string)) {
                                    adBean.setPhoto(getProxyPath(string));
                                    adBean.setAdstype(jSONObject2.getString("adstype"));
                                    adBean.setOpentype(jSONObject2.getInt("opentype"));
                                    adBean.setUrl(jSONObject2.getString("url"));
                                    adBean.set_id(jSONObject2.getLong("_id"));
                                    this.adBeans.add(adBean);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String getProxyPath(String str) {
        HttpProxyCacheServer httpProxyCacheServer = this.proxy;
        return httpProxyCacheServer != null ? httpProxyCacheServer.getProxyUrl(str) : str;
    }

    private void initRequest(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        String str7 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        if (this.request == null) {
            this.request = new HashMap();
        }
        this.request.clear();
        String str8 = "preview";
        if (getIntent().getExtras().getString(str8) != null) {
            this.request.put(str8, getIntent().getExtras().getString(str8));
        }
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str7);
        this.request.put("tvid", str);
        this.request.put("part_id", str2);
        this.request.put("circuit", str5);
        this.request.put("seo", str6);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Call IndexPlay = Api.getService().IndexPlay(this.request);
        final String str9 = str3;
        final String str10 = str2;
        final String str11 = str4;
        AnonymousClass20 r0 = new CommonCallBack(this, z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoPlayActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    AILog.d("播放接口返回参数", this.json);
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            VideoPlayActivity.this.mPlayinfo = StringUtils.toJsonObject(jsonObject2.optString("playinfo"));
                            JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("userInfo"));
                            JSONObject jsonObject4 = StringUtils.toJsonObject(jsonObject2.optString("info"));
                            JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("other_video"));
                            VideoPlayActivity.this.parseAds(StringUtils.toJsonObject(jsonObject2.optString("ad")));
                            try {
                                VideoPlayActivity.this.kafka_domain = jsonObject2.getString("kafka_domain");
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                            String str = "photo";
                            if (jsonObject4 != null) {
                                VideoPlayActivity.this.commentSumNum = jsonObject4.optString("comm_nums");
                                VideoPlayActivity.this.filmImgUrl = jsonObject4.optString(str);
                            }
                            VideoPlayActivity videoPlayActivity = VideoPlayActivity.this;
                            videoPlayActivity.initVideoDetail(videoPlayActivity.mTid);
                            String str2 = "url";
                            String str3 = "0";
                            if (VideoPlayActivity.this.mPlayinfo != null) {
                                VideoPlayActivity videoPlayActivity2 = VideoPlayActivity.this;
                                videoPlayActivity2.currentUrl = videoPlayActivity2.mPlayinfo.optString(str2);
                                VideoPlayActivity videoPlayActivity3 = VideoPlayActivity.this;
                                videoPlayActivity3.shareurl = videoPlayActivity3.mPlayinfo.optString("shareUrl");
                                VideoPlayActivity videoPlayActivity4 = VideoPlayActivity.this;
                                videoPlayActivity4.uniShareUrl = videoPlayActivity4.mPlayinfo.optString("uniShareUrl");
                                VideoPlayActivity videoPlayActivity5 = VideoPlayActivity.this;
                                videoPlayActivity5.history = videoPlayActivity5.mPlayinfo.optString("history");
                                if (!StringUtils.isEmpty(VideoPlayActivity.this.history) && StringUtils.toJsonObject(VideoPlayActivity.this.history) != null && !StringUtils.toJsonObject(VideoPlayActivity.this.history).optString("part").equals(str3) && VideoPlayActivity.this.scoreTV != null) {
                                    VideoPlayActivity.this.scoreTV.setEnabled(true);
                                }
                            }
                            int i = 0;
                            if (jsonObject3 != null) {
                                String str4 = "uid";
                                if (!StringUtils.isEmpty(jsonObject3.optString(str4))) {
                                    if (jsonObject3.optString(str4).equals(str3)) {
                                        VideoPlayActivity.this.login = false;
                                    } else {
                                        VideoPlayActivity.this.login = true;
                                    }
                                }
                            }
                            String str5 = "title";
                            if (jsonObject4 != null) {
                                VideoPlayActivity.this.userScore = jsonObject4.optString("user_score");
                                VideoPlayActivity.this.tvTitle = jsonObject4.optString(str5);
                                VideoPlayActivity.this.filmImgUrl = jsonObject4.optString(str);
                                if (!StringUtils.isEmpty(VideoPlayActivity.this.filmImgUrl)) {
                                    new Thread(new Runnable() {
                                        public void run() {
                                            VideoPlayActivity.this.shareFilmImgUrl = VideoPlayActivity.this.getImagePath(VideoPlayActivity.this.filmImgUrl);
                                        }
                                    }).start();
                                }
                                VideoPlayActivity.this.showInfoSort = jsonObject4.optString("show_partinfoSort");
                                if (!StringUtils.isEmpty(VideoPlayActivity.this.showInfoSort) && VideoPlayActivity.this.showInfoSort.equals(str3) && VideoPlayActivity.this.mVideoDetailFragment != null) {
                                    VideoPlayActivity.this.mVideoDetailFragment.setOrder(true);
                                }
                            }
                            if (VideoPlayActivity.this.mPlayinfo != null) {
                                VideoPlayActivity.must_shared = VideoPlayActivity.this.mPlayinfo.optString("must_shared");
                                if (!StringUtils.isEmpty(VideoPlayActivity.must_shared) && !VideoPlayActivity.must_shared.equals("-1")) {
                                    new Handler().postDelayed(new Runnable() {
                                        public void run() {
                                            if (VideoPlayActivity.this.mKTVideoPlayer != null) {
                                                VideoPlayActivity.this.mKTVideoPlayer.onVideoPause();
                                                VideoPlayActivity.this.mKTVideoPlayer.hideAllUI();
                                            }
                                        }
                                    }, 3000);
                                    JSONObject access$500 = VideoPlayActivity.this.mPlayinfo;
                                    String str6 = Event.SHARE;
                                    if (!StringUtils.isEmpty(access$500.optString(str6))) {
                                        JSONObject jsonObject5 = StringUtils.toJsonObject(VideoPlayActivity.this.mPlayinfo.optString(str6));
                                        if (jsonObject5 != null) {
                                            if (!StringUtils.isEmpty(jsonObject5.optString(str))) {
                                                GlideUtils.loadimage2(jsonObject5.optString(str), VideoPlayActivity.this.shareImg);
                                            }
                                            VideoPlayActivity.this.shareLettersId = jsonObject5.optString("letters_id");
                                        }
                                    }
                                    String str7 = "share_plan";
                                    if (!StringUtils.isEmpty(VideoPlayActivity.this.mPlayinfo.optString(str7))) {
                                        JSONObject jsonObject6 = StringUtils.toJsonObject(VideoPlayActivity.this.mPlayinfo.optString(str7));
                                        if (jsonObject6 != null) {
                                            if (!StringUtils.isEmpty(jsonObject6.optString(str5))) {
                                                VideoPlayActivity.this.sharePlanTitle = jsonObject6.optString(str5);
                                            }
                                            String str8 = SocialConstants.PARAM_APP_DESC;
                                            if (!StringUtils.isEmpty(jsonObject6.optString(str8))) {
                                                VideoPlayActivity.this.sharePlanDesc = jsonObject6.optString(str8);
                                            }
                                        }
                                    }
                                    VideoPlayActivity.this.shareUnlockLayout.setVisibility(0);
                                    VideoPlayActivity.this.shareUnlockLayout.setClickable(true);
                                }
                                VideoPlayActivity videoPlayActivity6 = VideoPlayActivity.this;
                                CommonViewModel.mastWxHao(videoPlayActivity6, 100, videoPlayActivity6.mPlayinfo);
                            }
                            if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                while (i < jsonArray.length()) {
                                    JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                    i++;
                                    VideoPlayActivity.this.mCircuitData.add(new String4Bean(jSONobject.optString(str2), jSONobject.optString("tvid"), String.valueOf(i), jSONobject.optString("circuit")));
                                }
                            }
                            if (VideoPlayActivity.this.mVideoDetailFragment != null) {
                                VideoPlayActivity.this.mVideoDetailFragment.initInfoView(jsonObject2, str9, str10, str11);
                            }
                            VideoPlayActivity.this.playVideoControl(str11);
                        }
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                VideoPlayActivity.this.showErrorPage();
            }
        };
        IndexPlay.enqueue(r0);
    }

    /* access modifiers changed from: private */
    public void showErrorPage() {
        this.videoDetailChildLayout.setVisibility(8);
        this.loadErrorLayout.setVisibility(0);
    }

    private void showNormalPage() {
        this.videoDetailChildLayout.setVisibility(0);
        this.loadErrorLayout.setVisibility(8);
    }

    /* access modifiers changed from: private */
    public void playVideoControl(String str) {
        if (!str.equals("2")) {
            this.history = this.mPlayinfo.optString("history");
            String str2 = "detailTitle";
            String str3 = "playlogo";
            String str4 = "url";
            if (StringUtils.isEmpty(this.history) || StringUtils.toJsonObject(this.history) == null) {
                initPlayVideo(this.mPlayinfo.optString(str4), this.mPlayinfo.optString(str3), this.mPlayinfo.optString(str2), false, false, "", "", "");
            } else {
                String optString = StringUtils.toJsonObject(this.history).optString("part");
                String str5 = "0";
                if (StringUtils.toJsonObject(this.history).optString(Descriptor.Device.SEC_PREFIX).equals(str5)) {
                    String str6 = "prologue";
                    boolean z = !this.mPlayinfo.optString(str6).equals(str5);
                    initPlayVideo(this.mPlayinfo.optString(str4), this.mPlayinfo.optString(str3), this.mPlayinfo.optString(str2), false, z, this.mPlayinfo.optString(str6), this.mPlayinfo.optString("epilogue"), "");
                } else if (!optString.isEmpty()) {
                    initPlayVideo(this.mPlayinfo.optString(str4), this.mPlayinfo.optString(str3), this.mPlayinfo.optString(str2), true, false, "", "", this.history);
                }
            }
        }
        this.isXianlu = true;
    }

    public void initPlayVideo(String str, String str2, String str3, boolean z, boolean z2, String str4, String str5, String str6) {
        PlayRecordBean playRecordBean = new PlayRecordBean();
        playRecordBean.isRecord = z;
        if (z) {
            JSONObject jsonObject = StringUtils.toJsonObject(str6);
            if (jsonObject != null) {
                playRecordBean.part = jsonObject.optString("part");
                playRecordBean.time = Integer.parseInt(jsonObject.optString(Descriptor.Device.SEC_PREFIX)) * 1000;
            } else {
                return;
            }
        }
        this.currentUrl = str;
        StringBuilder sb = new StringBuilder();
        sb.append("*** currentUrl: ");
        sb.append(this.currentUrl);
        AILog.d(TAG, sb.toString());
        String str7 = "https://www.youtube.com";
        if (str.contains(str7)) {
            initWebView();
            this.mWebView.loadUrl(str);
            return;
        }
        String str8 = "";
        String str9 = (String) PreferenceUtil.get(Utils.getContext(), "forced", str8);
        if (StringUtils.isEmpty(str9) || Utils.getPackageInfo(this).versionCode >= Integer.parseInt(str9)) {
            if (KanApplication.getInstance().isLimitIp() && !this.login) {
                this.mVideoPlayerRl.setVisibility(0);
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        if (VideoPlayActivity.this.mKTVideoPlayer != null) {
                            VideoPlayActivity.this.mKTVideoPlayer.onVideoPause();
                            VideoPlayActivity.this.mKTVideoPlayer.hideAllUI();
                        }
                    }
                }, 3000);
                this.loginRegUnlockLayout.setVisibility(0);
                this.loginRegUnlockLayout.setClickable(true);
                initLimitIpDialog("提示", "非常抱歉，目前只针对加拿大、澳大利亚和新西兰开放，其他地区无法观看。");
            }
            if (!str.contains(str7)) {
                this.mKTVideoPlayer.setVisibility(0);
                List<AdBean> list = this.adBeans;
                if (list == null || list.size() <= 0) {
                    this.mKTVideoPlayer.setRecord(playRecordBean, z2, str4, str5);
                    this.mKTVideoPlayer.play(str, str3);
                    this.mKTVideoPlayer.setPlayUrlAndTitle(str, str3);
                } else {
                    playRecordBean.isPrologue = z2;
                    playRecordBean.prologue = str4;
                    playRecordBean.epilogue = str5;
                    this.mKTVideoPlayer.setRecord(playRecordBean);
                    this.mKTVideoPlayer.setAds(this.adBeans, this.mCount);
                    this.mKTVideoPlayer.play(str, str3);
                    this.mKTVideoPlayer.setPlayUrlAndTitle(str, str3);
                    for (int i = 0; i < this.adBeans.size(); i++) {
                        AdBean adBean = (AdBean) this.adBeans.get(i);
                        try {
                            CommonViewModel.adsShow(adBean.get_id(), adBean.getTitle());
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                if (this.watchRecordTimer == null) {
                    initWatchRecordTimer();
                }
                Tracker defaultTracker = KanApplication.getDefaultTracker();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(UserPreference.ANALYZE_SCREEN26);
                if (str3 != null) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
                    sb3.append(str3);
                    str8 = sb3.toString();
                }
                sb2.append(str8);
                defaultTracker.setScreenName(sb2.toString());
                KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
                return;
            }
            return;
        }
        this.mVideoPlayerRl.setVisibility(0);
        this.mErrorText.setText("旧版本已无法播放，请升级至最新的版本，即可观看所有资源！");
        initVersionUpdate();
    }

    private void initWatchRecordTimer() {
        this.watchRecordTimer = new Timer();
        this.watchRecordTimer.schedule(new TimerTask() {
            public void run() {
                VideoPlayActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (!VideoPlayActivity.this.stopRecordTimer) {
                            VideoPlayActivity.this.pushVideoExitTime();
                            if (!(VideoPlayActivity.this.mKTVideoPlayer == null || VideoPlayActivity.this.mKTVideoPlayer.player == null || (VideoPlayActivity.this.mKTVideoPlayer.player.getPlay_delay_state() != 30 && VideoPlayActivity.this.mKTVideoPlayer.player.getPlay_delay_state() != 60))) {
                                VideoPlayActivity.this.mKTVideoPlayer.player.setCurrent_play_delay(VideoPlayActivity.this.mKTVideoPlayer.player.getCurrent_play_delay() + 1);
                                CommonViewModel.play_delay(false, VideoPlayActivity.this.mKTVideoPlayer, VideoPlayActivity.this);
                            }
                        }
                        VideoPlayActivity.this.getDanmuList();
                    }
                });
            }
        }, 2000, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
    }

    /* access modifiers changed from: private */
    public void getDanmuList() {
        KTVideoPlayer kTVideoPlayer = this.mKTVideoPlayer;
        if (kTVideoPlayer != null && kTVideoPlayer.getCurrentPlayer() != null) {
            VideoDetailFragment videoDetailFragment = this.mVideoDetailFragment;
            if (videoDetailFragment != null && videoDetailFragment.mPart != null) {
                int currentPositionWhenPlaying = this.mKTVideoPlayer.getCurrentPlayer().getCurrentPositionWhenPlaying() / 1000;
                int i = currentPositionWhenPlaying / 600;
                if (!this.mKTVideoPlayer.getDanmuData().getDamnPart().contains(Integer.valueOf(i))) {
                    String str = this.mTid;
                    String str2 = this.mVideoDetailFragment.mPart;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i);
                    sb.append("");
                    CommonViewModel.getDanmuList(str, str2, sb.toString(), (KTVideoPlayer) this.mKTVideoPlayer.getCurrentPlayer());
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("弹幕数据：");
                sb2.append(this.mTid);
                String str3 = " ";
                sb2.append(str3);
                VideoDetailFragment videoDetailFragment2 = this.mVideoDetailFragment;
                sb2.append(VideoDetailFragment.mPartId);
                sb2.append(str3);
                sb2.append(i);
                sb2.append(str3);
                sb2.append(currentPositionWhenPlaying);
                AILog.d(TAG, sb2.toString());
            }
        }
    }

    private void initWebView() {
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setPluginState(PluginState.ON);
        settings.setAllowFileAccess(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setCacheMode(2);
        settings.setCacheMode(-1);
        this.mWebView.setVisibility(0);
    }

    public void switchPlayVideo(String str, String str2, String str3, boolean z, boolean z2, String str4, String str5, String str6) {
        StringBuilder sb = new StringBuilder();
        sb.append("switchPlayVideo url:");
        sb.append(str);
        String sb2 = sb.toString();
        String str7 = TAG;
        AILog.d(str7, sb2);
        PlayRecordBean playRecordBean = new PlayRecordBean();
        playRecordBean.isRecord = z;
        if (z) {
            JSONObject jsonObject = StringUtils.toJsonObject(str6);
            if (jsonObject != null) {
                playRecordBean.part = jsonObject.optString("part");
                playRecordBean.time = Integer.parseInt(jsonObject.optString(Descriptor.Device.SEC_PREFIX)) * 1000;
            } else {
                return;
            }
        }
        this.currentUrl = str;
        String str8 = "";
        String str9 = (String) PreferenceUtil.get(Utils.getContext(), "forced", str8);
        if (StringUtils.isEmpty(str9) || Utils.getPackageInfo(this).versionCode >= Integer.parseInt(str9)) {
            if (KanApplication.getInstance().isLimitIp() && !this.login) {
                this.mVideoPlayerRl.setVisibility(0);
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        if (VideoPlayActivity.this.mKTVideoPlayer != null) {
                            VideoPlayActivity.this.mKTVideoPlayer.onVideoPause();
                            VideoPlayActivity.this.mKTVideoPlayer.hideAllUI();
                        }
                    }
                }, 3000);
                this.loginRegUnlockLayout.setVisibility(0);
                this.loginRegUnlockLayout.setClickable(true);
                initLimitIpDialog("提示", "非常抱歉，目前只针对加拿大、澳大利亚和新西兰开放，其他地区无法观看。");
            }
            if (str.contains("https://www.youtube.com")) {
                initWebView();
                this.mWebView.loadUrl(str);
                return;
            }
            KTVideoPlayer kTVideoPlayer = this.mKTVideoPlayer;
            if (kTVideoPlayer != null) {
                KTVideoPlayer kTVideoPlayer2 = (KTVideoPlayer) kTVideoPlayer.getCurrentPlayer();
                kTVideoPlayer2.setVisibility(0);
                kTVideoPlayer2.setPlayUrlAndTitle(str, str3);
                List<AdBean> list = this.adBeans;
                if (list == null || list.size() <= 0) {
                    kTVideoPlayer2.setRecord(playRecordBean, z2, str4, str5);
                    kTVideoPlayer2.setUp(str, true, str3);
                    kTVideoPlayer2.startPlayLogic();
                } else {
                    AILog.d(str7, "switchPlayVideo hadAd:");
                    playRecordBean.isPrologue = z2;
                    playRecordBean.prologue = str4;
                    playRecordBean.epilogue = str5;
                    kTVideoPlayer2.setRecord(playRecordBean);
                    kTVideoPlayer2.setSeekOnStart(0);
                    kTVideoPlayer2.setAds(this.adBeans, this.mCount);
                    kTVideoPlayer2.setUp(str, true, str3);
                    kTVideoPlayer2.startPlayLogic();
                }
                if (this.watchRecordTimer == null) {
                    initWatchRecordTimer();
                }
                this.history = str8;
                Tracker defaultTracker = KanApplication.getDefaultTracker();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(UserPreference.ANALYZE_SCREEN34);
                if (str3 != null) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
                    sb4.append(str3);
                    str8 = sb4.toString();
                }
                sb3.append(str8);
                defaultTracker.setScreenName(sb3.toString());
                KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
                return;
            }
            return;
        }
        this.mVideoPlayerRl.setVisibility(0);
        this.mErrorText.setText("旧版本已无法支持影视播放，请更新最新版本，看剧更轻松！");
        initVersionUpdate();
    }

    /* access modifiers changed from: private */
    public void initLineSwitchData(final int i) {
        this.request.clear();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str);
        this.request.put("tvid", this.mTid);
        if (this.mVideoDetailFragment != null) {
            Map map = this.request;
            VideoDetailFragment videoDetailFragment = this.mVideoDetailFragment;
            map.put("part_id", VideoDetailFragment.mPartId);
        }
        this.request.put("circuit", Integer.toString(i));
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().lineSwitch(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoPlayActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            VideoPlayActivity.this.switchPlayVideo(jsonObject2.optString("url"), "", VideoPlayActivity.this.mVideoDetailFragment != null ? VideoPlayActivity.this.mVideoDetailFragment.title : VideoPlayActivity.this.tvTitle, false, false, "", "", "");
                            PreferenceUtil.put(Utils.getContext(), UserPreference.LINE_NUM, Integer.valueOf(i));
                            StringBuilder sb = new StringBuilder();
                            sb.append("已切换线路");
                            sb.append(i);
                            ToastUtils.showShort((CharSequence) sb.toString());
                        }
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    private void initVersionUpdate() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        String str = "2";
        this.request.put("type", str);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(Utils.getPackageInfo(this).versionCode);
        sb.append("");
        map.put("up", sb.toString());
        String str2 = "canala";
        if (Utils.isGooglePlayVersion()) {
            this.request.put(str2, str);
        } else {
            this.request.put(str2, "1");
        }
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().version_up(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoPlayActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null && Utils.getPackageInfo(VideoPlayActivity.this).versionCode < Integer.parseInt(jsonObject2.optString("version"))) {
                            VideoPlayActivity.this.initAlertDialog("当前版本有更新", "更新后，观看体验更好！");
                        }
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    private void initVideoTopic() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        if (this.b != null) {
            this.request.put("id", this.b.getString("tid"));
        }
        this.request.put("_token", str);
        this.request.put("preview", "2");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        AILog.d("传参", this.request.toString());
        Api.getService().topic(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoPlayActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    AILog.d("专题播放接口", this.json);
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            try {
                                VideoPlayActivity.this.kafka_domain = jsonObject2.getString("kafka_domain");
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                            VideoPlayActivity videoPlayActivity = VideoPlayActivity.this;
                            videoPlayActivity.initVideoDetail(videoPlayActivity.mTid);
                            if (VideoPlayActivity.this.mVideoDetailFragment != null) {
                                String str = "";
                                VideoPlayActivity.this.mVideoDetailFragment.initInfoView(jsonObject2, str, str, "0");
                            }
                        }
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    /* access modifiers changed from: private */
    public void initVideoDetail(String str) {
        if (this.mFragmentData.size() != 0) {
            this.mFragmentData.clear();
        }
        if (this.mVideoCommentFragment == null) {
            this.mVideoCommentFragment = new VideoCommentFragment();
        }
        Bundle bundle = new Bundle();
        bundle.putString("tid", str);
        this.mVideoCommentFragment.setArguments(bundle);
        if (this.mVideoDetailFragment == null) {
            this.mVideoDetailFragment = new VideoDetailFragment();
        }
        this.mFragmentData.add(this.mVideoDetailFragment);
        this.mFragmentData.add(this.mVideoCommentFragment);
        this.fragmentPagerAdapter = new FragmentPagerAdapter(getSupportFragmentManager()) {
            private final String[] titles = {"详情", "评论"};

            public int getCount() {
                if (VideoPlayActivity.this.mFragmentData != null) {
                    return VideoPlayActivity.this.mFragmentData.size();
                }
                return 0;
            }

            public Fragment getItem(int i) {
                if (VideoPlayActivity.this.mFragmentData != null) {
                    return (Fragment) VideoPlayActivity.this.mFragmentData.get(i);
                }
                return null;
            }

            public CharSequence getPageTitle(int i) {
                return this.titles[i];
            }
        };
        this.mViewPager.setAdapter(this.fragmentPagerAdapter);
        this.mTabLayout.setViewPager(this.mViewPager);
        this.mTabLayout.setIndicatorMode(IndicatorMode.MODE_WEIGHT_NOEXPAND_SAME);
        this.mTabLayout.setDividerColor(Color.parseColor("#00000000"));
        this.mTabLayout.setDividerPadding(DisplayUtil.dipToPix(Utils.getContext(), 10));
        this.mTabLayout.setIndicatorColor(getResources().getColor(R.color.tab_top_bg));
        this.mTabLayout.setTextColorSelected(getResources().getColor(R.color.cursor_color));
        this.mTabLayout.setTextColor(getResources().getColor(R.color.cursor_color));
        this.mTabLayout.setTextSize(DisplayUtil.spToPix(Utils.getContext(), 16.0f));
        QBadgeView qBadgeView = new QBadgeView(this);
        qBadgeView.bindTarget(this.mTabLayout);
        qBadgeView.setExactMode(true);
        if (!StringUtils.isEmpty(this.commentSumNum) && !this.commentSumNum.equals("0") && StringUtils.isNum(this.commentSumNum)) {
            qBadgeView.setBadgeNumber(Integer.parseInt(this.commentSumNum));
        }
        qBadgeView.setGravityOffset(50.0f, 0.0f, true);
        qBadgeView.setBadgeBackgroundColor(getResources().getColor(R.color.item_filter_color));
    }

    public void onConfigurationChanged(Configuration configuration) {
        StringBuilder sb = new StringBuilder();
        sb.append("onConfigurationChanged:");
        sb.append(configuration.orientation);
        String str = " ";
        sb.append(str);
        sb.append(this.isPlay);
        sb.append(str);
        sb.append(!this.isPause);
        AILog.d(TAG, sb.toString());
        super.onConfigurationChanged(configuration);
        if (this.isPlay && !this.isPause) {
            this.mKTVideoPlayer.getCurrentPlayer();
            if (this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen() && configuration.orientation == 1) {
                this.mKTVideoPlayer.onBackFullscreen();
            }
            BottomView bottomView = this.fullShareBottomView;
            String str2 = "-1";
            if (bottomView != null) {
                try {
                    bottomView.dismissBottomView();
                    this.fullShareBottomView = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (!StringUtils.isEmpty(must_shared) && !must_shared.equals(str2)) {
                    new Handler().postDelayed(new Runnable() {
                        public void run() {
                            if (VideoPlayActivity.this.mKTVideoPlayer != null) {
                                VideoPlayActivity.this.mKTVideoPlayer.onVideoPause();
                                VideoPlayActivity.this.mKTVideoPlayer.hideAllUI();
                            }
                        }
                    }, 3000);
                    return;
                }
                return;
            }
            if (this.mPlayinfo != null && !StringUtils.isEmpty(must_shared) && !must_shared.equals(str2)) {
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        if (VideoPlayActivity.this.mKTVideoPlayer != null) {
                            VideoPlayActivity.this.mKTVideoPlayer.onVideoPause();
                            VideoPlayActivity.this.mKTVideoPlayer.hideAllUI();
                        }
                    }
                }, 3000);
                this.shareUnlockLayout.setVisibility(0);
                this.shareUnlockLayout.setClickable(true);
                this.fullShareBottomView = new BottomView((Context) this, (int) R.style.BottomViewTheme_Defalut, (int) R.layout.video_full_share);
                this.fullShareBottomView.setAnimation(R.style.BottomToTopAnim);
                this.fullShareBottomView.showBottomView(true);
                ImageView imageView = (ImageView) this.fullShareBottomView.getView().findViewById(R.id.full_shareDelImg);
                ImageView imageView2 = (ImageView) this.fullShareBottomView.getView().findViewById(R.id.full_shareImg);
                JSONObject jsonObject = StringUtils.toJsonObject(this.mPlayinfo.optString(Event.SHARE));
                if (jsonObject != null) {
                    String str3 = "photo";
                    if (!StringUtils.isEmpty(jsonObject.optString(str3))) {
                        GlideUtils.loadimage2(jsonObject.optString(str3), imageView2);
                    }
                }
                imageView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        VideoPlayActivity.this.finish();
                    }
                });
                imageView2.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        VideoPlayActivity.this.clickShareImg();
                    }
                });
            }
            this.mKTVideoPlayer.onConfigurationChanged(this, configuration, this.orientationUtils, true, true);
        }
    }

    @OnClick({2131296358, 2131297063, 2131296452, 2131297042, 2131296889, 2131297120, 2131297193, 2131296866, 2131297194, 2131296871, 2131296872, 2131296575, 2131296395})
    public void onClick(View view) {
        int id = view.getId();
        String str = "";
        String str2 = "url";
        String str3 = "screening";
        String str4 = TAG;
        switch (id) {
            case R.id.airplay_img /*2131296358*/:
                CommonViewModel.tongJiOperate(str3, this.mTid);
                for (int i = 0; i < mDevicesAdapter.getCount(); i++) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("mDevicesAdapter  bbbb");
                    sb.append(((ClingDevice) mDevicesAdapter.getItem(i)).isSelected());
                    sb.append(str);
                    AILog.e(str4, sb.toString());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("mDevicesAdapter");
                    sb2.append(((ClingDevice) mDevicesAdapter.getItem(i)).getDevice().getDetails().getFriendlyName());
                    AILog.e(str4, sb2.toString());
                }
                Bundle bundle = new Bundle();
                bundle.putString(str2, this.currentUrl);
                Intent intent = new Intent(this, TpActivity.class);
                intent.putExtras(bundle);
                startActivityForResult(intent, 1005);
                return;
            case R.id.bind_email_button /*2131296395*/:
                this.bindEmailContent.setVisibility(8);
                gotoActivity(BindEmailActivity.class);
                return;
            case R.id.change /*2131296452*/:
                CommonViewModel.tongJiOperate(str3, this.mTid);
                Bundle bundle2 = new Bundle();
                bundle2.putString(str2, this.currentUrl);
                Intent intent2 = new Intent(this, TpActivity.class);
                intent2.putExtras(bundle2);
                startActivityForResult(intent2, 1005);
                return;
            case R.id.feedback /*2131296575*/:
                Bundle bundle3 = new Bundle();
                bundle3.putString("tvid", this.mTid);
                if (this.mVideoDetailFragment != null) {
                    bundle3.putString("part_id", VideoDetailFragment.mPartId);
                }
                gotoActivity(bundle3, FeedBackActivity.class);
                return;
            case R.id.loaderror_layout /*2131296866*/:
                showNormalPage();
                initView();
                return;
            case R.id.loginRegBack /*2131296871*/:
                finish();
                return;
            case R.id.loginRegImg /*2131296872*/:
                gotoActivity(AccountLoginActivity.class);
                finish();
                return;
            case R.id.me_comment /*2131296889*/:
                AILog.d(str4, "R.id.me_comment");
                if (!this.login) {
                    initAlertDialog("提示", "您当前还未登录，是否前往登录？", 1);
                    return;
                } else if (!GpsUtil.isOpen() && CommonViewModel.isMustOpenGps()) {
                    GpsUtil.requestGps(this);
                    return;
                } else if (checkPersonalInfo()) {
                    commentDialog();
                    return;
                } else {
                    return;
                }
            case R.id.pausetv /*2131297042*/:
                int currentState = this.mClingPlayControl.getCurrentState();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("暂停点击");
                sb3.append(currentState);
                AILog.d(str4, sb3.toString());
                if (this.pauseTv.getText().equals("暂停")) {
                    pause();
                    if (this.mService != null) {
                        MediaLauncherSingleton.getInstance(Utils.getContext()).pause();
                        return;
                    }
                    return;
                }
                restartPlay();
                if (this.mService != null) {
                    MediaLauncherSingleton.getInstance(Utils.getContext()).play();
                    return;
                }
                return;
            case R.id.quit /*2131297063*/:
                if (this.isnotshow) {
                    finish();
                    TestEvent testEvent = new TestEvent();
                    testEvent.message = ConfigBuilder.DEFAULT_DART_ENTRYPOINT;
                    testEvent.tag = 3;
                    stop();
                    EventBus.getDefault().post(testEvent);
                    return;
                }
                this.tpView.setVisibility(8);
                this.mKTVideoPlayer.changeToNormalUI();
                this.stateTv.setText(str);
                stop();
                this.isnotshow = false;
                this.mKTVideoPlayer.getCurrentPlayer().onVideoResume();
                return;
            case R.id.score /*2131297120*/:
                Bundle bundle4 = new Bundle();
                bundle4.putString("title", this.tvTitle);
                bundle4.putString("tid", this.mTid);
                if (!StringUtils.isEmpty(this.userScore)) {
                    bundle4.putString(Param.SCORE, this.userScore);
                }
                if (!StringUtils.isEmpty(this.filmImgUrl)) {
                    bundle4.putString("film", this.filmImgUrl);
                }
                gotoActivity(bundle4, VideoScoreActivity.class);
                return;
            case R.id.shareDelImg /*2131297193*/:
                finish();
                return;
            case R.id.shareImg /*2131297194*/:
                clickShareImg();
                return;
            default:
                return;
        }
    }

    public boolean checkPersonalInfo() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "name", "");
        if (StringUtils.isEmpty(str) || !str.contains(getString(R.string.default_nick_head))) {
            return true;
        }
        updatePersonInfoDialog("修改资料提示", "为了让大家更好的记住你，\n丰富你的个人资料吧！");
        return false;
    }

    public void commentDialog() {
        final BottomView bottomView = new BottomView((Context) this, (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_commentedit);
        final EditText editText = (EditText) bottomView.getView().findViewById(R.id.comment_edit);
        ((TextView) bottomView.getView().findViewById(R.id.comment_submit)).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                String trim = editText.getText().toString().trim();
                String str = "";
                String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
                if (StringUtils.isEmpty(trim)) {
                    ToastUtils.showShort((CharSequence) "请输入评论内容");
                    return;
                }
                if (VideoPlayActivity.this.mVideoDetailFragment != null) {
                    VideoPlayActivity.this.mVideoDetailFragment.addFirstContent(trim);
                }
                if (VideoPlayActivity.this.mVideoCommentFragment != null) {
                    VideoPlayActivity.this.mVideoCommentFragment.addFirstContent(trim);
                }
                editText.setText(str);
                InputMethodManager inputMethodManager = (InputMethodManager) VideoPlayActivity.this.getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(VideoPlayActivity.this.getWindow().getDecorView().getWindowToken(), 0);
                }
                bottomView.dismissBottomView();
                VideoPlayActivity.this.request.clear();
                VideoPlayActivity.this.request.put("noncestr", SignConfig.noncestr);
                VideoPlayActivity.this.request.put("timestamp", SignConfig.timestamp);
                VideoPlayActivity.this.request.put("sbID", SignConfig.sbID);
                VideoPlayActivity.this.request.put("sign", SignConfig.sign);
                VideoPlayActivity.this.request.put("_token", str2);
                VideoPlayActivity.this.request.put("tvid", VideoPlayActivity.this.getIntent().getExtras().getString("tid"));
                String str3 = "0";
                VideoPlayActivity.this.request.put("type", str3);
                VideoPlayActivity.this.request.put("content", trim);
                VideoPlayActivity.this.request.put("devicetype", str3);
                VideoPlayActivity.this.request.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().doComment(VideoPlayActivity.this.request).enqueue(new CommonCallBack(VideoPlayActivity.this, false) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!VideoPlayActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                jsonObject.optString("status").equals(StatusCode.STATUS_OK);
                            }
                        }
                    }

                    public void onFailure(Call<ResponseBody> call, Throwable th) {
                        super.onFailure(call, th);
                    }
                });
            }
        });
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
        new Timer().schedule(new TimerTask() {
            public void run() {
                VideoPlayActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (editText != null) {
                            editText.setFocusable(true);
                            editText.setFocusableInTouchMode(true);
                            editText.requestFocus();
                            ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
                        }
                    }
                });
            }
        }, 200);
    }

    public void replyCommentDialog(String str, String str2, String str3, int i) {
        BottomView bottomView = new BottomView((Context) this, (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_commentedit);
        TextView textView = (TextView) bottomView.getView().findViewById(R.id.comment_submit);
        final EditText editText = (EditText) bottomView.getView().findViewById(R.id.comment_edit);
        StringBuilder sb = new StringBuilder();
        sb.append("回复 ");
        final String str4 = str3;
        sb.append(str4);
        sb.append(": ");
        editText.setHint(sb.toString());
        final EditText editText2 = editText;
        final int i2 = i;
        final BottomView bottomView2 = bottomView;
        final String str5 = str;
        final String str6 = str2;
        AnonymousClass34 r0 = new OnClickListener() {
            public void onClick(View view) {
                String trim = editText2.getText().toString().trim();
                String str = "";
                String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
                if (StringUtils.isEmpty(trim)) {
                    ToastUtils.showShort((CharSequence) "请输入评论内容");
                    return;
                }
                if (VideoPlayActivity.this.mVideoDetailFragment != null) {
                    VideoPlayActivity.this.mVideoDetailFragment.insetComment(trim, str4, i2);
                }
                if (VideoPlayActivity.this.mVideoCommentFragment != null) {
                    VideoPlayActivity.this.mVideoCommentFragment.insetComment(trim, str4, i2);
                }
                InputMethodManager inputMethodManager = (InputMethodManager) VideoPlayActivity.this.getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(VideoPlayActivity.this.getWindow().getDecorView().getWindowToken(), 0);
                }
                BottomView bottomView = bottomView2;
                if (bottomView != null) {
                    bottomView.dismissBottomView();
                }
                editText2.setText(str);
                VideoPlayActivity.this.request.clear();
                VideoPlayActivity.this.request.put("noncestr", SignConfig.noncestr);
                VideoPlayActivity.this.request.put("timestamp", SignConfig.timestamp);
                VideoPlayActivity.this.request.put("sbID", SignConfig.sbID);
                VideoPlayActivity.this.request.put("sign", SignConfig.sign);
                VideoPlayActivity.this.request.put("_token", str2);
                String str3 = str5;
                if (str3 != null && !str3.isEmpty()) {
                    VideoPlayActivity.this.request.put("pid", str5);
                    VideoPlayActivity.this.request.put("cid", str5);
                }
                VideoPlayActivity.this.request.put("tvid", str6);
                String str4 = "0";
                VideoPlayActivity.this.request.put("type", str4);
                VideoPlayActivity.this.request.put("content", trim);
                VideoPlayActivity.this.request.put("devicetype", str4);
                VideoPlayActivity.this.request.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().replySubmit(VideoPlayActivity.this.request).enqueue(new CommonCallBack(VideoPlayActivity.this, false) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!VideoPlayActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                jsonObject.optString("status").equals(StatusCode.STATUS_OK);
                            }
                        }
                    }

                    public void onFailure(Call<ResponseBody> call, Throwable th) {
                        super.onFailure(call, th);
                    }
                });
            }
        };
        textView.setOnClickListener(r0);
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
        final Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            public void run() {
                VideoPlayActivity.this.runOnUiThread(new Runnable() {
                    public void run() {
                        if (editText != null) {
                            editText.setFocusable(true);
                            editText.setFocusableInTouchMode(true);
                            editText.requestFocus();
                            ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
                        }
                        if (timer != null) {
                            timer.cancel();
                        }
                    }
                });
            }
        }, 200);
    }

    private void initAlertDialog(String str, String str2, final int i) {
        new AlertDialog(this).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton("确定", new OnClickListener() {
            public void onClick(View view) {
                if (i == 1) {
                    VideoPlayActivity.this.gotoActivity(AccountLoginActivity.class);
                    VideoPlayActivity.this.finish();
                }
            }
        }).show();
    }

    private void updatePersonInfoDialog(String str, String str2) {
        new AlertDialog(this).builder().setTitle(str).setMsg(str2).setCancelable(false).setPositiveButton("立即修改", new OnClickListener() {
            public void onClick(View view) {
                VideoPlayActivity.this.gotoActivity(MyInfoActivity.class);
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void initAlertDialog(String str, String str2) {
        String str3 = "去更新";
        new AlertDialog((Context) new WeakReference(this).get()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                VideoPlayActivity.this.gotoActivity(VersionupActivity.class);
            }
        }).show();
    }

    private void setTpProgress() {
        int currentPositionWhenPlaying = this.mKTVideoPlayer.getCurrentPositionWhenPlaying();
        int duration = this.mKTVideoPlayer.getDuration();
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
        if (this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen()) {
            this.mKTVideoPlayer.player.progressBarSb.setMax(i);
            this.mKTVideoPlayer.player.progressBarSb.setOnSeekBarChangeListener(this);
            this.mKTVideoPlayer.player.totalTimeTv.setText(stringForTime2);
            this.mKTVideoPlayer.player.currentTimeTv.setText(stringForTime);
            return;
        }
        this.progressBarSb.setMax(i);
        this.progressBarSb.setOnSeekBarChangeListener(this);
        this.totalTimeTv.setText(stringForTime2);
        this.currentTimeTv.setText(stringForTime);
    }

    public void play() {
        StringBuilder sb = new StringBuilder();
        sb.append("play url");
        sb.append(this.currentUrl);
        String sb2 = sb.toString();
        String str = TAG;
        AILog.d(str, sb2);
        int currentState = this.mClingPlayControl.getCurrentState();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("1currentState");
        sb3.append(currentState);
        AILog.d(str, sb3.toString());
        this.mClingPlayControl.playNew(this.currentUrl, new ControlCallback() {
            public void success(IResponse iResponse) {
                String str = VideoPlayActivity.TAG;
                AILog.d(str, "play success");
                TestEvent testEvent = new TestEvent();
                testEvent.message = ConfigBuilder.DEFAULT_DART_ENTRYPOINT;
                testEvent.tag = 4;
                EventBus.getDefault().post(testEvent);
                VideoPlayActivity.this.mHandler.sendEmptyMessage(167);
                ClingManager.getInstance().registerAVTransport(VideoPlayActivity.this.mContext);
                ClingManager.getInstance().registerRenderingControl(VideoPlayActivity.this.mContext);
                boolean isIfCurrentIsFullscreen = VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen();
                StringBuilder sb = new StringBuilder();
                sb.append("full");
                sb.append(isIfCurrentIsFullscreen);
                AILog.d(str, sb.toString());
                String str2 = "暂停";
                String str3 = "投放成功";
                if (isIfCurrentIsFullscreen) {
                    VideoPlayActivity.this.mKTVideoPlayer.setTpStateText(str3);
                    VideoPlayActivity.this.mKTVideoPlayer.player.pauseTv.setText(str2);
                    return;
                }
                VideoPlayActivity.this.stateTv.setText(str3);
                VideoPlayActivity.this.pauseTv.setText(str2);
                VideoPlayActivity.this.startIv.setImageDrawable(VideoPlayActivity.this.getResources().getDrawable(R.drawable.video_click_play_selector1));
            }

            public void fail(IResponse iResponse) {
                String str = VideoPlayActivity.TAG;
                AILog.d(str, "play fail");
                VideoPlayActivity.this.mHandler.sendEmptyMessage(165);
                boolean isIfCurrentIsFullscreen = VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen();
                StringBuilder sb = new StringBuilder();
                sb.append("full");
                sb.append(isIfCurrentIsFullscreen);
                AILog.d(str, sb.toString());
                String str2 = "播放";
                String str3 = "投放失败";
                if (isIfCurrentIsFullscreen) {
                    VideoPlayActivity.this.mKTVideoPlayer.setTpStateText(str3);
                    VideoPlayActivity.this.mKTVideoPlayer.player.pauseTv.setText(str2);
                    return;
                }
                VideoPlayActivity.this.stateTv.setText(str3);
                VideoPlayActivity.this.pauseTv.setText(str2);
                VideoPlayActivity.this.startIv.setImageDrawable(VideoPlayActivity.this.getResources().getDrawable(R.drawable.video_click_pause_selector1));
            }
        });
    }

    private void pause() {
        AILog.d(TAG, "运行pause");
        this.mClingPlayControl.pause(new ControlCallback() {
            public void success(IResponse iResponse) {
                boolean isIfCurrentIsFullscreen = VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen();
                StringBuilder sb = new StringBuilder();
                sb.append("wwpause success");
                sb.append(isIfCurrentIsFullscreen);
                AILog.d(VideoPlayActivity.TAG, sb.toString());
                String str = "播放";
                if (isIfCurrentIsFullscreen) {
                    VideoPlayActivity.this.mKTVideoPlayer.player.pauseTv.setText(str);
                    return;
                }
                VideoPlayActivity.this.pauseTv.setText(str);
                VideoPlayActivity.this.startIv.setImageDrawable(VideoPlayActivity.this.getResources().getDrawable(R.drawable.ic_action_dock));
            }

            public void fail(IResponse iResponse) {
                AILog.d(VideoPlayActivity.TAG, "pause fail");
                String str = "暂停";
                if (VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen()) {
                    VideoPlayActivity.this.mKTVideoPlayer.player.pauseTv.setText(str);
                    return;
                }
                VideoPlayActivity.this.pauseTv.setText(str);
                VideoPlayActivity.this.startIv.setImageDrawable(VideoPlayActivity.this.getResources().getDrawable(R.drawable.video_click_play_selector1));
            }
        });
    }

    private void stop() {
        this.mClingPlayControl.stop(new ControlCallback() {
            public void success(IResponse iResponse) {
                AILog.d(VideoPlayActivity.TAG, "stop success");
            }

            public void fail(IResponse iResponse) {
                AILog.d(VideoPlayActivity.TAG, "stop fail");
            }
        });
        TestEvent testEvent = new TestEvent();
        testEvent.message = ConfigBuilder.DEFAULT_DART_ENTRYPOINT;
        testEvent.tag = 3;
        EventBus.getDefault().post(testEvent);
    }

    public void restartPlay() {
        this.mClingPlayControl.play(new ControlCallback() {
            public void success(IResponse iResponse) {
                AILog.d(VideoPlayActivity.TAG, "play success");
                String str = "暂停";
                if (VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen()) {
                    VideoPlayActivity.this.mKTVideoPlayer.player.pauseTv.setText(str);
                    return;
                }
                VideoPlayActivity.this.pauseTv.setText(str);
                VideoPlayActivity.this.startIv.setImageDrawable(VideoPlayActivity.this.getResources().getDrawable(R.drawable.video_click_play_selector1));
            }

            public void fail(IResponse iResponse) {
                String str = VideoPlayActivity.TAG;
                AILog.d(str, "play fail");
                VideoPlayActivity.this.mHandler.sendEmptyMessage(165);
                boolean isIfCurrentIsFullscreen = VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen();
                StringBuilder sb = new StringBuilder();
                sb.append("full");
                sb.append(isIfCurrentIsFullscreen);
                AILog.d(str, sb.toString());
                String str2 = "投放失败";
                String str3 = "播放";
                if (isIfCurrentIsFullscreen) {
                    VideoPlayActivity.this.mKTVideoPlayer.setTpStateText(str2);
                    VideoPlayActivity.this.mKTVideoPlayer.player.pauseTv.setText(str3);
                    return;
                }
                VideoPlayActivity.this.pauseTv.setText(str3);
                VideoPlayActivity.this.stateTv.setText(str2);
                VideoPlayActivity.this.startIv.setImageDrawable(VideoPlayActivity.this.getResources().getDrawable(R.drawable.video_click_pause_selector1));
            }
        });
    }

    /* access modifiers changed from: private */
    public void pushVideoExitTime() {
        String str;
        String str2 = "/";
        String str3 = "";
        try {
            if (!(this.mKTVideoPlayer == null || this.mKTVideoPlayer.getCurrentPlayer() == null)) {
                int currentPositionWhenPlaying = this.mKTVideoPlayer.getCurrentPlayer().getCurrentPositionWhenPlaying();
                if (currentPositionWhenPlaying > 8000) {
                    str = String.valueOf((currentPositionWhenPlaying / 1000) - 8);
                } else {
                    str = String.valueOf(currentPositionWhenPlaying / 1000);
                }
                String str4 = str;
                String str5 = (String) PreferenceUtil.get(Utils.getContext(), "token", str3);
                int duration = this.mKTVideoPlayer.getCurrentPlayer().getDuration();
                String str6 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("播放总时间长度: ");
                sb.append(duration);
                AILog.d(str6, sb.toString());
                if (this.mSeo != null && !this.mSeo.equals("zhuanti") && !this.mSeo.equals("sports") && !this.mSeo.equals("live") && !this.mSeo.equals("sportvs")) {
                    String valueOf = String.valueOf(Utils.getPackageInfo(this).versionCode);
                    if (!StringUtils.isEmpty(this.kafka_domain) && this.kafka_domain.contains("http")) {
                        if (!this.kafka_domain.endsWith(str2)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(this.kafka_domain);
                            sb2.append(str2);
                            this.kafka_domain = sb2.toString();
                        }
                        String str7 = this.mTid;
                        String str8 = this.mSeo;
                        VideoDetailFragment videoDetailFragment = this.mVideoDetailFragment;
                        String str9 = VideoDetailFragment.mPartId;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(duration / 1000);
                        sb3.append(str3);
                        HttpRequest.MemoryPlayTime(str4, str7, str8, str9, str5, sb3.toString(), valueOf, this.kafka_domain);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.stopRecordTimer = true;
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.releaseListener();
            this.orientationUtils = null;
        }
        KTVideoPlayer kTVideoPlayer = this.mKTVideoPlayer;
        if (kTVideoPlayer != null) {
            kTVideoPlayer.getCurrentPlayer().release();
            this.mKTVideoPlayer.release();
            this.mKTVideoPlayer = null;
        }
        if (this.fragmentPagerAdapter != null) {
            this.fragmentPagerAdapter = null;
        }
        if (this.mVideoDetailFragment != null) {
            this.mVideoDetailFragment = null;
        }
        if (this.mVideoCommentFragment != null) {
            this.mVideoCommentFragment = null;
        }
        List<Fragment> list = this.mFragmentData;
        if (list != null) {
            list.clear();
            this.mFragmentData = null;
        }
        unbindService(this.mUpnpServiceConnection);
        unregisterReceiver(this.mTransportStateBroadcastReceiver);
        ClingManager.getInstance().destroy();
        ClingDeviceList.getInstance().destroy();
        Timer timer = this.netSpeedTimer;
        if (timer != null) {
            synchronized (timer) {
                this.netSpeedTimer.cancel();
                this.netSpeedTimer.purge();
                this.netSpeedTimer = null;
            }
        }
        Timer timer2 = this.stateSpeedTimer;
        if (timer2 != null) {
            timer2.cancel();
            this.stateSpeedTimer = null;
        }
        Timer timer3 = this.watchRecordTimer;
        if (timer3 != null) {
            timer3.cancel();
            this.watchRecordTimer = null;
        }
        if (this.mService != null) {
            this.mService = null;
        }
        Search search = this.mSearch;
        if (search != null) {
            search.stop();
            this.mSearch = null;
            AILog.v(TAG, "Stopping Discovery.");
        }
        MediaLauncherSingleton.getInstance(Utils.getContext()).disconnect();
        CastStateMachineSingleton.getInstance().setCurrentCastState(CastStates.IDLE);
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        int progress = seekBar.getProgress() * 1000;
        String stringForTime = CommonUtil.stringForTime(progress);
        if (this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen()) {
            this.mKTVideoPlayer.player.currentTimeTv.setText(stringForTime);
        } else {
            this.currentTimeTv.setText(stringForTime);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("currentProgress");
        sb.append(progress);
        AILog.d(TAG, sb.toString());
        this.mClingPlayControl.seek(progress, new ControlCallback() {
            public void success(IResponse iResponse) {
                AILog.d(VideoPlayActivity.TAG, "currentProgress seek success");
            }

            public void fail(IResponse iResponse) {
                AILog.d(VideoPlayActivity.TAG, "currentProgress seek fail");
            }
        });
    }

    public void setingProgress() {
        Timer timer = this.netSpeedTimer;
        if (timer != null) {
            synchronized (timer) {
                this.netSpeedTimer.schedule(new TimerTask() {
                    public void run() {
                        VideoPlayActivity.this.getPositionInfo();
                    }
                }, 0, 1000);
            }
        }
    }

    public void getPositionInfo() {
        this.mClingPlayControl.getPositionInfo(new ControlReceiveCallback() {
            public void fail(IResponse iResponse) {
            }

            public void success(IResponse iResponse) {
            }

            public void receive(IResponse iResponse) {
                VideoPlayActivity.this.currentProgressDetail = iResponse.getResponse().toString();
                String str = "RelTime:";
                if (VideoPlayActivity.this.currentProgressDetail.contains(str)) {
                    String[] split = VideoPlayActivity.this.currentProgressDetail.split(str);
                    StringBuilder sb = new StringBuilder();
                    sb.append("getPositionInfo reltime");
                    sb.append(split[1]);
                    String sb2 = sb.toString();
                    String str2 = VideoPlayActivity.TAG;
                    AILog.d(str2, sb2);
                    if (split.length >= 1) {
                        String str3 = "Duration:";
                        if (split[1].contains(str3)) {
                            String[] split2 = split[1].split(str3);
                            if (split2 != null) {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("getPositionInfo duration[0]");
                                sb3.append(split2[0]);
                                AILog.d(str2, sb3.toString());
                                String str4 = ":";
                                if (split2[0].contains(str4)) {
                                    String[] split3 = split2[0].split(str4);
                                    if (split3 != null) {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("getPositionInfo dmaohao");
                                        sb4.append(split3.toString());
                                        AILog.d(str2, sb4.toString());
                                        final int i = 0;
                                        for (int i2 = 0; i2 < split3.length; i2++) {
                                            if (i2 == 0) {
                                                int parseInt = Integer.parseInt(split3[0].trim()) * 60 * 60;
                                                StringBuilder sb5 = new StringBuilder();
                                                sb5.append("getPositionInfo mll");
                                                sb5.append(parseInt);
                                                AILog.d(str2, sb5.toString());
                                                i += parseInt;
                                            } else {
                                                String str5 = "getPositionInfo myy";
                                                if (i2 == 1) {
                                                    int parseInt2 = Integer.parseInt(split3[1].trim()) * 60;
                                                    i += parseInt2;
                                                    StringBuilder sb6 = new StringBuilder();
                                                    sb6.append(str5);
                                                    sb6.append(parseInt2);
                                                    AILog.d(str2, sb6.toString());
                                                } else if (i2 == 2) {
                                                    int parseInt3 = Integer.parseInt(split3[2].trim());
                                                    i += parseInt3;
                                                    StringBuilder sb7 = new StringBuilder();
                                                    sb7.append(str5);
                                                    sb7.append(parseInt3);
                                                    AILog.d(str2, sb7.toString());
                                                }
                                            }
                                        }
                                        StringBuilder sb8 = new StringBuilder();
                                        sb8.append("getPositionInfo curettime");
                                        sb8.append(i);
                                        AILog.d(str2, sb8.toString());
                                        final String stringForTime = CommonUtil.stringForTime(i * 1000);
                                        StringBuilder sb9 = new StringBuilder();
                                        sb9.append("stTime =  ");
                                        sb9.append(stringForTime);
                                        AILog.d(str2, sb9.toString());
                                        if (stringForTime != null) {
                                            boolean isIfCurrentIsFullscreen = VideoPlayActivity.this.mKTVideoPlayer.getCurrentPlayer().isIfCurrentIsFullscreen();
                                            StringBuilder sb10 = new StringBuilder();
                                            sb10.append("stTimefull =  ");
                                            sb10.append(isIfCurrentIsFullscreen);
                                            AILog.d(str2, sb10.toString());
                                            if (isIfCurrentIsFullscreen) {
                                                VideoPlayActivity.this.mKTVideoPlayer.player.progressBarSb.setProgress(i);
                                                VideoPlayActivity.this.mKTVideoPlayer.player.currentTimeTv.setText(stringForTime);
                                                if (i == VideoPlayActivity.this.progressBarSb.getMax() && VideoPlayActivity.this.mKTVideoPlayer.player.stateTv.getText().equals("正在投屏中")) {
                                                    VideoPlayActivity.this.mKTVideoPlayer.player.stateTv.setText("播放结束");
                                                    return;
                                                }
                                                return;
                                            }
                                            VideoPlayActivity.this.runOnUiThread(new Runnable() {
                                                public void run() {
                                                    VideoPlayActivity.this.progressBarSb.setProgress(i);
                                                    String str = "播放结束";
                                                    String str2 = "正在投屏中";
                                                    if (i == VideoPlayActivity.this.progressBarSb.getMax() && VideoPlayActivity.this.stateTv.getText().equals(str2)) {
                                                        VideoPlayActivity.this.stateTv.setText(str);
                                                    }
                                                    if (VideoPlayActivity.this.isnotshow) {
                                                        StringBuilder sb = new StringBuilder();
                                                        sb.append("getPositionInfo isnotshow");
                                                        sb.append(VideoPlayActivity.this.isnotshow);
                                                        String sb2 = sb.toString();
                                                        String str3 = VideoPlayActivity.TAG;
                                                        AILog.d(str3, sb2);
                                                        if (i == 0) {
                                                            StringBuilder sb3 = new StringBuilder();
                                                            sb3.append("getPositionInfo isnotshow9");
                                                            sb3.append(VideoPlayActivity.this.isnotshow);
                                                            AILog.d(str3, sb3.toString());
                                                            VideoPlayActivity.this.stateTv.setText(str);
                                                        } else {
                                                            VideoPlayActivity.this.stateTv.setText(str2);
                                                        }
                                                    }
                                                    VideoPlayActivity.this.currentTimeTv.setText(stringForTime);
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
        });
    }

    private void initLimitIpDialog(String str, String str2) {
        String str3 = "登录/注册";
        new AlertDialog(this).builder().setTitle(str).setMsg(str2).setNegativeButton("退出APP", new OnClickListener() {
            public void onClick(View view) {
                KanApplication.getInstance().exitApp(Utils.getContext());
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                VideoPlayActivity.this.gotoActivity(AccountLoginActivity.class);
            }
        }).setCancelable(false).show();
    }

    /* access modifiers changed from: private */
    public void clickShareImg() {
        String str = "0";
        if (!this.api.isWXAppInstalled()) {
            must_shared = str;
            wxAppNoInstallDialog();
            return;
        }
        must_shared = "-1";
        if (this.request == null) {
            this.request = new HashMap();
        }
        this.request.clear();
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str2);
        if (!StringUtils.isEmpty(this.shareLettersId)) {
            this.request.put("letters_id", this.shareLettersId);
        }
        this.request.put("devicetype", str);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().shareClick(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoPlayActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        VideoPlayActivity.this.wxShareUnlock(1);
                        VideoPlayActivity.this.mHandler.postDelayed(new Runnable() {
                            public void run() {
                                VideoPlayActivity.this.recordUserShare();
                                if (VideoPlayActivity.this.fullShareBottomView != null) {
                                    try {
                                        VideoPlayActivity.this.fullShareBottomView.dismissBottomView();
                                        VideoPlayActivity.this.fullShareBottomView = null;
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                                VideoPlayActivity.this.shareUnlockLayout.setVisibility(8);
                            }
                        }, 2000);
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    /* access modifiers changed from: private */
    public void recordUserShare() {
        if (this.request != null) {
            this.request.clear();
            String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("_token", str);
            if (!StringUtils.isEmpty(this.mTid)) {
                this.request.put("tvid", this.mTid);
            }
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            Api.getService().usershare(this.request).enqueue(new CommonCallBack(this, false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!VideoPlayActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            jsonObject.optString("status").equals(StatusCode.STATUS_OK);
                        }
                    }
                }

                public void onFailure(Call<ResponseBody> call, Throwable th) {
                    super.onFailure(call, th);
                }
            });
        }
    }

    private void wxAppNoInstallDialog() {
        String str = "现在下载";
        new AlertDialog(this).builder().setMsg("未装微信客户端，\n是否现在去下载？").setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str, new OnClickListener() {
            public void onClick(View view) {
                Bundle bundle = new Bundle();
                bundle.putString("url", "https://weixin.qq.com/cgi-bin/readtemplate?t=w_down");
                VideoPlayActivity.this.gotoActivity(bundle, WebViewActivity.class);
            }
        }).setCancelable(false).show();
    }

    private boolean filterPageSwitch() {
        boolean z;
        if (System.currentTimeMillis() - this.currentTime <= 1000) {
            z = true;
            AILog.d(TAG, "*** quickly Page Switch!");
        } else {
            z = false;
        }
        this.currentTime = System.currentTimeMillis();
        return z;
    }

    public boolean shotScreen(Activity activity) {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
        sb.append(File.separator);
        sb.append("dearxy");
        File file = new File(sb.toString());
        if (!file.exists()) {
            file.mkdir();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.currentTimeMillis());
        sb2.append(".jpg");
        File file2 = new File(file, sb2.toString());
        View decorView = activity.getWindow().getDecorView();
        decorView.setDrawingCacheEnabled(true);
        decorView.buildDrawingCache();
        Bitmap drawingCache = decorView.getDrawingCache();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            boolean compress = drawingCache.compress(CompressFormat.PNG, 80, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            if (compress) {
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* access modifiers changed from: private */
    public void sendDanmu(String str) {
        Map commonMap = CommonViewModel.getCommonMap();
        commonMap.put("tvid", this.mTid);
        VideoDetailFragment videoDetailFragment = this.mVideoDetailFragment;
        if (videoDetailFragment != null) {
            commonMap.put("part", videoDetailFragment.mPart);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.mKTVideoPlayer.getCurrentPlayer().getCurrentPositionWhenPlaying() / 1000);
        sb.append("");
        commonMap.put(Descriptor.Device.SEC_PREFIX, sb.toString());
        commonMap.put("content", str);
        commonMap.put("font", "20");
        commonMap.put(TtmlNode.ATTR_TTS_COLOR, "#ffffff");
        Api.getService().sendDanmu(commonMap).enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                try {
                    if (this.json != null) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            jsonObject.optInt("status");
                            ToastUtils.show((CharSequence) jsonObject.optString("msg"), 0);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }
}
