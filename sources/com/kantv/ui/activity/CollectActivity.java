package com.kantv.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
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
import com.kantv.ui.bean.String15Bean;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class CollectActivity extends PackageActivity {
    @BindView(2131296361)
    TextView allCollectChoice;
    @BindView(2131296467)
    LinearLayout collectEditLayout;
    private int isAll = 0;
    /* access modifiers changed from: private */
    public CommonAdapter<String15Bean> mAdapter;
    /* access modifiers changed from: private */
    public List<String15Bean> mData;
    @BindView(2131296468)
    XRecyclerView mRecyclerView;
    /* access modifiers changed from: private */
    public int mType = 0;
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
    @BindView(2131297328)
    TextView titleRightTv;
    @BindView(2131296483)
    TextView titleTV;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_collect);
        initBase();
        initStatusBar();
        initView();
        initRequest(true);
    }

    private void initView() {
        initTitle();
        this.mData = new ArrayList();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mAdapter = new CommonAdapter<String15Bean>(Utils.getContext(), R.layout.item_collect, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final String15Bean string15Bean, final int i) {
                viewHolder.setImageURL(R.id.item_collect_detail_movie, string15Bean.getStr2());
                viewHolder.setText(R.id.item_collect_detail_title, string15Bean.getStr3());
                StringBuilder sb = new StringBuilder();
                sb.append(string15Bean.getStr4());
                sb.append(" | ");
                sb.append(string15Bean.getStr5());
                viewHolder.setText(R.id.item_collect_detail_tag, sb.toString());
                String str = "0";
                String str2 = "1";
                if (string15Bean.getStr12().equals(str)) {
                    viewHolder.setVisible(R.id.item_collect_detail_check, false);
                } else if (string15Bean.getStr12().equals(str2)) {
                    viewHolder.setVisible(R.id.item_collect_detail_check, true);
                }
                if (string15Bean.getStr13().equals(str)) {
                    viewHolder.setChecked(R.id.item_collect_detail_check, false);
                } else if (string15Bean.getStr13().equals(str2)) {
                    viewHolder.setChecked(R.id.item_collect_detail_check, true);
                }
                viewHolder.setOnClickListener(R.id.item_collect_delete, new OnClickListener() {
                    public void onClick(View view) {
                        CollectActivity.this.removeCollect(string15Bean.getStr1(), i - 1);
                    }
                });
                viewHolder.setOnCheckedChangeListener(R.id.item_collect_detail_check, new OnCheckedChangeListener() {
                    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        if (z) {
                            string15Bean.setStr13("1");
                        } else {
                            string15Bean.setStr13("0");
                        }
                    }
                });
                viewHolder.setOnClickListener(R.id.item_collect_detail_rl, new OnClickListener() {
                    public void onClick(View view) {
                        Bundle bundle = new Bundle();
                        bundle.putString("tid", string15Bean.getStr1());
                        bundle.putString("seo", string15Bean.getStr7());
                        CollectActivity.this.gotoActivity(bundle, VideoPlayActivity.class);
                    }
                });
                StringBuilder sb2 = new StringBuilder();
                sb2.append("导演: ");
                sb2.append(string15Bean.getStr9());
                sb2.append(" | 演员: ");
                sb2.append(string15Bean.getStr10());
                viewHolder.setText(R.id.item_collect_detail_actor, sb2.toString());
            }
        };
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                CollectActivity.this.page = 1;
                if (CollectActivity.this.mData != null) {
                    CollectActivity.this.mData.clear();
                }
                if (CollectActivity.this.mAdapter != null) {
                    CollectActivity.this.mAdapter.notifyDataSetChanged();
                }
                CollectActivity.this.initRequest(false);
            }

            public void onLoadMore() {
                CollectActivity.this.page = CollectActivity.this.page + 1;
                CollectActivity.this.initRequest(false);
            }
        });
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("我的收藏");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        this.titleRightTv.setVisibility(0);
        this.titleRightTv.setTextSize(16.0f);
        this.titleRightTv.setTextColor(getResources().getColor(R.color.watch_history_tv));
        this.titleRightTv.setText("编辑");
        this.titleRightTv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (CollectActivity.this.mType == 0) {
                    CollectActivity.this.mType = 1;
                    CollectActivity.this.titleRightTv.setText("取消");
                    CollectActivity.this.collectEditLayout.setVisibility(0);
                    CollectActivity.this.initFor(0);
                    return;
                }
                CollectActivity.this.mType = 0;
                CollectActivity.this.titleRightTv.setText("编辑");
                CollectActivity.this.collectEditLayout.setVisibility(8);
                CollectActivity.this.initFor(1);
            }
        });
        this.titleLeftLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                CollectActivity.this.finish();
            }
        });
    }

    @OnClick({2131296361, 2131296466})
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.all_collect_choice) {
            if (id == R.id.collect_delete) {
                initFor(5);
            }
        } else if (this.isAll == 0) {
            this.isAll = 1;
            this.allCollectChoice.setText("取消");
            initFor(3);
        } else {
            this.isAll = 0;
            this.allCollectChoice.setText("全选");
            initFor(4);
        }
    }

    /* access modifiers changed from: private */
    public void initFor(int i) {
        this.page = 1;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.mData.size(); i2++) {
            String str = "1";
            if (i != 0) {
                String str2 = "0";
                if (i == 1) {
                    ((String15Bean) this.mData.get(i2)).setStr12(str2);
                } else if (i == 3) {
                    ((String15Bean) this.mData.get(i2)).setStr13(str);
                } else if (i == 4) {
                    ((String15Bean) this.mData.get(i2)).setStr13(str2);
                } else if (i == 5 && ((String15Bean) this.mData.get(i2)).getStr13().equals(str)) {
                    arrayList.add(Integer.valueOf(i2));
                }
            } else {
                ((String15Bean) this.mData.get(i2)).setStr12(str);
            }
        }
        CommonAdapter<String15Bean> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
        if (i != 5) {
            return;
        }
        if (arrayList.size() != 0) {
            removeBatch();
        } else {
            ToastUtils.showShort((CharSequence) "请选择您要删除的收藏！");
        }
    }

    private void removeBatch() {
        ArrayList arrayList = new ArrayList();
        String str = "";
        String str2 = str;
        for (int i = 0; i < this.mData.size(); i++) {
            if (((String15Bean) this.mData.get(i)).getStr13().equals("1")) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(((String15Bean) this.mData.get(i)).getStr1());
                sb.append(",");
                str2 = sb.toString();
                arrayList.add(Integer.valueOf(i));
            }
        }
        this.request.clear();
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str3);
        this.request.put("type", "cannel");
        this.request.put("tvid", str2);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().doCollect(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!CollectActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        CollectActivity.this.mType = 0;
                        CollectActivity.this.titleRightTv.setText("编辑");
                        CollectActivity.this.collectEditLayout.setVisibility(8);
                        if (CollectActivity.this.mData != null) {
                            CollectActivity.this.mData.clear();
                        }
                        if (CollectActivity.this.mAdapter != null) {
                            CollectActivity.this.mAdapter.notifyDataSetChanged();
                        }
                        CollectActivity.this.initRequest(false);
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void removeCollect(String str, final int i) {
        this.request.clear();
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("type", "cannel");
        this.request.put("tvid", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().doCollect(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!CollectActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        if (CollectActivity.this.mData != null && CollectActivity.this.mData.size() > i) {
                            CollectActivity.this.mData.remove(i);
                        }
                        if (CollectActivity.this.mAdapter != null) {
                            CollectActivity.this.mAdapter.notifyDataSetChanged();
                        }
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void initRequest(boolean z) {
        this.request.clear();
        String str = "";
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", str));
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(this.page);
        sb.append(str);
        map.put("page", sb.toString());
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().Collect(this.request).enqueue(new CommonCallBack(this, z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!CollectActivity.this.isDestroy) {
                    if (CollectActivity.this.mRecyclerView != null) {
                        CollectActivity.this.mRecyclerView.refreshComplete();
                    }
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            String str = "status";
                            if (jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                if (jsonObject2 != null) {
                                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("collect"));
                                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                        int i = 0;
                                        while (i < jsonArray.length()) {
                                            JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                            List access$200 = CollectActivity.this.mData;
                                            JSONArray jSONArray = jsonArray;
                                            String15Bean string15Bean = r5;
                                            String15Bean string15Bean2 = new String15Bean(jSONobject.optString("_id"), jSONobject.optString("photo"), jSONobject.optString("title"), jSONobject.optString("year"), jSONobject.optString("tvcountry"), jSONobject.optString(Param.SCORE), jSONobject.optString("seo"), jSONobject.optString("totalcount"), jSONobject.optString("director"), jSONobject.optString("actor"), jSONobject.optString("is_update"), "0", "0", "", "");
                                            access$200.add(string15Bean);
                                            i++;
                                            jsonArray = jSONArray;
                                        }
                                        if (CollectActivity.this.mAdapter != null) {
                                            CollectActivity.this.mAdapter.notifyDataSetChanged();
                                        }
                                    } else {
                                        CollectActivity.this.page;
                                    }
                                }
                            } else if (jsonObject.optString(str).equals("401")) {
                                ToastUtils.showShort((CharSequence) "登陆状态已失效，请重新登陆");
                                KanApplication.clearLogin();
                                CollectActivity.this.finish();
                            }
                        }
                    }
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mRecyclerView = null;
        this.mData = null;
        this.mAdapter = null;
    }
}
