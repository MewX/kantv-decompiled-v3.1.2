package com.kantv.video;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.kantv.common.bean.AdBean;
import com.kantv.common.bean.DanmuBean;
import com.kantv.common.bean.DanmuData;
import com.kantv.common.bean.PlayRecordBean;
import com.kantv.common.interfaces.ClickCallback;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.video.OnDoubleClickListener.DoubleClickCallback;
import com.kantv.video.util.AudioUtil;
import com.kantv.video.util.CircleImageView;
import com.kantv.video.util.Definition.UserPreference;
import com.kantv.video.util.NetWorkUtils;
import com.kantv.video.util.PreferenceUtil;
import com.shuyu.gsyvideoplayer.R;
import com.shuyu.gsyvideoplayer.builder.GSYVideoOptionBuilder;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotListener;
import com.shuyu.gsyvideoplayer.player.PlayerFactory;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.utils.OrientationUtils;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoViewBridge;
import com.tandong.bottomview.view.BottomView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import master.flame.danmaku.controller.DrawHandler.Callback;
import master.flame.danmaku.controller.IDanmakuView;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.Danmakus;
import master.flame.danmaku.danmaku.parser.BaseDanmakuParser;
import master.flame.danmaku.ui.widget.DanmakuView;

public class KTVideoPlayer extends StandardGSYVideoPlayer implements OnSeekBarChangeListener {
    public static int ID = 0;
    public static final int PLAY_DELAY_CLOSE = -1;
    public static final int PLAY_DELAY_OVER = -2;
    public static final int PLAY_DELAY_OVER_30 = 30;
    public static final int PLAY_DELAY_OVER_60 = 60;
    private static final String TAG = "VideoPlayActivity";
    public static String currentTitle = "";
    public static String currentUrl = "";
    public static boolean isQp = false;
    /* access modifiers changed from: private */
    public static OrientationUtils mOrientationUtils;
    Runnable FastGuideRunnable = new Runnable() {
        public void run() {
            KTVideoPlayer.this.mGuideVideoFastLayout.setAlpha(0.0f);
            int access$1600 = KTVideoPlayer.this.count * 10 * 1000;
            if (KTVideoPlayer.this.getCurrentPositionWhenPlaying() + access$1600 < KTVideoPlayer.this.getDuration()) {
                try {
                    KTVideoPlayer.this.getGSYVideoManager().seekTo((long) (KTVideoPlayer.this.getCurrentPositionWhenPlaying() + access$1600));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            KTVideoPlayer.this.count = 0;
        }
    };
    Runnable PrevGuideRunnable = new Runnable() {
        public void run() {
            KTVideoPlayer.this.mGuideVideoBeforeLayout.setAlpha(0.0f);
            int access$1600 = KTVideoPlayer.this.count * 10 * 1000;
            if (KTVideoPlayer.this.getCurrentPositionWhenPlaying() > access$1600) {
                try {
                    KTVideoPlayer.this.getGSYVideoManager().seekTo((long) (KTVideoPlayer.this.getCurrentPositionWhenPlaying() - access$1600));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            KTVideoPlayer.this.count = 0;
        }
    };
    private View adBack;
    /* access modifiers changed from: private */
    public TextView adCount;
    private View adFull;
    private FrameLayout adLayout;
    private View adSound;
    private LinearLayout bottomLayout;
    /* access modifiers changed from: private */
    public int count = 0;
    public TextView currentTimeTv;
    /* access modifiers changed from: private */
    public DanmuData danmuData = new DanmuData();
    public TextView diviseTv;
    private GSYVideoOptionBuilder gsyVideoOptionBuilder;
    /* access modifiers changed from: private */
    public boolean isPlayAd = false;
    /* access modifiers changed from: private */
    public ImageView iv_danmoku;
    /* access modifiers changed from: private */
    public ImageView iv_screen_src;
    List<AdBean> mAdBean = new ArrayList();
    private AdClick mAdClick;
    /* access modifiers changed from: private */
    public AdListener mAdListener;
    /* access modifiers changed from: private */
    public int mAdTime;
    public Runnable mAdTimeRunnable = new Runnable() {
        public void run() {
            if (KTVideoPlayer.this.getCurrentPlayer() != null) {
                KTVideoPlayer kTVideoPlayer = (KTVideoPlayer) KTVideoPlayer.this.getCurrentPlayer();
                StringBuilder sb = new StringBuilder();
                sb.append(kTVideoPlayer.mAdTime);
                sb.append("  ");
                sb.append(kTVideoPlayer.isPlayAd);
                sb.append(" ");
                sb.append(kTVideoPlayer.toString());
                AILog.d("VideoPlayActivity", sb.toString());
                if (KTVideoPlayer.this.getGSYVideoManager().isPlaying()) {
                    kTVideoPlayer.mAdTime = kTVideoPlayer.mAdTime - 1;
                    if (kTVideoPlayer.mAdTime >= 0) {
                        TextView access$900 = kTVideoPlayer.adCount;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(kTVideoPlayer.mAdTime);
                        sb2.append("");
                        access$900.setText(sb2.toString());
                    } else {
                        MyExoPlayer myExoPlayer = (MyExoPlayer) KTVideoPlayer.this.getGSYVideoManager().getPlayer().getMediaPlayer();
                        if (kTVideoPlayer.isPlayAd && kTVideoPlayer.mAdTime < -10) {
                            if (KTVideoPlayer.this.mAdListener != null) {
                                KTVideoPlayer.this.mAdListener.onAdEnd(true);
                            }
                            kTVideoPlayer.setUp(kTVideoPlayer.mUrl, true, kTVideoPlayer.mTitle);
                            kTVideoPlayer.startPlayLogic();
                            return;
                        }
                    }
                }
            }
            KTVideoPlayer.this.mHandler.postDelayed(KTVideoPlayer.this.mAdTimeRunnable, 1000);
        }
    };
    private ImageView mAirPlayImg;
    /* access modifiers changed from: private */
    public int mBrightnessNum;
    /* access modifiers changed from: private */
    public ClickCallback mCallback;
    private int mCurrent_play_delay = 0;
    /* access modifiers changed from: private */
    public boolean mDanmaKuShow = true;
    private DanmakuContext mDanmakuContext;
    private long mDanmakuStartSeekPosition = -1;
    /* access modifiers changed from: private */
    public DanmakuView mDanmakuView;
    /* access modifiers changed from: private */
    public TextView mGuideOk;
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
    /* access modifiers changed from: private */
    public Handler mHandler2;
    /* access modifiers changed from: private */
    public ImageView mLineSwitch;
    /* access modifiers changed from: private */
    public LinearLayout mMessage;
    /* access modifiers changed from: private */
    public TextView mMessageText1;
    /* access modifiers changed from: private */
    public TextView mMessageText2;
    /* access modifiers changed from: private */
    public TextView mMessageText3;
    private ImageView mMoreImg;
    private ImageView mNext;
    private OnPreparedListner mOnPreparedListner;
    private BaseDanmakuParser mParser;
    /* access modifiers changed from: private */
    public PlayRecordBean mRecordBean;
    public ImageView mScreenShot;
    private TextView mSelect;
    /* access modifiers changed from: private */
    public SendDanmuListener mSendDanmuListener;
    private ImageView mShareImg;
    /* access modifiers changed from: private */
    public int mVoiceNum;
    /* access modifiers changed from: private */
    public Window mWindow;
    /* access modifiers changed from: private */
    public long nativePrologue = 0;
    public TextView pauseTv;
    /* access modifiers changed from: private */
    public int play_delay_state = -1;
    public KTVideoPlayer player;
    public SeekBar progressBarSb;
    protected Map<String, String> request = new HashMap();
    /* access modifiers changed from: private */
    public float speed = 1.0f;
    public TextView stateTv;
    private LinearLayout topLayout;
    public TextView totalTimeTv;
    public View tpview;
    /* access modifiers changed from: private */
    public TextView tv_danmoku;
    private int videDId = 0;

    public class AdClick implements OnClickListener {
        public AdClick() {
        }

        public void onClick(View view) {
            if (KTVideoPlayer.this.mCallback != null) {
                KTVideoPlayer.this.mCallback.onShare(view.getId());
            }
        }
    }

    public class AdListener implements OnCustomListener {
        public AdListener() {
        }

        public void onAdEnd(boolean z) {
            KTVideoPlayer kTVideoPlayer = (KTVideoPlayer) KTVideoPlayer.this.getCurrentPlayer();
            StringBuilder sb = new StringBuilder();
            sb.append(kTVideoPlayer.toString());
            sb.append("onAdEnd:");
            sb.append(kTVideoPlayer.isPlayAd);
            sb.append(" ");
            sb.append(z);
            AILog.e("VideoPlayActivity", sb.toString());
            if (kTVideoPlayer.isPlayAd || z) {
                kTVideoPlayer.resetProgressAndTime();
                kTVideoPlayer.mHandler.removeCallbacks(kTVideoPlayer.mAdTimeRunnable);
                kTVideoPlayer.adCount.setText("");
                kTVideoPlayer.isPlayAd = false;
                kTVideoPlayer.mAdTime = 0;
                KTVideoPlayer.this.dismissAdView(kTVideoPlayer);
                kTVideoPlayer.mAdBean.clear();
                if (z) {
                    KTVideoPlayer.this.mHandler.postDelayed(new Runnable() {
                        public void run() {
                            KTVideoPlayer kTVideoPlayer = (KTVideoPlayer) KTVideoPlayer.this.getCurrentPlayer();
                            if (kTVideoPlayer != null) {
                                kTVideoPlayer.setUp(kTVideoPlayer.mUrl, true, kTVideoPlayer.mTitle);
                                kTVideoPlayer.startPlayLogic();
                            }
                        }
                    }, 2000);
                }
                if (kTVideoPlayer.mRecordBean != null) {
                    kTVideoPlayer.setRecord(kTVideoPlayer.mRecordBean, kTVideoPlayer.mRecordBean.isPrologue, kTVideoPlayer.mRecordBean.prologue, kTVideoPlayer.mRecordBean.epilogue);
                }
            }
        }
    }

    public interface OnPreparedListner {
        void onPrepared();
    }

    public interface SendDanmuListener {
        void getDanmuListener();

        void onSend(String str);
    }

    public void onCompletion() {
    }

    public boolean isPlayAd() {
        return this.isPlayAd;
    }

    public void setPlayAd(boolean z) {
        this.isPlayAd = z;
    }

    public DanmuData getDanmuData() {
        return this.danmuData;
    }

    public void setDanmuData(DanmuData danmuData2) {
        this.danmuData = danmuData2;
    }

    public KTVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
        int i = ID + 1;
        ID = i;
        this.videDId = i;
        StringBuilder sb = new StringBuilder();
        sb.append("init ");
        sb.append(ID);
        sb.append(" ");
        sb.append(this.videDId);
        AILog.d("VideoPlayActivity", sb.toString());
    }

    public KTVideoPlayer(Context context) {
        super(context);
        int i = ID + 1;
        ID = i;
        this.videDId = i;
        StringBuilder sb = new StringBuilder();
        sb.append("init ");
        sb.append(ID);
        sb.append(" ");
        sb.append(this.videDId);
        AILog.d("VideoPlayActivity", sb.toString());
    }

    public KTVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i = ID + 1;
        ID = i;
        this.videDId = i;
        StringBuilder sb = new StringBuilder();
        sb.append("init ");
        sb.append(ID);
        sb.append(" ");
        sb.append(this.videDId);
        AILog.d("VideoPlayActivity", sb.toString());
    }

    public int getPlay_delay_state() {
        return this.play_delay_state;
    }

    public void setPlay_delay_state(int i) {
        this.play_delay_state = i;
    }

    public int getCurrent_play_delay() {
        return this.mCurrent_play_delay;
    }

    public void setCurrent_play_delay(int i) {
        this.mCurrent_play_delay = i;
    }

    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z, boolean z2) {
        AILog.d("VideoPlayActivity", "startWindowFullscreen");
        GSYBaseVideoPlayer startWindowFullscreen = super.startWindowFullscreen(context, z, z2);
        if (startWindowFullscreen != null) {
            this.player = (KTVideoPlayer) startWindowFullscreen;
            KTVideoPlayer kTVideoPlayer = this.player;
            kTVideoPlayer.mWindow = this.mWindow;
            kTVideoPlayer.mCallback = this.mCallback;
            kTVideoPlayer.mSendDanmuListener = this.mSendDanmuListener;
            kTVideoPlayer.mOnPreparedListner = this.mOnPreparedListner;
            kTVideoPlayer.tpview = getFullWindowPlayer().findViewById(R.id.tpview);
            this.player.diviseTv = (TextView) getFullWindowPlayer().findViewById(R.id.divise_tv);
            this.player.progressBarSb = (SeekBar) getFullWindowPlayer().findViewById(R.id.progress_thp);
            this.player.totalTimeTv = (TextView) getFullWindowPlayer().findViewById(R.id.total_thp);
            this.player.stateTv = (TextView) getFullWindowPlayer().findViewById(R.id.state_tv);
            this.player.pauseTv = (TextView) getFullWindowPlayer().findViewById(R.id.pause);
            this.player.currentTimeTv = (TextView) getFullWindowPlayer().findViewById(R.id.current_thp);
            this.player.setDanmakuStartSeekPosition((long) getCurrentPositionWhenPlaying());
            KTVideoPlayer kTVideoPlayer2 = this.player;
            kTVideoPlayer2.danmuData = this.danmuData;
            onPrepareDanmaku(kTVideoPlayer2);
        }
        return startWindowFullscreen;
    }

    /* access modifiers changed from: protected */
    public void clearFullscreenLayout() {
        super.clearFullscreenLayout();
        AILog.d("VideoPlayActivity", "clearFullscreenLayout");
        releaseDanmaku(this);
    }

    /* access modifiers changed from: protected */
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        KTVideoPlayer kTVideoPlayer = (KTVideoPlayer) gSYBaseVideoPlayer;
        KTVideoPlayer kTVideoPlayer2 = (KTVideoPlayer) gSYBaseVideoPlayer2;
        StringBuilder sb = new StringBuilder();
        sb.append(toString());
        sb.append("cloneParams:from ");
        sb.append(kTVideoPlayer.mRecordBean);
        sb.append(" to ");
        sb.append(kTVideoPlayer2.mRecordBean);
        AILog.d("VideoPlayActivity", sb.toString());
        kTVideoPlayer2.mAdClick = kTVideoPlayer.mAdClick;
        kTVideoPlayer2.mAdTime = kTVideoPlayer.mAdTime;
        kTVideoPlayer2.isPlayAd = kTVideoPlayer.isPlayAd;
        kTVideoPlayer2.mHandler = kTVideoPlayer.mHandler;
        kTVideoPlayer2.mAdTimeRunnable = kTVideoPlayer.mAdTimeRunnable;
        kTVideoPlayer2.mAdBean = kTVideoPlayer.mAdBean;
        kTVideoPlayer2.mAdListener = kTVideoPlayer.mAdListener;
        kTVideoPlayer2.mRecordBean = kTVideoPlayer.mRecordBean;
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
    }

