package com.kantv.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.gson.Gson;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.KeyWordBean;
import com.kantv.ui.bean.KeyWordBean.IKeyWord;
import com.kantv.ui.bean.String4Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.viewmodel.CommonViewModel;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class SearchActivity extends PackageActivity {
    /* access modifiers changed from: private */
    public CommonAdapter<String> adapter;
    /* access modifiers changed from: private */
    public List<String4Bean> mData;
    /* access modifiers changed from: private */
    public CommonAdapter<String4Bean> mHotSearchAdapter;
    /* access modifiers changed from: private */
    public String mKeyWord;
    /* access modifiers changed from: private */
    public CommonAdapter<IKeyWord> mKeyWordAdapter;
    /* access modifiers changed from: private */
    public List<IKeyWord> mKeyWordDatas = new ArrayList();
    @BindView(2131296819)
    XRecyclerView mKeyWorkdRecycle;
    @BindView(2131297155)
    EditText mSearchEdit;
    @BindView(2131297162)
    XRecyclerView mSearchXRecycler;
    /* access modifiers changed from: private */
    public String mSeo;
    /* access modifiers changed from: private */
    public List<String> mlist;
    @BindView(2131297154)
    ImageView searchDeleteImg;
    LinearLayout topHistoryLayout;

    public SearchActivity() {
        String str = "";
        this.mKeyWord = str;
        this.mSeo = str;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_search);
        initBase();
        initStatusBar();
        initView();
        initRequest();
        KanApplication.getDefaultTracker().setScreenName("影视_搜索");
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        if (!(getIntent() == null || getIntent().getExtras() == null)) {
            this.mSeo = getIntent().getExtras().getString("seo");
        }
        this.mData = new ArrayList();
        this.mlist = new ArrayList();
        View inflate = LayoutInflater.from(this).inflate(R.layout.header_search, null);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.search_history_rv);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.search_clear);
        this.topHistoryLayout = (LinearLayout) inflate.findViewById(R.id.top_history_ll);
        recyclerView.setLayoutManager(new GridLayoutManager(this, 2));
        JSONArray jsonArray = StringUtils.toJsonArray((String) PreferenceUtil.get(Utils.getContext(), "Search", ""));
        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
            for (int i = 0; i < jsonArray.length(); i++) {
                try {
                    this.mlist.add(jsonArray.getString(i));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            this.topHistoryLayout.setVisibility(0);
        } else {
            this.topHistoryLayout.setVisibility(8);
        }
        this.adapter = new CommonAdapter<String>(this, R.layout.item_search_record, this.mlist) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final String str, int i) {
                viewHolder.setText(R.id.item_record_tv, str);
                viewHolder.setOnClickListener(R.id.item_record_tv, new OnClickListener() {
                    public void onClick(View view) {
                        SearchActivity.this.closekeyboard();
                        Bundle bundle = new Bundle();
                        bundle.putString("name", str);
                        bundle.putString("seo", SearchActivity.this.mSeo);
                        SearchActivity.this.gotoActivity(bundle, SearchResultActivity.class);
                        SearchActivity.this.finish();
                    }
                });
            }
        };
        recyclerView.setAdapter(this.adapter);
        imageView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SearchActivity.this.topHistoryLayout.setVisibility(8);
                SearchActivity.this.mlist.clear();
                if (SearchActivity.this.adapter != null) {
                    SearchActivity.this.adapter.notifyDataSetChanged();
                }
                PreferenceUtil.put(Utils.getContext(), "Search", "");
            }
        });
        recyclerView.setFocusable(false);
        this.mSearchXRecycler.addHeaderView(inflate);
        this.mSearchXRecycler.setLayoutManager(new GridLayoutManager(this, 2));
        this.mSearchXRecycler.setPullRefreshEnabled(false);
        this.mHotSearchAdapter = new CommonAdapter<String4Bean>(this, R.layout.item_hot_search, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final String4Bean string4Bean, int i) {
                viewHolder.setText(R.id.item_hot_search_sort, String.valueOf(i - 1));
                viewHolder.setText(R.id.item_hot_search_title, string4Bean.getText1());
                if (i < 5) {
                    viewHolder.setTextColor(R.id.item_hot_search_sort, SearchActivity.this.getResources().getColor(R.color.white));
                    if (i == 2) {
                        viewHolder.setBackgroundRes(R.id.item_hot_search_sort, SearchActivity.this.getResources().getDrawable(R.drawable.item_search_record_red_bg));
                    } else if (i == 3) {
                        viewHolder.setBackgroundRes(R.id.item_hot_search_sort, SearchActivity.this.getResources().getDrawable(R.drawable.item_search_record_orange_bg));
                    } else if (i == 4) {
                        viewHolder.setBackgroundRes(R.id.item_hot_search_sort, SearchActivity.this.getResources().getDrawable(R.drawable.item_search_record_yellow_bg));
                    }
                }
                viewHolder.setOnClickListener(R.id.item_search_qj, new OnClickListener() {
                    public void onClick(View view) {
                        Bundle bundle = new Bundle();
                        String str = "tid";
                        bundle.putString(str, string4Bean.getText2());
                        String text2 = string4Bean.getText2();
                        if (text2.substring(0, 4).equals("http")) {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(text2));
                            SearchActivity.this.startActivity(intent);
                        } else {
                            bundle.putString(str, text2);
                            bundle.putString("part_id", "");
                            bundle.putString("seo", string4Bean.getText3());
                        }
                        SearchActivity.this.gotoActivity(bundle, VideoPlayActivity.class);
                        KanApplication.getDefaultTracker().send(new EventBuilder().setCategory("影视_搜索").setAction(UserPreference.ACTION1).setLabel(string4Bean.getText1()).build());
                    }
                });
            }
        };
        this.mSearchXRecycler.setAdapter(this.mHotSearchAdapter);
        this.mSearchEdit.setFocusable(true);
        this.mSearchEdit.requestFocus();
        this.mSearchEdit.setOnEditorActionListener(new OnEditorActionListener() {
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i == 3) {
                    SearchActivity.this.initSearch();
                }
                return false;
            }
        });
        this.mSearchEdit.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!StringUtils.isEmpty(SearchActivity.this.mSearchEdit.getText())) {
                    SearchActivity.this.searchDeleteImg.setVisibility(0);
                    SearchActivity.this.mKeyWord = charSequence.toString();
                    SearchActivity searchActivity = SearchActivity.this;
                    searchActivity.getKeyWords(searchActivity.mKeyWord);
                    SearchActivity.this.mKeyWorkdRecycle.setVisibility(0);
                    return;
                }
                SearchActivity.this.searchDeleteImg.setVisibility(4);
                SearchActivity.this.mKeyWorkdRecycle.setVisibility(8);
            }
        });
        this.mKeyWordAdapter = new CommonAdapter<IKeyWord>(this, R.layout.simple_dropdown_list_line, this.mKeyWordDatas) {
            /* access modifiers changed from: protected */
            /* JADX WARNING: Removed duplicated region for block: B:11:0x0041  */
            /* JADX WARNING: Removed duplicated region for block: B:12:0x0045  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void convert(com.kantv.ui.adapter.ViewHolder r7, final com.kantv.ui.bean.KeyWordBean.IKeyWord r8, int r9) {
                /*
                    r6 = this;
                    java.lang.String r9 = r8.getText()
                    r0 = 0
                    android.text.SpannableStringBuilder r1 = new android.text.SpannableStringBuilder     // Catch:{ Exception -> 0x002f }
                    r1.<init>(r9)     // Catch:{ Exception -> 0x002f }
                    android.text.style.ForegroundColorSpan r0 = new android.text.style.ForegroundColorSpan     // Catch:{ Exception -> 0x002d }
                    r2 = -16776961(0xffffffffff0000ff, float:-1.7014636E38)
                    r0.<init>(r2)     // Catch:{ Exception -> 0x002d }
                    com.kantv.ui.activity.SearchActivity r2 = com.kantv.ui.activity.SearchActivity.this     // Catch:{ Exception -> 0x002d }
                    java.lang.String r2 = r2.mKeyWord     // Catch:{ Exception -> 0x002d }
                    int r2 = r9.indexOf(r2)     // Catch:{ Exception -> 0x002d }
                    com.kantv.ui.activity.SearchActivity r3 = com.kantv.ui.activity.SearchActivity.this     // Catch:{ Exception -> 0x002d }
                    java.lang.String r3 = r3.mKeyWord     // Catch:{ Exception -> 0x002d }
                    int r3 = r3.length()     // Catch:{ Exception -> 0x002d }
                    int r3 = r3 + r2
                    r4 = 33
                    r1.setSpan(r0, r2, r3, r4)     // Catch:{ Exception -> 0x002d }
                    goto L_0x0036
                L_0x002d:
                    r0 = move-exception
                    goto L_0x0033
                L_0x002f:
                    r1 = move-exception
                    r5 = r1
                    r1 = r0
                    r0 = r5
                L_0x0033:
                    r0.printStackTrace()
                L_0x0036:
                    r0 = 2131297331(0x7f090433, float:1.8212604E38)
                    android.view.View r0 = r7.getView(r0)
                    android.widget.TextView r0 = (android.widget.TextView) r0
                    if (r1 != 0) goto L_0x0045
                    r0.setText(r9)
                    goto L_0x0048
                L_0x0045:
                    r0.setText(r1)
                L_0x0048:
                    r9 = 2131296831(0x7f09023f, float:1.821159E38)
                    com.kantv.ui.activity.SearchActivity$6$1 r0 = new com.kantv.ui.activity.SearchActivity$6$1
                    r0.<init>(r8)
                    r7.setOnClickListener(r9, r0)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.activity.SearchActivity.AnonymousClass6.convert(com.kantv.ui.adapter.ViewHolder, com.kantv.ui.bean.KeyWordBean$IKeyWord, int):void");
            }
        };
        this.mKeyWorkdRecycle.setLayoutManager(new LinearLayoutManager(this));
        this.mKeyWorkdRecycle.setPullRefreshEnabled(false);
        this.mKeyWorkdRecycle.setLoadingMoreEnabled(false);
        this.mKeyWorkdRecycle.setAdapter(this.mKeyWordAdapter);
    }

    /* access modifiers changed from: private */
    public void initSearch() {
        String trim = this.mSearchEdit.getText().toString().trim();
        if (StringUtils.isEmpty(trim)) {
            ToastUtils.showShort((CharSequence) "请输入搜索内容！");
            return;
        }
        boolean z = false;
        for (int i = 0; i < this.mlist.size(); i++) {
            if (((String) this.mlist.get(i)).equals(trim)) {
                z = true;
            }
        }
        if (!z) {
            AILog.d("插入数据==", trim);
            this.mlist.add(0, trim);
            this.topHistoryLayout.setVisibility(0);
            if (this.mlist.size() > 9) {
                for (int i2 = 10; i2 < this.mlist.size(); i2++) {
                    this.mlist.remove(i2);
                }
            }
            CommonAdapter<String> commonAdapter = this.adapter;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
            LinearLayout linearLayout = this.topHistoryLayout;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            for (int i3 = 0; i3 < this.mlist.size(); i3++) {
                StringBuilder sb = new StringBuilder();
                sb.append("测试参数");
                sb.append(i3);
                AILog.d(sb.toString(), (String) this.mlist.get(i3));
            }
            String str = "Search";
            PreferenceUtil.put(Utils.getContext(), str, new Gson().toJson((Object) this.mlist).toString());
        }
        closekeyboard();
        Bundle bundle = new Bundle();
        bundle.putString("name", trim);
        bundle.putString("seo", this.mSeo);
        gotoActivity(bundle, SearchResultActivity.class);
        Tracker defaultTracker = KanApplication.getDefaultTracker();
        EventBuilder eventBuilder = new EventBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("点击搜索_");
        sb2.append(trim);
        defaultTracker.send(eventBuilder.setCategory(sb2.toString()).build());
        finish();
    }

    private void initRequest() {
        this.request.clear();
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().sIndex(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("hots"));
                            if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                int i = 0;
                                while (i < jsonArray.length()) {
                                    JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                    if (jSONobject != null) {
                                        if (SearchActivity.this.mData != null) {
                                            SearchActivity.this.mData.add(new String4Bean(jSONobject.optString("title"), jSONobject.optString("url"), jSONobject.optString("seo"), ""));
                                        }
                                        i++;
                                    } else {
                                        return;
                                    }
                                }
                                if (SearchActivity.this.mHotSearchAdapter != null) {
                                    SearchActivity.this.mHotSearchAdapter.notifyDataSetChanged();
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    @OnClick({2131297151, 2131297154})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.search_cancel) {
            finish();
        } else if (id == R.id.search_delete) {
            this.mSearchEdit.setText("");
        }
    }

    private boolean checkIllegalChar(String str) {
        return StringUtils.stringFilter(str).equals(str);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mSearchXRecycler = null;
        this.mSearchEdit = null;
        this.mData = null;
        this.mHotSearchAdapter = null;
        this.mlist = null;
        this.adapter = null;
    }

    /* access modifiers changed from: private */
    public void getKeyWords(String str) {
        CommonViewModel.getSuggestKeyWords(str, new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                SearchActivity.this.mKeyWordDatas.clear();
                KeyWordBean keyWordBean = (KeyWordBean) new Gson().fromJson(CommonViewModel.getJsonData(this.json), KeyWordBean.class);
                if (!KeyWordBean.isNull(keyWordBean)) {
                    SearchActivity.this.mKeyWordDatas.addAll(keyWordBean.getData());
                }
                SearchActivity.this.mKeyWordAdapter.notifyDataSetChanged();
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                SearchActivity.this.mKeyWordDatas.clear();
                SearchActivity.this.mKeyWordAdapter.notifyDataSetChanged();
            }
        });
    }
}
