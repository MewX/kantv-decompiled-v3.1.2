package com.kantv.ui;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabWidget;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVInstallation;
import com.avos.avoscloud.PushService;
import com.avos.avoscloud.SaveCallback;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Selection;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.ui.activity.AccountLoginActivity;
import com.kantv.ui.activity.NewsDetailActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.DeviceUtil;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.fragment.FlutterLiveFragment;
import com.kantv.ui.fragment.KanListFragment;
import com.kantv.ui.fragment.LiveFragment;
import com.kantv.ui.fragment.TabNewsFragment;
import com.kantv.ui.fragment.TabTvFragment;
import com.kantv.ui.fragment.VideoShortFragment;
import com.kantv.ui.photo.PermissionUtil;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.DownloadUtils;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.LocationUtils;
import com.kantv.ui.utils.LocationUtils.ILocation;
import com.kantv.ui.utils.NetWorkUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.SharedData;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.view.CustomDrawerLayout;
import com.kantv.ui.view.CustomFragmentTabHost;
import com.kantv.ui.view.ShareDialog;
import com.kantv.ui.view.ShareDialogImp;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.tauth.Tencent;
import debug.KanApplication;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request.Builder;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import retrofit2.Call;
import retrofit2.Response;

public class MainActivity extends PackageActivity {
    private static final int REQUEST_CODE_LOCATION = 64;
    private static final String TAG = "MainActivity";
    public static WeakReference<MainActivity> sRef;
    private IWXAPI api;
    private ArrayList<Class> fragmentArray = new ArrayList<>();
    /* access modifiers changed from: private */
    public String[] highImgArray = new String[10];
    @BindView(2131296807)
    ImageView iv_close;
    @BindView(2131296811)
    ImageView iv_play;
    @BindView(2131296814)
    ImageView iv_src;
    private LayoutInflater layoutInflater;
    @BindView(2131296855)
    LinearLayout ll_movie_histroy;
    private boolean mHadAd;
    private int[] mImageViewArray = {R.drawable.tab_default, R.drawable.tab_menu_live, R.drawable.tab_menu_news, R.drawable.tab_menu_me};
    /* access modifiers changed from: private */
    public boolean mIsClickClose;
    /* access modifiers changed from: private */
    public String mMovieHitroy;
    @BindView(2131297108)
    CustomDrawerLayout mRoot;
    private ShareDialog mShareDialog;
    private ShareDialogImp mShareDialogImp = null;
    /* access modifiers changed from: private */
    public boolean mShowHistroy;
    /* access modifiers changed from: private */
    public ArrayList<String> mTabArray = new ArrayList<>();
    @BindView(2131296309)
    CustomFragmentTabHost mTabHost;
    @BindView(2131297258)
    View mTabLine;
    private ArrayList<String> mTabTag = new ArrayList<>();
    public TabTvFragment mTabTvFragment = null;
    private Tencent mTencent;
    /* access modifiers changed from: private */
    public String[] normalImgArray = new String[10];
    private final OnTabChangeListener onTabChangeListener = new OnTabChangeListener() {
        public void onTabChanged(final String str) {
            int currentTab = MainActivity.this.mTabHost.getCurrentTab();
            if (!MainActivity.this.mShowHistroy || MainActivity.this.mIsClickClose || currentTab != 0 || TextUtils.isEmpty(MainActivity.this.mMovieHitroy)) {
                MainActivity.this.ll_movie_histroy.setVisibility(8);
            } else {
                MainActivity.this.ll_movie_histroy.setVisibility(0);
            }
            TabWidget tabWidget = MainActivity.this.mTabHost.getTabWidget();
            for (int i = 0; i < tabWidget.getChildCount(); i++) {
                View childAt = tabWidget.getChildAt(i);
                ImageView imageView = (ImageView) childAt.findViewById(R.id.ivImg);
                TextView textView = (TextView) childAt.findViewById(R.id.ivtxt);
                if (MainActivity.this.useDefultTab) {
                    if (i == MainActivity.this.mTabHost.getCurrentTab()) {
                        imageView.setEnabled(true);
                        textView.setEnabled(true);
                    } else {
                        textView.setEnabled(false);
                        imageView.setEnabled(false);
                    }
                } else if (i == MainActivity.this.mTabHost.getCurrentTab()) {
                    imageView.setEnabled(true);
                    textView.setEnabled(true);
                    GlideUtils.loadimage(MainActivity.this.highImgArray[i], (ImageView) childAt.findViewById(R.id.ivImg));
                } else {
                    textView.setEnabled(false);
                    imageView.setEnabled(false);
                    GlideUtils.loadimage(MainActivity.this.normalImgArray[i], (ImageView) childAt.findViewById(R.id.ivImg));
                }
            }
            if (str.equals("video")) {
                MainActivity mainActivity = MainActivity.this;
                mainActivity.mTabTvFragment = (TabTvFragment) mainActivity.getSupportFragmentManager().findFragmentByTag(str);
                if (MainActivity.this.mTabTvFragment == null) {
                    new Handler().postDelayed(new Runnable() {
                        public void run() {
                            if (MainActivity.this.mTabArray != null && MainActivity.this.mTabArray.size() > 0) {
                                MainActivity.this.mTabTvFragment = (TabTvFragment) MainActivity.this.getSupportFragmentManager().findFragmentByTag(str);
                            }
                        }
                    }, 500);
                }
            }
            if (str.equals("news")) {
                MainActivity.this.initStatusBar();
                if (VERSION.SDK_INT >= 21) {
                    MainActivity.this.getWindow().getDecorView().setSystemUiVisibility(9472);
                }
            } else {
                MainActivity.this.initStatusBar();
            }
            MainActivity.this.setTransparentTabBar(str);
        }
    };
    @BindView(2131297318)
    TextView tv_content;
    @BindView(2131297326)
    TextView tv_name;
    /* access modifiers changed from: private */
    public boolean useDefultTab = true;

