package com.kantv.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.OnScrollListener;
import androidx.transition.AutoTransition;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import butterknife.BindView;
import butterknife.OnClick;
import com.avos.avoscloud.im.v2.Conversation;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.FilterBean;
import com.kantv.ui.bean.String8Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import org.seamless.xhtml.XHTML.ATTR;
import retrofit2.Call;
import retrofit2.Response;

public class FilterActivity extends PackageActivity {
    @BindView(2131296584)
    LinearLayout filterHead;
    @BindView(2131296585)
    RecyclerView filterItemRV;
    @BindView(2131296589)
    TextView filterTV;
    @BindView(2131296588)
    LinearLayout filterToolBarLayout;
    /* access modifiers changed from: private */
    public List<String> filterTvList = new ArrayList();
    boolean isExpand = false;
    /* access modifiers changed from: private */
    public CommonAdapter<String8Bean> mAdapter;
    /* access modifiers changed from: private */
    public List<String8Bean> mData;
    @BindView(2131296586)
    XRecyclerView mFilterXRV;
    private CommonAdapter<List<FilterBean>> mHeadAdapter;
    /* access modifiers changed from: private */
    public List<List<FilterBean>> mHeadData;
    private TransitionSet mTransitionSet;
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

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_filter);
        initBase();
        initStatusBar();
        initTitle();
        if (getIntent().getExtras() != null) {
            this.mData = new ArrayList();
            initRequest();
        }
        Tracker defaultTracker = KanApplication.getDefaultTracker();
        StringBuilder sb = new StringBuilder();
        sb.append("影视_筛选_");
        sb.append(this.titleTV.getText().toString());
        defaultTracker.setScreenName(sb.toString());
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        if (getIntent().getExtras() != null) {
            String str = "seo";
            if (getIntent().getExtras().getString(str) != null) {
                if (getIntent().getExtras().getString(str).equals("tvdrama")) {
                    this.titleTV.setText("电视剧");
                } else if (getIntent().getExtras().getString(str).equals("movie")) {
                    this.titleTV.setText("电影");
                } else if (getIntent().getExtras().getString(str).equals("anime")) {
                    this.titleTV.setText("动漫");
                } else if (getIntent().getExtras().getString(str).equals("variety")) {
                    this.titleTV.setText("综艺");
                } else if (getIntent().getExtras().getString(str).equals("documentary")) {
                    this.titleTV.setText("纪录片");
                } else if (getIntent().getExtras().getString(str).equals("child")) {
                    this.titleTV.setText("少儿");
                } else if (getIntent().getExtras().getString(str).equals("sportsvideo")) {
                    this.titleTV.setText("体育录像");
                }
                this.titleTV.setTextColor(getResources().getColor(R.color.white));
                this.titleTV.setTextSize(18.0f);
                this.titleRightImg.setImageResource(R.drawable.search);
            }
        }
        this.titleTV.setText("筛选");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setImageResource(R.drawable.search);
    }

    /* access modifiers changed from: private */
    public void initView() {
        this.filterItemRV.setLayoutManager(new LinearLayoutManager(this));
        this.filterItemRV.setFocusable(false);
        this.mHeadAdapter = new CommonAdapter<List<FilterBean>>(this, R.layout.header_filter, this.mHeadData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, List<FilterBean> list, int i) {
                final int i2 = i;
                final List<FilterBean> list2 = list;
                AnonymousClass1 r0 = new CommonAdapter<FilterBean>(Utils.getContext(), R.layout.item_filter, list) {
                    /* access modifiers changed from: protected */
                    public void convert(ViewHolder viewHolder, final FilterBean filterBean, int i) {
                        viewHolder.setText(R.id.item_screen_text, filterBean.getValue());
                        if (filterBean.getType().equals("1")) {
                            viewHolder.setTextColor(R.id.item_screen_text, FilterActivity.this.getResources().getColor(R.color.item_filter_color));
                            viewHolder.setBackgroundRes(R.id.item_screen_text, FilterActivity.this.getResources().getDrawable(R.drawable.item_filter_selected));
                            if (FilterActivity.this.filterTvList == null || FilterActivity.this.filterTvList.size() <= i2) {
                                FilterActivity.this.filterTvList.add(filterBean.getValue());
                            } else {
                                FilterActivity.this.filterTvList.set(i2, filterBean.getValue());
                            }
                            String str = "";
                            for (int i2 = 0; i2 < FilterActivity.this.filterTvList.size(); i2++) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str);
                                sb.append(" · ");
                                sb.append(((String) FilterActivity.this.filterTvList.get(i2)).toString());
                                str = sb.toString();
                            }
                            FilterActivity.this.filterTV.setText(str.substring(2, str.length()));
                        } else if (filterBean.getType().equals("0")) {
                            viewHolder.setTextColor(R.id.item_screen_text, FilterActivity.this.getResources().getColor(R.color.cursor_color));
                            viewHolder.setBackgroundRes(R.id.item_screen_text, FilterActivity.this.getResources().getDrawable(R.drawable.item_filter));
                        }
                        viewHolder.setOnClickListener(R.id.item_filter_ll, new OnClickListener() {
                            public void onClick(View view) {
                                for (int i = 0; i < list2.size(); i++) {
                                    ((FilterBean) list2.get(i)).setType("0");
                                }
                                filterBean.setType("1");
                                AnonymousClass1.this.notifyDataSetChanged();
                                FilterActivity.this.page = 1;
                                if (FilterActivity.this.mData != null) {
                                    FilterActivity.this.mData.clear();
                                }
                                if (FilterActivity.this.mAdapter != null) {
                                    FilterActivity.this.mAdapter.notifyDataSetChanged();
                                }
                                FilterActivity.this.requestFilter(true);
                                Tracker defaultTracker = KanApplication.getDefaultTracker();
                                EventBuilder eventBuilder = new EventBuilder();
                                StringBuilder sb = new StringBuilder();
                                sb.append("影视_筛选_");
                                sb.append(FilterActivity.this.titleTV.getText().toString());
                                defaultTracker.send(eventBuilder.setCategory(sb.toString()).setAction(UserPreference.ACTION1).setLabel(FilterActivity.this.filterTV.getText().toString()).build());
                            }
                        });
                    }
                };
                viewHolder.setAdapter4(R.id.header_filter_recycleview, r0, Utils.getContext());
            }
        };
        String string = getIntent().getExtras().getString("name");
        for (int i = 0; i < this.mHeadData.size(); i++) {
            List list = (List) this.mHeadData.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                String str = "1";
                if (i2 == 0) {
                    ((FilterBean) list.get(i2)).setType(str);
                } else {
                    String str2 = "0";
                    if (string.equals(((FilterBean) list.get(i2)).getValue())) {
                        ((FilterBean) list.get(i2)).setType(str);
                        ((FilterBean) list.get(0)).setType(str2);
                    } else {
                        ((FilterBean) list.get(i2)).setType(str2);
                    }
                }
            }
        }
        this.mHeadAdapter.notifyDataSetChanged();
        this.filterItemRV.setAdapter(this.mHeadAdapter);
        this.mFilterXRV.setLayoutManager(new GridLayoutManager(Utils.getContext(), 3));
        this.mAdapter = new CommonAdapter<String8Bean>(this, R.layout.item_tv_card, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final String8Bean string8Bean, int i) {
                viewHolder.setText(R.id.item_card_name, string8Bean.getStr2());
                viewHolder.setText(R.id.item_card_desc, string8Bean.getStr1());
                viewHolder.setVisible(R.id.item_card_name, true);
                viewHolder.setImageURL(R.id.item_card_img, string8Bean.getStr4());
                String str3 = string8Bean.getStr3();
                if (str3.length() == 3) {
                    viewHolder.setText(R.id.item_number2, str3.substring(2));
                    viewHolder.setText(R.id.item_number1, str3.substring(0, 2));
                } else if (str3.length() == 1) {
                    viewHolder.setText(R.id.item_number2, ".0");
                    viewHolder.setText(R.id.item_number1, str3);
                }
                viewHolder.setText(R.id.item_update, string8Bean.getStr6());
                viewHolder.setOnClickListener(R.id.item_card_img_rl, new OnClickListener() {
                    public void onClick(View view) {
                        Bundle bundle = new Bundle();
                        String str5 = string8Bean.getStr5();
                        if (str5.substring(0, 4).equals("http")) {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(str5));
                            FilterActivity.this.startActivity(intent);
                            return;
                        }
                        bundle.putString("tid", str5);
                        bundle.putString("part_id", "");
                        bundle.putString("seo", string8Bean.getStr7());
                        FilterActivity.this.gotoActivity(bundle, VideoPlayActivity.class);
                    }
                });
            }
        };
        this.mFilterXRV.setAdapter(this.mAdapter);
        this.mFilterXRV.setPullRefreshEnabled(false);
        this.mFilterXRV.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                FilterActivity.this.page = 1;
                if (FilterActivity.this.mData != null) {
                    FilterActivity.this.mData.clear();
                }
                FilterActivity.this.requestFilter(false);
            }

            public void onLoadMore() {
                FilterActivity.this.page = FilterActivity.this.page + 1;
                FilterActivity.this.requestFilter(false);
            }
        });
        this.mFilterXRV.addOnScrollListener(new OnScrollListener() {
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
                int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                View findViewByPosition = linearLayoutManager.findViewByPosition(findFirstVisibleItemPosition);
                int height = findViewByPosition.getHeight();
                int top = (findFirstVisibleItemPosition * height) - findViewByPosition.getTop();
                StringBuilder sb = new StringBuilder();
                sb.append("***Distance: ");
                sb.append(top);
                sb.append(" **** itemHeight: ");
                sb.append(height);
                AILog.d(sb.toString());
                int i3 = height * 5;
                if (top >= i3 && !FilterActivity.this.isExpand) {
                    AILog.d("*** reduce");
                    FilterActivity.this.reduce();
                    FilterActivity.this.filterToolBarLayout.setVisibility(0);
                    FilterActivity.this.isExpand = true;
                } else if (top < i3 / 4 && FilterActivity.this.isExpand) {
                    AILog.d("*** expand");
                    FilterActivity.this.filterToolBarLayout.setVisibility(8);
                    FilterActivity.this.expand();
                    FilterActivity.this.isExpand = false;
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void reduce() {
        this.filterHead.setVisibility(8);
        this.mTransitionSet = new AutoTransition();
        this.mTransitionSet.setDuration(500);
        TransitionManager.beginDelayedTransition(this.filterHead, new Fade(1));
    }

    /* access modifiers changed from: private */
    public void expand() {
        this.filterHead.setVisibility(0);
        this.mTransitionSet = new AutoTransition();
        this.mTransitionSet.setDuration(500);
        TransitionManager.beginDelayedTransition(this.filterHead, new Fade(2));
    }

    private void initRequest() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        String str = "seo";
        this.request.put(str, getIntent().getExtras().getString(str));
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().filter(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!FilterActivity.this.isDestroy) {
                    if (!StringUtils.isEmpty(this.json)) {
                        FilterActivity.this.mHeadData = new ArrayList();
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("filter"));
                                if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                    for (int i = 0; i < jsonArray.length(); i++) {
                                        ArrayList arrayList = new ArrayList();
                                        JSONArray jsonArray2 = StringUtils.toJsonArray(StringUtils.getJSONobject(jsonArray, i).optString("childs"));
                                        if (StringUtils.isJSONArrayNotEmpty(jsonArray2)) {
                                            for (int i2 = 0; i2 < jsonArray2.length(); i2++) {
                                                JSONObject jSONobject = StringUtils.getJSONobject(jsonArray2, i2);
                                                arrayList.add(new FilterBean(jSONobject.optString("tid"), jSONobject.optString("name"), jSONobject.optString("type")));
                                            }
                                        }
                                        FilterActivity.this.mHeadData.add(arrayList);
                                    }
                                    FilterActivity.this.initView();
                                    FilterActivity.this.requestFilter(true);
                                }
                            }
                        }
                    } else {
                        ToastUtils.showShort((CharSequence) "服务器没有响应，请稍后再试");
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void requestFilter(boolean z) {
        Object obj = null;
        Object obj2 = null;
        Object obj3 = null;
        Object obj4 = null;
        int i = 0;
        while (i < this.mHeadData.size()) {
            List list = (List) this.mHeadData.get(i);
            Object obj5 = obj4;
            Object obj6 = obj3;
            Object obj7 = obj2;
            Object obj8 = obj;
            for (int i2 = 0; i2 < list.size(); i2++) {
                FilterBean filterBean = (FilterBean) list.get(i2);
                if (filterBean.getType().equals("1")) {
                    if (i == 0) {
                        obj7 = filterBean.getId();
                    } else if (i == 1) {
                        obj6 = filterBean.getId();
                    } else if (i == 2) {
                        obj8 = filterBean.getId();
                    } else if (i == 3) {
                        obj5 = filterBean.getId();
                    }
                }
            }
            i++;
            obj = obj8;
            obj2 = obj7;
            obj3 = obj6;
            obj4 = obj5;
        }
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        String str = "seo";
        this.request.put(str, getIntent().getExtras().getString(str));
        this.request.put(ATTR.CLASS, obj);
        this.request.put("country", obj2);
        this.request.put("year", obj3);
        this.request.put("page", String.valueOf(this.page));
        this.request.put(Conversation.QUERY_PARAM_SORT, obj4);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().sfilter(this.request).enqueue(new CommonCallBack(this, z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!FilterActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("rows"));
                            if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                for (int i = 0; i < jsonArray.length(); i++) {
                                    JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                    if (FilterActivity.this.mData != null) {
                                        List access$200 = FilterActivity.this.mData;
                                        String8Bean string8Bean = new String8Bean(jSONobject.optString("descript"), jSONobject.optString("title"), jSONobject.optString(Param.SCORE), jSONobject.optString("photo"), jSONobject.optString("url"), jSONobject.optString("msg"), jSONobject.optString("seo"), jSONobject.optString("videoTag"));
                                        access$200.add(string8Bean);
                                    }
                                }
                            } else {
                                ToastUtils.showShort((CharSequence) "没有筛选到您想要的视频资源！");
                            }
                            if (FilterActivity.this.mAdapter != null) {
                                FilterActivity.this.mAdapter.notifyDataSetChanged();
                            }
                            if (FilterActivity.this.mFilterXRV != null) {
                                FilterActivity.this.mFilterXRV.refreshComplete();
                            }
                        }
                    }
                }
            }
        });
    }

    @OnClick({2131297292, 2131297294})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.title_left_ll) {
            finish();
        } else if (id == R.id.title_right_ll) {
            gotoActivity(SearchActivity.class);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mData = null;
        this.mAdapter = null;
        this.mHeadData = null;
        this.mHeadAdapter = null;
        this.mFilterXRV = null;
        this.filterTV.setText("");
    }
}
