package com.kantv.ui.activity;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.imkan.tv.R;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.fragment.MsgReciverFragment;
import com.kantv.ui.view.TabPageIndicator;
import com.kantv.ui.view.TabPageIndicator.IndicatorMode;
import java.util.ArrayList;
import java.util.List;

public class ReceiveMsgActivity extends PackageActivity {
    private FragmentPagerAdapter fragmentPagerAdapter;
    /* access modifiers changed from: private */
    public List<Fragment> mFragmentData = new ArrayList();
    @BindView(2131297255)
    TabPageIndicator mTabLayout;
    @BindView(2131296960)
    ViewPager mViewPager;
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

    private void initRequest() {
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_mymsg);
        initBase();
        initStatusBar();
        initView();
    }

    private void initView() {
        initTitle();
        initTab();
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("我收到的评论");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        this.titleLeftLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ReceiveMsgActivity.this.finish();
            }
        });
    }

    private void initTab() {
        if (this.mFragmentData.size() != 0) {
            this.mFragmentData.clear();
        }
        MsgReciverFragment msgReciverFragment = new MsgReciverFragment();
        Bundle bundle = new Bundle();
        String str = "type";
        bundle.putInt(str, 0);
        msgReciverFragment.setArguments(bundle);
        MsgReciverFragment msgReciverFragment2 = new MsgReciverFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putInt(str, 1);
        msgReciverFragment2.setArguments(bundle2);
        this.mFragmentData.add(msgReciverFragment);
        this.mFragmentData.add(msgReciverFragment2);
        this.fragmentPagerAdapter = new FragmentPagerAdapter(getSupportFragmentManager()) {
            private final String[] titles = {UserPreference.ANALYZE13, "资讯"};

            public int getCount() {
                if (ReceiveMsgActivity.this.mFragmentData != null) {
                    return ReceiveMsgActivity.this.mFragmentData.size();
                }
                return 0;
            }

            public Fragment getItem(int i) {
                if (ReceiveMsgActivity.this.mFragmentData != null) {
                    return (Fragment) ReceiveMsgActivity.this.mFragmentData.get(i);
                }
                return null;
            }

            public CharSequence getPageTitle(int i) {
                return this.titles[i];
            }
        };
        this.mViewPager.setAdapter(this.fragmentPagerAdapter);
        this.mTabLayout.setViewPager(this.mViewPager);
        this.mTabLayout.setIndicatorMode(IndicatorMode.MODE_WEIGHT_NOEXPAND_NOSAME);
        this.mTabLayout.setDividerColor(Color.parseColor("#00000000"));
        this.mTabLayout.setDividerPadding(DisplayUtil.dipToPix(Utils.getContext(), 10));
        this.mTabLayout.setIndicatorColor(getResources().getColor(R.color.tab_top_bg));
        this.mTabLayout.setTextColorSelected(getResources().getColor(R.color.tab_top_bg));
        this.mTabLayout.setTextColor(getResources().getColor(R.color.cursor_color));
        this.mTabLayout.setTextSize(DisplayUtil.spToPix(Utils.getContext(), 16.0f));
    }
}
