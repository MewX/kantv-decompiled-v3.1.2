package com.kantv.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;
import java.lang.ref.WeakReference;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class ResetPwdActivity extends PackageActivity {
    @BindView(2131296303)
    EditText accountEmail;
    @BindView(2131296539)
    LinearLayout emailResetPwdLayout;
    private int mCount = 60;
    /* access modifiers changed from: private */
    public Handler mHandler = new MyHandler(this);
    @BindView(2131296483)
    TextView mTitle;
    @BindView(2131297045)
    LinearLayout phoneResetPwdLayout;
    @BindView(2131297092)
    TextView resetArea;
    @BindView(2131297093)
    TextView resetBtn;
    @BindView(2131297094)
    TextView resetEmailPwd;
    @BindView(2131297096)
    EditText resetPassword;
    @BindView(2131297095)
    EditText resetPhone;
    @BindView(2131297101)
    TextView resetPwdLoginType;
    @BindView(2131297097)
    CheckBox resetPwdSafe;
    @BindView(2131297100)
    EditText resetVercode;
    @BindView(2131297098)
    ImageView rmEmailImg;
    @BindView(2131297099)
    ImageView rmPhoneImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131297349)
    TextView vercodeTip;

    private static class MyHandler extends Handler {
        private final WeakReference<ResetPwdActivity> mActivity;

        public MyHandler(ResetPwdActivity resetPwdActivity) {
            this.mActivity = new WeakReference<>(resetPwdActivity);
        }

        public void handleMessage(Message message) {
            if (this.mActivity.get() != null) {
                ((ResetPwdActivity) this.mActivity.get()).todo();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.login_resetpwd);
        initBase();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN27);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(0);
        this.mTitle.setText("重设密码");
        this.titleRightLayout.setVisibility(8);
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "area_country", str);
        if (!StringUtils.isEmpty(str2)) {
            this.resetArea.setText(str2);
        }
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), "ACCOUNTID", str);
        if (!StringUtils.isEmpty(str3)) {
            this.resetPhone.setText(str3);
        }
        checkResetPhone();
        checkResetVercode();
        checkResetPwd();
        checkResetEmail();
        this.resetPhone.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                ResetPwdActivity.this.checkResetPhone();
            }
        });
        this.accountEmail.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                ResetPwdActivity.this.checkResetEmail();
            }
        });
        this.resetPassword.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                ResetPwdActivity.this.checkResetPwd();
            }
        });
        this.resetVercode.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                ResetPwdActivity.this.checkResetVercode();
            }
        });
        this.resetPwdSafe.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    ResetPwdActivity.this.resetPassword.setInputType(IjkMediaMeta.FF_PROFILE_H264_HIGH_444);
                    ResetPwdActivity.this.resetPassword.setSelection(ResetPwdActivity.this.resetPassword.getText().toString().length());
                    return;
                }
                ResetPwdActivity.this.resetPassword.setInputType(TsExtractor.TS_STREAM_TYPE_AC3);
                ResetPwdActivity.this.resetPassword.setSelection(ResetPwdActivity.this.resetPassword.getText().toString().length());
            }
        });
        if (getIntent().getExtras() == null) {
            return;
        }
        if (getIntent().getExtras().getString("type").equals("email")) {
            this.phoneResetPwdLayout.setVisibility(8);
            this.emailResetPwdLayout.setVisibility(0);
            this.resetPwdLoginType.setText("通过手机号找回密码");
            this.mTitle.setVisibility(4);
            this.resetEmailPwd.setEnabled(false);
            return;
        }
        this.phoneResetPwdLayout.setVisibility(0);
        this.emailResetPwdLayout.setVisibility(8);
        this.resetPwdLoginType.setText("通过邮箱找回密码");
        this.mTitle.setVisibility(0);
    }

    /* access modifiers changed from: private */
    public void checkResetPhone() {
        if (!StringUtils.isEmpty(this.resetPhone.getText())) {
            if (!StringUtils.isEmpty(this.resetPassword.getText()) && !StringUtils.isEmpty(this.resetVercode.getText())) {
                this.resetBtn.setEnabled(true);
            }
            this.rmPhoneImg.setVisibility(0);
            return;
        }
        this.resetBtn.setEnabled(false);
        this.rmPhoneImg.setVisibility(4);
    }

    /* access modifiers changed from: private */
    public void checkResetEmail() {
        if (!StringUtils.isEmpty(this.accountEmail.getText())) {
            this.resetEmailPwd.setEnabled(true);
            this.rmEmailImg.setVisibility(0);
            return;
        }
        this.resetEmailPwd.setEnabled(false);
        this.rmEmailImg.setVisibility(4);
    }

    /* access modifiers changed from: private */
    public void checkResetVercode() {
        if (StringUtils.isEmpty(this.resetVercode.getText())) {
            this.resetBtn.setEnabled(false);
        } else if (!StringUtils.isEmpty(this.resetPhone.getText()) && !StringUtils.isEmpty(this.resetPassword.getText())) {
            this.resetBtn.setEnabled(true);
        }
    }

    /* access modifiers changed from: private */
    public void checkResetPwd() {
        if (!StringUtils.isEmpty(this.resetPassword.getText())) {
            if (!StringUtils.isEmpty(this.resetPhone.getText()) && !StringUtils.isEmpty(this.resetVercode.getText())) {
                this.resetBtn.setEnabled(true);
            }
            this.resetPwdSafe.setVisibility(0);
            return;
        }
        this.resetBtn.setEnabled(false);
        this.resetPwdSafe.setVisibility(4);
    }

    @OnClick({2131297292, 2131297092, 2131297100, 2131297099, 2131297093, 2131297349, 2131297101, 2131297094})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.reset_area /*2131297092*/:
                startActivityForResult(new Intent(Utils.getContext(), AreaActivity.class), 10);
                break;
            case R.id.reset_btn /*2131297093*/:
                resetPwd();
                break;
            case R.id.reset_email_pwd /*2131297094*/:
                if (!StringUtils.isEmpty(this.accountEmail.getText())) {
                    if (Utils.isEmail(this.accountEmail.getText().toString())) {
                        resetPwdSendEmail();
                        break;
                    } else {
                        ToastUtils.showShort((CharSequence) "请输入合法的邮箱");
                        return;
                    }
                }
                break;
            case R.id.reset_rm_phone /*2131297099*/:
                this.resetPhone.setText("");
                break;
            case R.id.resetpwd_login_type /*2131297101*/:
                if (this.phoneResetPwdLayout.getVisibility() != 0) {
                    this.phoneResetPwdLayout.setVisibility(0);
                    this.emailResetPwdLayout.setVisibility(8);
                    this.resetPwdLoginType.setText("通过邮箱找回密码");
                    this.mTitle.setVisibility(0);
                    break;
                } else {
                    this.phoneResetPwdLayout.setVisibility(8);
                    this.emailResetPwdLayout.setVisibility(0);
                    this.resetPwdLoginType.setText("通过手机号找回密码");
                    this.mTitle.setVisibility(4);
                    this.resetEmailPwd.setEnabled(false);
                    break;
                }
            case R.id.title_left_ll /*2131297292*/:
                finish();
                break;
            case R.id.vercode_tip /*2131297349*/:
                getVercode();
                break;
        }
    }

    private void resetPwd() {
        String trim = this.resetPhone.getText().toString().trim();
        String trim2 = this.resetVercode.getText().toString().trim();
        String trim3 = this.resetPassword.getText().toString().trim();
        String trim4 = this.resetArea.getText().toString().trim();
        if (trim4.equals("区号")) {
            ToastUtils.showShort((CharSequence) "请选择手机区号");
            return;
        }
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("code", trim4);
        String str = "iso_code";
        this.request.put(str, (String) PreferenceUtil.get(Utils.getContext(), str, "AU"));
        this.request.put(UserPreference.MOBILE, trim);
        this.request.put("verifyCode", trim2);
        this.request.put("password", trim3);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().resetPwd(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!ResetPwdActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    AILog.d("重置密码接口", this.json);
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE51).build());
                            ResetPwdActivity.this.finish();
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    private void getVercode() {
        String trim = this.resetArea.getText().toString().trim();
        String trim2 = this.resetPhone.getText().toString().trim();
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("code", trim);
        String str = "iso_code";
        this.request.put(str, (String) PreferenceUtil.get(Utils.getContext(), str, "AU"));
        this.request.put(UserPreference.MOBILE, trim2);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        AILog.d("获取验证码=", this.request.toString());
        Api.getService().getPwdCodeSms(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!ResetPwdActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    AILog.d("重置密码返回==", this.json);
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            ResetPwdActivity.this.mHandler.sendMessageDelayed(Message.obtain(), 1000);
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    private void resetPwdSendEmail() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put(UserPreference.MAIL, this.accountEmail.getText().toString());
        this.request.put("type", "resetpwd");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().sendEmail(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!ResetPwdActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            Bundle bundle = new Bundle();
                            bundle.putString("type", "resetpwd");
                            bundle.putString("email", ResetPwdActivity.this.accountEmail.getText().toString());
                            ResetPwdActivity.this.gotoActivity(bundle, SendEmailResultActivity.class);
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10 && intent != null) {
            this.resetArea.setText(intent.getExtras().getString(UserPreference.AREA));
        }
    }

    public void todo() {
        this.mCount--;
        if (this.mCount > 0) {
            this.vercodeTip.setEnabled(false);
            this.mHandler.sendEmptyMessageDelayed(0, 1000);
            TextView textView = this.vercodeTip;
            StringBuilder sb = new StringBuilder();
            sb.append(this.mCount);
            sb.append("秒");
            textView.setText(sb.toString());
            return;
        }
        this.vercodeTip.setText("获取验证码");
        this.mCount = 60;
        this.vercodeTip.setEnabled(true);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