    public interface IFragment {
        int getIndex();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        sRef = new WeakReference<>(this);
        setContentView((int) R.layout.activity_main);
        initDensity();
        initBase();
        initStatusBar();
        initOnlineFootTabs();
        PreferenceUtil.put(Utils.getContext(), "isfirst", Boolean.valueOf(false));
        initMovieList();
        initOnlineStatus();
        initPush();
        initVersionUpdate();
        checkLimitIp();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN1);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
        initLeftAd();
        checkPermission();
        CommonViewModel.getMessageCount();
        showShortVideoIntroduction();
    }

    private void showShortVideoIntroduction() {
        Boolean valueOf = Boolean.valueOf(false);
        String str = UserPreference.SHORT_VIDEO_INTRODUCTION;
        if (!((Boolean) PreferenceUtil.get(str, valueOf)).booleanValue()) {
            CommonViewModel.showShortVideoDialog(this);
            PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(true));
        }
    }

    public void showShareDialog(String str, String str2) {
        String str3 = "";
        CommonViewModel.tongJiShare(str2, str3, str3);
        if (this.mShareDialogImp == null) {
            this.mShareDialogImp = new ShareDialogImp(this);
        }
        this.mShareDialogImp.setTitle(str);
        this.mShareDialogImp.setmNiShareUrl(str2);
        this.mShareDialogImp.show();
    }

    private void initDensity() {
        DensityUtil.Density40 = (int) DensityUtil.convertDpToPixels(this, getResources().getDimension(R.dimen.width_40));
        DensityUtil.Density60 = (int) DensityUtil.convertDpToPixels(this, getResources().getDimension(R.dimen.width_60));
        DensityUtil.Density38 = (int) DensityUtil.convertDpToPixels(this, getResources().getDimension(R.dimen.width_38));
        DensityUtil.Density68 = (int) DensityUtil.convertDpToPixels(this, getResources().getDimension(R.dimen.width_68));
    }

    private void checkPermission() {
        StringBuilder sb = new StringBuilder();
        sb.append(Utils.getPackageInfo(this).versionName);
        sb.append("_permission");
        String sb2 = sb.toString();
        if (!((Boolean) PreferenceUtil.get(sb2, Boolean.valueOf(false))).booleanValue()) {
            PreferenceUtil.put(sb2, Boolean.valueOf(true));
            checkLocationPermission();
            checkNotifationPermission();
        }
    }

    private void initLeftAd() {
        this.mRoot.setTagView(this.mTabHost);
    }

    private void initMovieList() {
        this.mShowHistroy = ((Boolean) PreferenceUtil.get(Utils.getContext(), "download_type_wifi", Boolean.valueOf(true))).booleanValue();
        this.mMovieHitroy = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.MOVIEHISTROY, "");
        if (!this.mShowHistroy || TextUtils.isEmpty(this.mMovieHitroy)) {
            this.ll_movie_histroy.setVisibility(8);
            return;
        }
        this.ll_movie_histroy.setVisibility(0);
        JSONObject jSONObject = (JSONObject) JSONObject.parse(this.mMovieHitroy);
        final String string = jSONObject.getString("tid");
        final String string2 = jSONObject.getString("seo");
        String string3 = jSONObject.getString("name");
        String string4 = jSONObject.getString("content");
        GlideUtils.loadimage(jSONObject.getString("photo"), this.iv_src);
        this.tv_name.setText(string3);
        TextView textView = this.tv_content;
        StringBuilder sb = new StringBuilder();
        sb.append("上次观看到：");
        sb.append(string4);
        textView.setText(sb.toString());
        this.iv_close.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MainActivity.this.mIsClickClose = true;
                MainActivity.this.ll_movie_histroy.setVisibility(8);
                ToastUtils.show((CharSequence) "如需永久关闭，请前往“我”——\"设置\"进行关闭", 1);
            }
        });
        this.ll_movie_histroy.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                Bundle bundle = new Bundle();
                bundle.putString("tid", string);
                bundle.putString("seo", string2);
                MainActivity.this.gotoActivity(bundle, VideoPlayActivity.class);
                MainActivity.this.mIsClickClose = true;
                MainActivity.this.ll_movie_histroy.setVisibility(8);
            }
        });
    }

    private void checkNotifationPermission() {
        CommonViewModel.checkNotification(this, getResources().getString(R.string.open_push_title), getResources().getString(R.string.open_push_tips), "");
    }

    private void checkLocationPermission() {
        String str = "1";
        if (VERSION.SDK_INT >= 23) {
            String str2 = "android.permission.ACCESS_COARSE_LOCATION";
            int checkSelfPermission = ContextCompat.checkSelfPermission(Utils.getContext(), str2);
            String str3 = "android.permission.ACCESS_FINE_LOCATION";
            String str4 = TAG;
            if (checkSelfPermission == 0 && ContextCompat.checkSelfPermission(Utils.getContext(), str3) == 0) {
                AILog.d(str4, "checkLocationPermission:有定位权限");
                uploadLocation(str);
                return;
            }
            AILog.d(str4, "checkLocationPermission:无权定位权限");
            ActivityCompat.requestPermissions(this, new String[]{str2, str3}, 64);
            return;
        }
        uploadLocation(str);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 64) {
            int length = iArr.length;
            String str = TAG;
            if (length <= 0 || iArr[0] != 0) {
                AILog.d(str, "MainActivity onRequestPermissionsResult:授权请求被拒绝");
                uploadLocation("0");
                return;
            }
            AILog.d(str, "MainActivity onRequestPermissionsResult:授权请求被允许");
            uploadLocation("1");
        }
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (getIntent().getExtras() != null) {
            pushInfoProcess(getIntent().getExtras().getString("pushtype"), getIntent().getExtras().getString("url"), getIntent().getExtras().getString("title"));
        }
    }

    private void initOnlineFootTabs() {
        if (this.fragmentArray == null) {
            this.fragmentArray = new ArrayList<>();
        }
        if (this.mTabArray == null) {
            this.mTabArray = new ArrayList<>();
        }
        if (this.mTabTag == null) {
            this.mTabTag = new ArrayList<>();
        }
        ArrayList<Class> arrayList = this.fragmentArray;
        if (arrayList != null) {
            arrayList.clear();
            this.fragmentArray.add(TabTvFragment.class);
            this.fragmentArray.add(FlutterLiveFragment.class);
            this.fragmentArray.add(TabNewsFragment.class);
            this.fragmentArray.add(VideoShortFragment.class);
        }
        ArrayList<String> arrayList2 = this.mTabArray;
        if (arrayList2 != null) {
            arrayList2.clear();
            this.mTabArray.add("首页");
            this.mTabArray.add(UserPreference.ANALYZE_SCREEN2);
            this.mTabArray.add("资讯");
            this.mTabArray.add("短视频");
        }
        ArrayList<String> arrayList3 = this.mTabTag;
        if (arrayList3 != null) {
            arrayList3.clear();
            this.mTabTag.add("video");
            this.mTabTag.add("webview");
            this.mTabTag.add("news");
            this.mTabTag.add("shortvideo");
        }
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.FOOT_TAB_JSON, str);
        int isCache = DateUtil.isCache(str2, (String) PreferenceUtil.get(Utils.getContext(), UserPreference.FOOT_TAB_TIME, str));
        if (isCache == 0) {
            parseFootTab(str2);
        } else if (isCache == 1) {
            requestFootTab(str2, false);
        }
    }

    private void requestFootTab(final String str, boolean z) {
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str2);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().bottomNav(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!MainActivity.this.isDestroy) {
                    if (!StringUtils.isEmpty(this.json)) {
                        org.json.JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                MainActivity.this.parseFootTab(this.json);
                            } else if (!StringUtils.isEmpty(str)) {
                                MainActivity.this.parseFootTab(str);
                            } else {
                                MainActivity.this.initDefaultFootTabs();
                            }
                        }
                    } else if (!StringUtils.isEmpty(str)) {
                        MainActivity.this.parseFootTab(str);
                    } else {
                        MainActivity.this.initDefaultFootTabs();
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                MainActivity.this.initDefaultFootTabs();
            }
        });
    }

    /* access modifiers changed from: private */
    public void parseFootTab(String str) {
        String str2 = "@2x.jpg";
        String str3 = "url";
        org.json.JSONObject jsonObject = StringUtils.toJsonObject(str);
        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
            org.json.JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
            if (jsonObject2 == null) {
                initDefaultFootTabs();
                return;
            }
            JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("noplus"));
            if (jsonArray == null || jsonArray.length() <= 0) {
                initDefaultFootTabs();
            } else {
                PreferenceUtil.put(Utils.getContext(), UserPreference.FOOT_TAB_JSON, str);
                PreferenceUtil.put(Utils.getContext(), UserPreference.FOOT_TAB_TIME, String.valueOf(System.currentTimeMillis() / 1000));
                for (int i = 0; i < jsonArray.length(); i++) {
                    try {
                        String str4 = "title";
                        String str5 = "seo";
                        if (i >= this.mTabTag.size()) {
                            this.mTabArray.add(jsonArray.getJSONObject(i).optString(str4));
                            this.mTabTag.add(jsonArray.getJSONObject(i).optString(str5));
                            this.fragmentArray.add(LiveFragment.class);
                        } else {
                            this.mTabArray.set(i, jsonArray.getJSONObject(i).optString(str4));
                            this.mTabTag.set(i, jsonArray.getJSONObject(i).optString(str5));
                        }
                        String optString = jsonArray.getJSONObject(i).optString(str5);
                        char c = 65535;
                        String str6 = "watchlist";
                        switch (optString.hashCode()) {
                            case -279939603:
                                if (optString.equals(str6)) {
                                    c = 4;
                                    break;
                                }
                                break;
                            case 3322092:
                                if (optString.equals("live")) {
                                    c = 5;
                                    break;
                                }
                                break;
                            case 3377875:
                                if (optString.equals("news")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case 112202875:
                                if (optString.equals("video")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 1224424441:
                                if (optString.equals("webview")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 1586888063:
                                if (optString.equals("shortvideo")) {
                                    c = 3;
                                    break;
                                }
                                break;
                        }
                        if (c == 0) {
                            this.fragmentArray.set(i, TabTvFragment.class);
                        } else if (c != 1) {
                            if (c == 2) {
                                this.fragmentArray.set(i, TabNewsFragment.class);
                                if (i == 0 && VERSION.SDK_INT >= 21) {
                                    getWindow().getDecorView().setSystemUiVisibility(9472);
                                }
                            } else if (c == 3) {
                                this.fragmentArray.set(i, VideoShortFragment.class);
                            } else if (c == 4) {
                                this.fragmentArray.set(i, KanListFragment.class);
                            } else if (c != 5) {
                                this.fragmentArray.set(i, LiveFragment.class);
                            } else {
                                this.fragmentArray.set(i, FlutterLiveFragment.class);
                            }
                        } else if (jsonArray.getJSONObject(i).optString(str3).contains(str6)) {
                            this.fragmentArray.set(i, KanListFragment.class);
                            this.mTabTag.set(i, str6);
                            PreferenceUtil.put(Utils.getContext(), UserPreference.WATCHLIST_TOPIC_URL, jsonArray.getJSONObject(i).optString(str3));
                        } else {
                            this.fragmentArray.set(i, LiveFragment.class);
                        }
                        String str7 = TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.fragmentArray.toString());
                        sb.append("");
                        AILog.d(str7, sb.toString());
                        String[] strArr = this.normalImgArray;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(jsonArray.getJSONObject(i).optString("photo_n"));
                        sb2.append(str2);
                        strArr[i] = sb2.toString();
                        String[] strArr2 = this.highImgArray;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(jsonArray.getJSONObject(i).optString("photo_h"));
                        sb3.append(str2);
                        strArr2[i] = sb3.toString();
                    } catch (Exception e) {
                        e.printStackTrace();
                        KanApplication.clearTvDefaultIndexJson();
                    }
                }
                initFootTabs();
            }
        }
    }

    private void initFootTabs() {
        this.useDefultTab = false;
        this.layoutInflater = LayoutInflater.from(this);
        this.mTabHost.setup(this, getSupportFragmentManager(), R.id.main_fl);
        for (int i = 0; i < this.fragmentArray.size(); i++) {
            this.mTabHost.addTab(this.mTabHost.newTabSpec((String) this.mTabTag.get(i)).setIndicator(getTabItemView(i)), (Class) this.fragmentArray.get(i), null);
            this.mTabTvFragment = (TabTvFragment) getSupportFragmentManager().findFragmentByTag("video");
            if (this.mTabTvFragment == null) {
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        if (MainActivity.this.mTabArray != null && MainActivity.this.mTabArray.size() > 0) {
                            MainActivity.this.mTabTvFragment = (TabTvFragment) MainActivity.this.getSupportFragmentManager().findFragmentByTag("video");
                        }
                    }
                }, 500);
            }
        }
        this.mTabHost.setOnTabChangedListener(this.onTabChangeListener);
    }

    /* access modifiers changed from: private */
    public void initDefaultFootTabs() {
        ToastUtils.showShort((CharSequence) "网络异常");
        this.useDefultTab = true;
        this.layoutInflater = LayoutInflater.from(this);
        this.mTabHost.setup(this, getSupportFragmentManager(), R.id.main_fl);
        for (int i = 0; i < this.fragmentArray.size(); i++) {
            this.mTabHost.addTab(this.mTabHost.newTabSpec((String) this.mTabTag.get(i)).setIndicator(getDefaultTabItemView(i)), (Class) this.fragmentArray.get(i), null);
            this.mTabTvFragment = (TabTvFragment) getSupportFragmentManager().findFragmentByTag("video");
            if (this.mTabTvFragment == null) {
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        if (MainActivity.this.mTabArray != null && MainActivity.this.mTabArray.size() > 0) {
                            MainActivity.this.mTabTvFragment = (TabTvFragment) MainActivity.this.getSupportFragmentManager().findFragmentByTag("video");
                        }
                    }
                }, 500);
            }
        }
        this.mTabHost.setOnTabChangedListener(this.onTabChangeListener);
    }

    /* access modifiers changed from: private */
    public void setTransparentTabBar(String str) {
        Animation animation = this.mTabHost.getAnimation();
        if (animation != null) {
            animation.cancel();
        }
        boolean equals = str.equals("shortvideo");
        String str2 = TtmlNode.ATTR_TTS_BACKGROUND_COLOR;
        if (equals) {
            this.mTabLine.setVisibility(4);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(this.mTabHost, str2, new int[]{getResources().getColor(R.color.tran_white), getResources().getColor(R.color.tran_white1)});
            ofInt.setDuration(200);
            ofInt.setEvaluator(new ArgbEvaluator());
            ofInt.setRepeatCount(0);
            ofInt.setRepeatMode(2);
            ofInt.start();
            return;
        }
        long j = (long) 500;
        this.mMyHandler.postDelayed(new Runnable() {
            public void run() {
                MainActivity.this.mTabLine.setVisibility(0);
                MainActivity.this.mTabHost.setBackgroundColor(MainActivity.this.getResources().getColor(R.color.tran_white));
            }
        }, j);
        ObjectAnimator ofInt2 = ObjectAnimator.ofInt(this.mTabHost, str2, new int[]{getResources().getColor(R.color.tran_white), getResources().getColor(R.color.white)});
        ofInt2.setDuration(j);
        ofInt2.setEvaluator(new ArgbEvaluator());
        ofInt2.setRepeatCount(0);
        ofInt2.setRepeatMode(1);
        ofInt2.start();
    }

    private View getTabItemView(int i) {
        View inflate = this.layoutInflater.inflate(R.layout.tab_base, null);
        if (i == 0) {
            ((TextView) inflate.findViewById(R.id.ivtxt)).setText((CharSequence) this.mTabArray.get(i));
            inflate.findViewById(R.id.ivImg).setEnabled(true);
            ((TextView) inflate.findViewById(R.id.ivtxt)).setEnabled(true);
            GlideUtils.loadimage(this.highImgArray[i], (ImageView) inflate.findViewById(R.id.ivImg));
        } else {
            ((TextView) inflate.findViewById(R.id.ivtxt)).setText((CharSequence) this.mTabArray.get(i));
            ((TextView) inflate.findViewById(R.id.ivtxt)).setEnabled(false);
            inflate.findViewById(R.id.ivImg).setEnabled(false);
            GlideUtils.loadimage(this.normalImgArray[i], (ImageView) inflate.findViewById(R.id.ivImg));
        }
        return inflate;
    }

    private View getDefaultTabItemView(int i) {
        View inflate = this.layoutInflater.inflate(R.layout.tab_base, null);
        if (i == 0) {
            inflate.findViewById(R.id.ivImg).setEnabled(true);
            ((TextView) inflate.findViewById(R.id.ivtxt)).setEnabled(true);
        } else {
            ((ImageView) inflate.findViewById(R.id.ivImg)).setImageResource(this.mImageViewArray[i]);
            ((TextView) inflate.findViewById(R.id.ivtxt)).setText((CharSequence) this.mTabArray.get(i));
            ((TextView) inflate.findViewById(R.id.ivtxt)).setEnabled(false);
            inflate.findViewById(R.id.ivImg).setEnabled(false);
        }
        return inflate;
    }

    private void initOnlineStatus() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        if (!StringUtils.isEmpty(str)) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("_token", str);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            Api.getService().onlineStatus(this.request).enqueue(new CommonCallBack(this, false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!MainActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                        org.json.JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK) && jsonObject.optString("data").equals("0")) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                MainActivity.this.initAlertDialog("提示", "您的账号已经在另外一台设备上登录，是否重新登录？");
                            }
                            KanApplication.clearLogin();
                        }
                    }
                }
            });
            return;
        }
        KanApplication.clearLogin();
    }

    private void initPush() {
        PushService.setDefaultPushCallback(this, MainActivity.class);
        PushService.subscribe(this, "public", MainActivity.class);
        String str = "uid";
        String str2 = (String) PreferenceUtil.get(this, str, "");
        AVInstallation currentInstallation = AVInstallation.getCurrentInstallation();
        if (!StringUtils.isEmpty(str2)) {
            currentInstallation.put(str, str2);
        }
        currentInstallation.put("app_ver", Utils.getPackageInfo(this).versionName);
        currentInstallation.put("sbID", DeviceUtil.getDeviceId(Utils.getContext()));
        currentInstallation.put("apnsTopic", getPackageName());
        currentInstallation.saveInBackground((SaveCallback) new SaveCallback() {
            public void done(AVException aVException) {
                if (aVException == null) {
                    AVInstallation.getCurrentInstallation().getInstallationId();
                }
            }
        });
        if (getIntent().getExtras() != null) {
            pushInfoProcess(getIntent().getExtras().getString("pushtype"), getIntent().getExtras().getString("url"), getIntent().getExtras().getString("title"));
        }
    }

    /* access modifiers changed from: private */
    public void initAlertDialog(String str, String str2) {
        String str3 = "确定";
        new AlertDialog((Context) new WeakReference(this).get()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                MainActivity.this.gotoActivity(AccountLoginActivity.class);
            }
        }).show();
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
        Api.getService().version_up(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!MainActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    org.json.JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        org.json.JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            String str = "forced";
                            String optString = jsonObject2.optString(str);
                            String str2 = "1";
                            String str3 = "version";
                            if (optString.equals(str2)) {
                                PreferenceUtil.put(Utils.getContext(), str, jsonObject2.optString(str3));
                            }
                            PreferenceUtil.put(Utils.getContext(), "weixing", jsonObject2.optString("wx"));
                            if (Utils.getPackageInfo(MainActivity.this).versionCode < Integer.parseInt(jsonObject2.optString(str3))) {
                                String optString2 = jsonObject2.optString("link");
                                if (PermissionUtil.checkPermission(MainActivity.this, PackageActivity.PERMISSIONS_STORAGE, 164)) {
                                    if (!optString.equals(str2)) {
                                        Context context = Utils.getContext();
                                        StringBuilder sb = new StringBuilder();
                                        String str4 = "updata";
                                        sb.append(str4);
                                        sb.append(jsonObject2.optString(str3));
                                        if (((Boolean) PreferenceUtil.get(context, sb.toString(), Boolean.valueOf(false))).booleanValue()) {
                                            MainActivity.this.initUpdateData(optString2, jsonObject2);
                                        } else if (NetWorkUtils.isWifi(MainActivity.this)) {
                                            Context context2 = Utils.getContext();
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(str4);
                                            sb2.append(jsonObject2.optString(str3));
                                            PreferenceUtil.put(context2, sb2.toString(), Boolean.valueOf(true));
                                            MainActivity.this.initUpdateData(optString2, jsonObject2);
                                        }
                                    } else if (NetWorkUtils.isWifi(MainActivity.this)) {
                                        MainActivity.this.initUpdateData(optString2, jsonObject2);
                                    }
                                } else {
                                    return;
                                }
                            }
                            PreferenceUtil.put(Utils.getContext(), UserPreference.SHARE_URL, jsonObject2.optString("shareUrl"));
                        }
                    }
                }
            }
        });
    }

    private void uploadLocation(final String str) {
        AILog.d(TAG, "uploadLocation");
        if (str.equals("1")) {
            LocationUtils.getInstance(this).showLocationAsyn(new ILocation() {
                public void onLocation(Location location) {
                    CommonViewModel.UploadLocation(Double.toString(location.getLatitude()), Double.toString(location.getLongitude()), str);
                }
            });
            return;
        }
        String str2 = "0";
        CommonViewModel.UploadLocation(str2, str2, str);
    }

    /* access modifiers changed from: private */
    public void initUpdateData(String str, org.json.JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
        sb.append("/downloadapk");
        File file = new File(sb.toString());
        final DownloadUtils downloadUtils = new DownloadUtils(this, jSONObject);
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuilder sb2 = new StringBuilder();
        String str2 = "kantv";
        sb2.append(str2);
        String str3 = "version";
        sb2.append(jSONObject.optString(str3));
        String str4 = ".apk";
        sb2.append(str4);
        final File file2 = new File(file, sb2.toString());
        if (!file2.exists()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str2);
            sb3.append(jSONObject.optString(str3));
            sb3.append(str4);
            downloadUtils.downloadAPK(str, sb3.toString());
        } else if (Utils.validateApk(this, file2.getAbsolutePath())) {
            new Handler().postDelayed(new Runnable() {
                public void run() {
                    String timeStamp2Date = DateUtil.timeStamp2Date(String.valueOf(System.currentTimeMillis() / 1000), "yyyy-MM-dd");
                    Context context = Utils.getContext();
                    String str = UserPreference.VERSION_UPDATE_POP;
                    if (!timeStamp2Date.equals((String) PreferenceUtil.get(context, str, ""))) {
                        downloadUtils.install(file2);
                        PreferenceUtil.put(Utils.getContext(), str, timeStamp2Date);
                    }
                }
            }, 5000);
        } else {
            try {
                file2.delete();
            } catch (Exception e) {
                e.printStackTrace();
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str2);
            sb4.append(jSONObject.optString(str3));
            sb4.append(str4);
            downloadUtils.downloadAPK(str, sb4.toString());
        }
    }

    private void checkLimitIp() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().limitIp(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!MainActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    org.json.JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        String str = "status";
                        if (jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                            org.json.JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                org.json.JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("limitIp"));
                                if (jsonObject3 != null) {
                                    String optString = jsonObject3.optString(str);
                                    boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue();
                                    if (optString.equals("1") && !booleanValue) {
                                        KanApplication.getInstance().setLimitIP(true);
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
                MainActivity.this.gotoActivity(AccountLoginActivity.class);
            }
        }).setCancelable(false).show();
    }

    public void setTab(int i) {
        this.mTabHost.setCurrentTab(i);
    }

    private void pushInfoProcess(final String str, final String str2, final String str3) {
        if (!StringUtils.isEmpty(str) && !StringUtils.isEmpty(str2)) {
            new OkHttpClient().newCall(new Builder().url(str2).build()).enqueue(new Callback() {
                public void onFailure(okhttp3.Call call, IOException iOException) {
                }

                public void onResponse(okhttp3.Call call, okhttp3.Response response) throws IOException {
                    String str = "seo";
                    String str2 = "part";
                    if (response.isSuccessful()) {
                        try {
                            String string = response.body().string();
                            if (!StringUtils.isEmpty(string)) {
                                String str3 = str;
                                char c = 65535;
                                switch (str3.hashCode()) {
                                    case -1825843670:
                                        if (str3.equals("appupdate")) {
                                            c = 4;
                                            break;
                                        }
                                        break;
                                    case -1335224239:
                                        if (str3.equals(ProductAction.ACTION_DETAIL)) {
                                            c = 0;
                                            break;
                                        }
                                        break;
                                    case 3213227:
                                        if (str3.equals("html")) {
                                            c = 1;
                                            break;
                                        }
                                        break;
                                    case 3322014:
                                        if (str3.equals(Selection.LIST)) {
                                            c = 3;
                                            break;
                                        }
                                        break;
                                    case 873527524:
                                        if (str3.equals("newsdetail")) {
                                            c = 2;
                                            break;
                                        }
                                        break;
                                }
                                String str4 = "pushtype";
                                String str5 = "_id";
                                String str6 = "data";
                                if (c == 0) {
                                    org.json.JSONObject jsonObject = StringUtils.toJsonObject(string);
                                    if (jsonObject != null) {
                                        org.json.JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString(str6));
                                        if (jsonObject2 != null) {
                                            org.json.JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("playinfo"));
                                            org.json.JSONObject jsonObject4 = StringUtils.toJsonObject(jsonObject2.optString("info"));
                                            if (jsonObject3 != null) {
                                                Bundle bundle = new Bundle();
                                                bundle.putString("tid", jsonObject3.optString("tvid"));
                                                bundle.putString("part_id", jsonObject3.optString(str5));
                                                bundle.putString(str2, jsonObject3.optString(str2));
                                                bundle.putString(str6, jsonObject.optString(str6));
                                                bundle.putString(str4, str);
                                                if (jsonObject4 != null) {
                                                    bundle.putString(str, jsonObject4.optString(str));
                                                }
                                                Utils.getContext().startActivity(new Intent(Utils.getContext(), VideoPlayActivity.class).putExtras(bundle).setFlags(C.ENCODING_PCM_MU_LAW));
                                            }
                                        }
                                    }
                                } else if (c == 1) {
                                    Bundle bundle2 = new Bundle();
                                    bundle2.putString("title", str3);
                                    bundle2.putString("url", str2);
                                    MainActivity.this.gotoActivity(bundle2, WebViewActivity.class);
                                } else if (c == 2) {
                                    org.json.JSONObject jsonObject5 = StringUtils.toJsonObject(string);
                                    if (jsonObject5 != null) {
                                        org.json.JSONObject jsonObject6 = StringUtils.toJsonObject(jsonObject5.optString(str6));
                                        if (jsonObject6 != null) {
                                            String optString = jsonObject6.optString(str5);
                                            if (!StringUtils.isEmpty(optString)) {
                                                Bundle bundle3 = new Bundle();
                                                bundle3.putString("id", optString);
                                                bundle3.putString(str6, jsonObject5.optString(str6));
                                                bundle3.putString(str4, str);
                                                Utils.getContext().startActivity(new Intent(Utils.getContext(), NewsDetailActivity.class).putExtras(bundle3).setFlags(C.ENCODING_PCM_MU_LAW));
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        sRef.clear();
        sRef = null;
        this.mTabHost = null;
        this.layoutInflater = null;
        this.fragmentArray = null;
        this.mTabArray = null;
        this.mTabTvFragment = null;
        LocationUtils.getInstance(this).removeLocationUpdatesListener();
        SharedData sharedData = new SharedData(this, "new_cache");
        String str = "cache_date";
        String str2 = sharedData.get(str);
        StringBuilder sb = new StringBuilder();
        sb.append("clear new cache ");
        sb.append(str2);
        AILog.d(TAG, sb.toString());
        sharedData.clear();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.currentTimeMillis() / 1000);
        sb2.append("");
        sharedData.put(str, sb2.toString());
    }
}
