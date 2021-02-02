package com.kantv.ui.fragment;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.avos.avoscloud.Messages.OpType;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.String15Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.interfaces.CallBackUpdateUI;
import com.kantv.ui.utils.StatusCode;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class HotSubFragment extends BaseFragment {
    CallBackUpdateUI callBackUpdateUI = null;
    /* access modifiers changed from: private */
    public String hotListBGUrl;
    /* access modifiers changed from: private */
    public boolean isFirst = true;
    /* access modifiers changed from: private */
    public CommonAdapter<String15Bean> mAdapter;
    /* access modifiers changed from: private */
    public List<String15Bean> mData = new ArrayList();
    @BindView(2131296477)
    RecyclerView mRecyclerView;
    /* access modifiers changed from: private */
    public String title;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.common_recycler, null);
        return this.mRootView;
    }

    public void initData() {
        String string = getArguments().getString("seo");
        this.title = getArguments().getString("title");
        if (this.isFirst) {
            initView();
            initRequest(string);
        }
        CallBackUpdateUI callBackUpdateUI2 = this.callBackUpdateUI;
        if (callBackUpdateUI2 != null) {
            callBackUpdateUI2.updateUi(this.hotListBGUrl);
        }
    }

    private void initRequest(String str) {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("pagesize", "30");
        this.request.put("seo", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().getTop(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                JSONArray jSONArray;
                super.onResponse(call, response);
                JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                    int i = 0;
                    HotSubFragment.this.isFirst = false;
                    JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                    if (jsonObject2 != null) {
                        JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("paihang"));
                        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                            while (i < jsonArray.length()) {
                                JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                if (jSONobject == null || HotSubFragment.this.mData == null) {
                                    jSONArray = jsonArray;
                                } else {
                                    List access$100 = HotSubFragment.this.mData;
                                    String optString = jSONobject.optString("_id");
                                    String optString2 = jSONobject.optString("title");
                                    String optString3 = jSONobject.optString(Param.SCORE);
                                    String optString4 = jSONobject.optString("url");
                                    String optString5 = jSONobject.optString("director");
                                    String optString6 = jSONobject.optString("actor");
                                    String optString7 = jSONobject.optString("photo");
                                    String optString8 = jSONobject.optString("year");
                                    String optString9 = jSONobject.optString("channel_name");
                                    String optString10 = jSONobject.optString("tvclass_name");
                                    String optString11 = jSONobject.optString("seo");
                                    jSONArray = jsonArray;
                                    String15Bean string15Bean = r5;
                                    String15Bean string15Bean2 = new String15Bean(optString, optString2, optString3, optString4, optString5, optString6, optString7, optString8, optString9, optString10, optString11, jSONobject.optString("totalcount"), jSONobject.optString("descript"), "", "");
                                    access$100.add(string15Bean);
                                }
                                i++;
                                jsonArray = jSONArray;
                            }
                            if (HotSubFragment.this.mAdapter != null) {
                                HotSubFragment.this.mAdapter.notifyDataSetChanged();
                            }
                        }
                    }
                }
            }
        });
    }

    private void initView() {
        this.mAdapter = new CommonAdapter<String15Bean>(Utils.getContext(), R.layout.item_hotsub, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final String15Bean string15Bean, int i) {
                viewHolder.setText(R.id.item_hot_title, string15Bean.getStr2());
                viewHolder.setText(R.id.item_hotabout, string15Bean.getStr13());
                String str3 = string15Bean.getStr3();
                if (str3.length() == 3) {
                    viewHolder.setText(R.id.item_hot_number2, str3.substring(2));
                    viewHolder.setText(R.id.item_hot_number1, str3.substring(0, 2));
                } else if (str3.length() == 1) {
                    viewHolder.setText(R.id.item_hot_number2, ".0");
                    viewHolder.setText(R.id.item_hot_number1, str3);
                }
                viewHolder.setImageURL(R.id.item_hot_movie, string15Bean.getStr7());
                StringBuilder sb = new StringBuilder();
                sb.append(string15Bean.getStr12());
                sb.append("次播放");
                viewHolder.setText(R.id.item_heat, sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(string15Bean.getStr8());
                sb2.append("|");
                sb2.append(string15Bean.getStr10());
                viewHolder.setText(R.id.item_hot_tag, sb2.toString());
                viewHolder.setText(R.id.item_hot_actor, ((String15Bean) HotSubFragment.this.mData.get(i)).getStr6());
                if (i == 0) {
                    viewHolder.getView(R.id.hot_rank).setVisibility(0);
                    viewHolder.getView(R.id.hot_rank_other).setVisibility(8);
                    viewHolder.getView(R.id.hotsub_line).setVisibility(4);
                    viewHolder.setTextColorRes(R.id.item_hot_title, R.color.white);
                    viewHolder.setTextColorRes(R.id.item_hotabout, R.color.white);
                    viewHolder.setTextColorRes(R.id.item_heat, R.color.hot_gray);
                    viewHolder.setTextColorRes(R.id.item_hot_actor, R.color.hot_gray);
                    viewHolder.setPosterWidth(R.id.item_poster_rl, DisplayUtil.dipToPix(Utils.getContext(), TsExtractor.TS_STREAM_TYPE_HDMV_DTS), DisplayUtil.dipToPix(Utils.getContext(), OpType.shutuped_VALUE));
                    ((TextView) viewHolder.getView(R.id.item_hot_title)).setTextSize(18.0f);
                    if (HotSubFragment.this.callBackUpdateUI != null) {
                        HotSubFragment.this.hotListBGUrl = string15Bean.getStr7();
                        HotSubFragment.this.callBackUpdateUI.updateUi(HotSubFragment.this.hotListBGUrl);
                    }
                } else if (1 == i) {
                    viewHolder.getView(R.id.hot_rank).setVisibility(8);
                    viewHolder.getView(R.id.hot_rank_other).setVisibility(0);
                    viewHolder.getView(R.id.hot_rank_other).setBackgroundResource(R.drawable.top2);
                } else if (2 == i) {
                    viewHolder.getView(R.id.hot_rank).setVisibility(8);
                    viewHolder.getView(R.id.hot_rank_other).setVisibility(0);
                    viewHolder.getView(R.id.hot_rank_other).setBackgroundResource(R.drawable.top3);
                } else {
                    viewHolder.getView(R.id.hot_rank).setVisibility(8);
                    viewHolder.getView(R.id.hot_rank_other).setVisibility(8);
                    viewHolder.getView(R.id.hotsub_line).setVisibility(0);
                    viewHolder.setTextColorRes(R.id.item_hot_title, R.color.cursor_color);
                    viewHolder.setTextColorRes(R.id.item_hotabout, R.color.cursor_color);
                    viewHolder.setTextColorRes(R.id.item_heat, R.color.hotsub_color);
                    viewHolder.setTextColorRes(R.id.item_hot_actor, R.color.hotsub_color);
                    viewHolder.setPosterWidth(R.id.item_poster_rl, DisplayUtil.dipToPix(Utils.getContext(), 88), DisplayUtil.dipToPix(Utils.getContext(), 126));
                    ((TextView) viewHolder.getView(R.id.item_hot_title)).setTextSize(16.0f);
                }
                viewHolder.setOnClickListener(R.id.item_hotsub_rl, new OnClickListener() {
                    public void onClick(View view) {
                        String str4 = string15Bean.getStr4();
                        if (str4.substring(0, 4).equals("http")) {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(str4));
                            HotSubFragment.this.getActivity().startActivity(intent);
                        } else {
                            Bundle bundle = new Bundle();
                            bundle.putString("tid", str4);
                            bundle.putString("seo", string15Bean.getStr11());
                            HotSubFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                        }
                        KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE11).setAction(UserPreference.ACTION1).setLabel(HotSubFragment.this.title).build());
                    }
                });
            }
        };
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mRecyclerView.setAdapter(this.mAdapter);
    }

    public void setHotBGCallback(CallBackUpdateUI callBackUpdateUI2) {
        this.callBackUpdateUI = callBackUpdateUI2;
    }

    public void onDestroy() {
        super.onDestroy();
        this.mRecyclerView = null;
        this.mAdapter = null;
        this.mData = null;
    }
}
