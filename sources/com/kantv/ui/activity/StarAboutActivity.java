package com.kantv.ui.activity;

import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.utils.StringUtils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.GlideUtils;
import debug.KanApplication;

public class StarAboutActivity extends PackageActivity {
    private Bundle b;
    private String imgUrl;
    @BindView(2131296483)
    TextView mTitle;
    private String name;
    private String starAbout;
    @BindView(2131297223)
    TextView starAboutTv;
    @BindView(2131297227)
    ImageView starDetailImg;
    private String starMsg;
    @BindView(2131297224)
    TextView starMsgTv;
    @BindView(2131297225)
    TextView starNameTv;
    private String starPlace;
    @BindView(2131297226)
    TextView starPlaceTv;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_star_detail);
        initBase();
        initStatusBar();
        if (getIntent().getExtras() != null) {
            this.b = getIntent().getExtras();
            this.name = this.b.getString("name");
            this.starAbout = this.b.getString("star_about");
            this.starPlace = this.b.getString("star_place");
            this.starMsg = this.b.getString("star_msg");
            this.imgUrl = this.b.getString("star_bg");
            GlideUtils.loadImageBlur(this.imgUrl, this.starDetailImg);
        }
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN30);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(8);
        this.mTitle.setVisibility(8);
        this.starNameTv.setText(this.name);
        this.starAboutTv.setText(this.starAbout);
        this.starPlaceTv.setText(this.starPlace);
        this.starMsgTv.setText(StringUtils.stripHtml(this.starMsg));
        this.starMsgTv.setMovementMethod(ScrollingMovementMethod.getInstance());
    }

    @OnClick({2131297294})
    public void onClick(View view) {
        if (view.getId() == R.id.title_right_ll) {
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
