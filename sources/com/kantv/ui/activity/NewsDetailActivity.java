package com.kantv.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.avos.avoscloud.Messages.OpType;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.gson.Gson;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.ApiService;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.api.GetCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.GpsUtil;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.LookAdapter;
import com.kantv.ui.adapter.MultiItemTypeAdapter.OnItemClickListener;
import com.kantv.ui.adapter.NewsAdapter;
import com.kantv.ui.bean.CommentChildBean;
import com.kantv.ui.bean.LookBean;
import com.kantv.ui.bean.LookBean.DataBean.ListBean;
import com.kantv.ui.bean.NewsCommentBean.DataBean.AssociateBean;
import com.kantv.ui.bean.String8Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.RawReader;
import com.kantv.ui.utils.ScreenUtils;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.view.BottomNotBackView;
import com.kantv.ui.view.NewsMoreDialog;
import com.kantv.ui.view.ShareDialog;
import com.kantv.ui.view.ShareDialog.onClickback;
import com.kantv.ui.viewmodel.CommonViewModel;
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
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request.Builder;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q.rorbin.badgeview.QBadgeView;
import retrofit2.Call;
import retrofit2.Response;

public class NewsDetailActivity extends PackageActivity {
    private final String TAG = "NewsDetailActivity";
    @BindView(2131296363)
    TextView allCommentTv;
    /* access modifiers changed from: private */
    public IWXAPI api;
    /* access modifiers changed from: private */
    public String auAppId;
    private String auPhoto;
    String commNums;
    @BindView(2131296974)
    TextView emptyNewsCommentTip;
    String is_collect = "0";
    /* access modifiers changed from: private */
    public int like;
    @BindView(2131296836)
    ImageView likeImg;
    @BindView(2131296838)
    TextView likeTv;
    @BindView(2131296852)
    LinearLayout ll_look;
    @BindView(2131296856)
    LinearLayout ll_news;
    /* access modifiers changed from: private */
    public CommonAdapter<CommentChildBean> mAdapter;
    private List<String8Bean> mData;
    /* access modifiers changed from: private */
    public LookAdapter mLookAdapter;
    /* access modifiers changed from: private */
    public List<ListBean> mLookList = new ArrayList();
    /* access modifiers changed from: private */
    public NewsAdapter mNewsAdapter;
    /* access modifiers changed from: private */
    public List<CommentChildBean> mNewsCommentData = new ArrayList();
    private String mNewsData = "";
    @BindView(2131296980)
    TextView mNewsDetailSource;
    /* access modifiers changed from: private */
    public List<AssociateBean> mNewsList = new ArrayList();
    @BindView(2131296983)
    LinearLayout mNewsWeb;
    /* access modifiers changed from: private */
    public String mNiShareUrl;
    @BindView(2131296978)
    ProgressBar mProgressBar;
    @BindView(2131296973)
    RecyclerView mRecyclerView;
    private ShareDialog mShareDialog;
    /* access modifiers changed from: private */
    public Tencent mTencent;
    @BindView(2131296981)
    TextView mTime;
    @BindView(2131296982)
    TextView mTitle;
    WebView mWeb;
    /* access modifiers changed from: private */
    public WebSettings mWebSettings;
    @BindView(2131296971)
    ImageView newsCommentBottomBarIv;
    @BindView(2131296970)
    EditText newsCommentEt;
    @BindView(2131296972)
    LinearLayout newsCommentLayout;
    @BindView(2131297001)
    FrameLayout newsCommentNumLayout;
    @BindView(2131297002)
    TextView newsCommentNumTv;
    @BindView(2131296977)
    LinearLayout newsDetailLayout;
    @BindView(2131297004)
    ImageView newsDetailRateImg;
    @BindView(2131297005)
    LinearLayout newsDetailRateLayout;
    @BindView(2131297006)
    TextView newsDetailRateTv;
    @BindView(2131296986)
    LinearLayout newsLoadErrorLayout;
    private NewsMoreDialog newsMoreDialog;
    @BindView(2131297011)
    LinearLayout newsPageStartLayout;
    /* access modifiers changed from: private */
    public String news_id;
    QBadgeView qBadgeView = null;
    @BindView(2131297075)
    RecyclerView recycler_look;
    @BindView(2131297076)
    RecyclerView recycler_news;
    @BindView(2131297136)
    NestedScrollView scrollView;
    /* access modifiers changed from: private */
    public String title;
    @BindView(2131297324)
    TextView tv_more;

    public class KanTv {
        private static final String TAG = "KanTv";

        public KanTv() {
            AILog.d(TAG, "KanTv 构造");
        }

        @JavascriptInterface
        public void externalJump(String str) {
            NewsDetailActivity.this.mWeb.loadUrl(str);
        }

        @JavascriptInterface
        public void internalJump(String str, String str2) {
            if (!str2.equals("people")) {
                Bundle bundle = new Bundle();
                bundle.putString("seo", str2);
                bundle.putString("tid", str);
                NewsDetailActivity.this.gotoActivity(bundle, VideoPlayActivity.class);
            }
        }

        @JavascriptInterface
        public void doCollect(String str) {
            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                NewsDetailActivity newsDetailActivity = NewsDetailActivity.this;
                if (CommonViewModel.checkNotification(newsDetailActivity, newsDetailActivity.getResources().getString(R.string.open_push_title), NewsDetailActivity.this.getResources().getString(R.string.open_push_tips), UserPreference.COLLECT_MUST_OPEN_PUSH)) {
                    NewsDetailActivity.this.requestCollect(str);
                    return;
                }
                return;
            }
            NewsDetailActivity newsDetailActivity2 = NewsDetailActivity.this;
            newsDetailActivity2.initAlertDialog(newsDetailActivity2.getResources().getString(R.string.login_text1), NewsDetailActivity.this.getResources().getString(R.string.login_text3));
        }

