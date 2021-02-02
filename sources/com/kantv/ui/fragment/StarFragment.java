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
import com.kantv.common.base.BaseFragment;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.ui.activity.StarActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.String12Bean;
import io.fabric.sdk.android.services.common.IdManager;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class StarFragment extends BaseFragment {
    private boolean farst = true;
    private StarActivity mActivity;
    private CommonAdapter<String12Bean> mAdapter;
    private List<String12Bean> mData = new ArrayList();
    @BindView(2131297233)
    XRecyclerView mRecyclerView;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_star, null);
        return this.mRootView;
    }

    public void initData() {
        if (this.farst) {
            String str = "data";
            if (!StringUtils.isEmpty(getArguments().getString(str))) {
                InItView(getArguments().getString(str));
            }
        }
    }

    private void InItView(String str) {
        this.farst = false;
        this.mActivity = (StarActivity) getActivity();
        JSONArray jsonArray = StringUtils.toJsonArray(str);
        for (int i = 0; i < jsonArray.length(); i++) {
            JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
            List<String12Bean> list = this.mData;
            String12Bean string12Bean = r6;
            String12Bean string12Bean2 = new String12Bean(jSONobject.optString("id"), jSONobject.optString("photo"), jSONobject.optString("title"), jSONobject.optString("actor"), jSONobject.optString("director"), jSONobject.optString("year"), jSONobject.optString(Param.SCORE), jSONobject.optString("totalcount"), jSONobject.optString("seo"), jSONobject.optString("url"), jSONobject.optString(""), jSONobject.optString("tvclass_name"));
            list.add(string12Bean);
        }
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mAdapter = new CommonAdapter<String12Bean>(Utils.getContext(), R.layout.item_detail, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final String12Bean string12Bean, int i) {
                viewHolder.setText(R.id.item_detail_title, string12Bean.getStr3());
                viewHolder.setText(R.id.item_detail_tag, string12Bean.getStr6());
                viewHolder.setText(R.id.item_detail_actor, string12Bean.getStr4());
                viewHolder.setImageURL(R.id.item_detail_movie, string12Bean.getStr2());
                viewHolder.setText(R.id.item_tv_class, string12Bean.getStr12());
                viewHolder.setText(R.id.item_detail_score, new DecimalFormat(IdManager.DEFAULT_VERSION_NAME).format(Double.valueOf(Double.parseDouble(string12Bean.getStr7()))));
                viewHolder.setOnClickListener(R.id.item_detail_rl, new OnClickListener() {
                    public void onClick(View view) {
                        String str10 = string12Bean.getStr10();
                        if (str10.substring(0, 4).equals("http")) {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(str10));
                            StarFragment.this.startActivity(intent);
                            return;
                        }
                        Bundle bundle = new Bundle();
                        bundle.putString("tid", str10);
                        bundle.putString("seo", string12Bean.getStr9());
                        StarFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                    }
                });
            }
        };
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setPullRefreshEnabled(false);
    }

    public void onDestroy() {
        super.onDestroy();
        this.mRecyclerView = null;
        this.mData = null;
        this.mAdapter = null;
        this.mActivity = null;
    }
}