    /* access modifiers changed from: protected */
    public void resolveNormalVideoShow(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
        super.resolveNormalVideoShow(view, viewGroup, gSYVideoPlayer);
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        PlayerFactory.setPlayManager(MyExoPlayerManager.class);
        super.init(context);
        this.mMessage = (LinearLayout) findViewById(R.id.message);
        this.mMessageText1 = (TextView) findViewById(R.id.message_text1);
        this.mMessageText2 = (TextView) findViewById(R.id.message_text2);
        this.mMessageText3 = (TextView) findViewById(R.id.message_text3);
        this.mShareImg = (ImageView) findViewById(R.id.share_img);
        this.mMoreImg = (ImageView) findViewById(R.id.more);
        this.mAirPlayImg = (ImageView) findViewById(R.id.airplay_img);
        this.iv_screen_src = (ImageView) findViewById(R.id.iv_screen_src);
        this.mScreenShot = (ImageView) findViewById(R.id.screen_shot);
        this.mLineSwitch = (ImageView) findViewById(R.id.line_switch);
        this.bottomLayout = (LinearLayout) findViewById(R.id.layout_bottom);
        this.topLayout = (LinearLayout) findViewById(R.id.layout_top);
        this.tv_danmoku = (TextView) findViewById(R.id.tv_danmoku);
        this.iv_danmoku = (ImageView) findViewById(R.id.iv_danmoku);
        this.mDanmakuView = (DanmakuView) findViewById(R.id.danmaku_view);
        initDanmaku();
        this.mScreenShot.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                String str = "android.permission.READ_EXTERNAL_STORAGE";
                String str2 = "android.permission.WRITE_EXTERNAL_STORAGE";
                if (ContextCompat.checkSelfPermission(KTVideoPlayer.this.getContext(), str) == 0 && ContextCompat.checkSelfPermission(KTVideoPlayer.this.getContext(), str2) == 0) {
                    KTVideoPlayer.this.taskShotPic(new GSYVideoShotListener() {
                        public void getBitmap(Bitmap bitmap) {
                            if (KTVideoPlayer.this.mIfCurrentIsFullscreen) {
                                KTVideoPlayer.this.iv_screen_src.setVisibility(0);
                                KTVideoPlayer.this.iv_screen_src.setImageBitmap(bitmap);
                                new Handler().postDelayed(new Runnable() {
                                    public void run() {
                                        KTVideoPlayer.this.iv_screen_src.setVisibility(4);
                                        KTVideoPlayer.this.iv_screen_src.setImageBitmap(null);
                                    }
                                }, 5000);
                            }
                            KTVideoPlayer.SaveFile(bitmap, (Activity) KTVideoPlayer.this.getActivityContext());
                        }
                    });
                } else {
                    ActivityCompat.requestPermissions((Activity) KTVideoPlayer.this.getActivityContext(), new String[]{str, str2}, 164);
                }
            }
        });
        ImageView imageView = this.iv_screen_src;
        if (imageView != null) {
            imageView.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    BottomView bottomView = new BottomView(KTVideoPlayer.this.getContext(), R.style.BottomViewTheme_Bottom, R.layout.item_videoshare);
                    bottomView.setAnimation(R.style.BottomToTopAnim);
                    bottomView.showBottomView(true);
                    KTVideoPlayer.this.setShareListener(bottomView);
                }
            });
        }
        this.mShareImg.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                BottomView bottomView = new BottomView(KTVideoPlayer.this.getContext(), R.style.BottomViewTheme_Bottom, R.layout.item_videoshare);
                bottomView.setAnimation(R.style.BottomToTopAnim);
                bottomView.showBottomView(true);
                KTVideoPlayer.this.setShareListener(bottomView);
            }
        });
        this.mAirPlayImg.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(8);
                }
            }
        });
        this.mLineSwitch.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                final long currentPositionWhenPlaying = (long) KTVideoPlayer.this.getCurrentPositionWhenPlaying();
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(9);
                }
                if (KTVideoPlayer.this.isIfCurrentIsFullscreen()) {
                    new Handler().postDelayed(new Runnable() {
                        public void run() {
                            if (!StringUtils.isEmpty(KTVideoPlayer.currentUrl)) {
                                KTVideoPlayer.this.setUp(KTVideoPlayer.currentUrl, true, KTVideoPlayer.currentTitle);
                                KTVideoPlayer.this.setSeekOnStart(currentPositionWhenPlaying);
                                KTVideoPlayer.this.startPlayLogic();
                            }
                        }
                    }, 3000);
                }
            }
        });
        if (this.mIfCurrentIsFullscreen) {
            moreHandler();
        }
        this.adLayout = (FrameLayout) findViewById(R.id.ad_layout);
        this.adCount = (TextView) findViewById(R.id.adExitTv);
        this.adFull = findViewById(R.id.adFull);
        this.adBack = findViewById(R.id.adBack);
        this.adSound = findViewById(R.id.ad_sound);
        if (this.mAdClick == null) {
            this.mAdClick = new AdClick();
        }
        this.adLayout.setOnClickListener(this.mAdClick);
        this.adFull.setOnClickListener(this.mAdClick);
        this.adBack.setOnClickListener(this.mAdClick);
        this.adSound.setOnClickListener(this.mAdClick);
        if (this.mAdListener == null) {
            this.mAdListener = new AdListener();
        }
    }

    public void setRecord(PlayRecordBean playRecordBean) {
        this.mRecordBean = playRecordBean;
    }

    public void setWindow(Window window) {
        this.mWindow = window;
    }

    private void moreHandler() {
        this.mNext = (ImageView) findViewById(R.id.next);
        this.mSelect = (TextView) findViewById(R.id.select);
        this.mNext.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                KTVideoPlayer.this.next(3000);
            }
        });
        this.mSelect.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(17);
                }
            }
        });
        this.mGuideVideoBeforeLayout = (LinearLayout) findViewById(R.id.guide_video_before);
        this.mGuideVideoPrevTv = (TextView) findViewById(R.id.guide_prev_tv);
        this.mGuideVideoFastLayout = (LinearLayout) findViewById(R.id.guide_video_fast);
        this.mGuideVideoFastTv = (TextView) findViewById(R.id.guide_fast_tv);
        this.mGuideVideoBeforeLayout.setOnTouchListener(new OnDoubleClickListener(new DoubleClickCallback() {
            public void onDoubleClick() {
                if (KTVideoPlayer.this.mCurrentState == 5) {
                    try {
                        KTVideoPlayer.this.getGSYVideoManager().start();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    KTVideoPlayer.this.setStateAndUi(2);
                    return;
                }
                KTVideoPlayer.this.count = KTVideoPlayer.this.count + 1;
                KTVideoPlayer.this.mGuideVideoBeforeLayout.setAlpha(0.8f);
                KTVideoPlayer.this.mGuideVideoPrevTv.setText(String.format(Utils.getString(R.string.prev_tv), new Object[]{Integer.toString(KTVideoPlayer.this.count * 10)}));
                KTVideoPlayer.this.startPrevGuideTimer();
            }

            public void onSingleClick() {
                if (KTVideoPlayer.this.mGuideVideoBeforeLayout.getAlpha() > 0.0f) {
                    KTVideoPlayer.this.count = KTVideoPlayer.this.count + 1;
                    KTVideoPlayer.this.mGuideVideoPrevTv.setText(String.format(Utils.getString(R.string.prev_tv), new Object[]{Integer.toString(KTVideoPlayer.this.count * 10)}));
                    if (KTVideoPlayer.this.mHandler != null) {
                        KTVideoPlayer.this.mHandler.removeCallbacks(KTVideoPlayer.this.PrevGuideRunnable);
                        KTVideoPlayer.this.startPrevGuideTimer();
                    }
                }
            }
        }));
        this.mGuideVideoFastLayout.setOnTouchListener(new OnDoubleClickListener(new DoubleClickCallback() {
            public void onDoubleClick() {
                if (KTVideoPlayer.this.mCurrentState == 5) {
                    try {
                        KTVideoPlayer.this.getGSYVideoManager().start();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    KTVideoPlayer.this.setStateAndUi(2);
                    return;
                }
                KTVideoPlayer.this.count = KTVideoPlayer.this.count + 1;
                KTVideoPlayer.this.mGuideVideoFastLayout.setAlpha(0.8f);
                KTVideoPlayer.this.mGuideVideoFastTv.setText(String.format(Utils.getString(R.string.fast_tv), new Object[]{Integer.toString(KTVideoPlayer.this.count * 10)}));
                KTVideoPlayer.this.startFastGuideTimer();
            }

            public void onSingleClick() {
                if (KTVideoPlayer.this.mGuideVideoFastLayout.getAlpha() > 0.0f) {
                    KTVideoPlayer.this.count = KTVideoPlayer.this.count + 1;
                    KTVideoPlayer.this.mGuideVideoFastTv.setText(String.format(Utils.getString(R.string.fast_tv), new Object[]{Integer.toString(KTVideoPlayer.this.count * 10)}));
                    if (KTVideoPlayer.this.mHandler != null) {
                        KTVideoPlayer.this.mHandler.removeCallbacks(KTVideoPlayer.this.FastGuideRunnable);
                        KTVideoPlayer.this.startFastGuideTimer();
                    }
                }
            }
        }));
        if (((Boolean) PreferenceUtil.get(Utils.getContext(), "video_guide", Boolean.valueOf(true))).booleanValue()) {
            if (this.mHandler == null) {
                this.mHandler = new Handler();
            }
            this.mHandler.postDelayed(new Runnable() {
                public void run() {
                    final BottomView bottomView = new BottomView(KTVideoPlayer.this.getContext(), R.style.BottomViewTheme_Defalut, R.layout.video_guide);
                    bottomView.setAnimation(R.style.BottomToTopAnim);
                    bottomView.showBottomView(true);
                    KTVideoPlayer.this.mGuideOk = (TextView) bottomView.getView().findViewById(R.id.guide_ok);
                    KTVideoPlayer.this.mGuideOk.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            BottomView bottomView = bottomView;
                            if (bottomView != null) {
                                bottomView.dismissBottomView();
                            }
                            PreferenceUtil.put(Utils.getContext(), "video_guide", Boolean.valueOf(false));
                            KTVideoPlayer.this.onVideoResume();
                            if (KTVideoPlayer.mOrientationUtils != null) {
                                KTVideoPlayer.mOrientationUtils.setEnable(true);
                            }
                        }
                    });
                    KTVideoPlayer.this.onVideoPause();
                    if (KTVideoPlayer.mOrientationUtils != null) {
                        KTVideoPlayer.mOrientationUtils.setEnable(false);
                    }
                }
            }, 300);
        }
        this.mMoreImg.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                final BottomView bottomView = new BottomView(KTVideoPlayer.this.getContext(), R.style.BottomViewTheme_Defalut, R.layout.item_videomore);
                bottomView.setAnimation(R.style.BottomToTopAnim);
                bottomView.showBottomView(true);
                final View findViewById = bottomView.getView().findViewById(R.id.videomore_content_layout);
                final View findViewById2 = bottomView.getView().findViewById(R.id.play_delay_contain);
                View findViewById3 = bottomView.getView().findViewById(R.id.play_over);
                View findViewById4 = bottomView.getView().findViewById(R.id.play_over_30);
                View findViewById5 = bottomView.getView().findViewById(R.id.play_over_60);
                View findViewById6 = bottomView.getView().findViewById(R.id.on_close);
                final View view2 = findViewById3;
                final View view3 = findViewById4;
                final View view4 = findViewById5;
                final View view5 = findViewById6;
                AnonymousClass1 r0 = new OnClickListener() {
                    public void onClick(View view) {
                        view2.setSelected(false);
                        view3.setSelected(false);
                        view4.setSelected(false);
                        view5.setSelected(false);
                        KTVideoPlayer.this.setPlay_delay_state(Integer.valueOf((String) view.getTag()).intValue());
                        KTVideoPlayer.this.setCurrent_play_delay(0);
                        view.setSelected(true);
                        StringBuilder sb = new StringBuilder();
                        sb.append("选择退出播放模式：");
                        sb.append(Integer.valueOf((String) view.getTag()));
                        AILog.d("VideoPlayActivity", sb.toString());
                    }
                };
                bottomView.getView().findViewById(R.id.videoset_timer).setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        findViewById.setVisibility(8);
                        findViewById2.setVisibility(0);
                    }
                });
                findViewById6.setOnClickListener(r0);
                findViewById3.setOnClickListener(r0);
                findViewById4.setOnClickListener(r0);
                findViewById5.setOnClickListener(r0);
                findViewById6.setSelected(false);
                findViewById3.setSelected(false);
                findViewById4.setSelected(false);
                findViewById5.setSelected(false);
                if (KTVideoPlayer.this.play_delay_state == -1) {
                    findViewById6.setSelected(true);
                } else if (KTVideoPlayer.this.play_delay_state == -2) {
                    findViewById3.setSelected(true);
                } else if (KTVideoPlayer.this.play_delay_state == 30) {
                    findViewById4.setSelected(true);
                } else if (KTVideoPlayer.this.play_delay_state == 60) {
                    findViewById5.setSelected(true);
                }
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
                bottomView.getView().findViewById(R.id.videoset_cache).setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        if (KTVideoPlayer.this.mCallback != null) {
                            KTVideoPlayer.this.mCallback.onShare(18);
                        }
                        BottomView bottomView = bottomView;
                        if (bottomView != null) {
                            bottomView.dismissBottomView();
                        }
                    }
                });
                bottomView.getView().findViewById(R.id.videoset_airplay).setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        if (KTVideoPlayer.this.mCallback != null) {
                            KTVideoPlayer.this.mCallback.onShare(8);
                        }
                        BottomView bottomView = bottomView;
                        if (bottomView != null) {
                            bottomView.dismissBottomView();
                        }
                    }
                });
                bottomView.getView().findViewById(R.id.videoset_lineswitch).setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        if (KTVideoPlayer.this.mLineSwitch != null) {
                            KTVideoPlayer.this.mLineSwitch.callOnClick();
                        }
                        BottomView bottomView = bottomView;
                        if (bottomView != null) {
                            bottomView.dismissBottomView();
                        }
                    }
                });
                if (((Boolean) PreferenceUtil.get(Utils.getContext(), "is_collect", Boolean.valueOf(false))).booleanValue()) {
                    ((TextView) bottomView.getView().findViewById(R.id.videoset_collect)).setCompoundDrawablesWithIntrinsicBounds(null, KTVideoPlayer.this.getResources().getDrawable(R.drawable.videoset_collection_b), null, null);
                } else {
                    ((TextView) bottomView.getView().findViewById(R.id.videoset_collect)).setCompoundDrawablesWithIntrinsicBounds(null, KTVideoPlayer.this.getResources().getDrawable(R.drawable.videoset_collection), null, null);
                }
                bottomView.getView().findViewById(R.id.videoset_collect).setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        Context context = Utils.getContext();
                        Boolean valueOf = Boolean.valueOf(false);
                        if (((Boolean) PreferenceUtil.get(context, "Login_State", valueOf)).booleanValue()) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "is_collect", valueOf)).booleanValue()) {
                                ((TextView) bottomView.getView().findViewById(R.id.videoset_collect)).setCompoundDrawablesWithIntrinsicBounds(null, KTVideoPlayer.this.getResources().getDrawable(R.drawable.videoset_collection), null, null);
                            } else {
                                ((TextView) bottomView.getView().findViewById(R.id.videoset_collect)).setCompoundDrawablesWithIntrinsicBounds(null, KTVideoPlayer.this.getResources().getDrawable(R.drawable.videoset_collection_b), null, null);
                            }
                        }
                        if (KTVideoPlayer.this.mCallback != null) {
                            KTVideoPlayer.this.mCallback.onShare(19);
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
                final AudioUtil audioUtil = new AudioUtil(KTVideoPlayer.this.getContext(), KTVideoPlayer.this.mWindow);
                KTVideoPlayer.this.mVoiceNum = audioUtil.getMediaVolume();
                seekBar.setProgress(KTVideoPlayer.this.mVoiceNum);
                KTVideoPlayer.this.mBrightnessNum = audioUtil.getSystemBrightness();
                seekBar2.setProgress(KTVideoPlayer.this.mBrightnessNum);
                seekBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
                    public void onStartTrackingTouch(SeekBar seekBar) {
                    }

                    public void onStopTrackingTouch(SeekBar seekBar) {
                    }

                    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                        KTVideoPlayer.this.mVoiceNum = i;
                        audioUtil.setMediaVolume(i);
                    }
                });
                seekBar2.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
                    public void onStartTrackingTouch(SeekBar seekBar) {
                    }

                    public void onStopTrackingTouch(SeekBar seekBar) {
                    }

                    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                        KTVideoPlayer.this.mBrightnessNum = i;
                        audioUtil.changeAppBrightness(i);
                    }
                });
                if (((double) KTVideoPlayer.this.speed) == 0.25d) {
                    radioButton.setChecked(true);
                } else if (((double) KTVideoPlayer.this.speed) == 0.5d) {
                    radioButton2.setChecked(true);
                } else if (KTVideoPlayer.this.speed == 1.0f) {
                    radioButton3.setChecked(true);
                } else if (((double) KTVideoPlayer.this.speed) == 1.25d) {
                    radioButton4.setChecked(true);
                } else if (((double) KTVideoPlayer.this.speed) == 1.5d) {
                    radioButton5.setChecked(true);
                } else if (KTVideoPlayer.this.speed == 2.0f) {
                    radioButton6.setChecked(true);
                } else if (KTVideoPlayer.this.speed == 3.0f) {
                    radioButton7.setChecked(true);
                } else if (KTVideoPlayer.this.speed == 5.0f) {
                    radioButton8.setChecked(true);
                }
                radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
                    public void onCheckedChanged(RadioGroup radioGroup, @IdRes int i) {
                        if (i == R.id.rb1) {
                            KTVideoPlayer.this.setSpeed(0.5f);
                            KTVideoPlayer.this.speed = 0.5f;
                        } else if (i == R.id.rb2) {
                            KTVideoPlayer.this.setSpeed(0.75f);
                            KTVideoPlayer.this.speed = 0.75f;
                        } else if (i == R.id.rb3) {
                            KTVideoPlayer.this.setSpeed(1.0f);
                            KTVideoPlayer.this.speed = 1.0f;
                        } else if (i == R.id.rb4) {
                            KTVideoPlayer.this.setSpeed(1.25f);
                            KTVideoPlayer.this.speed = 1.25f;
                        } else if (i == R.id.rb5) {
                            KTVideoPlayer.this.setSpeed(1.5f);
                            KTVideoPlayer.this.speed = 1.5f;
                        } else if (i == R.id.rb6) {
                            KTVideoPlayer.this.setSpeed(2.0f);
                            KTVideoPlayer.this.speed = 2.0f;
                        } else if (i == R.id.rb7) {
                            KTVideoPlayer.this.setSpeed(3.0f);
                            KTVideoPlayer.this.speed = 3.0f;
                        } else if (i == R.id.rb8) {
                            KTVideoPlayer.this.setSpeed(5.0f);
                            KTVideoPlayer.this.speed = 5.0f;
                        }
                    }
                });
            }
        });
    }

    public void setSpeed(float f) {
        super.setSpeed(f);
        if (this.mIfCurrentIsFullscreen) {
            DanmakuView danmakuView = this.mDanmakuView;
            if (danmakuView != null && this.mDanmakuContext != null) {
                danmakuView.getConfig().setScrollSpeedFactor(1.0f / f);
            }
        }
    }

    public void onConfigurationChanged(Activity activity, Configuration configuration, OrientationUtils orientationUtils, boolean z, boolean z2) {
        super.onConfigurationChanged(configuration);
        if (configuration == null || configuration.orientation != 2) {
            if (isIfCurrentIsFullscreen() && isVerticalFullByVideoSize()) {
                backFromFull(activity);
            }
            if (orientationUtils != null) {
                orientationUtils.setEnable(true);
            }
        } else if (!isIfCurrentIsFullscreen()) {
            startWindowFullscreen(activity, z, z2);
        }
        if (orientationUtils != null) {
            mOrientationUtils = orientationUtils;
        }
    }

    public int getLayoutId() {
        String str = "VideoPlayActivity";
        if (this.mIfCurrentIsFullscreen) {
            isQp = true;
            AILog.d(str, "*** fullscreen ***");
            return R.layout.video_land;
        }
        isQp = false;
        AILog.d(str, "*** normal screen ***");
        return R.layout.video_normal;
    }

    /* access modifiers changed from: protected */
    public void resolveUIState(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(toString());
        sb.append(" resolveUIState:");
        sb.append(i);
        AILog.d("VideoPlayActivity", sb.toString());
        super.resolveUIState(i);
        if (i == 0) {
            this.mLineSwitch.setVisibility(4);
            this.mScreenShot.setVisibility(4);
        } else if (i == 1) {
            this.mLineSwitch.setVisibility(0);
            if (this.mIfCurrentIsFullscreen) {
                this.mScreenShot.setVisibility(0);
            }
        } else if (i == 2) {
            this.mLineSwitch.setVisibility(4);
            this.mScreenShot.setVisibility(4);
        } else if (i == 3) {
            this.mLineSwitch.setVisibility(0);
            if (this.mIfCurrentIsFullscreen) {
                this.mScreenShot.setVisibility(0);
            }
        } else if (i == 5) {
            this.mLineSwitch.setVisibility(0);
            if (this.mIfCurrentIsFullscreen) {
                this.mScreenShot.setVisibility(0);
            }
        } else if (i != 6) {
            if (i == 7) {
                this.mLineSwitch.setVisibility(8);
                this.mScreenShot.setVisibility(8);
            }
        } else if (NetWorkUtils.isNetWrok(Utils.getContext())) {
            next(3500);
        }
        if (this.isPlayAd) {
            showAdView(this);
        } else {
            dismissAdView(this);
        }
    }

    /* access modifiers changed from: protected */
    public void changeUiToNormal() {
        super.changeUiToNormal();
        if (this.mIfCurrentIsFullscreen) {
            ImageView imageView = this.mScreenShot;
            if (imageView != null) {
                imageView.setVisibility(0);
                return;
            }
            return;
        }
        ImageView imageView2 = this.mScreenShot;
        if (imageView2 != null) {
            imageView2.setVisibility(4);
        }
    }

    public void setPlayUrlAndTitle(String str, String str2) {
        currentUrl = str;
        currentTitle = str2;
    }

    public void showDanMuEditDialog() {
        final BottomView bottomView = new BottomView(getContext(), R.style.BottomViewTheme_Bottom, R.layout.danmu_dialog);
        LinearLayout linearLayout = (LinearLayout) bottomView.getView().findViewById(R.id.ll_edit);
        CircleImageView circleImageView = (CircleImageView) bottomView.getView().findViewById(R.id.iv_head);
        final EditText editText = (EditText) bottomView.getView().findViewById(R.id.et_danmoku);
        ((TextView) bottomView.getView().findViewById(R.id.tv_enter)).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                EditText editText = editText;
                if (editText != null) {
                    String trim = editText.getText().toString().trim();
                    KTVideoPlayer kTVideoPlayer = KTVideoPlayer.this;
                    kTVideoPlayer.addDanmaku(kTVideoPlayer, trim, false, kTVideoPlayer.getDanmakuView().getCurrentTime(), true);
                    String str = "";
                    editText.setText(str);
                    InputMethodManager inputMethodManager = (InputMethodManager) KTVideoPlayer.this.getContext().getSystemService("input_method");
                    if (inputMethodManager != null) {
                        inputMethodManager.hideSoftInputFromWindow(((Activity) KTVideoPlayer.this.getContext()).getWindow().getDecorView().getWindowToken(), 0);
                    }
                    if (KTVideoPlayer.this.mSendDanmuListener != null) {
                        KTVideoPlayer.this.mSendDanmuListener.onSend(trim);
                    }
                    editText.setText(str);
                }
                bottomView.dismissBottomView();
            }
        });
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                EditText editText = editText;
                if (editText != null) {
                    editText.setFocusable(true);
                    editText.setFocusableInTouchMode(true);
                    editText.requestFocus();
                    ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
                }
            }
        }, 200);
    }

    public void play(String str, String str2) {
        initPlayVideo(str, str2);
    }

    public void initPlayVideo(String str, String str2) {
        this.gsyVideoOptionBuilder = new GSYVideoOptionBuilder().setIsTouchWiget(true).setRotateViewAuto(false).setLockLand(false).setAutoFullWithSize(false).setShowFullAnimation(false).setNeedLockFull(true).setSeekRatio(1.0f).setUrl(str).setCacheWithPlay(true).setVideoTitle(str2);
        this.gsyVideoOptionBuilder.build((StandardGSYVideoPlayer) this);
        resetAdState();
        startPlayLogic();
    }

    private void resetAdState() {
        List<AdBean> list = this.mAdBean;
        if (list != null && list.size() > 0) {
            this.isPlayAd = true;
            showAdView(this);
        }
    }

    public void initPlayVideoWithAd(String str, String str2) {
        this.gsyVideoOptionBuilder = new GSYVideoOptionBuilder().setIsTouchWiget(true).setRotateViewAuto(false).setLockLand(false).setAutoFullWithSize(false).setShowFullAnimation(false).setNeedLockFull(true).setSeekRatio(1.0f).setUrl(str).setCacheWithPlay(true).setVideoTitle(str2);
        this.gsyVideoOptionBuilder.build((StandardGSYVideoPlayer) this);
        startPlayLogic();
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0096 A[Catch:{ Exception -> 0x00a8 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setRecord(com.kantv.common.bean.PlayRecordBean r4, boolean r5, java.lang.String r6, java.lang.String r7) {
        /*
            r3 = this;
            java.lang.String r5 = "VideoPlayActivity"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00a8 }
            r7.<init>()     // Catch:{ Exception -> 0x00a8 }
            java.lang.String r0 = "setRecord:"
            r7.append(r0)     // Catch:{ Exception -> 0x00a8 }
            java.lang.String r0 = r3.toString()     // Catch:{ Exception -> 0x00a8 }
            r7.append(r0)     // Catch:{ Exception -> 0x00a8 }
            java.lang.String r7 = r7.toString()     // Catch:{ Exception -> 0x00a8 }
            com.kantv.common.log.AILog.d(r5, r7)     // Catch:{ Exception -> 0x00a8 }
            r3.mRecordBean = r4     // Catch:{ Exception -> 0x00a8 }
            com.kantv.common.bean.PlayRecordBean r4 = r3.mRecordBean     // Catch:{ Exception -> 0x00a8 }
            boolean r4 = r4.isRecord     // Catch:{ Exception -> 0x00a8 }
            r0 = 4000(0xfa0, double:1.9763E-320)
            if (r4 == 0) goto L_0x004a
            android.os.Handler r4 = r3.mHandler     // Catch:{ Exception -> 0x00a8 }
            if (r4 != 0) goto L_0x002f
            android.os.Handler r4 = new android.os.Handler     // Catch:{ Exception -> 0x00a8 }
            r4.<init>()     // Catch:{ Exception -> 0x00a8 }
            r3.mHandler = r4     // Catch:{ Exception -> 0x00a8 }
        L_0x002f:
            com.kantv.common.bean.PlayRecordBean r4 = r3.mRecordBean     // Catch:{ Exception -> 0x00a8 }
            int r4 = r4.time     // Catch:{ Exception -> 0x00a8 }
            long r4 = (long) r4     // Catch:{ Exception -> 0x00a8 }
            r3.setSeekOnStart(r4)     // Catch:{ Exception -> 0x00a8 }
            com.kantv.common.bean.PlayRecordBean r4 = r3.mRecordBean     // Catch:{ Exception -> 0x00a8 }
            int r4 = r4.time     // Catch:{ Exception -> 0x00a8 }
            long r4 = (long) r4     // Catch:{ Exception -> 0x00a8 }
            r3.seekTo(r4)     // Catch:{ Exception -> 0x00a8 }
            android.os.Handler r4 = r3.mHandler     // Catch:{ Exception -> 0x00a8 }
            com.kantv.video.KTVideoPlayer$14 r5 = new com.kantv.video.KTVideoPlayer$14     // Catch:{ Exception -> 0x00a8 }
            r5.<init>()     // Catch:{ Exception -> 0x00a8 }
            r4.postDelayed(r5, r0)     // Catch:{ Exception -> 0x00a8 }
            goto L_0x00ac
        L_0x004a:
            boolean r4 = r3.isAutoSkipVideo()     // Catch:{ Exception -> 0x00a8 }
            if (r4 == 0) goto L_0x00ac
            boolean r4 = com.kantv.common.utils.StringUtils.isEmpty(r6)     // Catch:{ Exception -> 0x00a8 }
            java.lang.String r5 = "0"
            if (r4 != 0) goto L_0x0074
            boolean r4 = r6.equals(r5)     // Catch:{ Exception -> 0x00a8 }
            if (r4 != 0) goto L_0x0074
            int r4 = java.lang.Integer.parseInt(r6)     // Catch:{ Exception -> 0x00a8 }
            int r4 = r4 * 1000
            int r4 = r4 + -10000
            long r4 = (long) r4     // Catch:{ Exception -> 0x00a8 }
            r3.nativePrologue = r4     // Catch:{ Exception -> 0x00a8 }
            long r4 = r3.nativePrologue     // Catch:{ Exception -> 0x00a8 }
            r3.setSeekOnStart(r4)     // Catch:{ Exception -> 0x00a8 }
            long r4 = r3.nativePrologue     // Catch:{ Exception -> 0x00a8 }
            r3.seekTo(r4)     // Catch:{ Exception -> 0x00a8 }
            goto L_0x0092
        L_0x0074:
            boolean r4 = r6.equals(r5)     // Catch:{ Exception -> 0x00a8 }
            if (r4 == 0) goto L_0x007b
            return
        L_0x007b:
            r4 = 0
            long r6 = r3.nativePrologue     // Catch:{ Exception -> 0x00a8 }
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 != 0) goto L_0x0088
            r4 = 90000(0x15f90, double:4.4466E-319)
            r3.nativePrologue = r4     // Catch:{ Exception -> 0x00a8 }
        L_0x0088:
            long r4 = r3.nativePrologue     // Catch:{ Exception -> 0x00a8 }
            r3.setSeekOnStart(r4)     // Catch:{ Exception -> 0x00a8 }
            long r4 = r3.nativePrologue     // Catch:{ Exception -> 0x00a8 }
            r3.seekTo(r4)     // Catch:{ Exception -> 0x00a8 }
        L_0x0092:
            android.os.Handler r4 = r3.mHandler     // Catch:{ Exception -> 0x00a8 }
            if (r4 != 0) goto L_0x009d
            android.os.Handler r4 = new android.os.Handler     // Catch:{ Exception -> 0x00a8 }
            r4.<init>()     // Catch:{ Exception -> 0x00a8 }
            r3.mHandler = r4     // Catch:{ Exception -> 0x00a8 }
        L_0x009d:
            android.os.Handler r4 = r3.mHandler     // Catch:{ Exception -> 0x00a8 }
            com.kantv.video.KTVideoPlayer$15 r5 = new com.kantv.video.KTVideoPlayer$15     // Catch:{ Exception -> 0x00a8 }
            r5.<init>()     // Catch:{ Exception -> 0x00a8 }
            r4.postDelayed(r5, r0)     // Catch:{ Exception -> 0x00a8 }
            goto L_0x00ac
        L_0x00a8:
            r4 = move-exception
            r4.printStackTrace()
        L_0x00ac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.video.KTVideoPlayer.setRecord(com.kantv.common.bean.PlayRecordBean, boolean, java.lang.String, java.lang.String):void");
    }

    /* access modifiers changed from: private */
    public boolean isAutoSkipVideo() {
        return ((Boolean) PreferenceUtil.get(Utils.getContext(), UserPreference.AUTO_SKIP_VIDEO, Boolean.valueOf(true))).booleanValue();
    }

    public int getEnlargeImageRes() {
        return R.drawable.full_screen;
    }

    public int getShrinkImageRes() {
        return R.drawable.full_screen;
    }

    /* access modifiers changed from: private */
    public void setShareListener(final BottomView bottomView) {
        bottomView.getView().findViewById(R.id.dialog_share_exit).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(200);
                }
                BottomView bottomView = bottomView;
                if (bottomView != null) {
                    bottomView.dismissBottomView();
                }
            }
        });
        bottomView.getView().findViewById(R.id.dialog_share_bt1).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(2);
                }
                BottomView bottomView = bottomView;
                if (bottomView != null) {
                    bottomView.dismissBottomView();
                }
            }
        });
        bottomView.getView().findViewById(R.id.dialog_share_bt2).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(1);
                }
                BottomView bottomView = bottomView;
                if (bottomView != null) {
                    bottomView.dismissBottomView();
                }
            }
        });
        bottomView.getView().findViewById(R.id.dialog_share_bt3).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(4);
                }
                BottomView bottomView = bottomView;
                if (bottomView != null) {
                    bottomView.dismissBottomView();
                }
            }
        });
        bottomView.getView().findViewById(R.id.dialog_share_bt4).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(0);
                }
                BottomView bottomView = bottomView;
                if (bottomView != null) {
                    bottomView.dismissBottomView();
                }
            }
        });
        bottomView.getView().findViewById(R.id.dialog_share_bt5).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(3);
                }
                BottomView bottomView = bottomView;
                if (bottomView != null) {
                    bottomView.dismissBottomView();
                }
            }
        });
        bottomView.getView().findViewById(R.id.dialog_share_bt6).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (KTVideoPlayer.this.mCallback != null) {
                    KTVideoPlayer.this.mCallback.onShare(5);
                }
                BottomView bottomView = bottomView;
                if (bottomView != null) {
                    bottomView.dismissBottomView();
                }
            }
        });
    }

    public void showWifiDialog() {
        Builder builder = new Builder(getActivityContext());
        builder.setMessage(getResources().getString(R.string.tips_not_wifi));
        builder.setPositiveButton(getResources().getString(R.string.tips_not_wifi_confirm), new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                KTVideoPlayer.this.startPlayLogic();
            }
        });
        builder.setNegativeButton(getResources().getString(R.string.tips_not_wifi_cancel), new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                KTVideoPlayer.this.onVideoPause();
            }
        });
        builder.create().show();
    }

    public void setClickCallback(ClickCallback clickCallback) {
        this.mCallback = clickCallback;
    }

    public void setTpViewVisible(boolean z) {
        if (z) {
            this.player.tpview.setVisibility(0);
            hideAllWidget();
            return;
        }
        this.player.tpview.setVisibility(8);
        changeUiToNormal();
    }

    public void setTpStateText(String str) {
        AILog.d("setTpStateText", str);
        this.player.stateTv.setText(str);
    }

    public void setTpDviseText(String str) {
        AILog.d("setText", str);
        this.player.diviseTv.setText(str);
    }

    public void hideAllUI() {
        hideAllWidget();
    }

    public void changeToNormalUI() {
        changeUiToNormal();
    }

    /* access modifiers changed from: protected */
    public void updateStartImage() {
        if (this.mStartButton instanceof ImageView) {
            ImageView imageView = (ImageView) this.mStartButton;
            if (this.mCurrentState == 2) {
                imageView.setImageResource(R.drawable.video_click_pause_selector1);
            } else if (this.mCurrentState == 7) {
                imageView.setImageResource(R.drawable.video_click_play_selector1);
            } else {
                imageView.setImageResource(R.drawable.video_click_play_selector1);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void lockTouchLogic() {
        if (this.mLockCurScreen) {
            this.mLockScreen.setImageResource(R.drawable.unlock1);
            this.mLockCurScreen = false;
            return;
        }
        this.mLockScreen.setImageResource(R.drawable.lock1);
        this.mLockCurScreen = true;
        hideAllWidget();
    }

    /* access modifiers changed from: private */
    public void next(long j) {
        ClickCallback clickCallback = this.mCallback;
        if (clickCallback != null) {
            clickCallback.onShare(16);
        }
        new Handler().postDelayed(new Runnable() {
            public void run() {
                if (!StringUtils.isEmpty(KTVideoPlayer.currentUrl)) {
                    KTVideoPlayer.this.setUp(KTVideoPlayer.currentUrl, true, KTVideoPlayer.currentTitle);
                    if (KTVideoPlayer.this.isAutoSkipVideo()) {
                        if (0 == KTVideoPlayer.this.nativePrologue) {
                            KTVideoPlayer.this.nativePrologue = 90000;
                        }
                        KTVideoPlayer kTVideoPlayer = KTVideoPlayer.this;
                        kTVideoPlayer.setSeekOnStart(kTVideoPlayer.nativePrologue);
                    }
                    KTVideoPlayer.this.startPlayLogic();
                }
            }
        }, j);
    }

    /* access modifiers changed from: protected */
    public boolean setUp(String str, boolean z, File file, String str2, boolean z2) {
        releaseDanmuData(this);
        resetAdState();
        this.mCache = z;
        this.mCachePath = file;
        this.mOriginUrl = str;
        if (isCurrentMediaListener() && System.currentTimeMillis() - this.mSaveChangeViewTIme < 2000) {
            return false;
        }
        this.mCurrentState = 0;
        this.mUrl = str;
        this.mTitle = str2;
        if (z2) {
            setStateAndUi(0);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void setStateAndUi(int i) {
        this.mCurrentState = i;
        if ((i == 0 && isCurrentMediaListener()) || i == 6 || i == 7) {
            this.mHadPrepared = false;
        }
        int i2 = this.mCurrentState;
        if (i2 == 0) {
            if (isCurrentMediaListener()) {
                cancelProgressTimer();
                releasePauseCover();
                this.mBufferPoint = 0;
                this.mSaveChangeViewTIme = 0;
            }
            if (this.mAudioManager != null) {
                this.mAudioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
            }
            releaseNetWorkState();
        } else if (i2 == 1) {
            resetProgressAndTime();
        } else if (i2 != 2) {
            if (i2 == 5) {
                startProgressTimer();
            } else if (i2 == 6) {
                cancelProgressTimer();
                if (this.mProgressBar != null) {
                    this.mProgressBar.setProgress(100);
                }
                if (!(this.mCurrentTimeTextView == null || this.mTotalTimeTextView == null)) {
                    this.mCurrentTimeTextView.setText(this.mTotalTimeTextView.getText());
                }
                if (this.mBottomProgressBar != null) {
                    this.mBottomProgressBar.setProgress(100);
                }
            } else if (i2 == 7) {
                boolean isCurrentMediaListener = isCurrentMediaListener();
            }
        } else if (isCurrentMediaListener()) {
            startProgressTimer();
        }
        resolveUIState(i);
    }

    /* access modifiers changed from: protected */
    public void netWorkErrorLogic() {
        final long currentPositionWhenPlaying = (long) getCurrentPositionWhenPlaying();
        StringBuilder sb = new StringBuilder();
        sb.append("******* Net State Changed. renew player to connect *******");
        sb.append(currentPositionWhenPlaying);
        Debuger.printfError(sb.toString());
        postDelayed(new Runnable() {
            public void run() {
                KTVideoPlayer.this.setSeekOnStart(currentPositionWhenPlaying);
                KTVideoPlayer.this.startPlayLogic();
            }
        }, 500);
    }

    /* access modifiers changed from: protected */
    public void onClickUiToggle() {
        super.onClickUiToggle();
        if (this.mCurrentState == 1) {
            if (this.mBottomContainer == null) {
                return;
            }
            if (this.mBottomContainer.getVisibility() == 0) {
                this.mLineSwitch.setVisibility(0);
                if (this.mIfCurrentIsFullscreen) {
                    this.mScreenShot.setVisibility(0);
                    return;
                }
                return;
            }
            this.mLineSwitch.setVisibility(4);
            this.mScreenShot.setVisibility(4);
        } else if (this.mCurrentState == 2) {
            if (this.mBottomContainer == null) {
                return;
            }
            if (this.mBottomContainer.getVisibility() == 0) {
                this.mLineSwitch.setVisibility(0);
                if (this.mIfCurrentIsFullscreen) {
                    this.mScreenShot.setVisibility(0);
                    return;
                }
                return;
            }
            this.mLineSwitch.setVisibility(4);
            this.mScreenShot.setVisibility(4);
        } else if (this.mCurrentState == 5) {
            if (this.mBottomContainer == null) {
                return;
            }
            if (this.mBottomContainer.getVisibility() == 0) {
                this.mLineSwitch.setVisibility(0);
                if (this.mIfCurrentIsFullscreen) {
                    this.mScreenShot.setVisibility(0);
                    return;
                }
                return;
            }
            this.mLineSwitch.setVisibility(4);
            this.mScreenShot.setVisibility(4);
        } else if (this.mCurrentState == 6) {
            if (this.mBottomContainer == null) {
                return;
            }
            if (this.mBottomContainer.getVisibility() == 0) {
                this.mLineSwitch.setVisibility(0);
                if (this.mIfCurrentIsFullscreen) {
                    this.mScreenShot.setVisibility(0);
                    return;
                }
                return;
            }
            this.mLineSwitch.setVisibility(4);
            this.mScreenShot.setVisibility(4);
        } else if (this.mCurrentState == 3 && this.mBottomContainer != null) {
            if (this.mBottomContainer.getVisibility() == 0) {
                this.mLineSwitch.setVisibility(0);
                if (this.mIfCurrentIsFullscreen) {
                    this.mScreenShot.setVisibility(0);
                    return;
                }
                return;
            }
            this.mLineSwitch.setVisibility(4);
            this.mScreenShot.setVisibility(4);
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
        this.mLineSwitch.setVisibility(8);
        this.mScreenShot.setVisibility(4);
        this.mBottomProgressBar.setVisibility(8);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0062, code lost:
        r4 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0063, code lost:
        r3 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0065, code lost:
        r4 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0066, code lost:
        r0 = null;
        r3 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0069, code lost:
        r6 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0099, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x009a, code lost:
        r7.printStackTrace();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0069 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:4:0x002d] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0074 A[SYNTHETIC, Splitter:B:27:0x0074] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0095 A[SYNTHETIC, Splitter:B:34:0x0095] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean SaveFile(android.graphics.Bitmap r6, android.app.Activity r7) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.io.File r1 = r7.getExternalCacheDir()
            java.lang.String r1 = r1.getAbsolutePath()
            r0.append(r1)
            java.lang.String r1 = java.io.File.separator
            r0.append(r1)
            java.lang.String r1 = "dearxy"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            boolean r2 = r1.exists()
            if (r2 != 0) goto L_0x002c
            r1.mkdir()
        L_0x002c:
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch:{ Exception -> 0x006b, all -> 0x0069 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x006b, all -> 0x0069 }
            r3.<init>()     // Catch:{ Exception -> 0x006b, all -> 0x0069 }
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x006b, all -> 0x0069 }
            r3.append(r4)     // Catch:{ Exception -> 0x006b, all -> 0x0069 }
            java.lang.String r4 = ".jpg"
            r3.append(r4)     // Catch:{ Exception -> 0x006b, all -> 0x0069 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x006b, all -> 0x0069 }
            r2.<init>(r0, r3)     // Catch:{ Exception -> 0x006b, all -> 0x0069 }
            java.lang.String r0 = r2.toString()     // Catch:{ Exception -> 0x0065, all -> 0x0069 }
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0062, all -> 0x0069 }
            r3.<init>(r0)     // Catch:{ Exception -> 0x0062, all -> 0x0069 }
            android.graphics.Bitmap$CompressFormat r4 = android.graphics.Bitmap.CompressFormat.PNG     // Catch:{ Exception -> 0x0060 }
            r5 = 90
            r6.compress(r4, r5, r3)     // Catch:{ Exception -> 0x0060 }
            r3.close()     // Catch:{ IOException -> 0x005b }
            goto L_0x0077
        L_0x005b:
            r3 = move-exception
            r3.printStackTrace()
            goto L_0x0077
        L_0x0060:
            r4 = move-exception
            goto L_0x006f
        L_0x0062:
            r4 = move-exception
            r3 = r1
            goto L_0x006f
        L_0x0065:
            r4 = move-exception
            r0 = r1
            r3 = r0
            goto L_0x006f
        L_0x0069:
            r6 = move-exception
            goto L_0x0093
        L_0x006b:
            r4 = move-exception
            r0 = r1
            r2 = r0
            r3 = r2
        L_0x006f:
            r4.getStackTrace()     // Catch:{ all -> 0x0091 }
            if (r3 == 0) goto L_0x0077
            r3.close()     // Catch:{ IOException -> 0x005b }
        L_0x0077:
            r3 = 1
            android.content.ContentResolver r4 = r7.getContentResolver()
            android.provider.MediaStore.Images.Media.insertImage(r4, r6, r0, r1)
            android.content.Intent r6 = new android.content.Intent
            java.lang.String r0 = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
            r6.<init>(r0)
            android.net.Uri r0 = android.net.Uri.fromFile(r2)
            r6.setData(r0)
            r7.sendBroadcast(r6)
            return r3
        L_0x0091:
            r6 = move-exception
            r1 = r3
        L_0x0093:
            if (r1 == 0) goto L_0x009d
            r1.close()     // Catch:{ IOException -> 0x0099 }
            goto L_0x009d
        L_0x0099:
            r7 = move-exception
            r7.printStackTrace()
        L_0x009d:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.video.KTVideoPlayer.SaveFile(android.graphics.Bitmap, android.app.Activity):boolean");
    }

    private void initDanmaku() {
        StringBuilder sb = new StringBuilder();
        sb.append("initDanmaku ");
        sb.append(getDanmakuView());
        AILog.d("VideoPlayActivity", sb.toString());
        if (getDanmakuView() != null) {
            this.mDanmakuContext = DanmakuContext.create();
            HashMap hashMap = new HashMap();
            hashMap.put(Integer.valueOf(1), Integer.valueOf(3));
            hashMap.put(Integer.valueOf(6), Integer.valueOf(3));
            hashMap.put(Integer.valueOf(5), Integer.valueOf(3));
            hashMap.put(Integer.valueOf(4), Integer.valueOf(3));
            HashMap hashMap2 = new HashMap();
            hashMap2.put(Integer.valueOf(1), Boolean.valueOf(true));
            hashMap2.put(Integer.valueOf(6), Boolean.valueOf(true));
            hashMap2.put(Integer.valueOf(5), Boolean.valueOf(true));
            hashMap2.put(Integer.valueOf(4), Boolean.valueOf(true));
            this.mDanmakuContext.setDanmakuStyle(2, 3.0f).setScrollSpeedFactor(1.0f).setScaleTextSize(1.2f).setMaximumLines(hashMap).preventOverlapping(hashMap2);
            this.mDanmakuView.setCallback(new Callback() {
                public void danmakuShown(BaseDanmaku baseDanmaku) {
                }

                public void drawingFinished() {
                }

                public void updateTimer(DanmakuTimer danmakuTimer) {
                }

                public void prepared() {
                    StringBuilder sb = new StringBuilder();
                    sb.append("mDanmakuView prepared ");
                    sb.append(KTVideoPlayer.this.mDanmaKuShow);
                    AILog.d("VideoPlayActivity", sb.toString());
                    if (KTVideoPlayer.this.mDanmakuView != null) {
                        KTVideoPlayer.this.mDanmakuView.start();
                        if (KTVideoPlayer.this.getDanmakuStartSeekPosition() != -1) {
                            KTVideoPlayer kTVideoPlayer = KTVideoPlayer.this;
                            kTVideoPlayer.resolveDanmakuSeek(kTVideoPlayer, kTVideoPlayer.getDanmakuStartSeekPosition());
                            KTVideoPlayer.this.setDanmakuStartSeekPosition(-1);
                        }
                        KTVideoPlayer.this.setDanmaKuShow(true);
                        KTVideoPlayer.this.resolveDanmakuShow();
                        if (KTVideoPlayer.this.danmuData != null && KTVideoPlayer.this.danmuData.getDanmuList() != null && KTVideoPlayer.this.danmuData.getDanmuList().size() > 0) {
                            KTVideoPlayer kTVideoPlayer2 = KTVideoPlayer.this;
                            kTVideoPlayer2.addDanmaku(kTVideoPlayer2.danmuData.getDanmuList());
                        }
                    }
                }
            });
            this.mDanmakuView.enableDanmakuDrawingCache(true);
            ImageView imageView = this.iv_danmoku;
            if (imageView != null) {
                imageView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        if (KTVideoPlayer.this.mDanmaKuShow) {
                            KTVideoPlayer.this.mDanmaKuShow = false;
                            KTVideoPlayer.this.getDanmakuView().hide();
                            KTVideoPlayer.this.iv_danmoku.setImageResource(R.drawable.live_player_danmu_off);
                            KTVideoPlayer.this.tv_danmoku.setVisibility(8);
                            return;
                        }
                        KTVideoPlayer.this.tv_danmoku.setVisibility(0);
                        KTVideoPlayer.this.mDanmaKuShow = true;
                        KTVideoPlayer.this.getDanmakuView().show();
                        KTVideoPlayer.this.iv_danmoku.setImageResource(R.drawable.live_player_danmu_on);
                    }
                });
            }
            TextView textView = this.tv_danmoku;
            if (textView != null) {
                textView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        KTVideoPlayer.this.hideAllUI();
                        KTVideoPlayer.this.showDanMuEditDialog();
                    }
                });
            }
        }
    }

    /* access modifiers changed from: private */
    public void resolveDanmakuShow() {
        post(new Runnable() {
            public void run() {
                if (KTVideoPlayer.this.mDanmaKuShow) {
                    if (!KTVideoPlayer.this.getDanmakuView().isShown()) {
                        KTVideoPlayer.this.getDanmakuView().show();
                    }
                    KTVideoPlayer.this.iv_danmoku.setImageResource(R.drawable.live_player_danmu_on);
                    return;
                }
                if (KTVideoPlayer.this.getDanmakuView().isShown()) {
                    KTVideoPlayer.this.getDanmakuView().hide();
                }
                KTVideoPlayer.this.iv_danmoku.setImageResource(R.drawable.live_player_danmu_off);
            }
        });
    }

    private void onPrepareDanmaku(KTVideoPlayer kTVideoPlayer) {
        if (kTVideoPlayer.getDanmakuView() != null && !kTVideoPlayer.getDanmakuView().isPrepared() && kTVideoPlayer.getParser() != null) {
            kTVideoPlayer.getDanmakuView().prepare(kTVideoPlayer.getParser(), kTVideoPlayer.getDanmakuContext());
            SendDanmuListener sendDanmuListener = kTVideoPlayer.mSendDanmuListener;
            if (sendDanmuListener != null) {
                sendDanmuListener.getDanmuListener();
            }
        }
    }

    /* access modifiers changed from: private */
    public void resolveDanmakuSeek(KTVideoPlayer kTVideoPlayer, long j) {
        if (kTVideoPlayer.getDanmakuView() != null && kTVideoPlayer.getDanmakuView().isPrepared()) {
            kTVideoPlayer.getDanmakuView().seekTo(Long.valueOf(j));
        }
    }

    private BaseDanmakuParser createParser() {
        return new BaseDanmakuParser() {
            /* access modifiers changed from: protected */
            public Danmakus parse() {
                return new MyDanmakus();
            }
        };
    }

    public void releaseDanmaku(KTVideoPlayer kTVideoPlayer) {
        if (kTVideoPlayer != null && kTVideoPlayer.getDanmakuView() != null) {
            Debuger.printfError("release Danmaku!");
            releaseDanmuData(kTVideoPlayer);
            kTVideoPlayer.getDanmakuView().release();
        }
    }

    public BaseDanmakuParser getParser() {
        if (this.mParser == null) {
            this.mParser = createParser();
        }
        return this.mParser;
    }

    public DanmakuContext getDanmakuContext() {
        return this.mDanmakuContext;
    }

    public IDanmakuView getDanmakuView() {
        return this.mDanmakuView;
    }

    public long getDanmakuStartSeekPosition() {
        return this.mDanmakuStartSeekPosition;
    }

    public void setDanmakuStartSeekPosition(long j) {
        this.mDanmakuStartSeekPosition = j;
    }

    public void setDanmaKuShow(boolean z) {
        this.mDanmaKuShow = z;
    }

    public boolean getDanmaKuShow() {
        return this.mDanmaKuShow;
    }

    public void addDanmaku(KTVideoPlayer kTVideoPlayer, String str, boolean z, long j, boolean z2) {
        BaseDanmaku createDanmaku = kTVideoPlayer.getDanmakuContext().mDanmakuFactory.createDanmaku(1);
        if (createDanmaku != null && kTVideoPlayer.getDanmakuView() != null) {
            createDanmaku.text = str;
            createDanmaku.padding = 5;
            createDanmaku.priority = 8;
            createDanmaku.isLive = true;
            createDanmaku.setTime(j);
            createDanmaku.textSize = (kTVideoPlayer.getParser().getDisplayer().getDensity() - 0.6f) * 20.0f;
            createDanmaku.textColor = -1;
            kTVideoPlayer.getDanmakuView().addDanmaku(createDanmaku);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x006e, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void addDanmaku(java.util.List<com.kantv.common.bean.DanmuBean> r8) {
        /*
            r7 = this;
            if (r8 == 0) goto L_0x0074
            int r0 = r8.size()
            if (r0 <= 0) goto L_0x0074
            master.flame.danmaku.controller.IDanmakuView r0 = r7.getDanmakuView()
            if (r0 == 0) goto L_0x0074
            monitor-enter(r8)
            java.util.Iterator r0 = r8.iterator()     // Catch:{ all -> 0x0071 }
        L_0x0013:
            boolean r1 = r0.hasNext()     // Catch:{ all -> 0x0071 }
            if (r1 == 0) goto L_0x006f
            java.lang.Object r1 = r0.next()     // Catch:{ all -> 0x0071 }
            com.kantv.common.bean.DanmuBean r1 = (com.kantv.common.bean.DanmuBean) r1     // Catch:{ all -> 0x0071 }
            master.flame.danmaku.danmaku.model.android.DanmakuContext r2 = r7.getDanmakuContext()     // Catch:{ all -> 0x0071 }
            master.flame.danmaku.danmaku.model.android.DanmakuFactory r2 = r2.mDanmakuFactory     // Catch:{ all -> 0x0071 }
            r3 = 1
            master.flame.danmaku.danmaku.model.BaseDanmaku r2 = r2.createDanmaku(r3)     // Catch:{ all -> 0x0071 }
            if (r2 == 0) goto L_0x006d
            master.flame.danmaku.controller.IDanmakuView r4 = r7.getDanmakuView()     // Catch:{ all -> 0x0071 }
            if (r4 != 0) goto L_0x0033
            goto L_0x006d
        L_0x0033:
            java.lang.String r4 = r1.getMsg()     // Catch:{ all -> 0x0071 }
            r2.text = r4     // Catch:{ all -> 0x0071 }
            r4 = 5
            r2.padding = r4     // Catch:{ all -> 0x0071 }
            r4 = 0
            r2.priority = r4     // Catch:{ all -> 0x0071 }
            r2.isLive = r3     // Catch:{ all -> 0x0071 }
            long r3 = r1.getSec()     // Catch:{ all -> 0x0071 }
            r5 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 * r5
            r2.setTime(r3)     // Catch:{ all -> 0x0071 }
            r1 = 1101004800(0x41a00000, float:20.0)
            master.flame.danmaku.danmaku.parser.BaseDanmakuParser r3 = r7.getParser()     // Catch:{ all -> 0x0071 }
            master.flame.danmaku.danmaku.model.IDisplayer r3 = r3.getDisplayer()     // Catch:{ all -> 0x0071 }
            float r3 = r3.getDensity()     // Catch:{ all -> 0x0071 }
            r4 = 1058642330(0x3f19999a, float:0.6)
            float r3 = r3 - r4
            float r3 = r3 * r1
            r2.textSize = r3     // Catch:{ all -> 0x0071 }
            r1 = -1
            r2.textColor = r1     // Catch:{ all -> 0x0071 }
            master.flame.danmaku.controller.IDanmakuView r1 = r7.getDanmakuView()     // Catch:{ all -> 0x0071 }
            r1.addDanmaku(r2)     // Catch:{ all -> 0x0071 }
            goto L_0x0013
        L_0x006d:
            monitor-exit(r8)     // Catch:{ all -> 0x0071 }
            return
        L_0x006f:
            monitor-exit(r8)     // Catch:{ all -> 0x0071 }
            goto L_0x0074
        L_0x0071:
            r0 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x0071 }
            throw r0
        L_0x0074:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.video.KTVideoPlayer.addDanmaku(java.util.List):void");
    }

    public void onPrepared() {
        super.onPrepared();
        StringBuilder sb = new StringBuilder();
        sb.append("onPrepared:after");
        sb.append(this.mStartAfterPrepared);
        AILog.d("VideoPlayActivity", sb.toString());
        OnPreparedListner onPreparedListner = this.mOnPreparedListner;
        if (onPreparedListner != null) {
            onPreparedListner.onPrepared();
        }
        this.mHandler.removeCallbacks(this.mAdTimeRunnable);
        if (this.isPlayAd) {
            this.mHandler.post(this.mAdTimeRunnable);
        }
    }

    public void onVideoPause() {
        super.onVideoPause();
        DanmakuView danmakuView = this.mDanmakuView;
        if (danmakuView != null && danmakuView.isPrepared()) {
            this.mDanmakuView.pause();
        }
        if (this.isPlayAd) {
            this.adLayout.setVisibility(8);
        }
    }

    public void onVideoResume() {
        super.onVideoResume();
        DanmakuView danmakuView = this.mDanmakuView;
        if (danmakuView != null && danmakuView.isPrepared() && this.mDanmakuView.isPaused()) {
            this.mDanmakuView.resume();
        }
        if (this.isPlayAd) {
            this.adLayout.setVisibility(0);
        }
    }

    public void onVideoResume(boolean z) {
        super.onVideoResume(z);
        DanmakuView danmakuView = this.mDanmakuView;
        if (danmakuView != null && danmakuView.isPrepared() && this.mDanmakuView.isPaused()) {
            this.mDanmakuView.resume();
        }
    }

    public void release() {
        super.release();
        releaseDanmaku(this);
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private void releaseDanmuData(KTVideoPlayer kTVideoPlayer) {
        DanmuData danmuData2 = this.danmuData;
        if (danmuData2 != null) {
            danmuData2.getDanmuList().clear();
            this.danmuData.getDamnPart().clear();
        }
        if (kTVideoPlayer != null && kTVideoPlayer.getDanmakuView() != null) {
            Debuger.printfError("release Danmaku!");
            kTVideoPlayer.getDanmakuView().removeAllDanmakus(true);
        }
    }

    public void onSeekComplete() {
        super.onSeekComplete();
        if (this.mIfCurrentIsFullscreen) {
            int currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
            resolveDanmakuSeek(this, (long) currentPositionWhenPlaying);
            SendDanmuListener sendDanmuListener = this.mSendDanmuListener;
            if (sendDanmuListener != null) {
                sendDanmuListener.getDanmuListener();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("onSeekComplete ");
            sb.append(this.mHadPlay);
            String str = " ";
            sb.append(str);
            sb.append(currentPositionWhenPlaying);
            sb.append(str);
            sb.append(currentPositionWhenPlaying);
            AILog.d("VideoPlayActivity", sb.toString());
        }
    }

    public int getCurrentPositionWhenPlaying() {
        int i = 0;
        if (this.mCurrentState == 2 || this.mCurrentState == 5 || this.mCurrentState == 3) {
            try {
                i = (int) getGSYVideoManager().getCurrentPosition();
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
        if (i == 0 && this.mCurrentPosition > 0) {
            i = (int) this.mCurrentPosition;
        }
        return i;
    }

    public void addDanmuList(int i, List<DanmuBean> list) {
        if (!this.danmuData.getDamnPart().contains(Integer.valueOf(i))) {
            this.danmuData.getDamnPart().add(Integer.valueOf(i));
            if (list != null) {
                this.danmuData.getDanmuList().addAll(list);
                Collections.sort(this.danmuData.getDanmuList());
                addDanmaku(list);
            }
        }
    }

    public void setAds(List<AdBean> list, int i) {
        this.mAdBean.clear();
        this.mAdBean.addAll(list);
        this.mAdTime = i;
    }

    public void setSendDanmuListener(SendDanmuListener sendDanmuListener) {
        this.mSendDanmuListener = sendDanmuListener;
    }

    public void setOnPreparedListner(OnPreparedListner onPreparedListner) {
        this.mOnPreparedListner = onPreparedListner;
    }

    /* access modifiers changed from: protected */
    public void clickStartIcon() {
        if (TextUtils.isEmpty(this.mUrl)) {
            StringBuilder sb = new StringBuilder();
            sb.append("********");
            sb.append(getResources().getString(R.string.no_url));
            Debuger.printfError(sb.toString());
            return;
        }
        if (this.mCurrentState == 0 || this.mCurrentState == 7) {
            if (isShowNetConfirm()) {
                showWifiDialog();
                return;
            }
            startButtonLogic();
        } else if (this.mCurrentState == 2) {
            try {
                onVideoPause();
            } catch (Exception e) {
                e.printStackTrace();
            }
            setStateAndUi(5);
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                if (this.mIfCurrentIsFullscreen) {
                    Debuger.printfLog("onClickStopFullscreen");
                    this.mVideoAllCallBack.onClickStopFullscreen(this.mOriginUrl, this.mTitle, this);
                } else {
                    Debuger.printfLog("onClickStop");
                    this.mVideoAllCallBack.onClickStop(this.mOriginUrl, this.mTitle, this);
                }
            }
        } else if (this.mCurrentState == 5) {
            try {
                onVideoResume(false);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
                if (this.mIfCurrentIsFullscreen) {
                    Debuger.printfLog("onClickResumeFullscreen");
                    this.mVideoAllCallBack.onClickResumeFullscreen(this.mOriginUrl, this.mTitle, this);
                } else {
                    Debuger.printfLog("onClickResume");
                    this.mVideoAllCallBack.onClickResume(this.mOriginUrl, this.mTitle, this);
                }
            }
            if (!this.mHadPlay && !this.mStartAfterPrepared) {
                startAfterPrepared();
            }
            try {
                getGSYVideoManager().start();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            setStateAndUi(2);
        } else if (this.mCurrentState == 6) {
            startButtonLogic();
        }
    }

    public GSYVideoViewBridge getGSYVideoManager() {
        MyGSYVideoManager.instance().initContext(getContext().getApplicationContext());
        return MyGSYVideoManager.instance();
    }

    /* access modifiers changed from: protected */
    public boolean backFromFull(Context context) {
        return MyGSYVideoManager.backFromWindowFull(context);
    }

    /* access modifiers changed from: protected */
    public void releaseVideos() {
        MyGSYVideoManager.releaseAllVideos();
        AILog.d("VideoPlayActivity", "releaseVideos");
    }

    /* access modifiers changed from: protected */
    public int getFullId() {
        return MyGSYVideoManager.FULLSCREEN_ID;
    }

    /* access modifiers changed from: protected */
    public int getSmallId() {
        return MyGSYVideoManager.SMALL_ID;
    }

    /* access modifiers changed from: protected */
    public void startPrepare() {
        StringBuilder sb = new StringBuilder();
        sb.append(toString());
        sb.append(" startPrepare");
        String str = "VideoPlayActivity";
        AILog.d(str, sb.toString());
        if (getGSYVideoManager().listener() != null) {
            getGSYVideoManager().listener().onCompletion();
        }
        if (this.mVideoAllCallBack != null) {
            this.mVideoAllCallBack.onStartPrepared(this.mOriginUrl, this.mTitle, this);
        }
        getGSYVideoManager().setListener(this);
        getGSYVideoManager().setPlayTag(this.mPlayTag);
        getGSYVideoManager().setPlayPosition(this.mPlayPosition);
        this.mAudioManager.requestAudioFocus(this.onAudioFocusChangeListener, 3, 2);
        ((Activity) getActivityContext()).getWindow().addFlags(128);
        this.mBackUpPlayingBufferState = -1;
        List<AdBean> list = this.mAdBean;
        if (list != null && list.size() > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(toString());
            sb2.append(" startPrepare 222");
            AILog.d(str, sb2.toString());
            ((MyGSYVideoManager) getGSYVideoManager()).setAds(this.mAdBean);
            ((MyGSYVideoManager) getGSYVideoManager()).setAdListener(this.mAdListener);
        }
        if (getGSYVideoManager().getPlayer() == null || getGSYVideoManager().getPlayer().getMediaPlayer() == null) {
            getGSYVideoManager().prepare(this.mUrl, this.mMapHeadData == null ? new HashMap() : this.mMapHeadData, this.mLooping, this.mSpeed, this.mCache, this.mCachePath, this.mOverrideExtension);
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(toString());
            sb3.append(" startPrepare 111");
            AILog.d(str, sb3.toString());
            try {
                ((MyExoPlayer) getGSYVideoManager().getPlayer().getMediaPlayer()).prepareWithAd(this.mUrl);
                getGSYVideoManager().prepare(this.mUrl, this.mMapHeadData == null ? new HashMap() : this.mMapHeadData, this.mLooping, this.mSpeed, this.mCache, this.mCachePath, this.mOverrideExtension);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        setStateAndUi(1);
    }

    public MyExoPlayer getMediaPlayer() {
        try {
            return (MyExoPlayer) getGSYVideoManager().getPlayer().getMediaPlayer();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void showAdView(KTVideoPlayer kTVideoPlayer) {
        StringBuilder sb = new StringBuilder();
        sb.append("showAdView mAdTime:");
        sb.append(kTVideoPlayer.toString());
        sb.append(" ");
        sb.append(kTVideoPlayer.mAdTime);
        AILog.d("VideoPlayActivity", sb.toString());
        kTVideoPlayer.adLayout.setVisibility(0);
        if (kTVideoPlayer.mAdTime > 0) {
            TextView textView = kTVideoPlayer.adCount;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(kTVideoPlayer.mAdTime);
            sb2.append("");
            textView.setText(sb2.toString());
        }
        hideAllUI();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PlayerId:");
        sb.append(this.videDId);
        return sb.toString();
    }

    public void dismissAdView(KTVideoPlayer kTVideoPlayer) {
        StringBuilder sb = new StringBuilder();
        sb.append("dismissAdView:");
        sb.append(kTVideoPlayer.toString());
        AILog.d("VideoPlayActivity", sb.toString());
        kTVideoPlayer.adLayout.setVisibility(8);
        kTVideoPlayer.adCount.setText("");
    }
}
