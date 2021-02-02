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

public class EditNicknameActivity extends PackageActivity {
    @BindView(2131296483)
    TextView mTitle;
    @BindView(2131296877)
    EditText nickName;
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
        setContentView((int) R.layout.login_edit_nickname);
        initBase();
        initStatusBar();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN14);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.mTitle.setText("修改昵称");
        this.mTitle.setTextSize(18.0f);
        this.mTitle.setTextColor(getResources().getColor(R.color.white));
        this.titleRightImg.setVisibility(8);
        this.titleRightTv.setVisibility(0);
        this.titleRightTv.setText("保存");
        this.titleRightTv.setTextColor(getResources().getColor(R.color.hot_gray));
    }

    @OnClick({2131297292, 2131297328, 2131297107})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.rm_nickname) {
            this.nickName.setText("");
        } else if (id == R.id.title_left_ll) {
            finish();
        } else if (id == R.id.tv_right) {
            checkNickname();
        }
    }

    private void checkNickname() {
        if (!StringUtils.isEmpty(this.nickName.getText().toString())) {
            if (checkIllegalChar(this.nickName.getText().toString())) {
                Intent intent = new Intent();
                intent.putExtra("nick_name", this.nickName.getText().toString().trim());
                setResult(-1, intent);
                finish();
            } else {
                ToastUtils.showShort((CharSequence) "输入了非法字符，请重新输入");
            }
            return;
        }
        ToastUtils.showShort((CharSequence) "请输入昵称");
    }

    private boolean checkIllegalChar(String str) {
        return StringUtils.stringFilter(str).equals(str);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
