package com.kantv.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;

public class MeAboutActivity extends PackageActivity {
    @BindView(2131296263)
    EditText aboutEdit;
    @BindView(2131296483)
    TextView mTitle;
    @BindView(2131297293)
    ImageView titleLeftImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131296482)
    RelativeLayout titleRelateLayout;
    @BindView(2131297295)
    ImageView titleRightImg;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131297328)
    TextView titleRightTv;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_aboutme);
        initBase();
        initStatusBar();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN20);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.mTitle.setText("编辑简介");
        this.mTitle.setTextSize(18.0f);
        this.mTitle.setTextColor(getResources().getColor(R.color.white));
        this.titleRightImg.setVisibility(8);
        this.titleRightTv.setVisibility(0);
        this.titleRightTv.setText("保存");
        this.titleRightTv.setTextColor(getResources().getColor(R.color.hot_gray));
    }

    @OnClick({2131297292, 2131297328})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.title_left_ll) {
            finish();
        } else if (id == R.id.tv_right) {
            updateMeAbout();
        }
    }

    private void updateMeAbout() {
        if (!StringUtils.isEmpty(this.aboutEdit.getText().toString())) {
            Intent intent = new Intent();
            intent.putExtra("about", this.aboutEdit.getText().toString().trim());
            setResult(-1, intent);
            finish();
            return;
        }
        ToastUtils.showShort((CharSequence) "简介内容不能为空~");
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
