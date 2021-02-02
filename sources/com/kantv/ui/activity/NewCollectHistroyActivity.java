package com.kantv.ui.activity;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.OnPageChangeListener;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.lib.indicator.IndicatorViewPager;
import com.kantv.lib.indicator.IndicatorViewPager.IndicatorFragmentPagerAdapter;
import com.kantv.lib.indicator.ScrollIndicatorView;
import com.kantv.lib.indicator.transition.OnTransitionTextListener;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.bean.EventBusBean;
import com.kantv.ui.bean.String15Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.fragment.NewsCollectFragment;
import com.kantv.ui.fragment.NewsHistroyFragment;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

public class NewCollectHistroyActivity extends PackageActivity {
    public static final String DEFAULT = "default";
    public static final String EDIT = "edit";
    @BindView(2131296361)
    TextView allCollectChoice;
    @BindView(2131296467)
    LinearLayout collectEditLayout;
    private int isAll = 0;
    private CommonAdapter<String15Bean> mAdapter;
    /* access modifiers changed from: private */
    public IEdit mCurrentFragment;
    private List<String15Bean> mData;
    /* access modifiers changed from: private */
    public List<Fragment> mFragmentData;
    private IndicatorFragmentPagerAdapter mFragmentPagerAdapter;
    private IndicatorViewPager mIndicatorViewPager;
    private int mJumpIndex = 0;
    @BindView(2131297135)
    ScrollIndicatorView mScrollIndicatorView;
    /* access modifiers changed from: private */
    public List<String> mTitles = new ArrayList();
    /* access modifiers changed from: private */
    public int mType = 0;
    @BindView(2131297392)
    ViewPager mViewPager;
    private int page = 1;
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

    public interface IEdit {
        void initFor(int i);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_new_collect_histroy);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.mJumpIndex = extras.getInt("jumpIndex", 0);
        }
        initBase();
        initStatusBar();
        initView();
        initTopNavi();
        EventBus.getDefault().register(this);
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN36);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void EventBusAccept(EventBusBean eventBusBean) {
        String str = "编辑";
        String str2 = "default";
        char c = 65535;
        if (eventBusBean.getClassname().equals(NewsCollectFragment.TAG)) {
            String type = eventBusBean.getType();
            if (type.hashCode() == 1544803905 && type.equals(str2)) {
                c = 0;
            }
            if (c == 0) {
                this.mType = 0;
                this.titleRightTv.setText(str);
                this.collectEditLayout.setVisibility(8);
            }
        } else if (eventBusBean.getClassname().equals(NewsHistroyFragment.TAG)) {
            String type2 = eventBusBean.getType();
            if (type2.hashCode() == 1544803905 && type2.equals(str2)) {
                c = 0;
            }
            if (c == 0) {
                this.mType = 0;
                this.titleRightTv.setText(str);
                this.collectEditLayout.setVisibility(8);
            }
        }
    }

    private void initView() {
        initTitle();
        this.mData = new ArrayList();
    }

    private void initTopNavi() {
        this.mFragmentData = new ArrayList();
        NewsCollectFragment newsCollectFragment = new NewsCollectFragment();
        NewsHistroyFragment newsHistroyFragment = new NewsHistroyFragment();
        this.mFragmentData.add(newsCollectFragment);
        this.mFragmentData.add(newsHistroyFragment);
        this.mCurrentFragment = newsCollectFragment;
        this.mTitles.add(getString(R.string.news_collect));
        this.mTitles.add(getString(R.string.news_histroy));
        this.mFragmentPagerAdapter = new IndicatorFragmentPagerAdapter(getSupportFragmentManager()) {
            public int getItemPosition(Object obj) {
                return -1;
            }

            public int getCount() {
                return NewCollectHistroyActivity.this.mFragmentData.size();
            }

            public View getViewForTab(int i, View view, ViewGroup viewGroup) {
                if (view == null) {
                    view = LayoutInflater.from(Utils.getContext()).inflate(R.layout.tab_top, viewGroup, false);
                }
                TextView textView = (TextView) view;
                textView.setText((CharSequence) NewCollectHistroyActivity.this.mTitles.get(i));
                textView.setWidth(((int) (((float) getTextWidth(textView)) * 1.2f)) + DisplayUtil.dipToPix(Utils.getContext(), 10));
                return view;
            }

            public Fragment getFragmentForPage(int i) {
                return (Fragment) NewCollectHistroyActivity.this.mFragmentData.get(i);
            }

            private int getTextWidth(TextView textView) {
                if (textView == null) {
                    return 0;
                }
                Rect rect = new Rect();
                String charSequence = textView.getText().toString();
                textView.getPaint().getTextBounds(charSequence, 0, charSequence.length(), rect);
                return rect.left + rect.width();
            }
        };
        this.mScrollIndicatorView.setOnTransitionListener(new OnTransitionTextListener().setColor(-1, getResources().getColor(R.color.hot_gray)).setSize(20.400002f, 17.0f));
        this.mViewPager.addOnPageChangeListener(new OnPageChangeListener() {
            public void onPageScrollStateChanged(int i) {
            }

            public void onPageScrolled(int i, float f, int i2) {
            }

            public void onPageSelected(int i) {
                NewCollectHistroyActivity newCollectHistroyActivity = NewCollectHistroyActivity.this;
                newCollectHistroyActivity.mCurrentFragment = (IEdit) newCollectHistroyActivity.mFragmentData.get(i);
            }
        });
        this.mIndicatorViewPager = new IndicatorViewPager(this.mScrollIndicatorView, this.mViewPager);
        this.mIndicatorViewPager.setAdapter(this.mFragmentPagerAdapter);
        this.mIndicatorViewPager.setCurrentItem(this.mJumpIndex, false);
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleRightImg.setVisibility(8);
        this.titleRightTv.setVisibility(0);
        this.titleRightTv.setTextSize(16.0f);
        this.titleRightTv.setTextColor(getResources().getColor(R.color.watch_history_tv));
        this.titleRightTv.setText("编辑");
        this.titleRightTv.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (NewCollectHistroyActivity.this.mCurrentFragment instanceof NewsCollectFragment) {
                    NewCollectHistroyActivity.this.allCollectChoice.setVisibility(8);
                } else {
                    NewCollectHistroyActivity.this.allCollectChoice.setVisibility(0);
                }
                if (NewCollectHistroyActivity.this.mType == 0) {
                    NewCollectHistroyActivity.this.mType = 1;
                    NewCollectHistroyActivity.this.titleRightTv.setText("取消");
                    NewCollectHistroyActivity.this.collectEditLayout.setVisibility(0);
                    NewCollectHistroyActivity.this.mCurrentFragment.initFor(0);
                    return;
                }
                NewCollectHistroyActivity.this.mType = 0;
                NewCollectHistroyActivity.this.titleRightTv.setText("编辑");
                NewCollectHistroyActivity.this.collectEditLayout.setVisibility(8);
                NewCollectHistroyActivity.this.mCurrentFragment.initFor(1);
            }
        });
        this.titleLeftLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                NewCollectHistroyActivity.this.finish();
            }
        });
    }

    @OnClick({2131296361, 2131296466})
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.all_collect_choice) {
            if (id == R.id.collect_delete) {
                this.mCurrentFragment.initFor(5);
            }
        } else if (this.isAll == 0) {
            this.isAll = 1;
            this.allCollectChoice.setText("取消");
            this.mCurrentFragment.initFor(3);
        } else {
            this.isAll = 0;
            this.allCollectChoice.setText("全选");
            this.mCurrentFragment.initFor(4);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        this.mData = null;
        this.mAdapter = null;
    }
}
