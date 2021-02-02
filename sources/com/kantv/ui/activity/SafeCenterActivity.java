package com.kantv.ui.activity;

import android.os.Bundle;
import android.view.View;
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
import com.kantv.ui.utils.PreferenceUtil;
import debug.KanApplication;

public class SafeCenterActivity extends PackageActivity {
    public Bundle b;
    @BindView(2131296403)
    TextView bindEmailTv;
    @BindView(2131296405)
    TextView bindPhoneTv;
    String mail;
    String mobile;
    String mobileCode;
    public String partId;
    @BindView(2131297115)
    LinearLayout safecenter_phone;
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
    TextView titleRightTxt;
    @BindView(2131296483)
    TextView titleTV;
    public String tvId;
    String verMail;
    String verPhone;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_safecenter);
        initBase();
        initStatusBar();
        initTitle();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN16);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("安全中心");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        String str = "";
        this.mobileCode = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.MOBILE_CODE, str);
        this.mobile = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.MOBILE, str);
        this.mail = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.MAIL, str);
        if (!StringUtils.isEmpty(this.mobileCode) && !StringUtils.isEmpty(this.mobile)) {
            StringBuilder sb = new StringBuilder();
            sb.append("+");
            sb.append(this.mobileCode);
            sb.append(" ");
            sb.append(this.mobile.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2"));
            this.verPhone = sb.toString();
            this.bindPhoneTv.setText(this.verPhone);
        }
        if (!StringUtils.isEmpty(this.mail)) {
            this.verMail = this.mail.replaceAll("(\\w?)(\\w+)(\\w)(@\\w+\\.[a-z]+(\\.[a-z]+)?)", "$1****$3$4");
            this.bindEmailTv.setText(this.verMail);
        }
    }

    @OnClick({2131297292, 2131297115, 2131297114})
    public void onClick(View view) {
        String str = "type";
        switch (view.getId()) {
            case R.id.safecenter_email /*2131297114*/:
                if (!StringUtils.isEmpty(this.verMail)) {
                    Bundle bundle = new Bundle();
                    String str2 = UserPreference.MAIL;
                    bundle.putString(str, str2);
                    bundle.putString(str2, this.verMail);
                    gotoActivity(bundle, SafeVerActivity.class);
                    return;
                }
                gotoActivity(BindEmailActivity.class);
                return;
            case R.id.safecenter_phone /*2131297115*/:
                if (!StringUtils.isEmpty(this.verPhone)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(str, "phone");
                    bundle2.putString(UserPreference.MOBILE, this.verPhone);
                    gotoActivity(bundle2, SafeVerActivity.class);
                    return;
                }
                gotoActivity(BindPhoneActivity.class);
                return;
            case R.id.title_left_ll /*2131297292*/:
                finish();
                return;
            default:
                return;
        }
    }
}
