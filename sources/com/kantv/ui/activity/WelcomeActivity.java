package com.kantv.ui.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.MainActivity;
import com.kantv.ui.config.Definition;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.view.CircularProgressBar;
import com.kantv.ui.viewmodel.CommonViewModel;
import debug.KanApplication;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class WelcomeActivity extends PackageSimpleActivity {
    private static final String TAG = CommonViewModel.class.getSimpleName();
    ImageView bottomImg;
    /* access modifiers changed from: private */
    public boolean isClick = false;
    private boolean isDestroy = false;
    boolean isFirstPullDomain = false;
    /* access modifiers changed from: private */
    public CircularProgressBar mCircularProgressBar;
    /* access modifiers changed from: private */
    public RelativeLayout mExitLayout;
    /* access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    public Handler mHandler = new Handler() {
        public void handleMessage(Message message) {
            WelcomeActivity.this.mCircularProgressBar.setProgress(WelcomeActivity.this.progress);
            if (WelcomeActivity.this.progress < WelcomeActivity.this.time) {
                WelcomeActivity.this.mHandler.sendEmptyMessageDelayed(WelcomeActivity.this.progress = WelcomeActivity.this.progress + 1, 100);
            } else if (!WelcomeActivity.this.isClick) {
                WelcomeActivity.this.jumpMainActivity();
            }
            super.handleMessage(message);
        }
    };
    /* access modifiers changed from: private */
    public int progress = 0;
    /* access modifiers changed from: private */
    public int time;
    ImageView welcomeImg;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_welcome);
        if (!isTaskRoot()) {
            Intent intent = getIntent();
            if (intent != null) {
                String action = intent.getAction();
                if (intent.hasCategory("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(action)) {
                    finish();
                    return;
                }
            }
        }
        initView();
        initDomain();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN32);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initDomain() {
        String str = "";
        Api.addDefaultBootDomains((String) PreferenceUtil.get(Definition.BACKUP_HOST_DOMAINS, str));
        Api.addDefaultApiDomains((String) PreferenceUtil.get(Definition.API_DOMAINS, str));
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("initDomain:");
        sb.append(Api.BOOT_HOST_DOMAIN);
        sb.append(",");
        sb.append(Api.API_DOMAIN);
        AILog.d(str2, sb.toString());
        setApiDomain();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Api.BOOT_HOST_DOMAIN);
        CommonViewModel.pullDomain(arrayList);
    }

    private void setApiDomain() {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("setApiDomain:");
        sb.append(Api.BOOT_HOST_DOMAIN);
        sb.append(",");
        sb.append(Api.API_DOMAIN);
        AILog.d(str, sb.toString());
        Api.setSingletonNull();
        Api.setDomain((String) Api.API_DOMAIN.get(0));
        Uri data = getIntent().getData();
        if (data == null || !parseDeepLink(data)) {
            initRequest();
        }
    }

    private boolean parseDeepLink(Uri uri) {
        String path = uri.getPath();
        if (StringUtils.isEmpty(path) || path.equals("/")) {
            return false;
        }
        Intent intent = new Intent(this, VideoPlayActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("tid", uri.getLastPathSegment());
        bundle.putString("seo", "");
        intent.putExtras(bundle);
        startActivity(intent);
        finish();
        return true;
    }

    private void initView() {
        this.welcomeImg = (ImageView) findViewById(R.id.welcome_img);
        this.bottomImg = (ImageView) findViewById(R.id.bottom_img);
        this.mCircularProgressBar = (CircularProgressBar) findViewById(R.id.act_welcome_bar);
        this.mExitLayout = (RelativeLayout) findViewById(R.id.welcome_exit);
        this.mExitLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                WelcomeActivity.this.jumpMainActivity();
                if (WelcomeActivity.this.mHandler != null) {
                    WelcomeActivity.this.mHandler.removeCallbacksAndMessages(null);
                    WelcomeActivity.this.mHandler = null;
                }
                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE2).build());
            }
        });
        this.welcomeImg.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE1).build());
            }
        });
    }

    private void initRequest() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.AD_DATA, "");
        CommonViewModel.getAdData();
        if (StringUtils.isEmpty(str)) {
            AILog.i(TAG, "initRequest:no ad");
            jumpMainActivity();
            return;
        }
        AILog.i(TAG, "initRequest:has ad");
        DateUtil.timeStamp2Date(String.valueOf(System.currentTimeMillis() / 1000), "yyyy-MM-dd");
        try {
            parse(str);
        } catch (Exception e) {
            jumpMainActivity();
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public void jumpMainActivity() {
        if (((Boolean) PreferenceUtil.get(Utils.getContext(), "isfirst", Boolean.valueOf(true))).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "1");
            Intent intent = new Intent(this, LoginActivity.class);
            intent.putExtras(bundle);
            startActivity(intent);
            finish();
            return;
        }
        if (KanApplication.getInstance().getActivityStackNum() < 2 || this.bringToFrontFlag == 2) {
            startActivity(new Intent(this, MainActivity.class));
        }
        finish();
    }

    private void parse(String str) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("parse");
        sb.append(str);
        AILog.i(str2, sb.toString());
        JSONObject jsonObject = StringUtils.toJsonObject(str);
        if (jsonObject == null) {
            jumpMainActivity();
            return;
        }
        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
            final JSONArray jsonArray = StringUtils.toJsonArray(jsonObject.optString("data"));
            if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                    public void run() {
                        String str = "title";
                        try {
                            final JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, 0);
                            String optString = jSONobject.optString("photo");
                            if (StringUtils.isEmpty(optString)) {
                                WelcomeActivity.this.jumpMainActivity();
                                return;
                            }
                            String substring = optString.substring(optString.length() - 3, optString.length());
                            try {
                                jSONobject.optString(str);
                                CommonViewModel.adsShow(jSONobject.optLong("_id"), jSONobject.optString(str));
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            if (substring.equals("gif")) {
                                Glide.with((Activity) WelcomeActivity.this).load(optString).asGif().placeholder((int) R.drawable.welcome_head).diskCacheStrategy(DiskCacheStrategy.ALL).into(WelcomeActivity.this.welcomeImg);
                                WelcomeActivity.this.mHandler.postDelayed(new Runnable() {
                                    public void run() {
                                        WelcomeActivity.this.jumpMainActivity();
                                    }
                                }, 5000);
                            } else {
                                Glide.with((Activity) WelcomeActivity.this).load(optString).placeholder((int) R.drawable.welcome_head).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.ALL).listener((RequestListener<? super ModelType, GlideDrawable>) new RequestListener<String, GlideDrawable>() {
                                    public boolean onException(Exception exc, String str, Target<GlideDrawable> target, boolean z) {
                                        WelcomeActivity.this.jumpMainActivity();
                                        return false;
                                    }

                                    public boolean onResourceReady(GlideDrawable glideDrawable, String str, Target<GlideDrawable> target, boolean z, boolean z2) {
                                        WelcomeActivity.this.bottomImg.setVisibility(0);
                                        WelcomeActivity.this.welcomeImg.setVisibility(0);
                                        WelcomeActivity.this.time = Integer.parseInt(jSONobject.optString("duration")) * 10;
                                        WelcomeActivity.this.mCircularProgressBar.setMax(WelcomeActivity.this.time);
                                        WelcomeActivity.this.mCircularProgressBar.setProgress(WelcomeActivity.this.progress);
                                        WelcomeActivity.this.mExitLayout.setVisibility(0);
                                        if (!((Boolean) PreferenceUtil.get(Utils.getContext(), "isfirst", Boolean.valueOf(true))).booleanValue()) {
                                            WelcomeActivity.this.mHandler.sendEmptyMessageDelayed(WelcomeActivity.this.progress = WelcomeActivity.this.progress + 1, 100);
                                        }
                                        if (jSONobject.optString("url").length() >= 3) {
                                            WelcomeActivity.this.welcomeImg.setOnClickListener(new OnClickListener() {
                                                public void onClick(View view) {
                                                    WelcomeActivity.this.isClick = true;
                                                    WelcomeActivity.this.jumpMainActivity();
                                                    Bundle bundle = new Bundle();
                                                    try {
                                                        CommonViewModel.adsClick(jSONobject.optLong("_id"));
                                                    } catch (Exception e) {
                                                        e.printStackTrace();
                                                    }
                                                    String str = "opentype";
                                                    String str2 = "url";
                                                    if (StringUtils.isEmpty(jSONobject.optString(str)) || !jSONobject.optString(str).equals("0")) {
                                                        String str3 = "title";
                                                        bundle.putString(str3, jSONobject.optString(str3));
                                                        bundle.putString(str2, jSONobject.optString(str2));
                                                        Intent intent = new Intent(Utils.getContext(), WebViewActivity.class);
                                                        intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                                        intent.putExtras(bundle);
                                                        Utils.getContext().startActivity(intent);
                                                    } else {
                                                        Intent intent2 = new Intent();
                                                        intent2.setAction("android.intent.action.VIEW");
                                                        intent2.setData(Uri.parse(jSONobject.optString(str2)));
                                                        intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                                        Utils.getContext().startActivity(intent2);
                                                    }
                                                    WelcomeActivity.this.finish();
                                                }
                                            });
                                        }
                                        return false;
                                    }
                                }).into(WelcomeActivity.this.welcomeImg);
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            WelcomeActivity.this.jumpMainActivity();
                        }
                    }
                }, 100);
            } else {
                jumpMainActivity();
            }
        } else {
            jumpMainActivity();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.isDestroy = true;
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHandler = null;
        }
    }
}
