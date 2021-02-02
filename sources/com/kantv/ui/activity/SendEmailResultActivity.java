package com.kantv.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.exoplayer2.C;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class SendEmailResultActivity extends PackageActivity {
    @BindView(2131296483)
    TextView mTitle;
    String regPwd;
    @BindView(2131297090)
    LinearLayout resendEmail;
    @BindView(2131297091)
    TextView resendTv;
    @BindView(2131297182)
    TextView sendEmailResultTv;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297295)
    ImageView titleRightImg;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131297328)
    TextView titleRightTv;
    String type;
    String userEmail;
    @BindView(2131297351)
    RelativeLayout verLoginTipLayout;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.sendemail_result);
        initBase();
        initView();
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(0);
        this.mTitle.setVisibility(4);
        this.titleRightImg.setVisibility(8);
        this.titleRightTv.setText("登录");
        this.titleRightTv.setVisibility(0);
        if (getIntent().getExtras() != null) {
            Bundle extras = getIntent().getExtras();
            this.userEmail = extras.getString("email");
            this.regPwd = extras.getString("password");
            this.type = extras.getString("type");
            if (StringUtils.isEmpty(this.type)) {
                return;
            }
            if (!StringUtils.isEmpty(this.userEmail) && this.type.equals("resetpwd")) {
                this.sendEmailResultTv.setText(String.format(getString(R.string.sendemail_resetpwd_tip), new Object[]{this.userEmail}));
            } else if (!StringUtils.isEmpty(this.userEmail) && !StringUtils.isEmpty(this.regPwd) && this.type.equals("emailreg")) {
                this.sendEmailResultTv.setText(String.format(getString(R.string.sendemail_reg_tip), new Object[]{this.userEmail}));
            } else if (!StringUtils.isEmpty(this.userEmail) && this.type.equals("emailbind")) {
                this.sendEmailResultTv.setText(String.format(getString(R.string.sendemail_reg_tip), new Object[]{this.userEmail}));
                this.verLoginTipLayout.setVisibility(8);
                this.titleRightTv.setVisibility(8);
            }
        }
    }

    @OnClick({2131297292, 2131297294, 2131297090, 2131297183})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.resend_email /*2131297090*/:
                if (!StringUtils.isEmpty(this.type)) {
                    String str = "已发送";
                    if (!StringUtils.isEmpty(this.userEmail) && this.type.equals("resetpwd")) {
                        resetPwdSendEmail();
                        this.resendTv.setText(str);
                        this.resendEmail.setEnabled(false);
                        return;
                    } else if (!StringUtils.isEmpty(this.userEmail) && !StringUtils.isEmpty(this.regPwd) && this.type.equals("emailreg")) {
                        regAgainSendEmail();
                        this.resendTv.setText(str);
                        this.resendEmail.setEnabled(false);
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            case R.id.sendemail_verify /*2131297183*/:
                if (!StringUtils.isEmpty(this.userEmail)) {
                    String checkMailDomain = checkMailDomain(this.userEmail);
                    if (!StringUtils.isEmpty(checkMailDomain)) {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setData(Uri.parse(checkMailDomain));
                        intent.setFlags(C.ENCODING_PCM_MU_LAW);
                        Utils.getContext().startActivity(intent);
                        return;
                    }
                    return;
                }
                return;
            case R.id.title_left_ll /*2131297292*/:
                finish();
                return;
            case R.id.title_right_ll /*2131297294*/:
                gotoActivity(AccountLoginActivity.class);
                return;
            default:
                return;
        }
    }

    private void resetPwdSendEmail() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put(UserPreference.MAIL, this.userEmail);
        this.request.put("type", "resetpwd");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().sendEmail(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!SendEmailResultActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        ToastUtils.showShort((CharSequence) "发送成功，请注意查收");
                    }
                }
            }
        });
    }

    private void regAgainSendEmail() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put(UserPreference.MAIL, this.userEmail);
        this.request.put("type", "reg");
        this.request.put("password", this.regPwd);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().sendEmail(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!SendEmailResultActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        ToastUtils.showShort((CharSequence) "发送成功，请注意查收");
                    }
                }
            }
        });
    }

    private String checkMailDomain(String str) {
        if (str.contains("163")) {
            return "http://mail.163.com";
        }
        if (str.contains("126")) {
            return "http://mail.126.com";
        }
        if (str.contains("qq")) {
            return "http://mail.qq.com";
        }
        if (str.contains("google")) {
            return "http://mail.google.com";
        }
        if (str.contains("sohu")) {
            return "http://mail.sohu.com";
        }
        if (str.contains("tom")) {
            return "http://mail.tom.com";
        }
        if (str.contains("sina")) {
            return "http://mail.sina.com.cn";
        }
        if (str.contains("yahoo")) {
            return "http://login.yahoo.com";
        }
        if (str.contains("yeah")) {
            return "http://www.yeah.net";
        }
        if (str.contains("21cn")) {
            return "http://mail.21cn.com";
        }
        if (str.contains("hotmail")) {
            return "http://www.hotmail.com";
        }
        if (str.contains("outlook")) {
            return "http://www.outlook.com";
        }
        if (str.contains("188")) {
            return "http://www.188.com";
        }
        if (str.contains("10086")) {
            return "http://mail.10086.cn";
        }
        if (str.contains("189")) {
            return "http://webmail15.189.cn/webmail";
        }
        if (str.contains("aol")) {
            return "https://login.aol.com";
        }
        if (str.contains("live")) {
            return "https://login.live.com";
        }
        if (str.contains("icloud")) {
            return "https://www.icloud.com";
        }
        return str.contains("proton") ? "https://mail.protonmail.com/login" : "";
    }
}
