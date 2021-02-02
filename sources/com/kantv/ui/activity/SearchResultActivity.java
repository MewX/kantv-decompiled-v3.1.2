package com.kantv.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.imkan.tv.R;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Selection;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.String12Bean;
import com.kantv.ui.bean.String2Bean;
import com.kantv.ui.bean.String4Bean;
import com.kantv.ui.bean.String8Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tencent.open.SocialConstants;
import debug.KanApplication;
import io.fabric.sdk.android.services.common.IdManager;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import retrofit2.Call;
import retrofit2.Response;

public class SearchResultActivity extends PackageActivity {
    @BindView(2131296488)
    LinearLayout content;
    @BindView(2131296867)
    LinearLayout mLoadErrorLayout;
    private CommonAdapter<String8Bean> mNewAdapter;
    @BindView(2131296881)
    LinearLayout mNewMore;
    @BindView(2131296882)
    TextView mNewMoreText;
    @BindView(2131296609)
    RecyclerView mNewRecycleVIew;
    @BindView(2131296616)
    TextView mNewTxt;
    /* access modifiers changed from: private */
    public List<String8Bean> mNewsData = new ArrayList();
    public List<String2Bean> mSearchData;
    private String mSeo;
    private CommonAdapter<String4Bean> mStarAdapter;
    /* access modifiers changed from: private */
    public List<String4Bean> mStarData = new ArrayList();
    @BindView(2131296613)
    RecyclerView mStarRecycleView;
    @BindView(2131296617)
    TextView mStarTxt;
    private CommonAdapter<String12Bean> mVideoAdapter;
    /* access modifiers changed from: private */
    public List<String12Bean> mVideoData = new ArrayList();
    @BindView(2131296884)
    TextView mVideoMoreText;
    @BindView(2131296615)
    RecyclerView mVideoRecycleView;
    @BindView(2131296620)
    TextView mVideoTxt;
    public String name;
    @BindView(2131297154)
    ImageView searchDeleteImg;
    @BindView(2131297155)
    EditText searchEdit;
    @BindView(2131296883)
    LinearLayout videoMore;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_search_result);
        initBase();
        initStatusBar();
        this.searchEdit.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!StringUtils.isEmpty(SearchResultActivity.this.searchEdit.getText())) {
                    SearchResultActivity.this.searchDeleteImg.setVisibility(0);
                } else {
                    SearchResultActivity.this.searchDeleteImg.setVisibility(4);
                }
            }
        });
        if (getIntent().getExtras() != null) {
            this.name = getIntent().getExtras().getString("name");
            this.mSeo = getIntent().getExtras().getString("seo");
            this.searchEdit.setText(this.name);
            this.searchEdit.setSelection(this.name.toString().length());
            this.searchEdit.setOnEditorActionListener(new OnEditorActionListener() {
                public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    if (i == 3) {
                        SearchResultActivity.this.closekeyboard();
                        SearchResultActivity searchResultActivity = SearchResultActivity.this;
                        searchResultActivity.name = searchResultActivity.searchEdit.getText().toString().trim();
                        StringBuilder sb = new StringBuilder();
                        sb.append("*** name **** : ");
                        sb.append(SearchResultActivity.this.name);
                        AILog.d(sb.toString());
                        if (StringUtils.isEmpty(SearchResultActivity.this.name)) {
                            ToastUtils.showShort((CharSequence) "请输入搜索内容！");
                            return false;
                        }
                        SearchResultActivity searchResultActivity2 = SearchResultActivity.this;
                        searchResultActivity2.recordSearch(searchResultActivity2.name);
                        SearchResultActivity searchResultActivity3 = SearchResultActivity.this;
                        searchResultActivity3.initRequest(searchResultActivity3.name);
                    }
                    return false;
                }
            });
            initRequest(this.name);
        }
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN28);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    /* access modifiers changed from: private */
    public void recordSearch(String str) {
        ArrayList arrayList = new ArrayList();
        String str2 = "Search";
        JSONArray jsonArray = StringUtils.toJsonArray((String) PreferenceUtil.get(Utils.getContext(), str2, ""));
        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
            for (int i = 0; i < jsonArray.length(); i++) {
                try {
                    arrayList.add(jsonArray.getString(i));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        boolean z = false;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (((String) arrayList.get(i2)).equals(str)) {
                z = true;
            }
        }
        if (!z) {
            AILog.d("插入数据==", str);
            arrayList.add(0, str);
            if (arrayList.size() > 9) {
                for (int i3 = 10; i3 < arrayList.size(); i3++) {
                    arrayList.remove(i3);
                }
            }
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                StringBuilder sb = new StringBuilder();
                sb.append("测试参数");
                sb.append(i4);
                AILog.d(sb.toString(), (String) arrayList.get(i4));
            }
            PreferenceUtil.put(Utils.getContext(), str2, new Gson().toJson((Object) arrayList).toString());
        }
    }

    /* access modifiers changed from: private */
    public void initRequest(String str) {
        this.mStarData.clear();
        this.mVideoData.clear();
        this.mNewsData.clear();
        this.request.clear();
        this.content.setVisibility(8);
        this.mLoadErrorLayout.setVisibility(8);
        CommonViewModel.searchTogether(str, "1", this.mSeo, new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                JsonArray jsonArray;
                int i;
                String str = "comm_nums";
                String str2 = "actor";
                String str3 = "seo";
                super.onResponse(call, response);
                if (!SearchResultActivity.this.isDestroy) {
                    try {
                        if (!StringUtils.isEmpty(this.json)) {
                            AILog.d("搜索接口==", this.json);
                            JsonObject jsonDataWithGson = CommonViewModel.getJsonDataWithGson(SearchResultActivity.this, this.json);
                            if (jsonDataWithGson == null) {
                                SearchResultActivity.this.mLoadErrorLayout.setVisibility(0);
                                return;
                            }
                            JsonArray asJsonArray = jsonDataWithGson.getAsJsonArray(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT);
                            if (StringUtils.isJSONArrayNotEmpty(asJsonArray)) {
                                int i2 = 0;
                                while (i2 < asJsonArray.size()) {
                                    JsonObject asJsonObject = asJsonArray.get(i2).getAsJsonObject();
                                    String asString = asJsonObject.get(str3).getAsString();
                                    if (!TextUtils.isEmpty(asString)) {
                                        boolean equals = asString.equals(str2);
                                        String str4 = "photo";
                                        String str5 = "row";
                                        String str6 = "rows";
                                        String str7 = Selection.LIST;
                                        String str8 = "";
                                        if (equals) {
                                            JsonArray asJsonArray2 = asJsonObject.get(str7).getAsJsonObject().get(str6).getAsJsonObject().get(str5).getAsJsonArray();
                                            if (StringUtils.isJSONArrayNotEmpty(asJsonArray2)) {
                                                int i3 = 0;
                                                while (i3 < asJsonArray2.size()) {
                                                    JsonObject asJsonObject2 = asJsonArray2.get(i3).getAsJsonObject();
                                                    List access$300 = SearchResultActivity.this.mStarData;
                                                    StringBuilder sb = new StringBuilder();
                                                    JsonArray jsonArray2 = asJsonArray;
                                                    sb.append(asJsonObject2.get("id").getAsLong());
                                                    sb.append(str8);
                                                    access$300.add(new String4Bean(sb.toString(), asJsonObject2.get("name").getAsString(), asJsonObject2.get(str4).getAsString(), str8));
                                                    i3++;
                                                    asJsonArray = jsonArray2;
                                                }
                                            }
                                        } else {
                                            jsonArray = asJsonArray;
                                            boolean equals2 = asString.equals("video");
                                            String str9 = ConversationControlOp.COUNT;
                                            String str10 = "title";
                                            if (equals2) {
                                                JsonObject asJsonObject3 = asJsonObject.get(str7).getAsJsonObject().get(str6).getAsJsonObject();
                                                JsonArray asJsonArray3 = asJsonObject3.get(str5).getAsJsonArray();
                                                if (StringUtils.isJSONArrayNotEmpty(asJsonArray3)) {
                                                    int i4 = 0;
                                                    while (i4 < asJsonArray3.size()) {
                                                        JsonObject jSONobject = StringUtils.getJSONobject(asJsonArray3, i4);
                                                        List access$400 = SearchResultActivity.this.mVideoData;
                                                        String asString2 = jSONobject.get("tvid").getAsString();
                                                        String asString3 = jSONobject.get(str4).getAsString();
                                                        String asString4 = jSONobject.get(str10).getAsString();
                                                        String asString5 = jSONobject.get(str2).getAsString();
                                                        String asString6 = jSONobject.get("channel_name").getAsString();
                                                        String asString7 = jSONobject.get("year").getAsString();
                                                        String asString8 = jSONobject.get(Param.SCORE).getAsString();
                                                        StringBuilder sb2 = new StringBuilder();
                                                        int i5 = i2;
                                                        JsonArray jsonArray3 = asJsonArray3;
                                                        sb2.append(asJsonObject3.get(str9).getAsLong());
                                                        sb2.append(str8);
                                                        String12Bean string12Bean = new String12Bean(asString2, asString3, asString4, asString5, asString6, asString7, asString8, sb2.toString(), jSONobject.get(str3).getAsString(), jSONobject.get("url").getAsString(), jSONobject.get("tvcountry_name").getAsString(), jSONobject.get("tvclass_name").getAsString());
                                                        access$400.add(string12Bean);
                                                        i4++;
                                                        i2 = i5;
                                                        asJsonArray3 = jsonArray3;
                                                    }
                                                }
                                                i = i2;
                                                i2 = i + 1;
                                                asJsonArray = jsonArray;
                                            } else {
                                                i = i2;
                                                if (asString.equals("news")) {
                                                    JsonObject asJsonObject4 = asJsonObject.get(str7).getAsJsonObject().get(str6).getAsJsonObject();
                                                    JsonArray asJsonArray4 = asJsonObject4.get(str5).getAsJsonArray();
                                                    if (StringUtils.isJSONArrayNotEmpty(asJsonArray4)) {
                                                        for (int i6 = 0; i6 < asJsonArray4.size(); i6++) {
                                                            JsonObject jSONobject2 = StringUtils.getJSONobject(asJsonArray4, i6);
                                                            String str11 = "0";
                                                            if (jSONobject2.has(str)) {
                                                                StringBuilder sb3 = new StringBuilder();
                                                                sb3.append(jSONobject2.get(str).getAsLong());
                                                                sb3.append(str8);
                                                                str11 = sb3.toString();
                                                            }
                                                            String str12 = str11;
                                                            String asString9 = jSONobject2.get("_id").getAsString();
                                                            String asString10 = jSONobject2.get("thumb").getAsString();
                                                            String asString11 = jSONobject2.get(str10).getAsString();
                                                            String asString12 = jSONobject2.get("source").getAsString();
                                                            StringBuilder sb4 = new StringBuilder();
                                                            sb4.append(asJsonObject4.get(str9).getAsLong());
                                                            sb4.append(str8);
                                                            String sb5 = sb4.toString();
                                                            StringBuilder sb6 = new StringBuilder();
                                                            sb6.append(jSONobject2.get("totalcount").getAsLong());
                                                            sb6.append(str8);
                                                            String sb7 = sb6.toString();
                                                            StringBuilder sb8 = new StringBuilder();
                                                            sb8.append(jSONobject2.get("isplay").getAsInt());
                                                            sb8.append(str8);
                                                            String8Bean string8Bean = new String8Bean(asString9, asString10, asString11, asString12, str12, sb5, sb7, sb8.toString());
                                                            SearchResultActivity.this.mNewsData.add(string8Bean);
                                                        }
                                                    }
                                                }
                                                i2 = i + 1;
                                                asJsonArray = jsonArray;
                                            }
                                        }
                                    }
                                    jsonArray = asJsonArray;
                                    i = i2;
                                    i2 = i + 1;
                                    asJsonArray = jsonArray;
                                }
                            }
                            SearchResultActivity.this.parseData();
                        }
                    } catch (Exception e) {
                        SearchResultActivity.this.mLoadErrorLayout.setVisibility(0);
                        e.printStackTrace();
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                ToastUtils.showShort((CharSequence) "网络出现异常");
                SearchResultActivity.this.mLoadErrorLayout.setVisibility(0);
            }
        });
    }

    /* access modifiers changed from: private */
    public void parseData() {
        final int i = DensityUtil.Density60;
        if (this.mStarData.size() != 0) {
            this.mStarRecycleView.setVisibility(0);
            this.mStarTxt.setVisibility(0);
            AnonymousClass4 r0 = new CommonAdapter<String4Bean>(Utils.getContext(), R.layout.item_videostar_circle, this.mStarData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, final String4Bean string4Bean, int i) {
                    viewHolder.setText(R.id.item_videostar_name, string4Bean.getText2());
                    String text3 = string4Bean.getText3();
                    int i2 = i;
                    viewHolder.setCircleImageURLRound(R.id.item_videostar_head, text3, i2, i2);
                    viewHolder.setOnClickListener(R.id.item_videostar_ll, new OnClickListener() {
                        public void onClick(View view) {
                            SearchResultActivity.this.goStarActivity(string4Bean.getText1(), string4Bean.getText2(), string4Bean.getText3(), "star");
                        }
                    });
                }
            };
            this.mStarAdapter = r0;
            RecyclerView recyclerView = this.mStarRecycleView;
            if (recyclerView != null) {
                recyclerView.setLayoutManager(new StaggeredGridLayoutManager(1, 0));
                this.mStarRecycleView.setAdapter(this.mStarAdapter);
            }
            this.content.setVisibility(0);
        } else {
            RecyclerView recyclerView2 = this.mStarRecycleView;
            if (recyclerView2 != null) {
                recyclerView2.setVisibility(8);
            }
            this.mStarTxt.setVisibility(8);
        }
        if (this.mSeo.equals("video")) {
            parseVideoRecycleView(this.mVideoRecycleView, this.mVideoTxt, this.videoMore, this.mVideoMoreText);
            parseNewRecycleView(this.mNewRecycleVIew, this.mNewTxt, this.mNewMore, this.mNewMoreText);
        } else {
            parseVideoRecycleView(this.mNewRecycleVIew, this.mNewTxt, this.mNewMore, this.mNewMoreText);
            parseNewRecycleView(this.mVideoRecycleView, this.mVideoTxt, this.videoMore, this.mVideoMoreText);
        }
        if (this.mStarData.size() <= 0 && this.mNewsData.size() <= 0 && this.mVideoData.size() <= 0) {
            this.mLoadErrorLayout.setVisibility(0);
        }
    }

    private void parseNewRecycleView(RecyclerView recyclerView, TextView textView, LinearLayout linearLayout, TextView textView2) {
        textView.setText(getString(R.string.about_new));
        textView2.setText(getString(R.string.look_more_new));
        if (this.mNewsData.size() > 0) {
            this.content.setVisibility(0);
            if (recyclerView != null) {
                recyclerView.setVisibility(0);
            }
            textView.setVisibility(0);
            this.mNewAdapter = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_news, this.mNewsData) {
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
                            bundle.putString(ProductAction.ACTION_DETAIL, "");
                            SearchResultActivity.this.gotoActivity(bundle, NewsDetailActivity.class);
                        }
                    });
                }
            };
            recyclerView.setLayoutManager(new LinearLayoutManager(this));
            recyclerView.setNestedScrollingEnabled(false);
            recyclerView.setAdapter(this.mNewAdapter);
            if (Integer.valueOf(((String8Bean) this.mNewsData.get(0)).getStr6()).intValue() > 3) {
                linearLayout.setVisibility(0);
                linearLayout.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        Bundle bundle = new Bundle();
                        bundle.putString("title", "相关资讯");
                        bundle.putString("keyword", SearchResultActivity.this.name);
                        bundle.putString("seo", "news");
                        SearchResultActivity.this.gotoActivity(bundle, SearchMoreActivity.class);
                    }
                });
                return;
            }
            linearLayout.setVisibility(8);
            return;
        }
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        textView.setVisibility(8);
        linearLayout.setVisibility(8);
    }

    private void parseVideoRecycleView(RecyclerView recyclerView, TextView textView, LinearLayout linearLayout, TextView textView2) {
        textView.setText(getString(R.string.about_video));
        textView2.setText(getString(R.string.look_more_video));
        if (this.mVideoData.size() > 0) {
            this.content.setVisibility(0);
            if (recyclerView != null) {
                recyclerView.setVisibility(0);
            }
            textView.setVisibility(0);
            this.mVideoAdapter = new CommonAdapter<String12Bean>(Utils.getContext(), R.layout.item_detail, this.mVideoData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, final String12Bean string12Bean, int i) {
                    viewHolder.setText(R.id.item_detail_title, string12Bean.getStr3());
                    StringBuilder sb = new StringBuilder();
                    sb.append(string12Bean.getStr6());
                    String str = "·";
                    sb.append(str);
                    sb.append(string12Bean.getStr5());
                    sb.append(str);
                    sb.append(string12Bean.getStr11());
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
                                SearchResultActivity.this.startActivity(intent);
                                return;
                            }
                            Bundle bundle = new Bundle();
                            bundle.putString("tid", str10);
                            bundle.putString("seo", string12Bean.getStr9());
                            SearchResultActivity.this.gotoActivity(bundle, VideoPlayActivity.class);
                        }
                    });
                }
            };
            if (recyclerView != null) {
                recyclerView.setLayoutManager(new LinearLayoutManager(this));
                recyclerView.setNestedScrollingEnabled(false);
                recyclerView.setAdapter(this.mVideoAdapter);
            }
            if (Integer.valueOf(((String12Bean) this.mVideoData.get(0)).getStr8()).intValue() > 3) {
                linearLayout.setVisibility(0);
                linearLayout.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        Bundle bundle = new Bundle();
                        bundle.putString("title", "相关影视");
                        bundle.putString("keyword", SearchResultActivity.this.name);
                        bundle.putString("seo", "video");
                        SearchResultActivity.this.gotoActivity(bundle, SearchMoreActivity.class);
                    }
                });
                return;
            }
            linearLayout.setVisibility(8);
            return;
        }
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        textView.setVisibility(8);
        linearLayout.setVisibility(8);
    }

    public void goStarActivity(String str, String str2, String str3, String str4) {
        if (!str.equals("0")) {
            Intent intent = new Intent(this, StarActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("name", str2);
            bundle.putString(SocialConstants.PARAM_IMG_URL, str3);
            bundle.putString("id", str);
            bundle.putString("type", str4);
            intent.putExtras(bundle);
            startActivityForResult(intent, 10);
        }
    }

    @OnClick({2131297151, 2131297154, 2131297089})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.request_film_tv) {
            gotoActivity(ForumActivity.class);
        } else if (id == R.id.search_cancel) {
            finish();
        } else if (id == R.id.search_delete) {
            this.searchEdit.setText("");
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mSearchData = null;
    }
}
