package com.kantv.ui.activity;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
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
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;
import java.util.Timer;
import java.util.TimerTask;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class EmailRegisterActivity extends PackageActivity {
    private int mCount = 120;
    private int mCountCloud;
    @BindView(2131296483)
    TextView mTitle;
    @BindView(2131297061)
    ImageView pwdPopImg;
    @BindView(2131297085)
    TextView regBtn;
    @BindView(2131297078)
    EditText regEmail;
    @BindView(2131297079)
    EditText regMorePwd;
    @BindView(2131297060)
    CheckBox regMorePwdSafe;
    @BindView(2131297081)
    EditText regPwd;
    @BindView(2131297062)
    CheckBox regPwdSafe;
    @BindView(2131297082)
    ImageView rmRegEmail;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.email_login_register);
        initBase();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN25);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(0);
        this.mTitle.setText("注册");
        this.titleRightLayout.setVisibility(8);
        Timer timer = new Timer();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "ACCOUNTID", "");
        if (!StringUtils.isEmpty(str)) {
            if (str.contains("@")) {
                this.regEmail.setText(str);
            }
            timer.schedule(new TimerTask() {
                public void run() {
                    EmailRegisterActivity emailRegisterActivity = EmailRegisterActivity.this;
                    emailRegisterActivity.showKeyboard(emailRegisterActivity.regPwd);
                }
            }, 200);
            showPwdPop();
        } else {
            timer.schedule(new TimerTask() {
                public void run() {
                    EmailRegisterActivity emailRegisterActivity = EmailRegisterActivity.this;
                    emailRegisterActivity.showKeyboard(emailRegisterActivity.regEmail);
                }
            }, 200);
        }
        checkRegEmail();
        checkMorePwd();
        checkRegPwd();
        this.regEmail.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EmailRegisterActivity.this.checkRegEmail();
            }
        });
        this.regPwd.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EmailRegisterActivity.this.checkRegPwd();
            }
        });
        this.regPwd.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                EmailRegisterActivity.this.showPwdPop();
            }
        });
        this.regMorePwd.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EmailRegisterActivity.this.checkMorePwd();
            }
        });
        this.regPwdSafe.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    EmailRegisterActivity.this.regPwd.setInputType(IjkMediaMeta.FF_PROFILE_H264_HIGH_444);
                    EmailRegisterActivity.this.regPwd.setSelection(EmailRegisterActivity.this.regPwd.getText().toString().length());
                    return;
                }
                EmailRegisterActivity.this.regPwd.setInputType(TsExtractor.TS_STREAM_TYPE_AC3);
                EmailRegisterActivity.this.regPwd.setSelection(EmailRegisterActivity.this.regPwd.getText().toString().length());
            }
        });
        this.regMorePwdSafe.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    EmailRegisterActivity.this.regMorePwd.setInputType(IjkMediaMeta.FF_PROFILE_H264_HIGH_444);
                    EmailRegisterActivity.this.regMorePwd.setSelection(EmailRegisterActivity.this.regMorePwd.getText().toString().length());
                    return;
                }
                EmailRegisterActivity.this.regMorePwd.setInputType(TsExtractor.TS_STREAM_TYPE_AC3);
                EmailRegisterActivity.this.regMorePwd.setSelection(EmailRegisterActivity.this.regMorePwd.getText().toString().length());
            }
        });
    }

    /* access modifiers changed from: private */
    public void showKeyboard(final TextView textView) {
        runOnUiThread(new Runnable() {
            public void run() {
                TextView textView = textView;
                if (textView != null) {
                    textView.setFocusable(true);
                    textView.setFocusableInTouchMode(true);
                    if (!StringUtils.isEmpty(EmailRegisterActivity.this.regEmail.getText().toString())) {
                        textView.requestFocus();
                    }
                    ((InputMethodManager) textView.getContext().getSystemService("input_method")).showSoftInput(textView, 0);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void showPwdPop() {
        runOnUiThread(new Runnable() {
            public void run() {
                EmailRegisterActivity.this.pwdPopImg.setVisibility(0);
                new Timer().schedule(new TimerTask() {
                    public void run() {
                        EmailRegisterActivity.this.runOnUiThread(new Runnable() {
                            public void run() {
                                EmailRegisterActivity.this.pwdPopImg.setVisibility(8);
                            }
                        });
                    }
                }, 3000);
            }
        });
    }

    /* access modifiers changed from: private */
    public void checkRegEmail() {
        if (!StringUtils.isEmpty(this.regEmail.getText())) {
            if (!StringUtils.isEmpty(this.regPwd.getText()) && !StringUtils.isEmpty(this.regMorePwd.getText())) {
                this.regBtn.setEnabled(true);
            }
            this.rmRegEmail.setVisibility(0);
            return;
        }
        this.regBtn.setEnabled(false);
        this.rmRegEmail.setVisibility(4);
    }

    /* access modifiers changed from: private */
    public void checkMorePwd() {
        if (!StringUtils.isEmpty(this.regMorePwd.getText())) {
            if (!StringUtils.isEmpty(this.regEmail.getText()) && !StringUtils.isEmpty(this.regPwd.getText())) {
                this.regBtn.setEnabled(true);
            }
            this.regMorePwdSafe.setVisibility(0);
            return;
        }
        this.regBtn.setEnabled(false);
        this.regMorePwdSafe.setVisibility(4);
    }

    /* access modifiers changed from: private */
    public void checkRegPwd() {
        if (!StringUtils.isEmpty(this.regPwd.getText())) {
            if (!StringUtils.isEmpty(this.regEmail.getText()) && !StringUtils.isEmpty(this.regMorePwd.getText())) {
                this.regBtn.setEnabled(true);
            }
            this.regPwdSafe.setVisibility(0);
            return;
        }
        this.regBtn.setEnabled(false);
        this.regPwdSafe.setVisibility(4);
    }

    @OnClick({2131297292, 2131297082, 2131297085})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.reg_rm_email) {
            this.regEmail.setText("");
        } else if (id == R.id.register_btn) {
            regAccount();
        } else if (id == R.id.title_left_ll) {
            finish();
        }
    }

    private void regAccount() {
        final String trim = this.regEmail.getText().toString().trim();
        final String trim2 = this.regPwd.getText().toString().trim();
        String trim3 = this.regMorePwd.getText().toString().trim();
        if (StringUtils.isEmpty(trim)) {
            ToastUtils.showShort((CharSequence) "请输入邮箱账号");
        } else if (!Utils.isEmail(trim)) {
            ToastUtils.showShort((CharSequence) "请输入合法的邮箱");
        } else if (StringUtils.isEmpty(trim2)) {
            ToastUtils.showShort((CharSequence) "请输入登录密码");
        } else if (trim2.length() < 6 || trim2.length() > 16 || !checkIllegalChar(trim2)) {
            ToastUtils.showShort((CharSequence) "请输入6-16位字母、数字或者符号密码");
        } else if (StringUtils.isEmpty(trim3)) {
            ToastUtils.showShort((CharSequence) "请再次输入确认密码");
        } else if (!trim2.equals(trim3)) {
            ToastUtils.showShort((CharSequence) "两次密码不一致，请重新输入");
        } else {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put(UserPreference.MAIL, trim);
            this.request.put("type", "reg");
            this.request.put("password", trim2);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            Call sendEmail = Api.getService().sendEmail(this.request);
            AnonymousClass11 r1 = new CommonCallBack(this, true) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!EmailRegisterActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                PreferenceUtil.put(Utils.getContext(), "ACCOUNTID", trim);
                                Bundle bundle = new Bundle();
                                bundle.putString("type", "emailreg");
                                bundle.putString("email", trim);
                                bundle.putString("password", trim2);
                                EmailRegisterActivity.this.gotoActivity(bundle, SendEmailResultActivity.class);
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                }
            };
            sendEmail.enqueue(r1);
        }
    }

    private boolean checkIllegalChar(String str) {
        return StringUtils.stringPwdFilter(str).equals(str);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
