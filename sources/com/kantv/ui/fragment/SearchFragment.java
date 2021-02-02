package com.kantv.ui.fragment;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.String12Bean;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.StatusCode;
import debug.KanApplication;
import io.fabric.sdk.android.services.common.IdManager;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class SearchFragment extends BaseFragment {
    /* access modifiers changed from: private */
    public boolean isFast = true;
    /* access modifiers changed from: private */
    public CommonAdapter<String12Bean> mAdapter;
    /* access modifiers changed from: private */
    public List<String12Bean> mData = new ArrayList();
    @BindView(2131296611)
    XRecyclerView mRecyclerView;
    /* access modifiers changed from: private */
    public int page = 1;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_search, null);
        return this.mRootView;
    }

    public void initData() {
        if (this.isFast) {
            initView();
            initRequest(false);
        }
    }

    private void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mAdapter = new CommonAdapter<String12Bean>(Utils.getContext(), R.layout.item_detail, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final String12Bean string12Bean, int i) {
                viewHolder.setText(R.id.item_detail_title, string12Bean.getStr3());
                viewHolder.setText(R.id.item_detail_tag, string12Bean.getStr6());
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
                            SearchFragment.this.startActivity(intent);
                            return;
                        }
                        Bundle bundle = new Bundle();
                        bundle.putString("tid", str10);
                        bundle.putString("seo", string12Bean.getStr9());
                        SearchFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                    }
                });
            }
        };
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                SearchFragment.this.mData.clear();
                if (SearchFragment.this.mAdapter != null) {
                    SearchFragment.this.mAdapter.notifyDataSetChanged();
                }
                SearchFragment.this.page = 1;
                SearchFragment.this.initRequest(false);
            }

            public void onLoadMore() {
                SearchFragment.this.page = SearchFragment.this.page + 1;
                SearchFragment.this.initRequest(false);
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
        if (getArguments() != null) {
            this.request.put("keywords", getArguments().getString("name"));
        }
        this.request.put("page", String.valueOf(this.page));
        if (getArguments() != null) {
            String str = "seo";
            this.request.put(str, getArguments().getString(str));
        }
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().search(this.request).enqueue(new CommonCallBack(getActivity(), z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                String str;
                super.onResponse(call, response);
                if (!SearchFragment.this.isonDestroy) {
                    if (SearchFragment.this.mRecyclerView != null) {
                        SearchFragment.this.mRecyclerView.refreshComplete();
                    }
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            SearchFragment.this.isFast = false;
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("rows"));
                                if (jsonObject3 != null) {
                                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject3.optString("row"));
                                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                        String str2 = "";
                                        String str3 = str2;
                                        String str4 = str3;
                                        int i = 0;
                                        while (i < jsonArray.length()) {
                                            JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                            if (jSONobject != null) {
                                                JSONArray jsonArray2 = StringUtils.toJsonArray(jSONobject.optString("actor"));
                                                String str5 = "/";
                                                String str6 = "name";
                                                if (StringUtils.isJSONArrayNotEmpty(jsonArray2)) {
                                                    str = str3;
                                                    for (int i2 = 0; i2 < jsonArray2.length(); i2++) {
                                                        JSONObject jSONobject2 = StringUtils.getJSONobject(jsonArray2, i2);
                                                        if (jSONobject2 != null) {
                                                            try {
                                                                StringBuilder sb = new StringBuilder();
                                                                sb.append(jSONobject2.getString(str6));
                                                                sb.append(str5);
                                                                sb.append(str);
                                                                str = sb.toString();
                                                            } catch (JSONException e) {
                                                                e.printStackTrace();
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    str = str3;
                                                }
                                                JSONArray jsonArray3 = StringUtils.toJsonArray(jSONobject.optString("director"));
                                                if (StringUtils.isJSONArrayNotEmpty(jsonArray3)) {
                                                    String str7 = str4;
                                                    for (int i3 = 0; i3 < jsonArray3.length(); i3++) {
                                                        JSONObject jSONobject3 = StringUtils.getJSONobject(jsonArray3, i3);
                                                        if (jSONobject3 != null) {
                                                            try {
                                                                StringBuilder sb2 = new StringBuilder();
                                                                sb2.append(jSONobject3.getString(str6));
                                                                sb2.append(str5);
                                                                sb2.append(str7);
                                                                str7 = sb2.toString();
                                                            } catch (JSONException e2) {
                                                                e2.printStackTrace();
                                                            }
                                                        }
                                                    }
                                                    str4 = str7;
                                                }
                                                List access$000 = SearchFragment.this.mData;
                                                String12Bean string12Bean = new String12Bean(jSONobject.optString("id"), jSONobject.optString("photo"), jSONobject.optString("title"), str, str4, jSONobject.optString("year"), jSONobject.optString(Param.SCORE), jSONobject.optString("totalcount"), jSONobject.optString("seo"), jSONobject.optString("url"), jSONobject.optString(str2), jSONobject.optString("tvclass_name"));
                                                access$000.add(string12Bean);
                                                i++;
                                                str3 = str;
                                            } else {
                                                return;
                                            }
                                        }
                                        if (SearchFragment.this.mAdapter != null) {
                                            SearchFragment.this.mAdapter.notifyDataSetChanged();
                                        }
                                    } else {
                                        SearchFragment.this.page;
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
