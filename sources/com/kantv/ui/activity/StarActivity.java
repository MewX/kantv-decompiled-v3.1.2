package com.kantv.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.avos.avoscloud.Messages.OpType;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Selection;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.activity.AppBarStateChangeListener.State;
import com.kantv.ui.bean.HotClassBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.fragment.StarFragment;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.ShareDialog;
import com.kantv.ui.view.ShareDialog.onClickback;
import com.kantv.ui.view.TabPageIndicator;
import com.kantv.ui.view.TabPageIndicator.IndicatorMode;
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
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class StarActivity extends PackageActivity {
    public static boolean isTz = false;
    /* access modifiers changed from: private */
    public IWXAPI api;
    private Bundle b;
    Bitmap blurBitmap = null;
    private FragmentPagerAdapter fragmentPagerAdapter;
    /* access modifiers changed from: private */
    public String img;
    AppBarLayout mAppBarLayout;
    CollapsingToolbarLayout mCollapsingToolbarLayout;
    /* access modifiers changed from: private */
    public List<HotClassBean> mData;
    /* access modifiers changed from: private */
    public List<Fragment> mFragmentData = new ArrayList();
    @BindView(2131297229)
    ImageView mHead;
    @BindView(2131297234)
    ImageView mShareBt;
    private ShareDialog mShareDialog;
    @BindView(2131297230)
    ImageView mStarHeadBg;
    @BindView(2131297231)
    TextView mStarMsg;
    @BindView(2131297232)
    TextView mStarPlace;
    @BindView(2131297236)
    TextView mStarTitle;
    @BindView(2131297235)
    TabPageIndicator mTabLayout;
    /* access modifiers changed from: private */
    public Tencent mTencent;
    @BindView(2131296312)
    ViewPager mViewPager;
    /* access modifiers changed from: private */
    public String name;
    /* access modifiers changed from: private */
    public String starAbout;
    @BindView(2131296646)
    FrameLayout starAboutLayout;
    @BindView(2131297228)
    ImageView starExitImg;
    private String starId;
    /* access modifiers changed from: private */
    public String starMsg;
    /* access modifiers changed from: private */
    public String starPlace;
    Toolbar toolbar;
    /* access modifiers changed from: private */
    public String url;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_star);
        initBase();
        initStatusBar();
        this.mTencent = Tencent.createInstance("1106453625", Utils.getContext());
        String str = "wx70cbf5b9aacb0e47";
        this.api = WXAPIFactory.createWXAPI(this, str, false);
        this.api.registerApp(str);
        if (getIntent().getExtras() != null) {
            this.b = getIntent().getExtras();
            this.name = this.b.getString("name");
            this.starId = this.b.getString("id");
            this.img = this.b.getString(SocialConstants.PARAM_IMG_URL);
            this.url = this.b.getString("shareUrl");
            GlideUtils.loadImageBlur(this.img, this.mStarHeadBg);
            int convertDpToPixels = (int) DensityUtil.convertDpToPixels(this, getResources().getDimension(R.dimen.width_80));
            int convertDpToPixels2 = (int) DensityUtil.convertDpToPixels(this, getResources().getDimension(R.dimen.height_113));
            String str2 = "type";
            if (this.b.getString(str2).equals("star")) {
                GlideUtils.loadimageRoundness(this.img, this.mHead, convertDpToPixels, convertDpToPixels2);
                initRequestStar(this.starId);
            } else if (this.b.getString(str2).equals("put")) {
                this.mShareBt.setVisibility(0);
                GlideUtils.loadimageRoundness(this.img, this.mHead, convertDpToPixels, convertDpToPixels2);
                initRequestPusher(this.name);
            }
        }
        initView();
        Tracker defaultTracker = KanApplication.getDefaultTracker();
        StringBuilder sb = new StringBuilder();
        sb.append("影视_明星_");
        sb.append(this.name);
        defaultTracker.setScreenName(sb.toString());
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.mAppBarLayout = (AppBarLayout) findViewById(R.id.appbar_layout);
        this.mCollapsingToolbarLayout = (CollapsingToolbarLayout) findViewById(R.id.collapsing_toolbar_layout);
        this.mCollapsingToolbarLayout.setTitle(this.name);
        this.mCollapsingToolbarLayout.setExpandedTitleTextAppearance(R.style.collapsing_toolbar_text_size);
        this.mCollapsingToolbarLayout.setCollapsedTitleGravity(17);
        this.mCollapsingToolbarLayout.setExpandedTitleGravity(3);
        this.mCollapsingToolbarLayout.setCollapsedTitleTextColor(getResources().getColor(R.color.temp_tv_color));
        this.mCollapsingToolbarLayout.setExpandedTitleColor(-1);
        setSupportActionBar(this.toolbar);
        CollapsingToolbarLayout collapsingToolbarLayout = this.mCollapsingToolbarLayout;
        if (collapsingToolbarLayout != null) {
            collapsingToolbarLayout.setContentScrimColor(-1);
        }
        this.mAppBarLayout.addOnOffsetChangedListener((OnOffsetChangedListener) new AppBarStateChangeListener() {
            public void onStateChanged(AppBarLayout appBarLayout, State state) {
                Log.d("STATE", state.name());
                if (state == State.EXPANDED) {
                    StarActivity.this.starExitImg.setImageResource(R.drawable.nav_white);
                    StarActivity.this.mShareBt.setImageResource(R.drawable.share);
                } else if (state == State.COLLAPSED) {
                    StarActivity.this.starExitImg.setImageResource(R.drawable.back);
                    StarActivity.this.mShareBt.setImageResource(R.drawable.kan_share);
                }
            }
        });
    }

    private void initRequestPusher(String str) {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("uid", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().uploaderinfo(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!StarActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    StarActivity.this.parsePushData(this.json);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void parsePushData(String str) {
        JSONObject jsonObject = StringUtils.toJsonObject(str);
        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
            if (jsonObject2 != null) {
                JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("video"));
                if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                    this.mData = new ArrayList();
                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                        this.mData.add(new HotClassBean(jSONobject.optString("channelname"), jSONobject.optString(Selection.LIST), "", jSONobject.optString("url")));
                    }
                    initTabLayout();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void parseStar(String str) {
        JSONObject jsonObject = StringUtils.toJsonObject(str);
        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
            if (jsonObject2 != null) {
                JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("videos"));
                final JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("actor"));
                if (jsonObject3 != null) {
                    runOnUiThread(new Runnable() {
                        public void run() {
                            StarActivity starActivity = StarActivity.this;
                            StringBuilder sb = new StringBuilder();
                            sb.append(jsonObject3.optString("gender"));
                            String str = "/";
                            sb.append(str);
                            sb.append(jsonObject3.optString("night"));
                            sb.append(str);
                            sb.append(jsonObject3.optString("job"));
                            sb.append(str);
                            sb.append(jsonObject3.optString(UserPreference.BIRTHDAY));
                            starActivity.starAbout = sb.toString();
                            StarActivity.this.starPlace = jsonObject3.optString("birthplace");
                            StarActivity.this.starMsg = jsonObject3.optString("msg");
                            StarActivity.this.mStarTitle.setText(StarActivity.this.starAbout);
                            StarActivity.this.mStarPlace.setText(StarActivity.this.starPlace);
                            TextView textView = StarActivity.this.mStarMsg;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("简介: ");
                            sb2.append(StringUtils.stripHtml(StarActivity.this.starMsg));
                            textView.setText(sb2.toString());
                            StarActivity.this.name = jsonObject3.optString("name");
                            StarActivity.this.mCollapsingToolbarLayout.setTitle(StarActivity.this.name);
                        }
                    });
                }
                if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                    this.mData = new ArrayList();
                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                        String str2 = "rows";
                        if (StringUtils.isJSONArrayNotEmpty(StringUtils.toJsonArray(jSONobject.optString(str2)))) {
                            this.mData.add(new HotClassBean(jSONobject.optString("name"), jSONobject.optString(str2), "", jSONobject.optString("url")));
                        }
                    }
                    initTabLayout();
                }
            }
        }
    }

    private void initRequestStar(String str) {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("actor", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().tvActor(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!StarActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    StarActivity.this.parseStar(this.json);
                }
            }
        });
    }

    public void back(String str, String str2) {
        isTz = true;
        Intent intent = new Intent();
        intent.putExtra("tid", str);
        intent.putExtra("seo", str2);
        setResult(-1, intent);
        finish();
    }

    private void initTabLayout() {
        for (int i = 0; i < this.mData.size(); i++) {
            StarFragment starFragment = new StarFragment();
            Bundle bundle = new Bundle();
            bundle.putString("data", ((HotClassBean) this.mData.get(i)).getName());
            starFragment.setArguments(bundle);
            this.mFragmentData.add(starFragment);
        }
        this.fragmentPagerAdapter = new FragmentPagerAdapter(getSupportFragmentManager()) {
            public int getCount() {
                if (StarActivity.this.mFragmentData != null) {
                    return StarActivity.this.mFragmentData.size();
                }
                return 0;
            }

            public Fragment getItem(int i) {
                return (Fragment) StarActivity.this.mFragmentData.get(i);
            }

            public CharSequence getPageTitle(int i) {
                return ((HotClassBean) StarActivity.this.mData.get(i)).getTid();
            }
        };
        this.mViewPager.setOffscreenPageLimit(3);
        this.mViewPager.setAdapter(this.fragmentPagerAdapter);
        this.mTabLayout.setViewPager(this.mViewPager);
        this.mTabLayout.setIndicatorMode(IndicatorMode.MODE_NOWEIGHT_NOEXPAND_SAME);
        this.mTabLayout.setDividerColor(Color.parseColor("#00000000"));
        this.mTabLayout.setDividerPadding(DisplayUtil.dipToPix(Utils.getContext(), 10));
        this.mTabLayout.setIndicatorColor(getResources().getColor(R.color.tab_top_bg));
        this.mTabLayout.setTextColorSelected(getResources().getColor(R.color.tabtxt_color_selected));
        this.mTabLayout.setTextColor(getResources().getColor(R.color.cursor_color));
        this.mTabLayout.setTextSize(DisplayUtil.spToPix(Utils.getContext(), 15.0f));
    }

    private void initShareDialog() {
        this.mShareDialog = new ShareDialog((Context) this, (onClickback) new onClickback() {
            public void onShare(int i) {
                if (i != 0) {
                    String str = "您还未安装微信客户端";
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                String str2 = "imageUrl";
                                String str3 = "targetUrl";
                                String str4 = "summary";
                                String str5 = "title";
                                String str6 = "req_type";
                                String str7 = "您的设备当前未安装QQ！";
                                if (i != 4) {
                                    if (i == 5) {
                                        if (Utils.isQQClientAvailable(StarActivity.this)) {
                                            Bundle bundle = new Bundle();
                                            bundle.putInt(str6, 1);
                                            StarActivity starActivity = StarActivity.this;
                                            bundle.putString(str5, starActivity.getTitleStr(starActivity.name));
                                            bundle.putString(str4, StarActivity.this.getString(R.string.share2));
                                            bundle.putString(str3, StarActivity.this.url);
                                            ArrayList arrayList = new ArrayList();
                                            arrayList.add(StarActivity.this.getString(R.string.share4));
                                            bundle.putStringArrayList(str2, arrayList);
                                            StarActivity.this.mTencent.shareToQzone(StarActivity.this, bundle, new IUiListener() {
                                                public void onCancel() {
                                                }

                                                public void onComplete(Object obj) {
                                                }

                                                public void onError(UiError uiError) {
                                                }
                                            });
                                        } else {
                                            ToastUtils.showShort((CharSequence) str7);
                                        }
                                    }
                                } else if (Utils.isQQClientAvailable(StarActivity.this)) {
                                    Bundle bundle2 = new Bundle();
                                    bundle2.putInt(str6, 1);
                                    StarActivity starActivity2 = StarActivity.this;
                                    bundle2.putString(str5, starActivity2.getTitleStr(starActivity2.name));
                                    bundle2.putString(str4, StarActivity.this.getString(R.string.share2));
                                    bundle2.putString(str3, StarActivity.this.url);
                                    bundle2.putString(str2, StarActivity.this.img);
                                    StarActivity.this.mTencent.shareToQQ(StarActivity.this, bundle2, new IUiListener() {
                                        public void onCancel() {
                                        }

                                        public void onComplete(Object obj) {
                                        }

                                        public void onError(UiError uiError) {
                                        }
                                    });
                                } else {
                                    ToastUtils.showShort((CharSequence) str7);
                                }
                            } else if (!StarActivity.this.api.isWXAppInstalled()) {
                                ToastUtils.showShort((CharSequence) str);
                            } else {
                                StarActivity.this.wxShare(2);
                            }
                        } else if (!StarActivity.this.api.isWXAppInstalled()) {
                            ToastUtils.showShort((CharSequence) str);
                        } else {
                            StarActivity.this.wxShare(1);
                        }
                    } else if (!StarActivity.this.api.isWXAppInstalled()) {
                        ToastUtils.showShort((CharSequence) str);
                    } else {
                        StarActivity.this.wxShare(0);
                    }
                }
            }
        });
        this.mShareDialog.show();
    }

    /* access modifiers changed from: private */
    public void wxShare(int i) {
        WXWebpageObject wXWebpageObject = new WXWebpageObject();
        wXWebpageObject.webpageUrl = this.url;
        WXMediaMessage wXMediaMessage = new WXMediaMessage(wXWebpageObject);
        wXMediaMessage.title = getTitleStr(this.name);
        wXMediaMessage.description = getString(R.string.share2);
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeResource, OpType.modify_VALUE, OpType.modify_VALUE, true);
        decodeResource.recycle();
        wXMediaMessage.thumbData = Utils.bmpToByteArray(createScaledBitmap, true);
        Req req = new Req();
        req.transaction = buildTransaction("webpage");
        req.message = wXMediaMessage;
        req.scene = i;
        this.api.sendReq(req);
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

    /* access modifiers changed from: private */
    public String getTitleStr(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("【");
        sb.append(str);
        sb.append("】的作品原来有这么多用看TV看");
        sb.append(str);
        sb.append("作品集一次看个够");
        return sb.toString();
    }

    @OnClick({2131297228, 2131297234, 2131296646})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.head_layout) {
            Bundle bundle = new Bundle();
            bundle.putString("name", this.name);
            bundle.putString("star_bg", this.img);
            bundle.putString("star_about", this.starAbout);
            bundle.putString("star_place", this.starPlace);
            bundle.putString("star_msg", this.starMsg);
            gotoActivity(bundle, StarAboutActivity.class);
        } else if (id == R.id.star_exit) {
            finish();
        } else if (id == R.id.star_share) {
            initShareDialog();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mViewPager = null;
        this.mTabLayout = null;
        this.mStarHeadBg = null;
        this.mHead = null;
        this.mStarTitle = null;
        this.fragmentPagerAdapter = null;
        this.mFragmentData = null;
        this.mData = null;
        this.b = null;
    }
}
