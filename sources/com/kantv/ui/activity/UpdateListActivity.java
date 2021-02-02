package com.kantv.ui.activity;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.bean.String2Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.fragment.UpdateSubFragment;
import com.kantv.ui.interfaces.CallBackUpdateUI;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.view.TabPageIndicator;
import com.kantv.ui.view.TabPageIndicator.IndicatorMode;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class UpdateListActivity extends PackageActivity implements CallBackUpdateUI {
    private FragmentPagerAdapter fragmentPagerAdapter;
    @BindView(2131296658)
    ImageView hotListBg;
    AppBarLayout mAppBarLayout;
    CollapsingToolbarLayout mCollapsingToolbarLayout;
    public List<String2Bean> mData = new ArrayList();
    /* access modifiers changed from: private */
    public List<Fragment> mFragmentData;
    private String mPosition;
    @BindView(2131297255)
    TabPageIndicator mTabLayout;
    private String mType;
    @BindView(2131297395)
    public ViewPager mViewPager;
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
    Toolbar toolbar;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_hot_video);
        initBase();
        initStatusBar();
        initTitle();
        initRequest();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN18);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initTitle() {
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("更新榜");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleRightImg.setImageResource(R.drawable.share);
        this.mCollapsingToolbarLayout = (CollapsingToolbarLayout) findViewById(R.id.collapsing_toolbar_layout);
        CollapsingToolbarLayout collapsingToolbarLayout = this.mCollapsingToolbarLayout;
        if (collapsingToolbarLayout != null) {
            collapsingToolbarLayout.setContentScrimResource(R.color.tab_top_bg);
        }
    }

    private void initRequest() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("pagesize", "30");
        this.request.put("seo", "movie");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().getNew(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                UpdateListActivity.this.initAnalysis(this.json);
            }
        });
    }

    /* access modifiers changed from: private */
    public void initAnalysis(String str) {
        if (!this.isDestroy && !StringUtils.isEmpty(str)) {
            JSONObject jsonObject = StringUtils.toJsonObject(str);
            if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                if (jsonObject2 != null) {
                    JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("nav"));
                    if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                        for (int i = 0; i < jsonArray.length(); i++) {
                            JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                            this.mData.add(new String2Bean(jSONobject.optString("name"), jSONobject.optString("seo")));
                        }
                    }
                    initTab();
                }
            }
        }
    }

    private void initTab() {
        this.mFragmentData = new ArrayList();
        for (int i = 0; i < this.mData.size(); i++) {
            UpdateSubFragment updateSubFragment = new UpdateSubFragment();
            Bundle bundle = new Bundle();
            bundle.putString("seo", ((String2Bean) this.mData.get(i)).getText2());
            bundle.putString("title", ((String2Bean) this.mData.get(i)).getText1());
            updateSubFragment.setArguments(bundle);
            updateSubFragment.setHotBGCallback(this);
            this.mFragmentData.add(updateSubFragment);
        }
        this.fragmentPagerAdapter = new FragmentPagerAdapter(getSupportFragmentManager()) {
            public int getCount() {
                return UpdateListActivity.this.mFragmentData.size();
            }

            public Fragment getItem(int i) {
                return (Fragment) UpdateListActivity.this.mFragmentData.get(i);
            }

            public CharSequence getPageTitle(int i) {
                return ((String2Bean) UpdateListActivity.this.mData.get(i)).getText1();
            }
        };
        this.mViewPager.setAdapter(this.fragmentPagerAdapter);
        this.mTabLayout.setViewPager(this.mViewPager);
        this.mTabLayout.setIndicatorMode(IndicatorMode.MODE_NOWEIGHT_NOEXPAND_SAME);
        this.mTabLayout.setDividerColor(Color.parseColor("#00000000"));
        this.mTabLayout.setDividerPadding(DisplayUtil.dipToPix(Utils.getContext(), 10));
        this.mTabLayout.setIndicatorColor(getResources().getColor(R.color.tab_top_bg));
        this.mTabLayout.setIndicatorHeight(0);
        this.mTabLayout.setTextColorSelected(getResources().getColor(R.color.white));
        this.mTabLayout.setTextColor(getResources().getColor(R.color.hot_gray));
        this.mTabLayout.setTextSize(DisplayUtil.spToPix(Utils.getContext(), 17.0f));
    }

    @OnClick({2131297292, 2131297294})
    public void onClick(View view) {
        if (view.getId() == R.id.title_left_ll) {
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mViewPager = null;
        this.mTabLayout = null;
        this.fragmentPagerAdapter = null;
        this.mFragmentData = null;
        this.mType = null;
        this.mPosition = null;
        this.mData = null;
    }

    public void updateUi(String str) {
        GlideUtils.loadImageBlur(str, this.hotListBg);
    }
}
