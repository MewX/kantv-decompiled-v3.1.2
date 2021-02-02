package com.kantv.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.OnScrollListener;
import butterknife.BindView;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Selection;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.NewsDetailActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.EventBusBean;
import com.kantv.ui.bean.String8Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.interfaces.ScrollEffect;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.ScreenUtils;
import com.kantv.ui.utils.SharedData;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.view.ShapedImageView;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.samsung.multiscreen.Message;
import debug.KanApplication;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONObject;
import org.seamless.xhtml.XHTML.ATTR;
import retrofit2.Call;
import retrofit2.Response;

public class NewsFragment extends BaseFragment {
    /* access modifiers changed from: private */
    public static final String TAG = "NewsFragment";
    /* access modifiers changed from: private */
    public String auAppId;
    /* access modifiers changed from: private */
    public String auPhoto;
    /* access modifiers changed from: private */
    public boolean defaultFlag = false;
    private boolean isFirst = true;
    private CommonAdapter<String8Bean> mAdapter;
    /* access modifiers changed from: private */
    public List<String8Bean> mData = new ArrayList();
    private View mHeader;
    private int mIndex = -1;
    @BindView(2131296610)
    XRecyclerView mRecyclerView;
    ShapedImageView newsAdImg;
    ImageView newsRateImg;
    TextView newsRateTv;
    ImageView newsWeatherImg;
    LinearLayout newsWeatherRateLayout;
    TextView newsWeatherTv;
    private String newsbiaoqian;
    /* access modifiers changed from: private */
    public int page = 1;
    /* access modifiers changed from: private */
    public ScrollEffect scrollEffect = null;
    private String search_title;
    /* access modifiers changed from: private */
    public int todayUpateNum = 0;
    private String todaynews_city;
    private String todaynews_click;
    private String todaynews_content;
    /* access modifiers changed from: private */
    public String type;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_news, null);
        return this.mRootView;
    }

    public void initData() {
        this.type = getArguments().getString("id");
        this.newsbiaoqian = getArguments().getString("value");
        String string = getArguments().getString("default");
        if (string != null && string.equals("1")) {
            this.defaultFlag = true;
        }
        this.mIndex = getArguments().getInt(Param.INDEX);
        Tracker defaultTracker = KanApplication.getDefaultTracker();
        EventBuilder eventBuilder = new EventBuilder();
        StringBuilder sb = new StringBuilder();
        sb.append("资讯_");
        sb.append(this.newsbiaoqian);
        defaultTracker.send(eventBuilder.setCategory(sb.toString()).build());
        if (!StringUtils.isEmpty(this.search_title)) {
            EventBus.getDefault().post(new EventBusBean("TabNewsFragment", "001", this.search_title));
        }
        if (this.isFirst) {
            initView();
            initCacheData();
            KanApplication.getDefaultTracker().setScreenName("资讯");
            KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
        }
        this.mRecyclerView.addOnScrollListener(new OnScrollListener() {
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (NewsFragment.this.scrollEffect == null) {
                    return;
                }
                if (i2 > 10) {
                    NewsFragment.this.scrollEffect.reduce();
                } else if (i2 <= -10) {
                    NewsFragment.this.scrollEffect.expand();
                }
            }
        });
    }

    private void initCacheData() {
        Context context = Utils.getContext();
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append("_json");
        String str = "";
        String str2 = (String) PreferenceUtil.get(context, sb.toString(), str);
        Context context2 = Utils.getContext();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.type);
        sb2.append("_time");
        int isCache = DateUtil.isCache(str2, (String) PreferenceUtil.get(context2, sb2.toString(), str));
        if (isCache == 0) {
            initParse(str2);
            initTodayUpdate();
        } else if (isCache == 1) {
            initTodayUpdate();
            initRequest(str2, true, true);
        }
        if (this.mIndex == 0) {
            String str3 = (String) PreferenceUtil.get(Utils.getContext(), "rateweather_json", str);
            int isCache2 = DateUtil.isCache(str3, (String) PreferenceUtil.get(Utils.getContext(), "rateweather_time", str));
            if (isCache2 == 0) {
                initWeatherRateParse(str3);
            } else if (isCache2 == 1) {
                initWeatherRate(str3);
            }
        }
    }

    /* access modifiers changed from: private */
    public void initParse(String str) {
        String str2;
        String str3 = "totalcount";
        if (!StringUtils.isEmpty(str)) {
            JSONObject jsonObject = StringUtils.toJsonObject(str);
            if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                if (jsonObject2 != null) {
                    this.search_title = jsonObject2.optString("search_title");
                    this.auAppId = jsonObject2.optString("appid");
                    String str4 = "photo";
                    this.auPhoto = jsonObject2.optString(str4);
                    JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("adtongji"));
                    if (jsonObject3 != null) {
                        this.todaynews_city = jsonObject3.optString("todaynews_city");
                        this.todaynews_click = jsonObject3.optString("todaynews_click");
                        this.todaynews_content = jsonObject3.optString("todaynews_content");
                    }
                    if (!StringUtils.isEmpty(this.search_title)) {
                        EventBus.getDefault().post(new EventBusBean("TabNewsFragment", "001", this.search_title));
                    }
                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString(Selection.LIST));
                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < jsonArray.length(); i++) {
                            JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                            if (jSONobject != null) {
                                String str5 = "seo";
                                String str6 = "title";
                                String str7 = "_id";
                                if (jSONobject.optString(str5) == null || !jSONobject.optString(str5).equals("ad")) {
                                    String str8 = "256";
                                    try {
                                        if (!StringUtils.isEmpty(jSONobject.optString(str3))) {
                                            int parseInt = Integer.parseInt(jSONobject.optString(str3)) * 3;
                                            if (parseInt > 9999) {
                                                StringBuilder sb = new StringBuilder();
                                                sb.append(parseInt / 1000);
                                                sb.append("K");
                                                str2 = sb.toString();
                                            } else {
                                                str2 = Integer.toString(parseInt);
                                            }
                                            str8 = str2;
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    String str9 = "";
                                    String8Bean string8Bean = new String8Bean(jSONobject.optString(str7), jSONobject.optString("thumb"), jSONobject.optString(str6), jSONobject.optString("source"), jSONobject.optString("comm_nums"), str9, str8, jSONobject.optString("isplay"));
                                    arrayList.add(string8Bean);
                                } else {
                                    final JSONObject jsonObject4 = StringUtils.toJsonObject(jSONobject.toString());
                                    if (jsonObject4 != null) {
                                        try {
                                            CommonViewModel.adsShow(jsonObject4.optLong(str7), jsonObject4.optString(str6));
                                        } catch (Exception e2) {
                                            e2.printStackTrace();
                                        }
                                        this.newsAdImg.setOnClickListener(new OnClickListener() {
                                            public void onClick(View view) {
                                                Bundle bundle = new Bundle();
                                                try {
                                                    CommonViewModel.adsClick(jsonObject4.optLong("_id"));
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                }
                                                String str = "opentype";
                                                String str2 = "url";
                                                if (StringUtils.isEmpty(jsonObject4.optString(str)) || !jsonObject4.optString(str).equals("0")) {
                                                    String str3 = "title";
                                                    bundle.putString(str3, jsonObject4.optString(str3));
                                                    bundle.putString(str2, jsonObject4.optString(str2));
                                                    Intent intent = new Intent(Utils.getContext(), WebViewActivity.class);
                                                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                                    intent.putExtras(bundle);
                                                    Utils.getContext().startActivity(intent);
                                                    return;
                                                }
                                                Intent intent2 = new Intent();
                                                intent2.setAction("android.intent.action.VIEW");
                                                intent2.setData(Uri.parse(jsonObject4.optString(str2)));
                                                intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                                Utils.getContext().startActivity(intent2);
                                            }
                                        });
                                        if (!StringUtils.isEmpty(jsonObject4.optString(str4))) {
                                            String optString = jsonObject4.optString(str4);
                                            JSONObject jsonObject5 = StringUtils.toJsonObject(jsonObject4.optString("photo_size"));
                                            if (jsonObject5 != null) {
                                                String optString2 = jsonObject5.optString("width");
                                                String optString3 = jsonObject5.optString("height");
                                                if (!StringUtils.isEmpty(optString2) && !StringUtils.isEmpty(optString3)) {
                                                    try {
                                                        LayoutParams layoutParams = this.newsAdImg.getLayoutParams();
                                                        layoutParams.height = (int) (((float) (ScreenUtils.getScreenWidth(getContext()) - 20)) / (Float.parseFloat(optString2) / Float.parseFloat(optString3)));
                                                        this.newsAdImg.setLayoutParams(layoutParams);
                                                    } catch (Exception e3) {
                                                        e3.printStackTrace();
                                                    }
                                                }
                                            }
                                            int length = optString.length();
                                            if (length >= 3) {
                                                if (optString.substring(length - 3, length).equals("gif")) {
                                                    Glide.with(Utils.getContext()).load(optString).asGif().diskCacheStrategy(DiskCacheStrategy.ALL).into((ImageView) this.newsAdImg);
                                                } else {
                                                    Glide.with(Utils.getContext()).load(optString).skipMemoryCache(false).placeholder((int) R.drawable.placeholder2).diskCacheStrategy(DiskCacheStrategy.ALL).into(this.newsAdImg);
                                                }
                                            }
                                            this.newsAdImg.setVisibility(0);
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            }
                        }
                        this.mData.addAll(arrayList);
                        CommonAdapter<String8Bean> commonAdapter = this.mAdapter;
                        if (commonAdapter != null) {
                            commonAdapter.notifyDataSetChanged();
                        }
                    }
                    XRecyclerView xRecyclerView = this.mRecyclerView;
                    if (xRecyclerView != null) {
                        xRecyclerView.refreshComplete();
                    }
                }
            }
        }
    }

    private void initView() {
        if (this.isFirst) {
            this.mHeader = LayoutInflater.from(getActivity()).inflate(R.layout.header_news_class, null);
            View view = this.mHeader;
            if (view != null) {
                this.newsAdImg = (ShapedImageView) view.findViewById(R.id.news_adImg);
                this.newsWeatherRateLayout = (LinearLayout) this.mHeader.findViewById(R.id.news_weatherrate_layout);
                this.newsRateTv = (TextView) this.mHeader.findViewById(R.id.news_rate_tv);
                this.newsWeatherTv = (TextView) this.mHeader.findViewById(R.id.news_weather_tv);
                this.newsRateImg = (ImageView) this.mHeader.findViewById(R.id.news_rate_img);
                this.newsWeatherImg = (ImageView) this.mHeader.findViewById(R.id.news_weather_img);
            }
            this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            this.mAdapter = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_news, this.mData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, final String8Bean string8Bean, int i) {
                    if (string8Bean != null) {
                        viewHolder.setImageURL3(R.id.item_news_img, string8Bean.getStr2());
                        viewHolder.setText(R.id.item_news_title, string8Bean.getStr3());
                        viewHolder.setText(R.id.item_news_author, string8Bean.getStr4());
                        if (!StringUtils.isEmpty(string8Bean.getStr5())) {
                            if (!"0".equals(string8Bean.getStr5())) {
                                viewHolder.setText(R.id.newslist_comment_tv, string8Bean.getStr5());
                                viewHolder.setVisible(R.id.newslist_comment_tv, true);
                                viewHolder.setText(R.id.news_eye_totalcount, string8Bean.getStr7());
                                if (string8Bean.getStr8() != null || !string8Bean.getStr8().equals("1")) {
                                    viewHolder.setVisible(R.id.isPlay_img, false);
                                } else {
                                    viewHolder.setVisible(R.id.isPlay_img, true);
                                }
                            }
                        }
                        viewHolder.setVisible(R.id.newslist_comment_tv, false);
                        viewHolder.setText(R.id.news_eye_totalcount, string8Bean.getStr7());
                        if (string8Bean.getStr8() != null) {
                        }
                        viewHolder.setVisible(R.id.isPlay_img, false);
                    }
                    viewHolder.setOnClickListener(R.id.item_news_rl, new OnClickListener() {
                        public void onClick(View view) {
                            Bundle bundle = new Bundle();
                            bundle.putString("id", string8Bean.getStr1());
                            bundle.putString(ProductAction.ACTION_DETAIL, string8Bean.getStr6());
                            String access$100 = NewsFragment.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("id ");
                            sb.append(string8Bean.getStr1());
                            String str = " ";
                            sb.append(str);
                            sb.append(NewsFragment.this.defaultFlag);
                            sb.append(str);
                            sb.append(NewsFragment.this.auAppId);
                            sb.append(str);
                            sb.append(NewsFragment.this.auPhoto);
                            AILog.d(access$100, sb.toString());
                            if (NewsFragment.this.defaultFlag && (!StringUtils.isEmpty(NewsFragment.this.auAppId) || !StringUtils.isEmpty(NewsFragment.this.auPhoto))) {
                                bundle.putString("appid", NewsFragment.this.auAppId);
                                bundle.putString("photo", NewsFragment.this.auPhoto);
                                NewsFragment.this.initTodayNewsClick();
                                if (Utils.isTodayAuClientAvailable(Utils.getContext())) {
                                    String str2 = "au.com.nexty.today";
                                    if (Utils.isTodayAuClientAvailableToDetail(Utils.getContext())) {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("http://www.sydneytoday.com/content/");
                                        sb2.append(string8Bean.getStr1());
                                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(sb2.toString()));
                                        intent.setClassName(str2, "au.com.nexty.today.activity.welcome.WelcomeActivity");
                                        NewsFragment.this.startActivity(intent);
                                    } else {
                                        Intent launchIntentForPackage = Utils.getContext().getPackageManager().getLaunchIntentForPackage(str2);
                                        if (launchIntentForPackage != null) {
                                            NewsFragment.this.startActivity(launchIntentForPackage);
                                        }
                                    }
                                    return;
                                }
                            }
                            NewsFragment.this.gotoActivity(bundle, NewsDetailActivity.class);
                            KanApplication.getDefaultTracker().send(new EventBuilder().setCategory("资讯").setAction(UserPreference.ACTION1).setLabel(string8Bean.getStr3()).build());
                        }
                    });
                }
            };
            this.mRecyclerView.addHeaderView(this.mHeader);
            this.mRecyclerView.setAdapter(this.mAdapter);
            this.mRecyclerView.setLoadingListener(new LoadingListener() {
                public void onRefresh() {
                    NewsFragment.this.page = 1;
                    NewsFragment.this.initRequest("", false, true);
                }

                public void onLoadMore() {
                    NewsFragment.this.initRequest("", false, false);
                }
            });
        } else {
            CommonAdapter<String8Bean> commonAdapter = this.mAdapter;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
        }
        this.isFirst = false;
    }

    private void initTodayUpdate() {
        if (this.request != null) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("seo", "news");
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            if (!StringUtils.isEmpty(KanApplication.token)) {
                this.request.put("_token", KanApplication.token);
            }
            Api.getService().todayUpdate(this.request).enqueue(new CommonCallBack(getActivity(), false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!NewsFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            try {
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                if (jsonObject2 != null) {
                                    JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString(ConversationControlOp.UPDATE));
                                    if (jsonObject3 != null) {
                                        NewsFragment.this.todayUpateNum = Integer.parseInt(jsonObject3.optString(Message.TARGET_ALL));
                                        if (!(NewsFragment.this.todayUpateNum == 0 || NewsFragment.this.mRecyclerView == null)) {
                                            NewsFragment.this.mRecyclerView.setHeaderRefresh(NewsFragment.this.todayUpateNum, "news");
                                        }
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void initRequest(String str, boolean z, boolean z2) {
        if (this.request != null) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            Map map = this.request;
            StringBuilder sb = new StringBuilder();
            sb.append(this.page);
            sb.append("");
            map.put("page", sb.toString());
            this.request.put(ATTR.CLASS, this.type);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            if (!StringUtils.isEmpty(KanApplication.token)) {
                this.request.put("_token", KanApplication.token);
            }
            Call newsList = Api.getService().newsList(this.request);
            final boolean z3 = z2;
            final String str2 = str;
            AnonymousClass6 r1 = new CommonCallBack(getActivity(), z) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!NewsFragment.this.isonDestroy) {
                        if (NewsFragment.this.mRecyclerView != null) {
                            NewsFragment.this.mRecyclerView.refreshComplete();
                        }
                        if (!StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                    if (z3 && NewsFragment.this.page == 1 && NewsFragment.this.mData != null) {
                                        NewsFragment.this.mData.clear();
                                    }
                                    NewsFragment.this.page = NewsFragment.this.page + 1;
                                    Context context = Utils.getContext();
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(NewsFragment.this.type);
                                    sb.append("_json");
                                    PreferenceUtil.put(context, sb.toString(), this.json);
                                    Context context2 = Utils.getContext();
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(NewsFragment.this.type);
                                    sb2.append("_time");
                                    PreferenceUtil.put(context2, sb2.toString(), String.valueOf(System.currentTimeMillis() / 1000));
                                    NewsFragment.this.initParse(this.json);
                                } else if (!StringUtils.isEmpty(str2)) {
                                    NewsFragment.this.initParse(str2);
                                }
                            }
                        } else if (!StringUtils.isEmpty(str2)) {
                            NewsFragment.this.initParse(str2);
                        }
                    }
                }

                public void onFailure(Call<ResponseBody> call, Throwable th) {
                    super.onFailure(call, th);
                    if (NewsFragment.this.mRecyclerView != null) {
                        NewsFragment.this.mRecyclerView.refreshComplete();
                    }
                }
            };
            newsList.enqueue(r1);
        }
    }

    private void initWeatherRate(final String str) {
        if (this.request != null) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("seo", "home");
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            if (!StringUtils.isEmpty(KanApplication.token)) {
                this.request.put("_token", KanApplication.token);
            }
            Api.getService().getWeatherRateAd(this.request).enqueue(new CommonCallBack(getActivity(), false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!NewsFragment.this.isonDestroy) {
                        if (!StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                    PreferenceUtil.put(Utils.getContext(), "rateweather_json", this.json);
                                    PreferenceUtil.put(Utils.getContext(), "rateweather_time", String.valueOf(System.currentTimeMillis() / 1000));
                                    NewsFragment.this.initWeatherRateParse(this.json);
                                } else if (!StringUtils.isEmpty(str)) {
                                    NewsFragment.this.initWeatherRateParse(str);
                                }
                            }
                        } else if (!StringUtils.isEmpty(str)) {
                            NewsFragment.this.initWeatherRateParse(str);
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void initWeatherRateParse(String str) {
        if (!StringUtils.isEmpty(str)) {
            JSONObject jsonObject = StringUtils.toJsonObject(str);
            if (jsonObject != null) {
                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                if (jsonObject2 != null) {
                    String optString = jsonObject2.optString("rateInfo");
                    String optString2 = jsonObject2.optString("weatherInfo");
                    String str2 = "rate";
                    String optString3 = jsonObject2.optString(str2);
                    String optString4 = jsonObject2.optString("weather");
                    if (!StringUtils.isEmpty(optString)) {
                        JSONObject jsonObject3 = StringUtils.toJsonObject(optString);
                        if (!(jsonObject3 == null || this.newsRateTv == null)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("<font color='#1F93EA'>");
                            sb.append(jsonObject3.optString(str2));
                            sb.append("</font>");
                            String sb2 = sb.toString();
                            TextView textView = this.newsRateTv;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(jsonObject3.optString("label"));
                            sb3.append(sb2);
                            textView.setText(Html.fromHtml(sb3.toString()));
                        }
                    }
                    if (!StringUtils.isEmpty(optString2)) {
                        JSONObject jsonObject4 = StringUtils.toJsonObject(optString2);
                        if (jsonObject4 != null) {
                            TextView textView2 = this.newsWeatherTv;
                            if (textView2 != null) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(jsonObject4.optString("low"));
                                sb4.append("℃");
                                textView2.setText(sb4.toString());
                            }
                        }
                    }
                    String str3 = "title";
                    String str4 = "_id";
                    String str5 = "photo";
                    if (!StringUtils.isEmpty(optString3)) {
                        JSONArray jsonArray = StringUtils.toJsonArray(optString3);
                        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                            final JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, 0);
                            if (!(jSONobject == null || jSONobject.optString(str5) == null || this.newsRateImg == null)) {
                                GlideUtils.loadimage3(jSONobject.optString(str5), this.newsRateImg);
                                this.newsRateImg.setVisibility(0);
                                try {
                                    CommonViewModel.adsShow(jSONobject.optLong(str4), jSONobject.optString(str3));
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                this.newsRateImg.setOnClickListener(new OnClickListener() {
                                    public void onClick(View view) {
                                        try {
                                            CommonViewModel.adsClick(jSONobject.optLong("_id"));
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                        Bundle bundle = new Bundle();
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
                                            return;
                                        }
                                        Intent intent2 = new Intent();
                                        intent2.setAction("android.intent.action.VIEW");
                                        intent2.setData(Uri.parse(jSONobject.optString(str2)));
                                        intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                        Utils.getContext().startActivity(intent2);
                                    }
                                });
                            }
                        }
                    }
                    if (!StringUtils.isEmpty(optString4)) {
                        JSONArray jsonArray2 = StringUtils.toJsonArray(optString4);
                        if (StringUtils.isJSONArrayNotEmpty(jsonArray2)) {
                            final JSONObject jSONobject2 = StringUtils.getJSONobject(jsonArray2, 0);
                            if (!(jSONobject2 == null || jSONobject2.optString(str5) == null || this.newsWeatherImg == null)) {
                                GlideUtils.loadimage3(jSONobject2.optString(str5), this.newsWeatherImg);
                                this.newsWeatherImg.setVisibility(0);
                                try {
                                    CommonViewModel.adsShow(jSONobject2.optLong(str4), jSONobject2.optString(str3));
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                                this.newsWeatherImg.setOnClickListener(new OnClickListener() {
                                    public void onClick(View view) {
                                        try {
                                            CommonViewModel.adsClick(jSONobject2.optLong("_id"));
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                        Bundle bundle = new Bundle();
                                        String str = "opentype";
                                        String str2 = "url";
                                        if (StringUtils.isEmpty(jSONobject2.optString(str)) || !jSONobject2.optString(str).equals("0")) {
                                            String str3 = "title";
                                            bundle.putString(str3, jSONobject2.optString(str3));
                                            bundle.putString(str2, jSONobject2.optString(str2));
                                            Intent intent = new Intent(Utils.getContext(), WebViewActivity.class);
                                            intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                            intent.putExtras(bundle);
                                            Utils.getContext().startActivity(intent);
                                            return;
                                        }
                                        Intent intent2 = new Intent();
                                        intent2.setAction("android.intent.action.VIEW");
                                        intent2.setData(Uri.parse(jSONobject2.optString(str2)));
                                        intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                        Utils.getContext().startActivity(intent2);
                                    }
                                });
                            }
                        }
                    }
                    if (!StringUtils.isEmpty(optString2) || !StringUtils.isEmpty(optString)) {
                        LinearLayout linearLayout = this.newsWeatherRateLayout;
                        if (linearLayout != null) {
                            linearLayout.setVisibility(0);
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void initTodayNewsClick() {
        this.request.clear();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str);
        if (!StringUtils.isEmpty(this.auAppId)) {
            this.request.put("appid", this.auAppId);
        }
        if (!StringUtils.isEmpty(this.todaynews_city)) {
            this.request.put("todaynews_city", this.todaynews_city);
        }
        if (!StringUtils.isEmpty(this.todaynews_click)) {
            this.request.put("todaynews_click", this.todaynews_click);
        }
        if (!StringUtils.isEmpty(this.todaynews_content)) {
            this.request.put("todaynews_content", this.todaynews_content);
        }
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().todayAuImageClick(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        jsonObject.optString("status").equals(StatusCode.STATUS_OK);
                    }
                }
            }
        });
    }

    public void setScrollEffect(ScrollEffect scrollEffect2) {
        this.scrollEffect = scrollEffect2;
    }

    public void onDestroy() {
        super.onDestroy();
        this.mData = null;
        this.mAdapter = null;
        this.mRecyclerView = null;
    }

    private void getContentDetail(final String8Bean string8Bean) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("getContentDetail:");
        sb.append(string8Bean.getStr1());
        AILog.d(str, sb.toString());
        new Thread() {
            public void run() {
                super.run();
                try {
                    Response execute = Api.getService().hotcommentDetail(string8Bean.getStr1()).execute();
                    if (execute != null) {
                        try {
                            if (execute.isSuccessful()) {
                                String str = ((ResponseBody) execute.body()).string().toString();
                                if (!StringUtils.isEmpty(str)) {
                                    JSONObject jsonObject = StringUtils.toJsonObject(str);
                                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK) && StringUtils.toJsonObject(jsonObject.optString("data")) != null) {
                                        new SharedData(NewsFragment.this.getActivity(), "new_cache").put(string8Bean.getStr1(), str);
                                        string8Bean.setStr6(str);
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        }.start();
    }
}
