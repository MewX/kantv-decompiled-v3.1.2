package com.kantv.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.StateBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class AreaActivity extends PackageActivity {
    private static final String TAG = "AreaActivity";
    @BindView(2131297295)
    ImageView deleteImg;
    @BindView(2131297177)
    RecyclerView mSelectStateRV;
    /* access modifiers changed from: private */
    public CommonAdapter<StateBean> mStateAdapter;
    /* access modifiers changed from: private */
    public List<StateBean> mStateData = new ArrayList();
    @BindView(2131296483)
    TextView mTitle;
    private String[] state = {"+61", "+64", "+679"};
    private int[] stateImg = {R.drawable.australia, R.drawable.new_zealand, R.drawable.fiji};
    private String[] stateName = {"澳大利亚", "新西兰", "斐济"};

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        overridePendingTransition(R.anim.activity_open, 0);
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_area);
        initBase();
        initRequest();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN10);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initRequest() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        AILog.d(this.request);
        Api.getService().getCountry(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!AreaActivity.this.isDestroy) {
                    AILog.d(AreaActivity.TAG, this.json);
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                String str = "data";
                                if (!StringUtils.isEmpty(jsonObject.optString(str))) {
                                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject.optString(str));
                                    if (jsonArray != null) {
                                        for (int i = 0; i < jsonArray.length(); i++) {
                                            List access$100 = AreaActivity.this.mStateData;
                                            String optString = StringUtils.getJSONobject(jsonArray, i).optString("photo");
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("+");
                                            sb.append(StringUtils.getJSONobject(jsonArray, i).optString(UserPreference.AREA_CODE));
                                            access$100.add(new StateBean(optString, sb.toString(), StringUtils.getJSONobject(jsonArray, i).optString("name_cn"), StringUtils.getJSONobject(jsonArray, i).optString("iso_code")));
                                        }
                                    } else {
                                        return;
                                    }
                                } else {
                                    AreaActivity.this.initDefaultData();
                                }
                            } else {
                                AreaActivity.this.initDefaultData();
                            }
                            if (AreaActivity.this.mStateAdapter != null) {
                                AreaActivity.this.mStateAdapter.notifyDataSetChanged();
                            }
                        }
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void initDefaultData() {
        int i = 0;
        while (true) {
            int[] iArr = this.stateImg;
            if (i < iArr.length) {
                this.mStateData.add(new StateBean(iArr[i], this.state[i], this.stateName[i]));
                i++;
            } else {
                return;
            }
        }
    }

    private void initView() {
        this.mTitle.setText("选择国家");
        this.mSelectStateRV.setLayoutManager(new LinearLayoutManager(this));
        this.mStateAdapter = new CommonAdapter<StateBean>(Utils.getContext(), R.layout.item_state, this.mStateData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final StateBean stateBean, int i) {
                if (!StringUtils.isEmpty(stateBean.getImgUrl())) {
                    viewHolder.setImageURL(R.id.item_state_img, stateBean.getImgUrl());
                } else {
                    viewHolder.setImageDrawable(R.id.item_state_img, AreaActivity.this.getResources().getDrawable(stateBean.getImg()));
                }
                viewHolder.setText(R.id.item_state_name, stateBean.getName());
                viewHolder.setText(R.id.item_selectstate_area, stateBean.getArea());
                viewHolder.setOnClickListener(R.id.item_state_ll, new OnClickListener() {
                    public void onClick(View view) {
                        if (!StringUtils.isEmpty(stateBean.getIsoCode())) {
                            PreferenceUtil.put(Utils.getContext(), "iso_code", stateBean.getIsoCode());
                        }
                        PreferenceUtil.put(Utils.getContext(), "area_country", stateBean.getArea());
                        Intent intent = new Intent();
                        intent.putExtra(UserPreference.AREA, stateBean.getArea());
                        AreaActivity.this.setResult(10, intent);
                        AreaActivity.this.finish();
                    }
                });
            }
        };
        this.mSelectStateRV.setAdapter(this.mStateAdapter);
    }

    @OnClick({2131297294})
    public void onClick(View view) {
        if (view.getId() == R.id.title_right_ll) {
            finish();
        }
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.activity_close);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mSelectStateRV = null;
        this.mStateData = null;
        this.mStateAdapter = null;
        this.stateImg = null;
        this.stateName = null;
        this.state = null;
    }
}
