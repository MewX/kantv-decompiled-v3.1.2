package com.kantv.ui.fragment;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.NewsDetailActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.String12Bean;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.StatusCode;
import com.samsung.multiscreen.Message;
import debug.KanApplication;
import io.fabric.sdk.android.services.common.IdManager;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class SearchVideoMoreFragment extends BaseFragment {
    private static final String TAG = "SearchVideoMoreFragment";
    /* access modifiers changed from: private */
    public boolean isFast = true;
    /* access modifiers changed from: private */
    public CommonAdapter<String12Bean> mAdapter;
    /* access modifiers changed from: private */
    public List<String12Bean> mData = new ArrayList();
    private String mKeyWord;
    @BindView(2131296611)
    XRecyclerView mRecyclerView;
    private String mTitle;
    private String mType;
    /* access modifiers changed from: private */
    public int page = 1;
    @BindView(2131297293)
    ImageView titleLeftImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131296482)
    RelativeLayout titleRelateLayout;
    @BindView(2131297295)
    ImageView titleRightImg;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131297328)
    TextView titleRightTxt;
    @BindView(2131296483)
    TextView titleTV;

    public SearchVideoMoreFragment() {
        String str = "";
        this.mTitle = str;
        this.mType = "video";
        this.mKeyWord = str;
    }

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_search_video_more, null);
        return this.mRootView;
    }

    public void initData() {
        if (this.isFast) {
            initView();
            initTitle();
            initRequest(true);
        }
    }

    private void initView() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mTitle = arguments.getString("title");
            this.mType = arguments.getString("seo");
            this.mKeyWord = arguments.getString("keyword");
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(this.mTitle);
            String str2 = " ";
            sb.append(str2);
            sb.append(this.mType);
            sb.append(str2);
            sb.append(this.mKeyWord);
            AILog.d(str, sb.toString());
        }
        if (this.mType.equals("video")) {
            this.mAdapter = new CommonAdapter<String12Bean>(Utils.getContext(), R.layout.item_detail, this.mData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, final String12Bean string12Bean, int i) {
                    viewHolder.setText(R.id.item_detail_title, string12Bean.getStr3());
                    StringBuilder sb = new StringBuilder();
                    sb.append(string12Bean.getStr6());
                    String str = "·";
                    sb.append(str);
                    sb.append(string12Bean.getStr11());
                    sb.append(str);
                    sb.append(string12Bean.getStr8());
                    viewHolder.setText(R.id.item_detail_tag, sb.toString());
                    viewHolder.setText(R.id.item_detail_actor, string12Bean.getStr4());
                    viewHolder.setImageURL(R.id.item_detail_movie, string12Bean.getStr2());
                    viewHolder.setText(R.id.item_tv_class, string12Bean.getStr12());
                    DecimalFormat decimalFormat = new DecimalFormat(IdManager.DEFAULT_VERSION_NAME);
                    if (!StringUtils.isEmpty(string12Bean.getStr7())) {
                        viewHolder.setText(R.id.item_detail_score, decimalFormat.format(Double.valueOf(Double.parseDouble(string12Bean.getStr7()))));
                    }
                    viewHolder.setOnClickListener(R.id.item_detail_rl, new OnClickListener() {
                        public void onClick(View view) {
                            String str10 = string12Bean.getStr10();
                            if (str10.substring(0, 4).equals("http")) {
                                Intent intent = new Intent();
                                intent.setAction("android.intent.action.VIEW");
                                intent.setData(Uri.parse(str10));
                                SearchVideoMoreFragment.this.startActivity(intent);
                                return;
                            }
                            Bundle bundle = new Bundle();
                            bundle.putString("tid", str10);
                            bundle.putString("seo", string12Bean.getStr9());
                            SearchVideoMoreFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                        }
                    });
                }
            };
        } else {
            this.mAdapter = new CommonAdapter<String12Bean>(Utils.getContext(), R.layout.item_news, this.mData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, final String12Bean string12Bean, int i) {
                    if (string12Bean != null) {
                        viewHolder.setImageURL3(R.id.item_news_img, string12Bean.getStr2());
                        viewHolder.setText(R.id.item_news_title, string12Bean.getStr3());
                        viewHolder.setText(R.id.item_news_author, string12Bean.getStr4());
                        if (!StringUtils.isEmpty(string12Bean.getStr5())) {
                            if (!"0".equals(string12Bean.getStr5())) {
                                viewHolder.setText(R.id.newslist_comment_tv, string12Bean.getStr5());
                                viewHolder.setVisible(R.id.newslist_comment_tv, true);
                                viewHolder.setText(R.id.news_eye_totalcount, string12Bean.getStr7());
                                if (string12Bean.getStr8() != null || !string12Bean.getStr8().equals("1")) {
                                    viewHolder.setVisible(R.id.isPlay_img, false);
                                } else {
                                    viewHolder.setVisible(R.id.isPlay_img, true);
                                }
                            }
                        }
                        viewHolder.setVisible(R.id.newslist_comment_tv, false);
                        viewHolder.setText(R.id.news_eye_totalcount, string12Bean.getStr7());
                        if (string12Bean.getStr8() != null) {
                        }
                        viewHolder.setVisible(R.id.isPlay_img, false);
                    }
                    viewHolder.setOnClickListener(R.id.item_news_rl, new OnClickListener() {
                        public void onClick(View view) {
                            Bundle bundle = new Bundle();
                            bundle.putString("id", string12Bean.getStr1());
                            bundle.putString(ProductAction.ACTION_DETAIL, "");
                            SearchVideoMoreFragment.this.gotoActivity(bundle, NewsDetailActivity.class);
                        }
                    });
                }
            };
        }
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                SearchVideoMoreFragment.this.mData.clear();
                if (SearchVideoMoreFragment.this.mAdapter != null) {
                    SearchVideoMoreFragment.this.mAdapter.notifyDataSetChanged();
                }
                SearchVideoMoreFragment.this.page = 1;
                SearchVideoMoreFragment.this.initRequest(false);
            }

            public void onLoadMore() {
                SearchVideoMoreFragment.this.page = SearchVideoMoreFragment.this.page + 1;
                SearchVideoMoreFragment.this.initRequest(false);
            }
        });
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText(this.mTitle);
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        this.titleRightTxt.setVisibility(8);
        this.titleLeftLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SearchVideoMoreFragment.this.getActivity().finish();
            }
        });
    }

    /* access modifiers changed from: private */
    public void initRequest(boolean z) {
        if (this.request == null) {
            this.request = new HashMap();
        }
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("keywords", this.mKeyWord);
        this.request.put("page", String.valueOf(this.page));
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        if (this.mType.equals("video")) {
            this.request.put("seo", Message.TARGET_ALL);
            Api.getService().search(this.request).enqueue(new CommonCallBack(getActivity(), z) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!SearchVideoMoreFragment.this.isonDestroy) {
                        if (SearchVideoMoreFragment.this.mRecyclerView != null) {
                            SearchVideoMoreFragment.this.mRecyclerView.refreshComplete();
                        }
                        if (!StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                int i = 0;
                                SearchVideoMoreFragment.this.isFast = false;
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                if (jsonObject2 != null) {
                                    JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("rows"));
                                    if (jsonObject3 != null) {
                                        JSONArray jsonArray = StringUtils.toJsonArray(jsonObject3.optString("row"));
                                        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                            while (i < jsonArray.length()) {
                                                JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                                if (jSONobject != null) {
                                                    List access$000 = SearchVideoMoreFragment.this.mData;
                                                    JSONArray jSONArray = jsonArray;
                                                    String12Bean string12Bean = r5;
                                                    String12Bean string12Bean2 = new String12Bean(jSONobject.optString("id"), jSONobject.optString("photo"), jSONobject.optString("title"), jSONobject.optString("actor"), jSONobject.optString("director"), jSONobject.optString("year"), jSONobject.optString(Param.SCORE), jSONobject.optString("tvcountry_name"), jSONobject.optString("seo"), jSONobject.optString("url"), jSONobject.optString("channel_name"), jSONobject.optString("tvclass_name"));
                                                    access$000.add(string12Bean);
                                                    i++;
                                                    jsonArray = jSONArray;
                                                } else {
                                                    return;
                                                }
                                            }
                                            if (SearchVideoMoreFragment.this.mAdapter != null) {
                                                SearchVideoMoreFragment.this.mAdapter.notifyDataSetChanged();
                                            }
                                        } else {
                                            SearchVideoMoreFragment.this.page;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            });
            return;
        }
        Api.getService().newSearch(this.request).enqueue(new CommonCallBack(getActivity(), z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                String str;
                super.onResponse(call, response);
                if (!SearchVideoMoreFragment.this.isonDestroy) {
                    if (SearchVideoMoreFragment.this.mRecyclerView != null) {
                        SearchVideoMoreFragment.this.mRecyclerView.refreshComplete();
                    }
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            int i = 0;
                            SearchVideoMoreFragment.this.isFast = false;
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("rows"));
                                if (jsonObject3 != null) {
                                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject3.optString("row"));
                                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                        while (i < jsonArray.length()) {
                                            JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                            if (jSONobject != null) {
                                                String str2 = "comm_nums";
                                                String str3 = "";
                                                if (jSONobject.has(str2)) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append(jSONobject.optLong(str2));
                                                    sb.append(str3);
                                                    str = sb.toString();
                                                } else {
                                                    str = "0";
                                                }
                                                String str4 = str;
                                                String optString = jSONobject.optString("_id");
                                                String optString2 = jSONobject.optString("thumb");
                                                String optString3 = jSONobject.optString("title");
                                                String optString4 = jSONobject.optString("source");
                                                StringBuilder sb2 = new StringBuilder();
                                                sb2.append(jSONobject.optLong("totalcount"));
                                                sb2.append(str3);
                                                String sb3 = sb2.toString();
                                                StringBuilder sb4 = new StringBuilder();
                                                sb4.append(jSONobject.optInt("isplay"));
                                                sb4.append(str3);
                                                String12Bean string12Bean = new String12Bean(optString, optString2, optString3, optString4, str4, "", sb3, sb4.toString(), "", "", "", "");
                                                SearchVideoMoreFragment.this.mData.add(string12Bean);
                                                i++;
                                            } else {
                                                return;
                                            }
                                        }
                                        if (SearchVideoMoreFragment.this.mAdapter != null) {
                                            SearchVideoMoreFragment.this.mAdapter.notifyDataSetChanged();
                                        }
                                    } else {
                                        SearchVideoMoreFragment.this.page;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    public void onDestroy() {
        super.onDestroy();
        this.mRecyclerView = null;
        List<String12Bean> list = this.mData;
        if (list != null) {
            list.clear();
            this.mData = null;
        }
        this.mAdapter = null;
    }
}
