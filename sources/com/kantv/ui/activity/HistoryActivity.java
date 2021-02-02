package com.kantv.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
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
import com.kantv.ui.adapter.CallbackInterface;
import com.kantv.ui.adapter.HistoryAdapter;
import com.kantv.ui.bean.String15Bean;
import com.kantv.ui.config.Definition.UserPreference;
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

public class HistoryActivity extends PackageActivity {
    @BindView(2131296365)
    TextView allWatchChoiceTv;
    /* access modifiers changed from: private */
    public String dateLabel = "0";
    private int isAll = 0;
    /* access modifiers changed from: private */
    public HistoryAdapter mAdapter;
    /* access modifiers changed from: private */
    public List<String15Bean> mData = new ArrayList();
    @BindView(2131297404)
    XRecyclerView mRecyclerView;
    /* access modifiers changed from: private */
    public int mType = 0;
    /* access modifiers changed from: private */
    public int page = 1;
    private PopupWindow popupWindow;
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
    @BindView(2131297400)
    LinearLayout watchEditLayout;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_history);
        initBase();
        initStatusBar();
        initView();
        initRequest(true);
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN17);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        initTitle();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mAdapter = new HistoryAdapter(this.mData, new CallbackInterface() {
            public void onClick(View view, int i) {
                Bundle bundle = new Bundle();
                String str5 = ((String15Bean) HistoryActivity.this.mData.get(i)).getStr5();
                if (str5.substring(0, 4).equals("http")) {
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str5));
                    HistoryActivity.this.startActivity(intent);
                    return;
                }
                bundle.putString("tid", str5);
                bundle.putString("seo", ((String15Bean) HistoryActivity.this.mData.get(i)).getStr4());
                HistoryActivity.this.gotoActivity(bundle, VideoPlayActivity.class);
            }
        });
        this.mAdapter.setDeleteListener(new CallbackInterface() {
            public void onClick(View view, int i) {
                HistoryActivity historyActivity = HistoryActivity.this;
                historyActivity.RemoveHisory(((String15Bean) historyActivity.mData.get(i)).getStr13(), i);
            }
        });
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                HistoryActivity.this.page = 1;
                if (HistoryActivity.this.mAdapter != null) {
                    HistoryActivity.this.mAdapter.notifyDataSetChanged();
                }
                HistoryActivity.this.dateLabel = "0";
                HistoryActivity.this.initRequest(false);
            }

            public void onLoadMore() {
                HistoryActivity.this.page = HistoryActivity.this.page + 1;
                HistoryActivity.this.initRequest(false);
            }
        });
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("观看记录");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        this.titleRightTv.setVisibility(0);
        this.titleRightTv.setTextSize(16.0f);
        this.titleRightTv.setTextColor(getResources().getColor(R.color.watch_history_tv));
        this.titleRightTv.setText("编辑");
        this.titleRightTv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (HistoryActivity.this.mType == 0) {
                    HistoryActivity.this.mType = 1;
                    HistoryActivity.this.titleRightTv.setText("取消");
                    HistoryActivity.this.watchEditLayout.setVisibility(0);
                    HistoryActivity.this.initFor(0);
                    return;
                }
                HistoryActivity.this.mType = 0;
                HistoryActivity.this.titleRightTv.setText("编辑");
                HistoryActivity.this.watchEditLayout.setVisibility(8);
                HistoryActivity.this.initFor(1);
            }
        });
        this.titleLeftLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                HistoryActivity.this.finish();
            }
        });
    }

    @OnClick({2131296365, 2131297399})
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.all_watch_choice) {
            if (id == R.id.watch_delete) {
                initFor(5);
            }
        } else if (this.isAll == 0) {
            this.isAll = 1;
            this.allWatchChoiceTv.setText("取消");
            initFor(3);
        } else {
            this.isAll = 0;
            this.allWatchChoiceTv.setText("全选");
            initFor(4);
        }
    }

    /* access modifiers changed from: private */
    public void initFor(int i) {
        this.page = 1;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.mData.size(); i2++) {
            String str = "1";
            if (((String15Bean) this.mData.get(i2)).getStr1().equals(str)) {
                if (i != 0) {
                    String str2 = "0";
                    if (i == 1) {
                        ((String15Bean) this.mData.get(i2)).setStr11(str2);
                    } else if (i == 3) {
                        ((String15Bean) this.mData.get(i2)).setStr12(str);
                    } else if (i == 4) {
                        ((String15Bean) this.mData.get(i2)).setStr12(str2);
                    } else if (i == 5 && ((String15Bean) this.mData.get(i2)).getStr12().equals(str)) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                } else {
                    ((String15Bean) this.mData.get(i2)).setStr11(str);
                }
            }
        }
        HistoryAdapter historyAdapter = this.mAdapter;
        if (historyAdapter != null) {
            historyAdapter.notifyDataSetChanged();
        }
        if (i != 5) {
            return;
        }
        if (arrayList.size() != 0) {
            removeBatch();
        } else {
            ToastUtils.showShort((CharSequence) "请选择您要删除的历史记录！");
        }
    }

    private void removeBatch() {
        this.request.clear();
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
        for (int i = 0; i < this.mData.size(); i++) {
            AILog.d("批量删除测试参数", ((String15Bean) this.mData.get(i)).getStr12());
            if (((String15Bean) this.mData.get(i)).getStr12().equals("1")) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(",");
                sb.append(((String15Bean) this.mData.get(i)).getStr13());
                str = sb.toString();
            }
        }
        this.request.put("_token", str2);
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        String str3 = "0";
        this.request.put("type", str3);
        this.request.put("tvid", str);
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        AILog.d("删除历史记录传参", this.request.toString());
        Api.getService().deleteHistory(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!HistoryActivity.this.isDestroy) {
                    AILog.d("批量删除历史记录", this.json);
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            HistoryActivity.this.mType = 0;
                            HistoryActivity.this.titleRightTv.setText("编辑");
                            HistoryActivity.this.watchEditLayout.setVisibility(8);
                            if (HistoryActivity.this.mData != null) {
                                HistoryActivity.this.mData.clear();
                            }
                            if (HistoryActivity.this.mAdapter != null) {
                                HistoryActivity.this.mAdapter.notifyDataSetChanged();
                            }
                            HistoryActivity.this.initRequest(true);
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void RemoveHisory(String str, final int i) {
        this.request.clear();
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        String str2 = "0";
        this.request.put("type", str2);
        this.request.put("tvid", str);
        this.request.put("devicetype", str2);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        AILog.d("删除历史记录传参", this.request.toString());
        Api.getService().deleteHistory(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!HistoryActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    AILog.d("删除历史记录", this.json);
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        String str = "status";
                        if (jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                            if (HistoryActivity.this.mData != null) {
                                HistoryActivity.this.mData.remove(i);
                            }
                            if (HistoryActivity.this.mAdapter != null) {
                                HistoryActivity.this.mAdapter.notifyDataSetChanged();
                            }
                            ToastUtils.showShort((CharSequence) "删除成功！");
                        } else if (jsonObject.optString(str).equals("401")) {
                            KanApplication.clearLogin();
                            HistoryActivity.this.finish();
                            ToastUtils.showShort((CharSequence) "您已经退出了登录状态，请重新登录！");
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
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str2);
        String str3 = "0";
        this.request.put("type", str3);
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(this.page);
        sb.append(str);
        map.put("page", sb.toString());
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().history(this.request).enqueue(new CommonCallBack(this, z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!HistoryActivity.this.isDestroy) {
                    if (HistoryActivity.this.mRecyclerView != null) {
                        HistoryActivity.this.mRecyclerView.refreshComplete();
                    }
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            String str = "status";
                            if (jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                if (jsonObject2 != null) {
                                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("historyContent"));
                                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                        boolean z = true;
                                        if (HistoryActivity.this.mData != null && HistoryActivity.this.page == 1) {
                                            HistoryActivity.this.mData.clear();
                                        }
                                        int i = 0;
                                        while (i < jsonArray.length()) {
                                            JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                            String str2 = "dateLabel";
                                            if (!HistoryActivity.this.dateLabel.equals(jSONobject.optString(str2))) {
                                                HistoryActivity.this.dateLabel = jSONobject.optString(str2);
                                                String optString = jSONobject.optString(str2);
                                                char c = 65535;
                                                switch (optString.hashCode()) {
                                                    case 49:
                                                        if (optString.equals("1")) {
                                                            c = 0;
                                                            break;
                                                        }
                                                        break;
                                                    case 50:
                                                        if (optString.equals("2")) {
                                                            c = 1;
                                                            break;
                                                        }
                                                        break;
                                                    case 51:
                                                        if (optString.equals("3")) {
                                                            c = 2;
                                                            break;
                                                        }
                                                        break;
                                                    case 52:
                                                        if (optString.equals("4")) {
                                                            c = 3;
                                                            break;
                                                        }
                                                        break;
                                                }
                                                if (c == 0) {
                                                    List access$000 = HistoryActivity.this.mData;
                                                    String15Bean string15Bean = new String15Bean("0", "今天", "", "", "", "", "", "", "", "", "", "", "", "", "");
                                                    access$000.add(string15Bean);
                                                } else if (c == z) {
                                                    List access$0002 = HistoryActivity.this.mData;
                                                    String15Bean string15Bean2 = new String15Bean("0", "昨天", "", "", "", "", "", "", "", "", "", "", "", "", "");
                                                    access$0002.add(string15Bean2);
                                                } else if (c == 2) {
                                                    List access$0003 = HistoryActivity.this.mData;
                                                    String15Bean string15Bean3 = r6;
                                                    String15Bean string15Bean4 = new String15Bean("0", "本周", "", "", "", "", "", "", "", "", "", "", "", "", "");
                                                    access$0003.add(string15Bean3);
                                                } else if (c == 3) {
                                                    List access$0004 = HistoryActivity.this.mData;
                                                    String15Bean string15Bean5 = r7;
                                                    String15Bean string15Bean6 = new String15Bean("0", "更早", "", "", "", "", "", "", "", "", "", "", "", "", "");
                                                    access$0004.add(string15Bean5);
                                                }
                                            }
                                            List access$0005 = HistoryActivity.this.mData;
                                            String15Bean string15Bean7 = new String15Bean("1", jSONobject.optString("title"), jSONobject.optString("see"), jSONobject.optString("seo"), jSONobject.optString("url"), jSONobject.optString("photo"), jSONobject.optString("descript"), jSONobject.optString("totalcount"), jSONobject.optString(Param.SCORE), jSONobject.optString("msg"), "0", "0", jSONobject.optString("tvid"), jSONobject.optString("part_id"), jSONobject.optString("videoTag"));
                                            access$0005.add(string15Bean7);
                                            i++;
                                            z = true;
                                        }
                                        if (HistoryActivity.this.mAdapter != null) {
                                            HistoryActivity.this.mAdapter.notifyDataSetChanged();
                                        }
                                    } else {
                                        HistoryActivity.this.page;
                                    }
                                }
                            } else if (jsonObject.optString(str).equals("401")) {
                                ToastUtils.showShort((CharSequence) "登陆状态已失效，请重新登陆");
                                KanApplication.clearLogin();
                                HistoryActivity.this.finish();
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