        @JavascriptInterface
        public void jumpActor(String str, String str2, String str3, String str4) {
            if (!str3.equals("0")) {
                Intent intent = new Intent(NewsDetailActivity.this, StarActivity.class);
                Bundle bundle = new Bundle();
                bundle.putString("name", "");
                bundle.putString(SocialConstants.PARAM_IMG_URL, str);
                bundle.putString("id", str2);
                bundle.putString("type", "star");
                intent.putExtras(bundle);
                NewsDetailActivity.this.startActivity(intent);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_news_detail);
        ButterKnife.bind((Activity) this);
        if (getIntent().getExtras() != null) {
            initWebView();
            this.qBadgeView = new QBadgeView(this);
            if (!StringUtils.isEmpty(getIntent().getExtras().getString("pushtype"))) {
                JSONObject jsonObject = StringUtils.toJsonObject(getIntent().getExtras().getString("data"));
                if (jsonObject != null) {
                    this.title = jsonObject.optString("title");
                    this.mTitle.setText(this.title);
                    this.mNiShareUrl = jsonObject.optString("uniShareUrl");
                    this.mNewsDetailSource.setText(jsonObject.optString("source"));
                    String str = "time";
                    this.mTime.setText(jsonObject.optString(str));
                    String str2 = "comment";
                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject.optString(str2));
                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                        for (int i = 0; i < 5; i++) {
                            try {
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonArray.getJSONObject(i).optString("info"));
                                AILog.d("测试参数==", jsonObject2.toString());
                                List<String8Bean> list = this.mData;
                                String8Bean string8Bean = r9;
                                String8Bean string8Bean2 = new String8Bean(jsonObject2.optString("tvid"), jsonObject2.optString("_id"), jsonObject2.optString(str2), jsonObject2.optString("islike"), jsonObject2.optString(str), jsonObject2.optString("nickname"), jsonObject2.optString("headimg"), jsonObject2.optString("like"));
                                list.add(string8Bean);
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    String readRawResource = RawReader.readRawResource(getResources(), R.raw.newsdetailcontent);
                    this.mWeb.loadDataWithBaseURL(null, readRawResource.replace("{提及影视样式}", translation(jsonObject.optString("css"))).replace("{新闻内容}", translation(jsonObject.optString("artice"))), "text/html", "utf-8", null);
                    this.mWeb.setWebViewClient(new WebViewClient() {
                        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                            return true;
                        }

                        public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
                            new AlertDialog(NewsDetailActivity.this).builder().setMsg(NewsDetailActivity.this.getResources().getString(R.string.notification_error_ssl_cert_invalid)).setPositiveButton("继续", new OnClickListener() {
                                public void onClick(View view) {
                                    sslErrorHandler.proceed();
                                }
                            }).setNegativeButton("取消", new OnClickListener() {
                                public void onClick(View view) {
                                    sslErrorHandler.cancel();
                                }
                            }).show();
                        }

                        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                            super.onPageStarted(webView, str, bitmap);
                            StringBuilder sb = new StringBuilder();
                            sb.append("网页开始加载:");
                            sb.append(str);
                            AILog.d("NewsDetailActivity", sb.toString());
                        }

                        public void onPageFinished(WebView webView, String str) {
                            super.onPageFinished(webView, str);
                            StringBuilder sb = new StringBuilder();
                            sb.append("网页加载完成...");
                            sb.append(str);
                            AILog.d("NewsDetailActivity", sb.toString());
                            NewsDetailActivity.this.mWebSettings.setBlockNetworkImage(false);
                            NewsDetailActivity.this.showNewsPage();
                        }
                    });
                } else {
                    return;
                }
            } else {
                String str3 = "id";
                if (!StringUtils.isEmpty(getIntent().getExtras().getString(str3))) {
                    this.news_id = getIntent().getExtras().getString(str3);
                    this.mNewsData = getIntent().getExtras().getString(ProductAction.ACTION_DETAIL);
                }
                String str4 = "appid";
                if (!StringUtils.isEmpty(getIntent().getExtras().getString(str4))) {
                    this.auAppId = getIntent().getExtras().getString(str4);
                }
                String str5 = "photo";
                if (!StringUtils.isEmpty(getIntent().getExtras().getString(str5))) {
                    this.auPhoto = getIntent().getExtras().getString(str5);
                }
                initNewsClick();
                StringBuilder sb = new StringBuilder();
                sb.append("@@@");
                sb.append(this.mNewsData);
                Log.i("NewsDetailActivity", sb.toString());
                if (StringUtils.isEmpty(this.mNewsData)) {
                    initRequest(this.news_id);
                } else {
                    parseDetail(this.mNewsData);
                }
                initNewsCommentRequest();
            }
            initNewsList();
            initLookList();
            getLookList();
            initNewsCommentRequest();
            this.mNewsWeb.addView(this.mWeb);
            try {
                this.mTencent = Tencent.createInstance("1106453625", Utils.getContext());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            String str6 = "wx70cbf5b9aacb0e47";
            this.api = WXAPIFactory.createWXAPI(this, str6, false);
            this.api.registerApp(str6);
            initNewsCommentView();
        }
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN7);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent.getExtras() != null) {
            this.mLookList.clear();
            this.mNewsList.clear();
            this.mNewsCommentData.clear();
            this.news_id = intent.getExtras().getString("id");
            initRequest(this.news_id);
            initNewsCommentRequest();
            getLookList();
        }
    }

    /* access modifiers changed from: private */
    public void getLookList() {
        this.request.clear();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().getRecommend().enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsDetailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    try {
                        LookBean lookBean = (LookBean) new Gson().fromJson(this.json, LookBean.class);
                        if (!(lookBean == null || lookBean.getStatus() != 200 || lookBean.getData() == null)) {
                            NewsDetailActivity.this.mLookList.addAll(lookBean.getData().getList());
                            NewsDetailActivity.this.mLookAdapter.notifyDataSetChanged();
                            if (NewsDetailActivity.this.mLookList.size() > 0) {
                                NewsDetailActivity.this.ll_look.setVisibility(0);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        });
    }

    private void initLookList() {
        this.recycler_look.setLayoutManager(new LinearLayoutManager(this));
        this.mLookAdapter = new LookAdapter(Utils.getContext(), R.layout.item_news, this.mLookList);
        this.recycler_look.setAdapter(this.mLookAdapter);
        this.recycler_look.setNestedScrollingEnabled(false);
        this.mLookAdapter.setOnItemClickListener(new OnItemClickListener() {
            public boolean onItemLongClick(View view, ViewHolder viewHolder, int i) {
                return false;
            }

            public void onItemClick(View view, ViewHolder viewHolder, int i) {
                ListBean listBean = (ListBean) NewsDetailActivity.this.mLookList.get(i);
                Bundle bundle = new Bundle();
                StringBuilder sb = new StringBuilder();
                sb.append(listBean.get_id());
                sb.append("");
                bundle.putString("id", sb.toString());
                NewsDetailActivity.this.gotoActivity(bundle, NewsDetailActivity.class);
                NewsDetailActivity.this.scrollView.scrollTo(0, 0);
            }
        });
        this.tv_more.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                NewsDetailActivity.this.getLookList();
            }
        });
    }

    private void initNewsList() {
        this.recycler_news.setLayoutManager(new LinearLayoutManager(this));
        this.mNewsAdapter = new NewsAdapter(Utils.getContext(), R.layout.item_news, this.mNewsList);
        this.recycler_news.setAdapter(this.mNewsAdapter);
        this.recycler_news.setNestedScrollingEnabled(false);
        this.mNewsAdapter.setOnItemClickListener(new OnItemClickListener() {
            public boolean onItemLongClick(View view, ViewHolder viewHolder, int i) {
                return false;
            }

            public void onItemClick(View view, ViewHolder viewHolder, int i) {
                AssociateBean associateBean = (AssociateBean) NewsDetailActivity.this.mNewsList.get(i);
                Bundle bundle = new Bundle();
                StringBuilder sb = new StringBuilder();
                sb.append(associateBean.get_id());
                sb.append("");
                bundle.putString("id", sb.toString());
                NewsDetailActivity.this.gotoActivity(bundle, NewsDetailActivity.class);
                NewsDetailActivity.this.scrollView.scrollTo(0, 0);
            }
        });
    }

    private void initNewsClick() {
        this.request.clear();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str);
        if (!StringUtils.isEmpty(this.news_id)) {
            this.request.put("id", this.news_id);
        }
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().newsClick(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsDetailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        jsonObject.optString("status").equals(StatusCode.STATUS_OK);
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void parseDetail(String str) {
        String str2;
        if (!StringUtils.isEmpty(str)) {
            JSONObject jsonObject = StringUtils.toJsonObject(str);
            int i = 0;
            if (jsonObject == null) {
                if (!StringUtils.isEmpty(this.news_id)) {
                    String newsPath = getNewsPath(this.news_id);
                    String format = String.format(getString(R.string.chinesetoday), new Object[]{newsPath});
                    this.newsPageStartLayout.setVisibility(8);
                    todayAuNewsProcess(format);
                    showTodayAuDialog();
                }
            } else if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                if (jsonObject2 != null) {
                    this.title = jsonObject2.optString("title");
                    this.mTitle.setText(this.title);
                    String str3 = "_id";
                    if (!StringUtils.isEmpty(jsonObject2.optString(str3))) {
                        this.news_id = jsonObject2.optString(str3);
                    }
                    this.commNums = jsonObject2.optString("comm_nums");
                    if (StringUtils.isEmpty(this.commNums) || this.commNums.equals("0")) {
                        this.qBadgeView.setVisibility(8);
                        this.newsCommentNumTv.setText(getString(R.string.newscomment_num_str2));
                        this.newsCommentNumLayout.setVisibility(0);
                    } else {
                        this.qBadgeView.setVisibility(0);
                        this.newsCommentNumTv.setText(String.format(getString(R.string.newscomment_num_str), new Object[]{this.commNums}));
                        this.newsCommentNumLayout.setVisibility(0);
                        this.qBadgeView.bindTarget(this.newsCommentBottomBarIv);
                        this.qBadgeView.setExactMode(true);
                        if (StringUtils.isNum(this.commNums)) {
                            this.qBadgeView.setBadgeNumber(Integer.parseInt(this.commNums));
                        }
                        this.qBadgeView.setBadgeBackgroundColor(getResources().getColor(R.color.item_filter_color));
                    }
                    String str4 = "uniShareUrl";
                    if (jsonObject2.has(str4)) {
                        this.mNiShareUrl = jsonObject2.optString(str4);
                    }
                    String str5 = "shareUrl";
                    if (jsonObject2.has(str5)) {
                        String optString = jsonObject2.optString(str5);
                        if (!TextUtils.isEmpty(optString)) {
                            this.mNiShareUrl = optString;
                        }
                    }
                    this.mNewsDetailSource.setText(jsonObject2.optString("source"));
                    this.mTime.setText(DateUtil.timeStamp2Date(jsonObject2.optString("posttime"), "yyyy-MM-dd"));
                    String str6 = "comment";
                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString(str6));
                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                        while (i < 5) {
                            try {
                                JSONObject jsonObject3 = StringUtils.toJsonObject(jsonArray.getJSONObject(i).optString("info"));
                                if (jsonObject3 != null) {
                                    List<String8Bean> list = this.mData;
                                    String optString2 = jsonObject3.optString("tvid");
                                    String optString3 = jsonObject3.optString(str3);
                                    String optString4 = jsonObject3.optString(str6);
                                    r8 = r8;
                                    str2 = str6;
                                    String8Bean string8Bean = r8;
                                    try {
                                        String8Bean string8Bean2 = new String8Bean(optString2, optString3, optString4, jsonObject3.optString("islike"), jsonObject3.optString("time"), jsonObject3.optString("nickname"), jsonObject3.optString("headimg"), jsonObject3.optString("like"));
                                        list.add(string8Bean);
                                    } catch (JSONException e) {
                                        e = e;
                                    }
                                    i++;
                                    str6 = str2;
                                } else {
                                    return;
                                }
                            } catch (JSONException e2) {
                                e = e2;
                                str2 = str6;
                                e.printStackTrace();
                                i++;
                                str6 = str2;
                            }
                        }
                    }
                    String readRawResource = RawReader.readRawResource(getResources(), R.raw.newsdetailcontent);
                    this.mWeb.loadDataWithBaseURL(null, readRawResource.replace("{提及影视样式}", translation(jsonObject2.optString("css"))).replace("{新闻内容}", translation(jsonObject2.optString("artice"))), "text/html", "utf-8", null);
                    this.mWeb.setWebViewClient(new WebViewClient() {
                        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                            return true;
                        }

                        public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
                            new AlertDialog(NewsDetailActivity.this).builder().setMsg(NewsDetailActivity.this.getResources().getString(R.string.notification_error_ssl_cert_invalid)).setPositiveButton("继续", new OnClickListener() {
                                public void onClick(View view) {
                                    sslErrorHandler.proceed();
                                }
                            }).setNegativeButton("取消", new OnClickListener() {
                                public void onClick(View view) {
                                    sslErrorHandler.cancel();
                                }
                            }).show();
                        }

                        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                            super.onPageStarted(webView, str, bitmap);
                            StringBuilder sb = new StringBuilder();
                            sb.append("网页开始加载:");
                            sb.append(str);
                            AILog.d("NewsDetailActivity", sb.toString());
                        }

                        public void onPageFinished(WebView webView, String str) {
                            super.onPageFinished(webView, str);
                            StringBuilder sb = new StringBuilder();
                            sb.append("网页加载完成...");
                            sb.append(str);
                            AILog.d("NewsDetailActivity", sb.toString());
                            NewsDetailActivity.this.mWebSettings.setBlockNetworkImage(false);
                            NewsDetailActivity.this.showNewsPage();
                        }
                    });
                }
            }
        }
    }

    private void initRequest(String str) {
        this.mData = new ArrayList();
        this.request.clear();
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str2);
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str3 = ".json";
        sb.append(str3);
        map.put("id", sb.toString());
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        ApiService service = Api.getService();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str3);
        service.getNewsDetails(sb2.toString()).enqueue(new GetCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsDetailActivity.this.isDestroy) {
                    NewsDetailActivity.this.parseDetail(this.json);
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                NewsDetailActivity.this.showErrorPage();
            }
        });
    }

    private void initWebView() {
        this.mWeb = new WebView(Utils.getContext());
        this.mWeb.setVerticalScrollBarEnabled(false);
        this.mWebSettings = this.mWeb.getSettings();
        this.mWeb.addJavascriptInterface(new KanTv(), "KanTv");
        this.mWebSettings.setJavaScriptEnabled(true);
        String str = "2";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "texttype", str);
        if (str2.equals("1")) {
            this.mWebSettings.setTextZoom(75);
        } else if (str2.equals(str)) {
            this.mWebSettings.setTextZoom(120);
        } else if (str2.equals("3")) {
            this.mWebSettings.setTextZoom(OpType.modify_VALUE);
        } else {
            this.mWebSettings.setTextZoom(200);
        }
        this.mWebSettings.setDomStorageEnabled(true);
        this.mWebSettings.setLoadsImagesAutomatically(true);
        this.mWebSettings.setUseWideViewPort(true);
        this.mWebSettings.setLoadWithOverviewMode(true);
        this.mWebSettings.setAllowFileAccess(true);
        this.mWebSettings.setLayoutAlgorithm(LayoutAlgorithm.SINGLE_COLUMN);
        this.mWebSettings.setSupportZoom(true);
        this.mWebSettings.setBuiltInZoomControls(true);
        this.mWebSettings.setDisplayZoomControls(false);
        this.mWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
        this.mWebSettings.setDefaultTextEncodingName("utf-8");
        this.mWebSettings.setBlockNetworkImage(true);
        if (VERSION.SDK_INT >= 21) {
            this.mWebSettings.setMixedContentMode(0);
        }
        showLoadingPage();
        String str3 = "";
        String str4 = (String) PreferenceUtil.get(Utils.getContext(), "rateweather_json", str3);
        int isCache = DateUtil.isCache(str4, (String) PreferenceUtil.get(Utils.getContext(), "rateweather_time", str3));
        if (isCache == 0) {
            initRateParse(str4);
        } else if (isCache == 1) {
            initRate(str4);
        }
    }

    private void initRate(final String str) {
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
            Api.getService().getWeatherRateAd(this.request).enqueue(new CommonCallBack(this, false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!NewsDetailActivity.this.isDestroy) {
                        if (!StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                    PreferenceUtil.put(Utils.getContext(), "rateweather_json", this.json);
                                    PreferenceUtil.put(Utils.getContext(), "rateweather_time", String.valueOf(System.currentTimeMillis() / 1000));
                                    NewsDetailActivity.this.initRateParse(this.json);
                                } else if (!StringUtils.isEmpty(str)) {
                                    NewsDetailActivity.this.initRateParse(str);
                                }
                            }
                        } else if (!StringUtils.isEmpty(str)) {
                            NewsDetailActivity.this.initRateParse(str);
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void initRateParse(String str) {
        if (!StringUtils.isEmpty(str)) {
            JSONObject jsonObject = StringUtils.toJsonObject(str);
            if (jsonObject != null) {
                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                if (jsonObject2 != null) {
                    String optString = jsonObject2.optString("rateInfo");
                    jsonObject2.optString("weatherInfo");
                    String str2 = "rate";
                    String optString2 = jsonObject2.optString(str2);
                    jsonObject2.optString("weather");
                    if (!StringUtils.isEmpty(optString)) {
                        JSONObject jsonObject3 = StringUtils.toJsonObject(optString);
                        if (!(jsonObject3 == null || this.newsDetailRateTv == null)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("<font color='#1F93EA'>");
                            sb.append(jsonObject3.optString(str2));
                            sb.append("</font>");
                            String sb2 = sb.toString();
                            TextView textView = this.newsDetailRateTv;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(jsonObject3.optString("label"));
                            sb3.append(sb2);
                            textView.setText(Html.fromHtml(sb3.toString()));
                        }
                    }
                    if (!StringUtils.isEmpty(optString2)) {
                        JSONArray jsonArray = StringUtils.toJsonArray(optString2);
                        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                            final JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, 0);
                            if (jSONobject != null) {
                                String str3 = "photo";
                                if (!(jSONobject.optString(str3) == null || this.newsDetailRateImg == null)) {
                                    GlideUtils.loadimage3(jSONobject.optString(str3), this.newsDetailRateImg);
                                    this.newsDetailRateImg.setVisibility(0);
                                    try {
                                        CommonViewModel.adsShow(jSONobject.optLong("_id"), jSONobject.optString("title"));
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    this.newsDetailRateImg.setOnClickListener(new OnClickListener() {
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
                    }
                    if (!StringUtils.isEmpty(optString)) {
                        LinearLayout linearLayout = this.newsDetailRateLayout;
                        if (linearLayout != null) {
                            linearLayout.setVisibility(0);
                        }
                    }
                }
            }
        }
    }

    @OnClick({2131296975, 2131296976, 2131296979, 2131296990, 2131296991, 2131296992, 2131296974, 2131296836, 2131296363, 2131297002, 2131296971, 2131296989, 2131296986, 2131296970})
    public void onClick(View view) {
        boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue();
        String str = "您还未安装微信客户端";
        String str2 = "0";
        String str3 = "您当前还未登录，是否前往登录？";
        String str4 = "提示";
        String str5 = "tid";
        switch (view.getId()) {
            case R.id.all_newscomment_tv /*2131296363*/:
                Bundle bundle = new Bundle();
                bundle.putString(str5, this.news_id);
                gotoActivity(bundle, NewsCommentActivity.class);
                break;
            case R.id.like_img /*2131296836*/:
                if (!booleanValue) {
                    initAlertDialog(getResources().getString(R.string.login_text1), getResources().getString(R.string.login_text3));
                    break;
                } else {
                    this.likeImg.setImageResource(R.drawable.news_like_select);
                    this.likeImg.setEnabled(false);
                    if (this.like > 0) {
                        if (!StringUtils.isEmpty(this.news_id)) {
                            int i = this.like + 1;
                            TextView textView = this.likeTv;
                            StringBuilder sb = new StringBuilder();
                            sb.append(i);
                            sb.append("人喜欢");
                            textView.setText(sb.toString());
                            initRequestLikeThis(this.news_id);
                            break;
                        }
                    } else {
                        this.likeTv.setText("1人喜欢");
                        initRequestLikeThis(this.news_id);
                        break;
                    }
                }
                break;
            case R.id.news_comment /*2131296970*/:
                if (booleanValue) {
                    if (!GpsUtil.isOpen() && CommonViewModel.isMustOpenGps()) {
                        GpsUtil.requestGps(this);
                        break;
                    } else {
                        commentDialog();
                        break;
                    }
                } else {
                    initAlertDialog(str4, str3);
                    break;
                }
                break;
            case R.id.news_comment_iv /*2131296971*/:
                if (!StringUtils.isEmpty(this.commNums) && !this.commNums.equals(str2)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(str5, this.news_id);
                    gotoActivity(bundle2, NewsCommentActivity.class);
                    break;
                }
            case R.id.news_comment_tip /*2131296974*/:
                if (booleanValue) {
                    if (!GpsUtil.isOpen() && CommonViewModel.isMustOpenGps()) {
                        GpsUtil.requestGps(this);
                        break;
                    } else {
                        commentDialog();
                        break;
                    }
                } else {
                    initAlertDialog(str4, str3);
                    break;
                }
                break;
            case R.id.news_detail_back /*2131296975*/:
                finish();
                break;
            case R.id.news_detail_comment /*2131296976*/:
                Bundle bundle3 = new Bundle();
                bundle3.putString(str5, getIntent().getExtras().getString("id"));
                bundle3.putString("type", "1");
                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE48).build());
                break;
            case R.id.news_detail_share /*2131296979*/:
                String str6 = "";
                CommonViewModel.tongJiShare(this.mNiShareUrl, str6, str6);
                initShareDialog();
                break;
            case R.id.news_loaderror_layout /*2131296986*/:
                initRequest(this.news_id);
                initNewsCommentRequest();
                break;
            case R.id.news_set_more /*2131296989*/:
                initNewsMoreDialog();
                break;
            case R.id.news_share_circle /*2131296990*/:
                if (this.api.isWXAppInstalled()) {
                    wxShare(1);
                    break;
                } else {
                    ToastUtils.showShort((CharSequence) str);
                    return;
                }
            case R.id.news_share_friend /*2131296991*/:
                if (this.api.isWXAppInstalled()) {
                    wxShare(0);
                    break;
                } else {
                    ToastUtils.showShort((CharSequence) str);
                    return;
                }
            case R.id.news_share_more /*2131296992*/:
                initShareDialog();
                break;
            case R.id.newscomment_num_tv /*2131297002*/:
                if (StringUtils.isEmpty(this.commNums) || this.commNums.equals(str2)) {
                    if (booleanValue) {
                        if (!GpsUtil.isOpen() && CommonViewModel.isMustOpenGps()) {
                            GpsUtil.requestGps(this);
                            break;
                        } else {
                            commentDialog();
                            break;
                        }
                    } else {
                        initAlertDialog(str4, str3);
                        break;
                    }
                } else {
                    Bundle bundle4 = new Bundle();
                    bundle4.putString(str5, this.news_id);
                    gotoActivity(bundle4, NewsCommentActivity.class);
                    break;
                }
                break;
        }
    }

    public void commentDialog() {
        final BottomView bottomView = new BottomView((Context) this, (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_commentedit);
        final EditText editText = (EditText) bottomView.getView().findViewById(R.id.comment_edit);
        ((TextView) bottomView.getView().findViewById(R.id.comment_submit)).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                String trim = editText.getText().toString().trim();
                String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
                if (StringUtils.isEmpty(trim)) {
                    ToastUtils.showShort((CharSequence) "请输入评论内容");
                    return;
                }
                NewsDetailActivity.this.request.clear();
                NewsDetailActivity.this.request.put("noncestr", SignConfig.noncestr);
                NewsDetailActivity.this.request.put("timestamp", SignConfig.timestamp);
                NewsDetailActivity.this.request.put("sbID", SignConfig.sbID);
                NewsDetailActivity.this.request.put("sign", SignConfig.sign);
                NewsDetailActivity.this.request.put("_token", str);
                NewsDetailActivity.this.request.put("tvid", NewsDetailActivity.this.getIntent().getExtras().getString("id"));
                NewsDetailActivity.this.request.put("type", "1");
                NewsDetailActivity.this.request.put("content", trim);
                NewsDetailActivity.this.request.put("devicetype", "0");
                NewsDetailActivity.this.request.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().doComment(NewsDetailActivity.this.request).enqueue(new CommonCallBack(NewsDetailActivity.this, true) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!NewsDetailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            String str = "input_method";
                            if (jsonObject == null) {
                                ToastUtils.showShort((CharSequence) "提交失败");
                                InputMethodManager inputMethodManager = (InputMethodManager) NewsDetailActivity.this.getSystemService(str);
                                if (inputMethodManager != null) {
                                    inputMethodManager.hideSoftInputFromWindow(NewsDetailActivity.this.getWindow().getDecorView().getWindowToken(), 0);
                                }
                                if (bottomView != null) {
                                    bottomView.dismissBottomView();
                                }
                                return;
                            }
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                if (NewsDetailActivity.this.mNewsCommentData != null) {
                                    NewsDetailActivity.this.mNewsCommentData.clear();
                                }
                                NewsDetailActivity.this.initNewsCommentRequest();
                                editText.setText("");
                                InputMethodManager inputMethodManager2 = (InputMethodManager) NewsDetailActivity.this.getSystemService(str);
                                if (inputMethodManager2 != null) {
                                    inputMethodManager2.hideSoftInputFromWindow(NewsDetailActivity.this.getWindow().getDecorView().getWindowToken(), 0);
                                }
                                bottomView.dismissBottomView();
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                });
            }
        });
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
        new Timer().schedule(new TimerTask() {
            public void run() {
                NewsDetailActivity.this.runOnUiThread(new Runnable() {
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

    private void showTodayAuDialog() {
        BottomNotBackView bottomNotBackView = new BottomNotBackView((Context) this, (int) R.style.BottomViewTheme_todayau_Bottom, (int) R.layout.bottomview_todayau);
        LinearLayout linearLayout = (LinearLayout) bottomNotBackView.getView().findViewById(R.id.todayau_layout);
        ImageView imageView = (ImageView) bottomNotBackView.getView().findViewById(R.id.todayau_img);
        LinearLayout linearLayout2 = (LinearLayout) bottomNotBackView.getView().findViewById(R.id.back_layout);
        try {
            LayoutParams layoutParams = imageView.getLayoutParams();
            layoutParams.height = (int) (((float) ScreenUtils.getScreenWidth(Utils.getContext())) / (Float.parseFloat("855") / Float.parseFloat("2460")));
            imageView.setLayoutParams(layoutParams);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!StringUtils.isEmpty(this.auPhoto)) {
            GlideUtils.loadimage2(this.auPhoto, imageView);
        }
        linearLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (!StringUtils.isEmpty(NewsDetailActivity.this.auAppId)) {
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(NewsDetailActivity.this.auAppId));
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    Utils.getContext().startActivity(intent);
                }
            }
        });
        imageView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (!StringUtils.isEmpty(NewsDetailActivity.this.auAppId)) {
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(NewsDetailActivity.this.auAppId));
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    Utils.getContext().startActivity(intent);
                }
            }
        });
        linearLayout2.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                NewsDetailActivity.this.finish();
            }
        });
        bottomNotBackView.setAnimation(R.style.BottomToTopAnim);
        bottomNotBackView.showBottomView(false);
    }

    public void requestCollect(String str) {
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.clear();
        this.request.put("_token", str2);
        this.request.put("type", "collect");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("tvid", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().doCollect(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsDetailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        String optString = jsonObject.optString("status");
                        if (optString.equals(StatusCode.STATUS_OK)) {
                            ToastUtils.showShort((CharSequence) "收藏成功");
                        } else if (optString.equals("401")) {
                            KanApplication.exitLogin();
                            ToastUtils.showShort((CharSequence) NewsDetailActivity.this.getResources().getString(R.string.login_text2));
                        } else {
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                }
            }
        });
    }

    public void requestCollect(String str, String str2) {
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.clear();
        this.request.put("_token", str3);
        String str4 = this.is_collect;
        String str5 = "0";
        String str6 = "type";
        if (str4 == null || !str4.equals(str5)) {
            this.request.put(str6, "cannel");
        } else {
            this.request.put(str6, "collect");
        }
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("tvid", str);
        this.request.put("cate", str2);
        this.request.put("devicetype", str5);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().doCollect(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsDetailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        String optString = jsonObject.optString("status");
                        String str = "msg";
                        if (optString.equals(StatusCode.STATUS_OK)) {
                            if (NewsDetailActivity.this.is_collect != null && NewsDetailActivity.this.is_collect.equals("0")) {
                                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE20).build());
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString(str));
                        } else if (optString.equals("401")) {
                            KanApplication.exitLogin();
                            ToastUtils.showShort((CharSequence) NewsDetailActivity.this.getResources().getString(R.string.login_text2));
                        } else {
                            ToastUtils.showShort((CharSequence) jsonObject.optString(str));
                        }
                    }
                }
            }
        });
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
                                        if (Utils.isQQClientAvailable(NewsDetailActivity.this)) {
                                            Bundle bundle = new Bundle();
                                            bundle.putInt(str6, 1);
                                            bundle.putString(str5, NewsDetailActivity.this.title);
                                            bundle.putString(str4, NewsDetailActivity.this.getString(R.string.share5));
                                            bundle.putString(str3, NewsDetailActivity.this.mNiShareUrl);
                                            ArrayList arrayList = new ArrayList();
                                            arrayList.add(NewsDetailActivity.this.getString(R.string.share4));
                                            bundle.putStringArrayList(str2, arrayList);
                                            NewsDetailActivity.this.mTencent.shareToQzone(NewsDetailActivity.this, bundle, new IUiListener() {
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
                                } else if (Utils.isQQClientAvailable(NewsDetailActivity.this)) {
                                    Bundle bundle2 = new Bundle();
                                    bundle2.putInt(str6, 1);
                                    bundle2.putString(str5, NewsDetailActivity.this.title);
                                    bundle2.putString(str4, NewsDetailActivity.this.getString(R.string.share5));
                                    bundle2.putString(str3, NewsDetailActivity.this.mNiShareUrl);
                                    bundle2.putString(str2, NewsDetailActivity.this.getString(R.string.share4));
                                    NewsDetailActivity.this.mTencent.shareToQQ(NewsDetailActivity.this, bundle2, new IUiListener() {
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
                            } else if (!NewsDetailActivity.this.api.isWXAppInstalled()) {
                                ToastUtils.showShort((CharSequence) str);
                            } else {
                                NewsDetailActivity.this.wxShare(2);
                            }
                        } else if (!NewsDetailActivity.this.api.isWXAppInstalled()) {
                            ToastUtils.showShort((CharSequence) str);
                        } else {
                            NewsDetailActivity.this.wxShare(1);
                        }
                    } else if (!NewsDetailActivity.this.api.isWXAppInstalled()) {
                        ToastUtils.showShort((CharSequence) str);
                    } else {
                        NewsDetailActivity.this.wxShare(0);
                    }
                }
            }
        });
        this.mShareDialog.show();
    }

    private void initNewsMoreDialog() {
        this.newsMoreDialog = new NewsMoreDialog((Context) this, (NewsMoreDialog.onClickback) new NewsMoreDialog.onClickback() {
            public void onClick(int i) {
                String str = "1";
                String str2 = "texttype";
                if (i == 1) {
                    NewsDetailActivity.this.mWebSettings.setTextZoom(75);
                    PreferenceUtil.put(Utils.getContext(), str2, str);
                } else if (i == 2) {
                    NewsDetailActivity.this.mWebSettings.setTextZoom(120);
                    PreferenceUtil.put(Utils.getContext(), str2, "2");
                } else if (i == 3) {
                    NewsDetailActivity.this.mWebSettings.setTextZoom(OpType.modify_VALUE);
                    PreferenceUtil.put(Utils.getContext(), str2, "3");
                } else if (i == 4) {
                    NewsDetailActivity.this.mWebSettings.setTextZoom(200);
                    PreferenceUtil.put(Utils.getContext(), str2, "4");
                } else if (i == 5) {
                    if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                        NewsDetailActivity newsDetailActivity = NewsDetailActivity.this;
                        if (CommonViewModel.checkNotification(newsDetailActivity, newsDetailActivity.getResources().getString(R.string.open_push_title), NewsDetailActivity.this.getResources().getString(R.string.open_push_tips), UserPreference.COLLECT_MUST_OPEN_PUSH) && !StringUtils.isEmpty(NewsDetailActivity.this.news_id)) {
                            NewsDetailActivity newsDetailActivity2 = NewsDetailActivity.this;
                            newsDetailActivity2.requestCollect(newsDetailActivity2.news_id, str);
                            return;
                        }
                        return;
                    }
                    NewsDetailActivity newsDetailActivity3 = NewsDetailActivity.this;
                    newsDetailActivity3.initAlertDialog(newsDetailActivity3.getResources().getString(R.string.login_text1), NewsDetailActivity.this.getResources().getString(R.string.login_text3));
                }
            }
        }, this.is_collect);
        this.newsMoreDialog.show();
    }

    public void replyCommentDialog(String str, String str2, String str3) {
        BottomView bottomView = new BottomView((Context) this, (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_commentedit);
        TextView textView = (TextView) bottomView.getView().findViewById(R.id.comment_submit);
        final EditText editText = (EditText) bottomView.getView().findViewById(R.id.comment_edit);
        final EditText editText2 = editText;
        final String str4 = str;
        final String str5 = str2;
        final BottomView bottomView2 = bottomView;
        AnonymousClass20 r0 = new OnClickListener() {
            public void onClick(View view) {
                String trim = editText2.getText().toString().trim();
                String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
                if (StringUtils.isEmpty(trim)) {
                    ToastUtils.showShort((CharSequence) "请输入评论内容");
                    return;
                }
                NewsDetailActivity.this.request.clear();
                NewsDetailActivity.this.request.put("noncestr", SignConfig.noncestr);
                NewsDetailActivity.this.request.put("timestamp", SignConfig.timestamp);
                NewsDetailActivity.this.request.put("sbID", SignConfig.sbID);
                NewsDetailActivity.this.request.put("sign", SignConfig.sign);
                NewsDetailActivity.this.request.put("_token", str);
                String str2 = str4;
                if (str2 != null && !str2.isEmpty()) {
                    NewsDetailActivity.this.request.put("pid", str4);
                    NewsDetailActivity.this.request.put("cid", str4);
                }
                NewsDetailActivity.this.request.put("tvid", str5);
                NewsDetailActivity.this.request.put("type", "1");
                NewsDetailActivity.this.request.put("content", trim);
                NewsDetailActivity.this.request.put("devicetype", "0");
                NewsDetailActivity.this.request.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().replySubmit(NewsDetailActivity.this.request).enqueue(new CommonCallBack(NewsDetailActivity.this, true) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!NewsDetailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            String str = "input_method";
                            if (jsonObject == null) {
                                ToastUtils.showShort((CharSequence) "提交失败");
                                InputMethodManager inputMethodManager = (InputMethodManager) NewsDetailActivity.this.getSystemService(str);
                                if (inputMethodManager != null) {
                                    inputMethodManager.hideSoftInputFromWindow(NewsDetailActivity.this.getWindow().getDecorView().getWindowToken(), 0);
                                }
                                if (bottomView2 != null) {
                                    bottomView2.dismissBottomView();
                                }
                                return;
                            }
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                if (NewsDetailActivity.this.mNewsCommentData != null) {
                                    NewsDetailActivity.this.mNewsCommentData.clear();
                                }
                                NewsDetailActivity.this.initNewsCommentRequest();
                                editText2.setText("");
                                InputMethodManager inputMethodManager2 = (InputMethodManager) NewsDetailActivity.this.getSystemService(str);
                                if (inputMethodManager2 != null) {
                                    inputMethodManager2.hideSoftInputFromWindow(NewsDetailActivity.this.getWindow().getDecorView().getWindowToken(), 0);
                                }
                                bottomView2.dismissBottomView();
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
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
                NewsDetailActivity.this.runOnUiThread(new Runnable() {
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

    private void initRequestLikeThis(String str) {
        this.request.clear();
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("tvid", str);
        this.request.put("type", "5");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().likethis(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsDetailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        jsonObject.optString("status").equals(StatusCode.STATUS_OK);
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void initRequestLikeThis(String str, String str2, final int i) {
        this.request.clear();
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("cid", str2);
        this.request.put("tvid", str);
        this.request.put("type", "1");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().likethis(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsDetailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            ((CommentChildBean) NewsDetailActivity.this.mNewsCommentData.get(i)).setStr4("1");
                            ((CommentChildBean) NewsDetailActivity.this.mNewsCommentData.get(i)).setStr8(String.valueOf(Integer.parseInt(((CommentChildBean) NewsDetailActivity.this.mNewsCommentData.get(i)).getStr8()) + 1));
                            if (NewsDetailActivity.this.mAdapter != null) {
                                NewsDetailActivity.this.mAdapter.notifyDataSetChanged();
                            }
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void initNewsCommentRequest() {
        this.request.clear();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str);
        this.request.put("id", this.news_id);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().newsExtraInfo(this.request).enqueue(new CommonCallBack(this, false) {
            /* JADX WARNING: Removed duplicated region for block: B:46:0x012c A[SYNTHETIC, Splitter:B:46:0x012c] */
            /* JADX WARNING: Removed duplicated region for block: B:65:0x018e A[Catch:{ Exception -> 0x02ee }] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onResponse(retrofit2.Call<okhttp3.ResponseBody> r28, retrofit2.Response<okhttp3.ResponseBody> r29) {
                /*
                    r27 = this;
                    r1 = r27
                    super.onResponse(r28, r29)
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this
                    boolean r0 = r0.isDestroy
                    if (r0 == 0) goto L_0x000e
                    return
                L_0x000e:
                    java.lang.String r0 = r1.json
                    boolean r0 = com.kantv.common.utils.StringUtils.isEmpty(r0)
                    if (r0 != 0) goto L_0x02f2
                    com.google.gson.Gson r0 = new com.google.gson.Gson
                    r0.<init>()
                    java.lang.String r2 = r1.json     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r3 = "\\[\\]"
                    java.lang.String r4 = "null"
                    java.lang.String r2 = r2.replaceAll(r3, r4)     // Catch:{ Exception -> 0x02ee }
                    r1.json = r2     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r2 = r1.json     // Catch:{ Exception -> 0x02ee }
                    java.lang.Class<com.kantv.ui.bean.NewsCommentBean> r3 = com.kantv.ui.bean.NewsCommentBean.class
                    java.lang.Object r0 = r0.fromJson(r2, r3)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean r0 = (com.kantv.ui.bean.NewsCommentBean) r0     // Catch:{ Exception -> 0x02ee }
                    int r2 = r0.getStatus()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r3 = "200"
                    int r3 = java.lang.Integer.parseInt(r3)     // Catch:{ Exception -> 0x02ee }
                    if (r2 != r3) goto L_0x02f2
                    com.kantv.ui.bean.NewsCommentBean$DataBean r0 = r0.getData()     // Catch:{ Exception -> 0x02ee }
                    if (r0 != 0) goto L_0x0044
                    return
                L_0x0044:
                    java.util.List r2 = r0.getAssociate()     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.activity.NewsDetailActivity r3 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    java.util.List r3 = r3.mNewsList     // Catch:{ Exception -> 0x02ee }
                    int r3 = r3.size()     // Catch:{ Exception -> 0x02ee }
                    r4 = 0
                    if (r3 != 0) goto L_0x0082
                    com.kantv.ui.activity.NewsDetailActivity r3 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    java.util.List r3 = r3.mNewsList     // Catch:{ Exception -> 0x02ee }
                    r3.addAll(r2)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.adapter.NewsAdapter r2 = r2.mNewsAdapter     // Catch:{ Exception -> 0x02ee }
                    if (r2 == 0) goto L_0x006f
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.adapter.NewsAdapter r2 = r2.mNewsAdapter     // Catch:{ Exception -> 0x02ee }
                    r2.notifyDataSetChanged()     // Catch:{ Exception -> 0x02ee }
                L_0x006f:
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    java.util.List r2 = r2.mNewsList     // Catch:{ Exception -> 0x02ee }
                    int r2 = r2.size()     // Catch:{ Exception -> 0x02ee }
                    if (r2 <= 0) goto L_0x0082
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.LinearLayout r2 = r2.ll_news     // Catch:{ Exception -> 0x02ee }
                    r2.setVisibility(r4)     // Catch:{ Exception -> 0x02ee }
                L_0x0082:
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    int r3 = r0.getLike()     // Catch:{ Exception -> 0x02ee }
                    r2.like = r3     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    int r2 = r2.like     // Catch:{ Exception -> 0x02ee }
                    if (r2 <= 0) goto L_0x00b1
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.TextView r2 = r2.likeTv     // Catch:{ Exception -> 0x02ee }
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x02ee }
                    r3.<init>()     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.activity.NewsDetailActivity r5 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    int r5 = r5.like     // Catch:{ Exception -> 0x02ee }
                    r3.append(r5)     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r5 = "人喜欢"
                    r3.append(r5)     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x02ee }
                    r2.setText(r3)     // Catch:{ Exception -> 0x02ee }
                L_0x00b1:
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r3 = r0.getIs_collect()     // Catch:{ Exception -> 0x02ee }
                    r2.is_collect = r3     // Catch:{ Exception -> 0x02ee }
                    int r2 = r0.getIslike()     // Catch:{ Exception -> 0x02ee }
                    if (r2 <= 0) goto L_0x00d0
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.ImageView r2 = r2.likeImg     // Catch:{ Exception -> 0x02ee }
                    r3 = 2131231257(0x7f080219, float:1.807859E38)
                    r2.setImageResource(r3)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.activity.NewsDetailActivity r2 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.ImageView r2 = r2.likeImg     // Catch:{ Exception -> 0x02ee }
                    r2.setEnabled(r4)     // Catch:{ Exception -> 0x02ee }
                L_0x00d0:
                    java.util.List r2 = r0.getCommentList()     // Catch:{ Exception -> 0x02ee }
                    if (r2 == 0) goto L_0x02dc
                    java.util.List r2 = r0.getCommentList()     // Catch:{ Exception -> 0x02ee }
                    java.util.HashMap r3 = r0.getCommentUserIDList()     // Catch:{ Exception -> 0x02ee }
                    java.util.List r0 = r0.getMyLikeIDList()     // Catch:{ Exception -> 0x02ee }
                    int r5 = r2.size()     // Catch:{ Exception -> 0x02ee }
                    r6 = 3
                    if (r5 <= r6) goto L_0x00ea
                    goto L_0x00ee
                L_0x00ea:
                    int r6 = r2.size()     // Catch:{ Exception -> 0x02ee }
                L_0x00ee:
                    r5 = 0
                L_0x00ef:
                    if (r5 >= r6) goto L_0x0282
                    java.lang.String r7 = ""
                    if (r3 == 0) goto L_0x0124
                    int r8 = r3.size()     // Catch:{ Exception -> 0x02ee }
                    if (r8 <= 0) goto L_0x0124
                    java.lang.Object r8 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r8 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r8     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r8 = r8.getUid()     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r9 = r3.get(r8)     // Catch:{ Exception -> 0x02ee }
                    if (r9 == 0) goto L_0x0124
                    java.lang.Object r9 = r3.get(r8)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentUserIDListBean r9 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentUserIDListBean) r9     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r9 = r9.getName()     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r8 = r3.get(r8)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentUserIDListBean r8 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentUserIDListBean) r8     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r8 = r8.getPhoto()     // Catch:{ Exception -> 0x02ee }
                    r17 = r8
                    r16 = r9
                    goto L_0x0128
                L_0x0124:
                    r16 = r7
                    r17 = r16
                L_0x0128:
                    java.lang.String r8 = "0"
                    if (r0 == 0) goto L_0x015b
                    int r9 = r0.size()     // Catch:{ Exception -> 0x02ee }
                    if (r9 <= 0) goto L_0x015b
                    r9 = r8
                    r8 = 0
                L_0x0134:
                    int r10 = r0.size()     // Catch:{ Exception -> 0x02ee }
                    if (r8 >= r10) goto L_0x0159
                    java.lang.Object r10 = r0.get(r8)     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r10 = (java.lang.String) r10     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r11 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r11 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r11     // Catch:{ Exception -> 0x02ee }
                    long r11 = r11.get_id()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r11 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x02ee }
                    boolean r10 = r10.equals(r11)     // Catch:{ Exception -> 0x02ee }
                    if (r10 == 0) goto L_0x0156
                    java.lang.String r9 = "1"
                L_0x0156:
                    int r8 = r8 + 1
                    goto L_0x0134
                L_0x0159:
                    r14 = r9
                    goto L_0x015c
                L_0x015b:
                    r14 = r8
                L_0x015c:
                    java.util.ArrayList r8 = new java.util.ArrayList     // Catch:{ Exception -> 0x02ee }
                    r8.<init>()     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r9 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r9     // Catch:{ Exception -> 0x02ee }
                    java.util.List r9 = r9.getChild()     // Catch:{ Exception -> 0x02ee }
                    if (r9 == 0) goto L_0x021f
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r9 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r9     // Catch:{ Exception -> 0x02ee }
                    java.util.List r9 = r9.getChild()     // Catch:{ Exception -> 0x02ee }
                    int r9 = r9.size()     // Catch:{ Exception -> 0x02ee }
                    if (r9 <= 0) goto L_0x021f
                    r9 = 0
                L_0x017e:
                    java.lang.Object r10 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r10 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r10     // Catch:{ Exception -> 0x02ee }
                    java.util.List r10 = r10.getChild()     // Catch:{ Exception -> 0x02ee }
                    int r10 = r10.size()     // Catch:{ Exception -> 0x02ee }
                    if (r9 >= r10) goto L_0x021f
                    java.lang.Object r10 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r10 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r10     // Catch:{ Exception -> 0x02ee }
                    java.util.List r10 = r10.getChild()     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r10 = r10.get(r9)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean$ChildBean r10 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean.ChildBean) r10     // Catch:{ Exception -> 0x02ee }
                    if (r3 == 0) goto L_0x01ed
                    int r11 = r3.size()     // Catch:{ Exception -> 0x02ee }
                    if (r11 <= 0) goto L_0x01ed
                    long r11 = r10.getToUser()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r11 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r12 = r3.get(r11)     // Catch:{ Exception -> 0x02ee }
                    if (r12 == 0) goto L_0x01c9
                    java.lang.Object r12 = r3.get(r11)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentUserIDListBean r12 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentUserIDListBean) r12     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r12 = r12.getName()     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r11 = r3.get(r11)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentUserIDListBean r11 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentUserIDListBean) r11     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r11 = r11.getPhoto()     // Catch:{ Exception -> 0x02ee }
                    goto L_0x01cb
                L_0x01c9:
                    r11 = r7
                    r12 = r11
                L_0x01cb:
                    java.lang.String r13 = r10.getUid()     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r15 = r3.get(r13)     // Catch:{ Exception -> 0x02ee }
                    if (r15 == 0) goto L_0x01e6
                    java.lang.Object r13 = r3.get(r13)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentUserIDListBean r13 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentUserIDListBean) r13     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r13 = r13.getName()     // Catch:{ Exception -> 0x02ee }
                    r22 = r11
                    r20 = r12
                    r19 = r13
                    goto L_0x01f3
                L_0x01e6:
                    r19 = r7
                    r22 = r11
                    r20 = r12
                    goto L_0x01f3
                L_0x01ed:
                    r19 = r7
                    r20 = r19
                    r22 = r20
                L_0x01f3:
                    com.kantv.ui.bean.String8Bean r11 = new com.kantv.ui.bean.String8Bean     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r21 = r10.getComment()     // Catch:{ Exception -> 0x02ee }
                    long r12 = r10.get_id()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r23 = java.lang.Long.toString(r12)     // Catch:{ Exception -> 0x02ee }
                    long r12 = r10.getTvid()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r24 = java.lang.Long.toString(r12)     // Catch:{ Exception -> 0x02ee }
                    long r12 = r10.getPid()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r25 = java.lang.Long.toString(r12)     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r26 = "0"
                    r18 = r11
                    r18.<init>(r19, r20, r21, r22, r23, r24, r25, r26)     // Catch:{ Exception -> 0x02ee }
                    r8.add(r11)     // Catch:{ Exception -> 0x02ee }
                    int r9 = r9 + 1
                    goto L_0x017e
                L_0x021f:
                    com.kantv.ui.activity.NewsDetailActivity r7 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    java.util.List r7 = r7.mNewsCommentData     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.CommentChildBean r9 = new com.kantv.ui.bean.CommentChildBean     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r10 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r10 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r10     // Catch:{ Exception -> 0x02ee }
                    long r10 = r10.get_id()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r11 = java.lang.Long.toString(r10)     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r10 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r10 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r10     // Catch:{ Exception -> 0x02ee }
                    long r12 = r10.getTvid()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r12 = java.lang.Long.toString(r12)     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r10 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r10 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r10     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r13 = r10.getComment()     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r10 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r10 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r10     // Catch:{ Exception -> 0x02ee }
                    int r10 = r10.getCreated()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r15 = java.lang.Integer.toString(r10)     // Catch:{ Exception -> 0x02ee }
                    java.lang.Object r10 = r2.get(r5)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.bean.NewsCommentBean$DataBean$CommentListBean r10 = (com.kantv.ui.bean.NewsCommentBean.DataBean.CommentListBean) r10     // Catch:{ Exception -> 0x02ee }
                    int r10 = r10.getLike()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r18 = java.lang.Integer.toString(r10)     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r20 = ""
                    java.lang.String r21 = ""
                    java.lang.String r22 = ""
                    java.lang.String r23 = ""
                    java.lang.String r24 = ""
                    java.lang.String r25 = "0"
                    r10 = r9
                    r19 = r8
                    r10.<init>(r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)     // Catch:{ Exception -> 0x02ee }
                    r7.add(r9)     // Catch:{ Exception -> 0x02ee }
                    int r5 = r5 + 1
                    goto L_0x00ef
                L_0x0282:
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    java.util.List r0 = r0.mNewsCommentData     // Catch:{ Exception -> 0x02ee }
                    r3 = 8
                    if (r0 == 0) goto L_0x02ce
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    java.util.List r0 = r0.mNewsCommentData     // Catch:{ Exception -> 0x02ee }
                    int r0 = r0.size()     // Catch:{ Exception -> 0x02ee }
                    if (r0 <= 0) goto L_0x02ce
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.LinearLayout r0 = r0.newsCommentLayout     // Catch:{ Exception -> 0x02ee }
                    r0.setVisibility(r4)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.TextView r0 = r0.emptyNewsCommentTip     // Catch:{ Exception -> 0x02ee }
                    r0.setVisibility(r3)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.TextView r0 = r0.allCommentTv     // Catch:{ Exception -> 0x02ee }
                    if (r0 == 0) goto L_0x02dc
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.TextView r0 = r0.allCommentTv     // Catch:{ Exception -> 0x02ee }
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x02ee }
                    r3.<init>()     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r4 = "查看全部"
                    r3.append(r4)     // Catch:{ Exception -> 0x02ee }
                    int r2 = r2.size()     // Catch:{ Exception -> 0x02ee }
                    r3.append(r2)     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r2 = "条评论"
                    r3.append(r2)     // Catch:{ Exception -> 0x02ee }
                    java.lang.String r2 = r3.toString()     // Catch:{ Exception -> 0x02ee }
                    r0.setText(r2)     // Catch:{ Exception -> 0x02ee }
                    goto L_0x02dc
                L_0x02ce:
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.LinearLayout r0 = r0.newsCommentLayout     // Catch:{ Exception -> 0x02ee }
                    r0.setVisibility(r3)     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    android.widget.TextView r0 = r0.emptyNewsCommentTip     // Catch:{ Exception -> 0x02ee }
                    r0.setVisibility(r4)     // Catch:{ Exception -> 0x02ee }
                L_0x02dc:
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter     // Catch:{ Exception -> 0x02ee }
                    if (r0 == 0) goto L_0x02f2
                    com.kantv.ui.activity.NewsDetailActivity r0 = com.kantv.ui.activity.NewsDetailActivity.this     // Catch:{ Exception -> 0x02ee }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter     // Catch:{ Exception -> 0x02ee }
                    r0.notifyDataSetChanged()     // Catch:{ Exception -> 0x02ee }
                    goto L_0x02f2
                L_0x02ee:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x02f2:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.activity.NewsDetailActivity.AnonymousClass24.onResponse(retrofit2.Call, retrofit2.Response):void");
            }
        });
    }

    private void initNewsCommentView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(Utils.getContext()));
        final int i = DensityUtil.Density40;
        AnonymousClass25 r3 = new CommonAdapter<CommentChildBean>(Utils.getContext(), R.layout.item_newscomment, this.mNewsCommentData) {
            /* access modifiers changed from: protected */
            public void convert(com.kantv.ui.adapter.ViewHolder viewHolder, CommentChildBean commentChildBean, int i) {
                com.kantv.ui.adapter.ViewHolder viewHolder2 = viewHolder;
                final CommentChildBean commentChildBean2 = commentChildBean;
                String str = "1";
                if (commentChildBean.getStr15().equals(str)) {
                    viewHolder2.setVisible(R.id.item_index_bt, true);
                    viewHolder2.setVisible(R.id.item_index_contextbj, false);
                    viewHolder2.setOnClickListener(R.id.item_index_bt, new OnClickListener() {
                        public void onClick(View view) {
                        }
                    });
                }
                if (commentChildBean.getListBean() == null || commentChildBean.getListBean().size() <= 0) {
                    viewHolder2.setVisible(R.id.item_index_recycler, false);
                } else {
                    viewHolder2.setVisible(R.id.item_index_recycler, true);
                    ArrayList arrayList = new ArrayList();
                    final int size = commentChildBean.getListBean().size();
                    int i2 = size < 6 ? size : 5;
                    for (int i3 = 0; i3 < i2; i3++) {
                        arrayList.add(commentChildBean.getListBean().get(i3));
                    }
                    if (size > 5) {
                        String8Bean string8Bean = new String8Bean("", "", "", "", "", "", "", "1");
                        arrayList.add(string8Bean);
                    }
                    AnonymousClass2 r0 = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_replysubmit, arrayList) {
                        /* access modifiers changed from: protected */
                        public void convert(com.kantv.ui.adapter.ViewHolder viewHolder, String8Bean string8Bean, int i) {
                            if (string8Bean.getStr8().equals("0")) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(string8Bean.getStr1());
                                sb.append("  回复  ");
                                sb.append(string8Bean.getStr2());
                                sb.append("：");
                                sb.append(string8Bean.getStr3());
                                viewHolder.setText(R.id.item_replysubmit_text, sb.toString());
                            } else if (string8Bean.getStr8().equals("1")) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("共");
                                sb2.append(size);
                                sb2.append("条回复");
                                viewHolder.setText(R.id.item_replysubmit_text, sb2.toString());
                                viewHolder.setTextColor(R.id.item_replysubmit_text, NewsDetailActivity.this.getResources().getColor(R.color.them_color));
                            }
                        }
                    };
                    viewHolder2.setAdapter(R.id.item_index_recycler, r0, NewsDetailActivity.this, 1);
                }
                String str7 = commentChildBean.getStr7();
                int i4 = i;
                viewHolder2.setCircleImageURL(R.id.item_index_pltx, str7, i4, i4);
                viewHolder2.setText(R.id.item_index_plname, commentChildBean.getStr6());
                viewHolder2.setText(R.id.item_index_time, DateUtil.timeStamp2Date(commentChildBean.getStr5(), "yyyy-MM-dd"));
                viewHolder2.setText(R.id.item_index_comment, commentChildBean.getStr3().replace(" ", ""));
                viewHolder2.setText(R.id.item_index_num, commentChildBean.getStr8());
                viewHolder2.setOnClickListener(R.id.item_index_qj, new OnClickListener() {
                    public void onClick(View view) {
                        if (!((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                            NewsDetailActivity.this.initAlertDialog(NewsDetailActivity.this.getResources().getString(R.string.login_text1), NewsDetailActivity.this.getResources().getString(R.string.login_text3));
                        } else if (GpsUtil.isOpen() || !CommonViewModel.isMustOpenGps()) {
                            NewsDetailActivity.this.replyCommentDialog(commentChildBean2.getStr1(), commentChildBean2.getStr2(), commentChildBean2.getStr6(), commentChildBean2.getStr3());
                        } else {
                            GpsUtil.requestGps(NewsDetailActivity.this);
                        }
                    }
                });
                if (commentChildBean.getStr4().equals(str)) {
                    viewHolder2.setImageDrawable(R.id.item_index_dianzhan, NewsDetailActivity.this.getResources().getDrawable(R.drawable.hand_like_enable));
                } else if (commentChildBean.getStr4().equals("0")) {
                    viewHolder2.setImageDrawable(R.id.item_index_dianzhan, NewsDetailActivity.this.getResources().getDrawable(R.drawable.hand_like_disable));
                }
                final int i5 = i;
                viewHolder2.setOnClickListener(R.id.item_index_dianji, new OnClickListener() {
                    public void onClick(View view) {
                        if (commentChildBean2.getStr4().equals("1")) {
                            ToastUtils.showShort((CharSequence) "当前已经点赞！");
                        } else if (commentChildBean2.getStr4().equals("0")) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                NewsDetailActivity.this.initRequestLikeThis(commentChildBean2.getStr2(), commentChildBean2.getStr1(), i5);
                            } else {
                                ToastUtils.showShort((CharSequence) "您当前未登录，不能点赞！");
                            }
                        }
                    }
                });
            }
        };
        this.mAdapter = r3;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.setNestedScrollingEnabled(false);
            this.mRecyclerView.setAdapter(this.mAdapter);
        }
        List<CommentChildBean> list = this.mNewsCommentData;
        if (list == null || list.size() <= 0) {
            this.newsCommentLayout.setVisibility(8);
            this.emptyNewsCommentTip.setVisibility(0);
        }
    }

    /* access modifiers changed from: private */
    public void replyCommentDialog(final String str, String str2, final String str3, String str4) {
        final BottomView bottomView = new BottomView((Context) this, (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_reply_comment);
        TextView textView = (TextView) bottomView.getView().findViewById(R.id.reply_id);
        TextView textView2 = (TextView) bottomView.getView().findViewById(R.id.replyComment);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append(": ");
        sb.append(str4);
        textView.setText(sb.toString());
        textView2.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                bottomView.dismissBottomView();
                if (!StringUtils.isEmpty(NewsDetailActivity.this.news_id)) {
                    NewsDetailActivity newsDetailActivity = NewsDetailActivity.this;
                    newsDetailActivity.replyCommentDialog(str, newsDetailActivity.news_id, str3);
                }
            }
        });
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
    }

    private void showLoadingPage() {
        this.newsDetailLayout.setVisibility(4);
    }

    private void showEmptyPage() {
        this.newsDetailLayout.setVisibility(4);
    }

    /* access modifiers changed from: private */
    public void showErrorPage() {
        this.newsDetailLayout.setVisibility(8);
        this.newsLoadErrorLayout.setVisibility(0);
    }

    /* access modifiers changed from: private */
    public void showNewsPage() {
        this.newsDetailLayout.setVisibility(0);
        this.newsLoadErrorLayout.setVisibility(8);
    }

    /* access modifiers changed from: private */
    public void wxShare(int i) {
        WXWebpageObject wXWebpageObject = new WXWebpageObject();
        wXWebpageObject.webpageUrl = this.mNiShareUrl;
        WXMediaMessage wXMediaMessage = new WXMediaMessage(wXWebpageObject);
        wXMediaMessage.title = this.title;
        wXMediaMessage.description = getString(R.string.share5);
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

    private void jumpNewsLink(String str) {
        if (!StringUtils.isEmpty(str)) {
            String[] split = str.split("/");
            int length = split.length;
            if (length > 2) {
                Bundle bundle = new Bundle();
                bundle.putString("seo", split[length - 2]);
                bundle.putString("tid", split[length - 1]);
                gotoActivity(bundle, VideoPlayActivity.class);
            }
        }
    }

    /* access modifiers changed from: private */
    public void initAlertDialog(String str, String str2) {
        String str3 = "确定";
        new AlertDialog(this).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                NewsDetailActivity.this.gotoActivity(AccountLoginActivity.class);
            }
        }).show();
    }

    private static String getNewsPath(String str) {
        int length = str.length();
        if (length <= 4) {
            return str;
        }
        String str2 = "/";
        if (length <= 6) {
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, 4));
            sb.append(str2);
            sb.append(str);
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str.substring(0, 4));
        sb2.append(str2);
        sb2.append(str.substring(4, 6));
        sb2.append(str2);
        sb2.append(str);
        return sb2.toString();
    }

    private void todayAuNewsProcess(String str) {
        new OkHttpClient().newCall(new Builder().url(str).build()).enqueue(new Callback() {
            public void onFailure(okhttp3.Call call, IOException iOException) {
            }

            public void onResponse(okhttp3.Call call, okhttp3.Response response) throws IOException {
                if (response.isSuccessful()) {
                    String string = response.body().string();
                    if (!StringUtils.isEmpty(string)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(string);
                        if (jsonObject != null) {
                            final JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("info"));
                            if (jsonObject2 != null) {
                                NewsDetailActivity.this.runOnUiThread(new Runnable() {
                                    public void run() {
                                        NewsDetailActivity.this.mTitle.setText(jsonObject2.optString("title"));
                                        NewsDetailActivity.this.mNewsDetailSource.setText(jsonObject2.optString("sourcename"));
                                        NewsDetailActivity.this.mTime.setText(DateUtil.timeStamp2Date(jsonObject2.optString("posttime"), "yyyy-MM-dd"));
                                        String replace = RawReader.readRawResource(NewsDetailActivity.this.getResources(), R.raw.newsdetailcontent).replace("{新闻内容}", jsonObject2.optString("content"));
                                        if (NewsDetailActivity.this.mWebSettings != null) {
                                            NewsDetailActivity.this.mWebSettings.setBlockNetworkImage(false);
                                        }
                                        if (NewsDetailActivity.this.mWeb != null) {
                                            NewsDetailActivity.this.mWeb.loadDataWithBaseURL(null, replace, "text/html", "utf-8", null);
                                        }
                                        NewsDetailActivity.this.showNewsPage();
                                    }
                                });
                            }
                        }
                    }
                }
            }
        });
    }

    private String translation(String str) {
        return str.replace("&lt;", "<").replace("&gt;", ">").replace("&amp;", "&").replace("&quot;", "\"").replace("&copy;", "©");
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        WebView webView = this.mWeb;
        if (webView != null) {
            webView.removeAllViews();
            this.mWeb.destroy();
            this.mWeb = null;
        }
        this.mProgressBar = null;
        this.mRecyclerView = null;
        this.mData = null;
        this.mAdapter = null;
    }
}
