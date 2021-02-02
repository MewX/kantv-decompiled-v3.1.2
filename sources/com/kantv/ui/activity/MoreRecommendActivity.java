package com.kantv.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.gson.Gson;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.MovieBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.StatusCode;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class MoreRecommendActivity extends PackageActivity {
    List<MovieBean> mTodayRDData = new ArrayList();
    @BindView(2131296910)
    XRecyclerView moreRecommendRV;
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
    @BindView(2131296483)
    TextView titleTV;
    CommonAdapter<MovieBean> todayRDAdapter = null;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_more_recommend);
        initBase();
        initStatusBar();
        initTitle();
        initRequest(true);
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN21);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("更多推荐");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
    }

    /* access modifiers changed from: private */
    public void initRequest(boolean z) {
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
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().VideoRecommend(this.request).enqueue(new CommonCallBack(this, z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!MoreRecommendActivity.this.isDestroy) {
                    if (MoreRecommendActivity.this.moreRecommendRV != null) {
                        MoreRecommendActivity.this.moreRecommendRV.refreshComplete();
                    }
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                String str = "data";
                                if (!StringUtils.isEmpty(jsonObject.optString(str))) {
                                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject.optString(str));
                                    if (jsonArray != null) {
                                        if (MoreRecommendActivity.this.mTodayRDData != null && MoreRecommendActivity.this.page == 1) {
                                            MoreRecommendActivity.this.mTodayRDData.clear();
                                        }
                                        Gson gson = new Gson();
                                        for (int i = 0; i < jsonArray.length(); i++) {
                                            JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                            if (jSONobject != null) {
                                                MoreRecommendActivity.this.mTodayRDData.add((MovieBean) gson.fromJson(jSONobject.toString(), MovieBean.class));
                                            }
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            }
                            if (MoreRecommendActivity.this.todayRDAdapter != null) {
                                MoreRecommendActivity.this.todayRDAdapter.notifyDataSetChanged();
                            }
                        }
                    }
                }
            }
        });
    }

    @OnClick({2131297292})
    public void onClick(View view) {
        if (view.getId() == R.id.title_left_ll) {
            finish();
        }
    }

    private void initView() {
        this.moreRecommendRV.setLayoutManager(new GridLayoutManager(Utils.getContext(), 2));
        this.todayRDAdapter = new CommonAdapter<MovieBean>(this, R.layout.item_todayrd_card, this.mTodayRDData) {
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
                        MoreRecommendActivity.this.gotoActivity(bundle, VideoPlayActivity.class);
                    }
                });
            }
        };
        this.moreRecommendRV.setAdapter(this.todayRDAdapter);
        this.moreRecommendRV.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                MoreRecommendActivity.this.page = 1;
                if (MoreRecommendActivity.this.todayRDAdapter != null) {
                    MoreRecommendActivity.this.todayRDAdapter.notifyDataSetChanged();
                }
                MoreRecommendActivity.this.initRequest(false);
            }

            public void onLoadMore() {
                MoreRecommendActivity.this.page = MoreRecommendActivity.this.page + 1;
                MoreRecommendActivity.this.initRequest(false);
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.moreRecommendRV = null;
        this.mTodayRDData = null;
    }
}
