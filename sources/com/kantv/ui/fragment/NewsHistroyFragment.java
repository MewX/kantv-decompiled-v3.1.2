package com.kantv.ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.SimpleItemAnimator;
import butterknife.BindView;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.IPluginMessage;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.NewCollectHistroyActivity.IEdit;
import com.kantv.ui.activity.NewsDetailActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.EventBusBean;
import com.kantv.ui.bean.String12Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class NewsHistroyFragment extends BaseFragment implements IEdit {
    public static final String TAG = "NewsHistroyFragment";
    /* access modifiers changed from: private */
    public boolean isDestroy = false;
    private boolean isFirst = true;
    /* access modifiers changed from: private */
    public CommonAdapter<String12Bean> mAdapter;
    /* access modifiers changed from: private */
    public List<String12Bean> mData;
    @BindView(2131296540)
    TextView mEmptyTip;
    @BindView(2131296610)
    XRecyclerView mRecyclerView;
    @BindView(2131297305)
    View mTop_margin;

    private void initCacheData() {
    }

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_news, null);
        return this.mRootView;
    }

    public void initData() {
        if (this.isFirst) {
            this.isFirst = false;
            initView();
            initCacheData();
            initRequest(true, "");
        }
    }

    private void initView() {
        WindowManager windowManager = (WindowManager) getActivity().getSystemService("window");
        final int width = windowManager.getDefaultDisplay().getWidth();
        windowManager.getDefaultDisplay().getHeight();
        this.mData = new ArrayList();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        AnonymousClass1 r2 = new CommonAdapter<String12Bean>(Utils.getContext(), R.layout.item_news_collect, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final String12Bean string12Bean, int i) {
                RelativeLayout relativeLayout = (RelativeLayout) viewHolder.getView(R.id.item_news_rl);
                LayoutParams layoutParams = (LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.width = width;
                relativeLayout.setLayoutParams(layoutParams);
                String str = "1";
                String str2 = "0";
                if (string12Bean != null) {
                    viewHolder.setImageURL3(R.id.item_news_img, string12Bean.getStr2());
                    viewHolder.setText(R.id.item_news_title, string12Bean.getStr3());
                    viewHolder.setText(R.id.item_news_author, string12Bean.getStr4());
                    if (StringUtils.isEmpty(string12Bean.getStr9()) || str2.equals(string12Bean.getStr9())) {
                        viewHolder.setVisible(R.id.newslist_comment_tv, false);
                    } else {
                        viewHolder.setText(R.id.newslist_comment_tv, string12Bean.getStr9());
                        viewHolder.setVisible(R.id.newslist_comment_tv, true);
                    }
                    viewHolder.setText(R.id.news_eye_totalcount, string12Bean.getStr7());
                    if (string12Bean.getStr8() == null || !string12Bean.getStr8().equals(str)) {
                        viewHolder.setVisible(R.id.isPlay_img, false);
                    } else {
                        viewHolder.setVisible(R.id.isPlay_img, true);
                    }
                }
                if (string12Bean.getStr11().equals(str2)) {
                    viewHolder.setVisible(R.id.item_collect_detail_check, false);
                } else if (string12Bean.getStr11().equals(str)) {
                    viewHolder.setVisible(R.id.item_collect_detail_check, true);
                }
                if (string12Bean.getStr12().equals(str2)) {
                    viewHolder.setChecked(R.id.item_collect_detail_check, false);
                } else if (string12Bean.getStr12().equals(str)) {
                    viewHolder.setChecked(R.id.item_collect_detail_check, true);
                }
                viewHolder.setOnCheckedChangeListener(R.id.item_collect_detail_check, new OnCheckedChangeListener() {
                    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        if (z) {
                            string12Bean.setStr12("1");
                        } else {
                            string12Bean.setStr12("0");
                        }
                    }
                });
                viewHolder.setOnClickListener(R.id.item_news_rl, new OnClickListener() {
                    public void onClick(View view) {
                        Bundle bundle = new Bundle();
                        bundle.putString("id", string12Bean.getStr1());
                        NewsHistroyFragment.this.gotoActivity(bundle, NewsDetailActivity.class);
                        KanApplication.getDefaultTracker().send(new EventBuilder().setCategory("资讯").setAction(UserPreference.ACTION1).setLabel(string12Bean.getStr3()).build());
                    }
                });
            }
        };
        this.mAdapter = r2;
        this.mRecyclerView.setAdapter(this.mAdapter);
        ((SimpleItemAnimator) this.mRecyclerView.getItemAnimator()).setSupportsChangeAnimations(false);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                AILog.i(NewsHistroyFragment.TAG, IPluginMessage.onRefresh);
                if (NewsHistroyFragment.this.mData != null) {
                    NewsHistroyFragment.this.mData.clear();
                }
                if (NewsHistroyFragment.this.mAdapter != null) {
                    NewsHistroyFragment.this.mAdapter.notifyDataSetChanged();
                }
                NewsHistroyFragment.this.initRequest(false, "");
            }

            public void onLoadMore() {
                AILog.i(NewsHistroyFragment.TAG, "onLoadMore");
                NewsHistroyFragment.this.initRequest(false, (NewsHistroyFragment.this.mData == null || NewsHistroyFragment.this.mData.size() <= 0) ? "" : ((String12Bean) NewsHistroyFragment.this.mData.get(NewsHistroyFragment.this.mData.size() - 1)).getStr5());
            }
        });
        this.mTop_margin.setVisibility(8);
    }

    public void initFor(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.mData.size(); i2++) {
            String str = "1";
            if (i != 0) {
                String str2 = "0";
                if (i == 1) {
                    ((String12Bean) this.mData.get(i2)).setStr11(str2);
                } else if (i == 3) {
                    ((String12Bean) this.mData.get(i2)).setStr12(str);
                } else if (i == 4) {
                    ((String12Bean) this.mData.get(i2)).setStr12(str2);
                } else if (i == 5 && ((String12Bean) this.mData.get(i2)).getStr12().equals(str)) {
                    arrayList.add(Integer.valueOf(i2));
                }
            } else {
                ((String12Bean) this.mData.get(i2)).setStr11(str);
            }
        }
        CommonAdapter<String12Bean> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
        if (i != 5) {
            return;
        }
        if (arrayList.size() != 0) {
            removeBatch();
        } else {
            ToastUtils.showShort((CharSequence) "请选择您要删除的历史！");
        }
    }

    public void removeBatch() {
        ArrayList arrayList = new ArrayList();
        String str = "";
        String str2 = str;
        int i = 0;
        while (true) {
            String str3 = "1";
            if (i < this.mData.size()) {
                if (((String12Bean) this.mData.get(i)).getStr12().equals(str3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    sb.append(((String12Bean) this.mData.get(i)).getStr1());
                    sb.append(",");
                    str2 = sb.toString();
                    arrayList.add(Integer.valueOf(i));
                }
                i++;
            } else {
                this.request.clear();
                String str4 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
                this.request.put("noncestr", SignConfig.noncestr);
                this.request.put("timestamp", SignConfig.timestamp);
                this.request.put("sbID", SignConfig.sbID);
                this.request.put("sign", SignConfig.sign);
                this.request.put("_token", str4);
                this.request.put("type", str3);
                this.request.put("tvid", str2);
                this.request.put("devicetype", "0");
                this.request.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().deleteHistory(this.request).enqueue(new CommonCallBack(getContext(), false) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!NewsHistroyFragment.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                String str = "";
                                EventBus.getDefault().post(new EventBusBean(NewsHistroyFragment.TAG, "default", str));
                                if (NewsHistroyFragment.this.mData != null) {
                                    NewsHistroyFragment.this.mData.clear();
                                }
                                if (NewsHistroyFragment.this.mAdapter != null) {
                                    NewsHistroyFragment.this.mAdapter.notifyDataSetChanged();
                                }
                                if (NewsHistroyFragment.this.mRecyclerView != null) {
                                    NewsHistroyFragment.this.mRecyclerView.reset();
                                }
                                NewsHistroyFragment.this.initRequest(true, str);
                                ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                            }
                        }
                    }
                });
                return;
            }
        }
    }

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
        Api.getService().doCollect(this.request).enqueue(new CommonCallBack(getContext(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!NewsHistroyFragment.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        if (NewsHistroyFragment.this.mData != null && NewsHistroyFragment.this.mData.size() > i) {
                            NewsHistroyFragment.this.mData.remove(i);
                        }
                        if (NewsHistroyFragment.this.mAdapter != null) {
                            NewsHistroyFragment.this.mAdapter.notifyDataSetChanged();
                        }
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void initRequest(boolean z, String str) {
        this.request.clear();
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("devicetype", "0");
        this.request.put("type", "1");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        this.request.put("lastTime", str);
        Api.getService().history(this.request).enqueue(new CommonCallBack(getContext(), z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                String str;
                String str2 = "totalcount";
                String str3 = "";
                String str4 = "status";
                super.onResponse(call, response);
                if (!NewsHistroyFragment.this.isDestroy) {
                    AILog.i(NewsHistroyFragment.TAG, "refreshComplete");
                    if (NewsHistroyFragment.this.mRecyclerView != null) {
                        NewsHistroyFragment.this.mRecyclerView.refreshComplete();
                        NewsHistroyFragment.this.mRecyclerView.loadMoreComplete();
                    }
                    try {
                        if (!StringUtils.isEmpty(this.json)) {
                            JsonObject asJsonObject = new JsonParser().parse(this.json).getAsJsonObject();
                            if (asJsonObject != null) {
                                if (asJsonObject.get(str4).getAsString().equals(StatusCode.STATUS_OK)) {
                                    JsonObject asJsonObject2 = asJsonObject.getAsJsonObject("data");
                                    if (asJsonObject2 != null) {
                                        JsonArray asJsonArray = asJsonObject2.getAsJsonArray("historyContent");
                                        JsonObject asJsonObject3 = asJsonObject2.getAsJsonObject("newsIDList");
                                        if (StringUtils.isJSONArrayNotEmpty(asJsonArray)) {
                                            for (int i = 0; i < asJsonArray.size(); i++) {
                                                JsonObject jSONobject = StringUtils.getJSONobject(asJsonArray, i);
                                                JsonObject asJsonObject4 = asJsonObject3.get(jSONobject.get("news_id").getAsString()).getAsJsonObject();
                                                String str5 = "256";
                                                try {
                                                    if (!StringUtils.isEmpty(asJsonObject4.get(str2).getAsString())) {
                                                        int asInt = asJsonObject4.get(str2).getAsInt() * 3;
                                                        if (asInt > 9999) {
                                                            StringBuilder sb = new StringBuilder();
                                                            sb.append(asInt / 1000);
                                                            sb.append("K");
                                                            str5 = sb.toString();
                                                        } else {
                                                            str5 = Integer.toString(asInt);
                                                        }
                                                    }
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append(asJsonObject4.get("comm_nums").getAsInt());
                                                    sb2.append(str3);
                                                    str = sb2.toString();
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                    str = str3;
                                                }
                                                String str6 = str5;
                                                List access$000 = NewsHistroyFragment.this.mData;
                                                String12Bean string12Bean = new String12Bean(asJsonObject4.get("_id").getAsString(), asJsonObject4.get("thumb").getAsString(), asJsonObject4.get("title").getAsString(), asJsonObject4.get("source").getAsString(), jSONobject.get("created").getAsString(), asJsonObject4.get("posttime").getAsString(), str6, asJsonObject4.get("isplay").getAsString(), str, "", "0", "0");
                                                access$000.add(string12Bean);
                                            }
                                            if (NewsHistroyFragment.this.mAdapter != null) {
                                                NewsHistroyFragment.this.mAdapter.notifyDataSetChanged();
                                            }
                                        }
                                    } else {
                                        return;
                                    }
                                } else if (asJsonObject.get(str4).getAsString().equals("401")) {
                                    ToastUtils.showShort((CharSequence) "登陆状态已失效，请重新登陆");
                                    KanApplication.clearLogin();
                                    NewsHistroyFragment.this.getActivity().finish();
                                }
                            } else {
                                return;
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    if (NewsHistroyFragment.this.mData == null || NewsHistroyFragment.this.mData.size() == 0) {
                        NewsHistroyFragment.this.mEmptyTip.setText(NewsHistroyFragment.this.getString(R.string.collect_empty));
                        NewsHistroyFragment.this.mEmptyTip.setVisibility(0);
                    } else {
                        NewsHistroyFragment.this.mEmptyTip.setVisibility(8);
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                if (!NewsHistroyFragment.this.isDestroy) {
                    AILog.i(NewsHistroyFragment.TAG, "refreshComplete");
                    if (NewsHistroyFragment.this.mRecyclerView != null) {
                        NewsHistroyFragment.this.mRecyclerView.refreshComplete();
                        NewsHistroyFragment.this.mRecyclerView.loadMoreComplete();
                    }
                    if (NewsHistroyFragment.this.mData == null || NewsHistroyFragment.this.mData.size() == 0) {
                        NewsHistroyFragment.this.mEmptyTip.setText(NewsHistroyFragment.this.getString(R.string.collect_empty));
                        NewsHistroyFragment.this.mEmptyTip.setVisibility(0);
                    } else {
                        NewsHistroyFragment.this.mEmptyTip.setVisibility(8);
                    }
                }
            }
        });
    }

    public void onDestroy() {
        super.onDestroy();
        this.mData = null;
        this.mAdapter = null;
        this.mRecyclerView = null;
        this.isDestroy = true;
    }
}
