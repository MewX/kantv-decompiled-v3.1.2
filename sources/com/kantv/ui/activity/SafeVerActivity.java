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
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class SafeVerActivity extends PackageActivity {
    @BindView(2131297116)
    TextView safeVerNum;
    @BindView(2131297180)
    TextView sendVerBtn;
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
    String type;
    String verMailNum;
    String verPhoneNum;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_safever);
        initBase();
        initStatusBar();
        initTitle();
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("安全验证");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        if (getIntent().getExtras() != null) {
            Bundle extras = getIntent().getExtras();
            this.type = extras.getString("type");
            if (this.type.equals("phone")) {
                this.verPhoneNum = extras.getString(UserPreference.MOBILE);
                this.safeVerNum.setText(this.verPhoneNum);
                this.sendVerBtn.setText("发送验证码");
                return;
            }
            String str = this.type;
            String str2 = UserPreference.MAIL;
            if (str.equals(str2)) {
                this.verMailNum = extras.getString(str2);
                this.safeVerNum.setText(this.verMailNum);
                this.sendVerBtn.setText("发送验证邮箱");
            }
        }
    }

    @OnClick({2131297292, 2131297180})
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.send_verify) {
            if (id == R.id.title_left_ll) {
                finish();
            }
        } else if (this.type.equals("phone")) {
            verPhone();
        } else if (this.type.equals(UserPreference.MAIL)) {
            verMail();
        }
    }

    private void verPhone() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("devicetype", "0");
        this.request.put("type", "change");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        Api.getService().getCode(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!SafeVerActivity.this.isDestroy) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("phone", SafeVerActivity.this.verPhoneNum);
                        SafeVerActivity.this.gotoActivity(bundle, SafeVerInputActivity.class);
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    private void verMail() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("type", "change");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        Api.getService().sendEmail(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!SafeVerActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            Bundle bundle = new Bundle();
                            bundle.putString("type", "emailbind");
                            bundle.putString("email", SafeVerActivity.this.verMailNum);
                            SafeVerActivity.this.gotoActivity(bundle, SendEmailResultActivity.class);
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }
}
