package com.kantv.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.OnScrollListener;
import butterknife.BindView;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.common.ConnectionResult;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.gson.Gson;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.bean.AdBean;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Selection;
import com.kantv.lib.gallery.GalleryViewPager;
import com.kantv.lib.gallery.ScaleGalleryTransformer;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.AccountLoginActivity;
import com.kantv.ui.activity.HistoryActivity;
import com.kantv.ui.activity.HotListActivity;
import com.kantv.ui.activity.MoreRecommendActivity;
import com.kantv.ui.activity.OfflineVideoActivity;
import com.kantv.ui.activity.SoareListActivity;
import com.kantv.ui.activity.UpdateListActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ContentSlideAdapter;
import com.kantv.ui.adapter.ScrolGalleryAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.EventBusBean;
import com.kantv.ui.bean.MovieBean;
import com.kantv.ui.bean.SlideImgBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.interfaces.ScrollEffect;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.ScreenUtils;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.view.ShapedImageView;
import com.kantv.ui.view.WeatherIconView;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.samsung.multiscreen.Message;
import com.tandong.bottomview.view.BottomView;
import debug.KanApplication;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class TvDefaultFragment extends BaseFragment {
    private static final String TAG = "TvDefaultFragment";
    /* access modifiers changed from: private */
    public Handler adPopHandler = new Handler();
    Runnable adPopRunnable = new Runnable() {
        public void run() {
            try {
                if (TvDefaultFragment.this.mBottomView != null) {
                    TvDefaultFragment.this.mBottomView.showBottomView(true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private ContentSlideAdapter adapter;
    Map<Integer, AdBean> ads = new HashMap();
    private View contentView;
    private List<List<MovieBean>> fillData;
    GalleryViewPager galleryViewPager = null;
    private boolean isFirstLoad = true;
    /* access modifiers changed from: private */
    public BottomView mBottomView = null;
    List<Map<String, Object>> mDatas = new ArrayList();
    private List<SlideImgBean> mImgData;
    private List<String> mImgList;
    ContentSlideAdapter mRandomLookAdapter = null;
    List<MovieBean> mRandomMovieData = new ArrayList();
    @BindView(2131296651)
    XRecyclerView mRecommendRV;
    /* access modifiers changed from: private */
    public int page = 1;
    private JSONObject randomLookJson = null;
    private View randomLookView;
    List<List<MovieBean>> randomMovieList = new ArrayList();
    private JSONArray recommend_channel;
    private ScrolGalleryAdapter scrolGalleryAdapter = null;
    /* access modifiers changed from: private */
    public ScrollEffect scrollEffect = null;
    private String search_title = null;
    private View todayRecommendHead;
    /* access modifiers changed from: private */
    public int todayUpateNum = 0;
    /* access modifiers changed from: private */
    public String type;
    ImageView videoRateImg;
    TextView videoRateTv;
    ImageView videoWeatherImg;
    LinearLayout videoWeatherRateLayout;
    TextView videoWeatherTv;
    WeatherIconView weatherIconView;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_tv_default, null);
        initRequestPopAd();
        return this.mRootView;
    }

    public void initData() {
        this.type = getArguments().getString("id");
        if (!StringUtils.isEmpty(this.search_title)) {
            EventBus.getDefault().post(new EventBusBean("TabTvFragment", "001", this.search_title));
        }
        if (this.isFirstLoad) {
            this.todayRecommendHead = LayoutInflater.from(getActivity()).inflate(R.layout.header_item_tv_default, null);
            this.randomLookView = LayoutInflater.from(getActivity()).inflate(R.layout.random_look, null);
            initCacheData();
        }
        this.mRecommendRV.addOnScrollListener(new OnScrollListener() {
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (TvDefaultFragment.this.scrollEffect == null) {
                    return;
                }
                if (i2 > 20) {
                    TvDefaultFragment.this.scrollEffect.reduce();
                } else if (i2 <= -10) {
                    TvDefaultFragment.this.scrollEffect.expand();
                }
            }
        });
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN33);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initCacheData() {
        this.fillData = new ArrayList();
        this.mImgData = new ArrayList();
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "index_json", str);
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.RANDOMLOOK_JSON, str);
        int isCache = DateUtil.isCache(str2, (String) PreferenceUtil.get(Utils.getContext(), "index_time", str));
        if (isCache == 0) {
            initParse(str2);
            initTodayUpdate();
        } else if (isCache == 1) {
            initTodayUpdate();
            initRequest(str2, true);
        }
    }

    private void initTodayUpdate() {
        if (this.request != null) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("seo", this.type);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            if (!StringUtils.isEmpty(KanApplication.token)) {
                this.request.put("_token", KanApplication.token);
            }
            Api.getService().todayUpdate(this.request).enqueue(new CommonCallBack(getActivity(), false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!TvDefaultFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            try {
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                if (jsonObject2 != null) {
                                    JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString(ConversationControlOp.UPDATE));
                                    if (jsonObject3 != null) {
                                        TvDefaultFragment.this.todayUpateNum = Integer.parseInt(jsonObject3.optString(Message.TARGET_ALL));
                                        if (!(TvDefaultFragment.this.todayUpateNum == 0 || TvDefaultFragment.this.mRecommendRV == null)) {
                                            TvDefaultFragment.this.mRecommendRV.setHeaderRefresh(TvDefaultFragment.this.todayUpateNum, TvDefaultFragment.this.type);
                                            TvDefaultFragment.this.mRecommendRV.refreshComplete();
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

    private void initRequest(final String str, boolean z) {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().Index(this.request).enqueue(new CommonCallBack(getActivity(), z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!TvDefaultFragment.this.isonDestroy) {
                    if (!StringUtils.isEmpty(this.json)) {
                        AILog.d("首页获取数据", this.json);
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                PreferenceUtil.put(Utils.getContext(), "index_json", this.json);
                                PreferenceUtil.put(Utils.getContext(), "index_time", String.valueOf(System.currentTimeMillis() / 1000));
                                TvDefaultFragment.this.initParse(this.json);
                            } else if (!StringUtils.isEmpty(str)) {
                                TvDefaultFragment.this.initParse(str);
                            }
                        }
                    } else if (!StringUtils.isEmpty(str)) {
                        TvDefaultFragment.this.initParse(str);
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                if (!StringUtils.isEmpty(str)) {
                    TvDefaultFragment.this.initParse(str);
                }
            }
        });
    }

    private void initWeatherRate(final String str) {
        if (this.request != null) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            String str2 = "seo";
            if (!StringUtils.isEmpty(this.type)) {
                this.request.put(str2, this.type);
            } else {
                this.request.put(str2, "news");
            }
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            if (!StringUtils.isEmpty(KanApplication.token)) {
                this.request.put("_token", KanApplication.token);
            }
            Api.getService().getWeatherRateAd(this.request).enqueue(new CommonCallBack(getActivity(), false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!TvDefaultFragment.this.isonDestroy) {
                        if (!StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                    PreferenceUtil.put(Utils.getContext(), "video_rateweather_json", this.json);
                                    PreferenceUtil.put(Utils.getContext(), "video_rateweather_time", String.valueOf(System.currentTimeMillis() / 1000));
                                    TvDefaultFragment.this.initWeatherRateParse(this.json);
                                } else if (!StringUtils.isEmpty(str)) {
                                    TvDefaultFragment.this.initWeatherRateParse(str);
                                }
                            }
                        } else if (!StringUtils.isEmpty(str)) {
                            TvDefaultFragment.this.initWeatherRateParse(str);
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
                        if (!(jsonObject3 == null || this.videoRateTv == null)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("<font color='#1F93EA'>");
                            sb.append(jsonObject3.optString(str2));
                            sb.append("</font>");
                            String sb2 = sb.toString();
                            TextView textView = this.videoRateTv;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(jsonObject3.optString("label"));
                            sb3.append(sb2);
                            textView.setText(Html.fromHtml(sb3.toString()));
                        }
                    }
                    if (!StringUtils.isEmpty(optString2)) {
                        JSONObject jsonObject4 = StringUtils.toJsonObject(optString2);
                        if (jsonObject4 != null) {
                            TextView textView2 = this.videoWeatherTv;
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
                            if (!(jSONobject == null || jSONobject.optString(str5) == null || this.videoRateImg == null)) {
                                GlideUtils.loadimage3(jSONobject.optString(str5), this.videoRateImg);
                                this.videoRateImg.setVisibility(0);
                                try {
                                    CommonViewModel.adsShow(jSONobject.optLong(str4), jSONobject.optString(str3));
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                this.videoRateImg.setOnClickListener(new OnClickListener() {
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
                            if (!(jSONobject2 == null || jSONobject2.optString(str5) == null || this.videoWeatherImg == null)) {
                                GlideUtils.loadimage3(jSONobject2.optString(str5), this.videoWeatherImg);
                                this.videoWeatherImg.setVisibility(0);
                                CommonViewModel.adsShow(jSONobject2.optLong(str4), jSONobject2.optString(str3));
                                this.videoWeatherImg.setOnClickListener(new OnClickListener() {
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
                        LinearLayout linearLayout = this.videoWeatherRateLayout;
                        if (linearLayout != null) {
                            linearLayout.setVisibility(0);
                        }
                    }
                }
            }
        }
    }

    private void setWeatherIcon(WeatherIconView weatherIconView2, int i) {
        if (i == 3 || i == 4 || ((i >= 37 && i <= 39) || i == 45 || i == 47)) {
            weatherIconView2.setIconResource(getResources().getString(R.string.wi_thunderstorm));
        } else if ((i >= 5 && i <= 12) || i == 35 || i == 40) {
            weatherIconView2.setIconResource(getResources().getString(R.string.wi_rain));
        } else if ((i >= 13 && i <= 18) || ((i >= 41 && i <= 43) || i == 46)) {
            weatherIconView2.setIconResource(getResources().getString(R.string.wi_snow));
        } else if (i >= 26 && i <= 28) {
            weatherIconView2.setIconResource(getResources().getString(R.string.wi_cloud));
        } else if (i == 29 || i == 30 || i == 44) {
            weatherIconView2.setIconResource(getResources().getString(R.string.wi_wu_partlycloudy));
        } else {
            weatherIconView2.setIconResource(getResources().getString(R.string.wi_day_snow_thunderstorm));
        }
        weatherIconView2.setIconSize(13);
        weatherIconView2.setIconColor(getResources().getColor(R.color.text_main_color));
    }

    /* access modifiers changed from: private */
    public void initRandomLookRequest(final String str, boolean z) {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("page", String.valueOf(this.page));
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().getRandomLook(this.request).enqueue(new CommonCallBack(getActivity(), z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!TvDefaultFragment.this.isonDestroy) {
                    if (TvDefaultFragment.this.mRecommendRV != null) {
                        TvDefaultFragment.this.mRecommendRV.refreshComplete();
                    }
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                if (!StringUtils.isEmpty(str)) {
                                    PreferenceUtil.put(Utils.getContext(), UserPreference.RANDOMLOOK_JSON, this.json);
                                }
                                TvDefaultFragment.this.initParseRandomLookData(this.json);
                            } else if (!StringUtils.isEmpty(str)) {
                                TvDefaultFragment.this.initParseRandomLookData(str);
                            }
                        }
                    } else if (!StringUtils.isEmpty(str)) {
                        TvDefaultFragment.this.initParseRandomLookData(str);
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                if (TvDefaultFragment.this.mRecommendRV != null) {
                    TvDefaultFragment.this.mRecommendRV.refreshComplete();
                }
                if (!StringUtils.isEmpty(str)) {
                    TvDefaultFragment.this.initParseRandomLookData(str);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void initParse(String str) {
        AILog.d(TAG, str);
        List<SlideImgBean> list = this.mImgData;
        if (list != null) {
            list.clear();
        }
        List<List<MovieBean>> list2 = this.fillData;
        if (list2 != null) {
            list2.clear();
        }
        JSONObject jsonObject = StringUtils.toJsonObject(str);
        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
            if (jsonObject2 != null) {
                this.search_title = jsonObject2.optString("search_title");
                if (!StringUtils.isEmpty(this.search_title)) {
                    EventBus.getDefault().post(new EventBusBean("TabTvFragment", "001", this.search_title));
                }
                parseScrollImgData(jsonObject2);
                parseTVCategoryData(jsonObject2);
                parseRandomLookData(jsonObject2);
                fillDataView();
            }
        }
    }

    private void parseRandomLookData(JSONObject jSONObject) {
        Gson gson = new Gson();
        try {
            this.randomLookJson = jSONObject.getJSONObject("allvideo");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        JSONObject jSONObject2 = this.randomLookJson;
        if (jSONObject2 != null) {
            String str = Selection.LIST;
            JSONArray jsonArray = StringUtils.toJsonArray(jSONObject2.optString(str));
            if (jsonArray != null) {
                for (int i = 0; i < jsonArray.length(); i++) {
                    JSONArray jSONArray = null;
                    try {
                        jSONArray = jsonArray.getJSONObject(i).getJSONArray(str);
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                    if (jSONArray != null) {
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            this.mRandomMovieData.add((MovieBean) gson.fromJson(StringUtils.getJSONobject(jSONArray, i2).toString(), MovieBean.class));
                        }
                    }
                }
            }
        }
    }

    private void fillDataView() {
        if (this.isFirstLoad) {
            this.mRecommendRV.setLayoutManager(new LinearLayoutManager(getContext()));
            View view = this.todayRecommendHead;
            String str = "ad";
            String str2 = "seo";
            if (view != null) {
                RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.header_item_today_recommend);
                TextView textView = (TextView) this.todayRecommendHead.findViewById(R.id.item_recommend_title);
                TextView textView2 = (TextView) this.todayRecommendHead.findViewById(R.id.item_recommend_more);
                ShapedImageView shapedImageView = (ShapedImageView) this.todayRecommendHead.findViewById(R.id.ad_img);
                TextView textView3 = (TextView) this.todayRecommendHead.findViewById(R.id.hot_tv);
                TextView textView4 = (TextView) this.todayRecommendHead.findViewById(R.id.soare_tv);
                TextView textView5 = (TextView) this.todayRecommendHead.findViewById(R.id.update_tv);
                TextView textView6 = (TextView) this.todayRecommendHead.findViewById(R.id.history_tv);
                TextView textView7 = (TextView) this.todayRecommendHead.findViewById(R.id.cache_tv);
                this.videoWeatherRateLayout = (LinearLayout) this.todayRecommendHead.findViewById(R.id.video_weatherrate_layout);
                this.videoRateTv = (TextView) this.todayRecommendHead.findViewById(R.id.video_rate_tv);
                this.videoWeatherTv = (TextView) this.todayRecommendHead.findViewById(R.id.video_weather_tv);
                this.videoRateImg = (ImageView) this.todayRecommendHead.findViewById(R.id.video_rate_img);
                this.videoWeatherImg = (ImageView) this.todayRecommendHead.findViewById(R.id.video_weather_img);
                this.weatherIconView = (WeatherIconView) this.todayRecommendHead.findViewById(R.id.imageWeatherIcon);
                textView3.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        TvDefaultFragment.this.gotoActivity(HotListActivity.class);
                    }
                });
                textView4.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        TvDefaultFragment.this.gotoActivity(SoareListActivity.class);
                    }
                });
                textView5.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        TvDefaultFragment.this.gotoActivity(UpdateListActivity.class);
                    }
                });
                textView6.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                            TvDefaultFragment.this.gotoActivity(HistoryActivity.class);
                        } else {
                            TvDefaultFragment.this.initAlertDialog("提示", "您当前还未登录，是否前往登录？");
                        }
                    }
                });
                textView7.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        TvDefaultFragment.this.gotoActivity(OfflineVideoActivity.class);
                    }
                });
                final AdBean adBean = (AdBean) this.ads.get(Integer.valueOf(0));
                if (adBean == null || adBean.getPhotoHeight() == 0) {
                    shapedImageView.setVisibility(8);
                } else {
                    String photo = adBean.getPhoto();
                    try {
                        LayoutParams layoutParams = shapedImageView.getLayoutParams();
                        layoutParams.height = (int) (((float) (ScreenUtils.getScreenWidth(getContext()) - 20)) / (((float) adBean.getPhotoWidth()) / ((float) adBean.getPhotoHeight())));
                        shapedImageView.setLayoutParams(layoutParams);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    try {
                        CommonViewModel.adsShow(adBean.get_id(), adBean.getTitle());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    shapedImageView.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            try {
                                CommonViewModel.adsClick(adBean.get_id());
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            Bundle bundle = new Bundle();
                            if (adBean.getOpentype() == 0) {
                                Intent intent = new Intent();
                                intent.setAction("android.intent.action.VIEW");
                                intent.setData(Uri.parse(adBean.getUrl()));
                                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                Utils.getContext().startActivity(intent);
                                return;
                            }
                            bundle.putString("title", adBean.getTitle());
                            bundle.putString("url", adBean.getUrl());
                            Intent intent2 = new Intent(Utils.getContext(), WebViewActivity.class);
                            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                            intent2.putExtras(bundle);
                            Utils.getContext().startActivity(intent2);
                        }
                    });
                    int length = photo.length();
                    if (length >= 3) {
                        if (photo.substring(length - 3, length).equals("gif")) {
                            Glide.with(Utils.getContext()).load(photo).asGif().diskCacheStrategy(DiskCacheStrategy.ALL).into((ImageView) shapedImageView);
                        } else {
                            Glide.with(Utils.getContext()).load(photo).skipMemoryCache(false).placeholder((int) R.drawable.placeholder2).diskCacheStrategy(DiskCacheStrategy.ALL).into(shapedImageView);
                        }
                    }
                    shapedImageView.setVisibility(0);
                }
                textView.setText("今日推荐");
                textView2.setText("更多推荐");
                final ArrayList arrayList = new ArrayList();
                List<List<MovieBean>> list = this.fillData;
                if (list != null && list.size() > 0 && this.fillData.get(0) != null && ((List) this.fillData.get(0)).size() > 0) {
                    for (int i = 0; i < ((List) this.fillData.get(0)).size(); i++) {
                        arrayList.add(((List) this.fillData.get(0)).get(i));
                    }
                }
                textView2.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        TvDefaultFragment.this.gotoActivity(MoreRecommendActivity.class);
                    }
                });
                recyclerView.setLayoutManager(new GridLayoutManager(Utils.getContext(), 2));
                AnonymousClass15 r1 = new CommonAdapter<MovieBean>(Utils.getContext(), R.layout.item_todayrd_card, arrayList) {
                    /* access modifiers changed from: protected */
                    public void convert(ViewHolder viewHolder, final MovieBean movieBean, int i) {
                        viewHolder.setImageURL4(R.id.item_card_img, movieBean.getPhoto());
                        viewHolder.setText(R.id.item_card_name, movieBean.getTitle());
                        viewHolder.setText(R.id.item_card_desc, movieBean.getDescript());
                        String score = movieBean.getScore();
                        if (!StringUtils.isEmpty(score)) {
                            if (score.length() == 3) {
                                viewHolder.setText(R.id.item_number2, score.substring(2));
                                viewHolder.setText(R.id.item_number1, score.substring(0, 2));
                            } else if (score.length() == 1) {
                                viewHolder.setText(R.id.item_number2, ".0");
                                viewHolder.setText(R.id.item_number1, score);
                            }
                        }
                        viewHolder.setText(R.id.item_update, movieBean.getMsg());
                        viewHolder.setOnClickListener(R.id.item_card_ll, new OnClickListener() {
                            public void onClick(View view) {
                                Bundle bundle = new Bundle();
                                bundle.putString("seo", movieBean.getSeo());
                                bundle.putString("tid", movieBean.getUrl());
                                bundle.putString("preview", movieBean.getCurpart());
                                TvDefaultFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                            }
                        });
                    }

                    public int getItemCount() {
                        List list = arrayList;
                        int i = (list == null || list.size() < 4) ? 0 : 4;
                        List list2 = arrayList;
                        return (list2 == null || list2.size() >= 4) ? i : arrayList.size();
                    }
                };
                recyclerView.setAdapter(r1);
                ImageView imageView = (ImageView) this.todayRecommendHead.findViewById(R.id.hot_list_img);
                if (100 <= Integer.parseInt(Utils.interfaceVersion)) {
                    imageView.setVisibility(8);
                }
                imageView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        TvDefaultFragment.this.gotoActivity(HotListActivity.class);
                    }
                });
                JSONArray jSONArray = this.recommend_channel;
                if (jSONArray != null) {
                    try {
                        JSONObject jSONobject = StringUtils.getJSONobject(jSONArray, 0);
                        String str3 = "photo";
                        if (jSONobject == null) {
                            GlideUtils.loadimage2(this.recommend_channel.getJSONObject(1).getString(str3).toString(), imageView);
                        } else if (jSONobject.optString(str2) == null || !jSONobject.optString(str2).equals(str)) {
                            GlideUtils.loadimage2(this.recommend_channel.getJSONObject(1).getString(str3).toString(), imageView);
                        } else {
                            GlideUtils.loadimage2(this.recommend_channel.getJSONObject(2).getString(str3).toString(), imageView);
                        }
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
            }
            RecyclerView recyclerView2 = null;
            View view2 = this.randomLookView;
            if (view2 != null) {
                recyclerView2 = (RecyclerView) view2.findViewById(R.id.header_item_random_look);
                recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
            }
            ArrayList arrayList2 = new ArrayList();
            List<List<MovieBean>> list2 = this.randomMovieList;
            if (list2 == null || list2.size() <= 0) {
                arrayList2.add(this.mRandomMovieData);
            } else {
                arrayList2.add(this.randomMovieList.get(0));
            }
            this.mRandomLookAdapter = new ContentSlideAdapter(arrayList2, getActivity(), this.randomLookJson, true);
            if (recyclerView2 != null) {
                recyclerView2.setAdapter(this.mRandomLookAdapter);
            }
            if (VERSION.SDK_INT >= 19) {
                JSONArray jSONArray2 = this.recommend_channel;
                if (jSONArray2 != null) {
                    JSONObject jSONobject2 = StringUtils.getJSONobject(jSONArray2, 0);
                    if (jSONobject2 == null) {
                        this.recommend_channel.remove(0);
                    } else if (jSONobject2.optString(str2) == null || !jSONobject2.optString(str2).equals(str)) {
                        this.recommend_channel.remove(0);
                    } else {
                        this.recommend_channel.remove(1);
                    }
                }
            }
            this.mDatas.remove(0);
            List<List<MovieBean>> list3 = this.fillData;
            if (list3 != null && list3.size() != 0) {
                ArrayList arrayList3 = new ArrayList();
                for (int i2 = 1; i2 < this.fillData.size(); i2++) {
                    arrayList3.add(this.fillData.get(i2));
                }
                ContentSlideAdapter contentSlideAdapter = new ContentSlideAdapter(arrayList3, getActivity(), this.recommend_channel, this.ads, this.mDatas);
                this.adapter = contentSlideAdapter;
                View view3 = this.todayRecommendHead;
                if (view3 != null) {
                    this.adapter.addHeaderView(view3);
                }
                View view4 = this.randomLookView;
                if (view4 != null) {
                    this.adapter.addFooterView(view4);
                }
                ContentSlideAdapter contentSlideAdapter2 = this.adapter;
                if (contentSlideAdapter2 != null) {
                    contentSlideAdapter2.notifyDataSetChanged();
                }
                this.mRecommendRV.setAdapter(this.adapter);
                this.mRecommendRV.setLoadingListener(new LoadingListener() {
                    public void onRefresh() {
                        TvDefaultFragment.this.page = 1;
                        TvDefaultFragment.this.randomMovieList.clear();
                        TvDefaultFragment.this.initRandomLookRequest("", false);
                    }

                    public void onLoadMore() {
                        TvDefaultFragment.this.page = TvDefaultFragment.this.page + 1;
                        TvDefaultFragment.this.initRandomLookRequest("", false);
                    }
                });
                String str4 = "";
                String str5 = (String) PreferenceUtil.get(Utils.getContext(), "video_rateweather_json", str4);
                int isCache = DateUtil.isCache(str5, (String) PreferenceUtil.get(Utils.getContext(), "video_rateweather_time", str4));
                if (isCache == 0) {
                    initWeatherRateParse(str5);
                } else if (isCache == 1) {
                    initWeatherRate(str5);
                }
            } else {
                return;
            }
        } else {
            ContentSlideAdapter contentSlideAdapter3 = this.adapter;
            if (contentSlideAdapter3 != null) {
                contentSlideAdapter3.notifyDataSetChanged();
            }
        }
        this.isFirstLoad = false;
    }

    private void parseScrollImgData(JSONObject jSONObject) {
        Gson gson = new Gson();
        JSONArray jsonArray = StringUtils.toJsonArray(jSONObject.optString("top"));
        this.mImgList = new ArrayList();
        int i = 0;
        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
            for (int i2 = 0; i2 < jsonArray.length(); i2++) {
                if (StringUtils.getJSONobject(jsonArray, i2) != null) {
                    SlideImgBean slideImgBean = (SlideImgBean) gson.fromJson(StringUtils.getJSONobject(jsonArray, i2).toString(), SlideImgBean.class);
                    if (StringUtils.isEmpty(slideImgBean.getPhoto())) {
                        this.mImgList.add("error");
                    } else {
                        this.mImgList.add(slideImgBean.getPhoto());
                    }
                    List<SlideImgBean> list = this.mImgData;
                    if (list != null) {
                        list.add(slideImgBean);
                    }
                }
            }
        }
        View view = this.todayRecommendHead;
        if (view != null) {
            this.galleryViewPager = (GalleryViewPager) view.findViewById(R.id.view_pager);
            if (this.galleryViewPager != null) {
                if (this.scrolGalleryAdapter == null) {
                    this.scrolGalleryAdapter = new ScrolGalleryAdapter(this.mImgData, Utils.getContext());
                }
                this.galleryViewPager.setAdapter(this.scrolGalleryAdapter);
                GalleryViewPager galleryViewPager2 = this.galleryViewPager;
                List<SlideImgBean> list2 = this.mImgData;
                if (list2 != null) {
                    i = list2.size() / 2;
                }
                galleryViewPager2.setCurrentItem(i);
                this.galleryViewPager.setPageTransformer(true, new ScaleGalleryTransformer());
                this.galleryViewPager.setDuration(2000);
                this.galleryViewPager.startAutoCycle();
                this.galleryViewPager.setSliderTransformDuration(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, null);
            }
        }
    }

    private void parseTVCategoryData(JSONObject jSONObject) {
        String str = "seo";
        Gson gson = new Gson();
        try {
            this.recommend_channel = StringUtils.toJsonArray(jSONObject.optString("recommend"));
            if (StringUtils.isJSONArrayNotEmpty(this.recommend_channel)) {
                this.mDatas.clear();
                this.ads.clear();
                for (int i = 0; i < this.recommend_channel.length(); i++) {
                    ArrayList arrayList = new ArrayList();
                    JSONObject jSONobject = StringUtils.getJSONobject(this.recommend_channel, i);
                    if (jSONobject != null) {
                        if (jSONobject.optString(str) == null || !jSONobject.optString(str).equals("ad")) {
                            HashMap hashMap = new HashMap();
                            JSONArray jsonArray = StringUtils.toJsonArray(jSONobject.optString(Selection.LIST));
                            for (int i2 = 0; i2 < jsonArray.length(); i2++) {
                                JSONObject jSONobject2 = StringUtils.getJSONobject(jsonArray, i2);
                                if (jSONobject2 != null) {
                                    arrayList.add((MovieBean) gson.fromJson(jSONobject2.toString(), MovieBean.class));
                                }
                            }
                            hashMap.put("data", arrayList);
                            hashMap.put(Param.INDEX, Integer.valueOf(i));
                            hashMap.put("title", jSONobject.optString("name"));
                            this.mDatas.add(hashMap);
                            if (this.fillData != null) {
                                this.fillData.add(arrayList);
                            }
                        } else {
                            AdBean adBean = (AdBean) gson.fromJson(jSONobject.toString(), AdBean.class);
                            if (adBean != null) {
                                JSONObject optJSONObject = jSONobject.optJSONObject("photo_size");
                                adBean.setPhotoWidth(Integer.valueOf(optJSONObject.optString("width")).intValue());
                                adBean.setPhotoHeight(Integer.valueOf(optJSONObject.optString("height")).intValue());
                                this.ads.put(Integer.valueOf(i), adBean);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public void initParseRandomLookData(String str) {
        String str2 = Selection.LIST;
        String str3 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("***initParseRandomLookData ");
        sb.append(str);
        AILog.d(str3, sb.toString());
        JSONObject jsonObject = StringUtils.toJsonObject(str);
        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
            Gson gson = new Gson();
            try {
                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                if (jsonObject2 != null) {
                    this.randomLookJson = jsonObject2.getJSONObject("allvideo");
                    if (this.randomLookJson != null) {
                        JSONArray jsonArray = StringUtils.toJsonArray(this.randomLookJson.optString(str2));
                        if (jsonArray != null) {
                            ArrayList arrayList = new ArrayList();
                            for (int i = 0; i < jsonArray.length(); i++) {
                                JSONArray jSONArray = null;
                                try {
                                    jSONArray = jsonArray.getJSONObject(i).getJSONArray(str2);
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }
                                if (jSONArray != null) {
                                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                        arrayList.add((MovieBean) gson.fromJson(StringUtils.getJSONobject(jSONArray, i2).toString(), MovieBean.class));
                                    }
                                }
                            }
                            this.randomMovieList.add(arrayList);
                            if (this.mRandomLookAdapter != null) {
                                if (this.randomMovieList != null && this.randomMovieList.size() > 1) {
                                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                        this.mRandomLookAdapter.addSingleAdapterData((MovieBean) arrayList.get(i3));
                                    }
                                    if (this.mRandomLookAdapter.getSingleAdapter() != null) {
                                        this.mRandomLookAdapter.getSingleAdapter().notifyDataSetChanged();
                                    }
                                } else if (this.mRandomLookAdapter != null) {
                                    this.mRandomLookAdapter.notifyDataSetChanged();
                                }
                            }
                        }
                    }
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    private void initRequestPopAd() {
        String str = Build.SERIAL;
        if (this.request == null) {
            this.request = new HashMap();
        }
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("getPop", str);
        this.request.put("seo", "home");
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().getPop(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!TvDefaultFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        final JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            String str = "photo";
                            if (!StringUtils.isEmpty(jsonObject2.optString(str))) {
                                String optString = jsonObject2.optString(str);
                                TvDefaultFragment tvDefaultFragment = TvDefaultFragment.this;
                                tvDefaultFragment.mBottomView = new BottomView((Context) tvDefaultFragment.getActivity(), (int) R.style.BottomViewTheme_Defalut, (int) R.layout.item_advertising);
                                TvDefaultFragment.this.mBottomView.setAnimation(R.style.BottomToTopAnim);
                                ImageView imageView = (ImageView) TvDefaultFragment.this.mBottomView.getView().findViewById(R.id.item_advertising_gb);
                                ImageView imageView2 = (ImageView) TvDefaultFragment.this.mBottomView.getView().findViewById(R.id.item_advertising_img);
                                imageView2.setOnClickListener(new OnClickListener() {
                                    public void onClick(View view) {
                                        try {
                                            CommonViewModel.adsClick(jsonObject2.optLong("_id"));
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                        Bundle bundle = new Bundle();
                                        String str = "opentype";
                                        String str2 = "url";
                                        if (StringUtils.isEmpty(jsonObject2.optString(str)) || !jsonObject2.optString(str).equals("0")) {
                                            String str3 = "title";
                                            bundle.putString(str3, jsonObject2.optString(str3));
                                            bundle.putString(str2, jsonObject2.optString(str2));
                                            Intent intent = new Intent(Utils.getContext(), WebViewActivity.class);
                                            intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                            intent.putExtras(bundle);
                                            Utils.getContext().startActivity(intent);
                                        } else {
                                            Intent intent2 = new Intent();
                                            intent2.setAction("android.intent.action.VIEW");
                                            intent2.setData(Uri.parse(jsonObject2.optString(str2)));
                                            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                            Utils.getContext().startActivity(intent2);
                                        }
                                        if (TvDefaultFragment.this.mBottomView != null) {
                                            TvDefaultFragment.this.mBottomView.dismissBottomView();
                                            TvDefaultFragment.this.mBottomView = null;
                                        }
                                    }
                                });
                                imageView.setOnClickListener(new OnClickListener() {
                                    public void onClick(View view) {
                                        if (TvDefaultFragment.this.mBottomView != null) {
                                            TvDefaultFragment.this.mBottomView.dismissBottomView();
                                            TvDefaultFragment.this.mBottomView = null;
                                        }
                                    }
                                });
                                int length = optString.length();
                                if (length >= 3) {
                                    if (optString.substring(length - 3, length).equals("gif")) {
                                        Glide.with(Utils.getContext()).load(optString).asGif().diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView2);
                                    } else {
                                        Glide.with(Utils.getContext()).load(optString).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.ALL).listener((RequestListener<? super ModelType, GlideDrawable>) new RequestListener<String, GlideDrawable>() {
                                            public boolean onException(Exception exc, String str, Target<GlideDrawable> target, boolean z) {
                                                return false;
                                            }

                                            public boolean onResourceReady(GlideDrawable glideDrawable, String str, Target<GlideDrawable> target, boolean z, boolean z2) {
                                                TvDefaultFragment.this.adPopHandler.postDelayed(TvDefaultFragment.this.adPopRunnable, 500);
                                                try {
                                                    CommonViewModel.adsShow(jsonObject2.optLong("_id"), jsonObject2.optString("title"));
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                }
                                                return false;
                                            }
                                        }).into(imageView2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    public void setScrollEffect(ScrollEffect scrollEffect2) {
        this.scrollEffect = scrollEffect2;
    }

    public void onDestroyView() {
        super.onDestroyView();
        BottomView bottomView = this.mBottomView;
        if (bottomView != null) {
            bottomView.dismissBottomView();
            this.mBottomView = null;
        }
        Handler handler = this.adPopHandler;
        if (handler != null) {
            handler.removeCallbacks(this.adPopRunnable);
        }
    }

    /* access modifiers changed from: private */
    public void initAlertDialog(String str, String str2) {
        String str3 = "确定";
        new AlertDialog((Context) new WeakReference(getActivity()).get()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
                new Bundle().putString("num", "1");
                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE64).build());
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                TvDefaultFragment.this.gotoActivity(AccountLoginActivity.class);
            }
        }).show();
    }

    public void onDestroy() {
        super.onDestroy();
        this.fillData = null;
        this.mImgData = null;
        ContentSlideAdapter contentSlideAdapter = this.adapter;
        if (contentSlideAdapter != null) {
            contentSlideAdapter.setAdapterNull();
            this.adapter = null;
            this.mRecommendRV = null;
        }
        ContentSlideAdapter contentSlideAdapter2 = this.mRandomLookAdapter;
        if (contentSlideAdapter2 != null) {
            contentSlideAdapter2.setAdapterNull();
            this.mRandomLookAdapter = null;
            this.randomLookView = null;
        }
        this.todayRecommendHead = null;
        this.scrollEffect = null;
        Handler handler = this.adPopHandler;
        if (handler != null) {
            handler.removeCallbacks(this.adPopRunnable);
        }
        BottomView bottomView = this.mBottomView;
        if (bottomView != null) {
            bottomView.dismissBottomView();
            this.mBottomView = null;
        }
        GalleryViewPager galleryViewPager2 = this.galleryViewPager;
        if (galleryViewPager2 != null) {
            galleryViewPager2.stopAutoCycle();
            this.galleryViewPager = null;
        }
        this.scrolGalleryAdapter = null;
        EventBus.getDefault().unregister(this);
    }
}
