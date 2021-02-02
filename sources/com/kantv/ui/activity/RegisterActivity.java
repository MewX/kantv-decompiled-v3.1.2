package com.kantv.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
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
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class RegisterActivity extends PackageActivity {
    /* access modifiers changed from: private */
    public int mCount = 120;
    /* access modifiers changed from: private */
    public int mCountCloud;
    /* access modifiers changed from: private */
    public Handler mHandler = new MyHandler(this);
    @BindView(2131296483)
    TextView mTitle;
    @BindView(2131297077)
    TextView regArea;
    @BindView(2131297085)
    TextView regBtn;
    @BindView(2131297080)
    EditText regPhone;
    @BindView(2131297081)
    EditText regPwd;
    @BindView(2131297062)
    CheckBox regPwdSafe;
    @BindView(2131297084)
    EditText regVercode;
    @BindView(2131297083)
    ImageView rmRegPhone;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131297332)
    TextView vercodeTip;

    private static class MyHandler extends Handler {
        private final WeakReference<RegisterActivity> mActivity;

        public MyHandler(RegisterActivity registerActivity) {
            this.mActivity = new WeakReference<>(registerActivity);
        }

        public void handleMessage(Message message) {
            if (this.mActivity.get() != null) {
                ((RegisterActivity) this.mActivity.get()).todo();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.login_register);
        initBase();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN25);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(0);
        this.mTitle.setText("注册");
        this.titleRightLayout.setVisibility(8);
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "area_country", str);
        if (!StringUtils.isEmpty(str2)) {
            this.regArea.setText(str2);
        }
        Timer timer = new Timer();
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), "ACCOUNTID", str);
        if (!StringUtils.isEmpty(str3)) {
            if (!str3.contains("@")) {
                this.regPhone.setText(str3);
            }
            timer.schedule(new TimerTask() {
                public void run() {
                    RegisterActivity registerActivity = RegisterActivity.this;
                    registerActivity.showKeyboard(registerActivity.regPwd);
                }
            }, 200);
        } else {
            timer.schedule(new TimerTask() {
                public void run() {
                    RegisterActivity registerActivity = RegisterActivity.this;
                    registerActivity.showKeyboard(registerActivity.regPhone);
                }
            }, 200);
        }
        checkRegPhone();
        checkRegVercode();
        checkRegPwd();
        this.regPhone.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                RegisterActivity.this.checkRegPhone();
            }
        });
        this.regPwd.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                RegisterActivity.this.checkRegPwd();
            }
        });
        this.regVercode.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                RegisterActivity.this.checkRegVercode();
            }
        });
        this.regPwdSafe.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    RegisterActivity.this.regPwd.setInputType(IjkMediaMeta.FF_PROFILE_H264_HIGH_444);
                    RegisterActivity.this.regPwd.setSelection(RegisterActivity.this.regPwd.getText().toString().length());
                    return;
                }
                RegisterActivity.this.regPwd.setInputType(TsExtractor.TS_STREAM_TYPE_AC3);
                RegisterActivity.this.regPwd.setSelection(RegisterActivity.this.regPwd.getText().toString().length());
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
                    if (!StringUtils.isEmpty(RegisterActivity.this.regPhone.getText().toString())) {
                        textView.requestFocus();
                    }
                    ((InputMethodManager) textView.getContext().getSystemService("input_method")).showSoftInput(textView, 0);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void checkRegPhone() {
        if (!StringUtils.isEmpty(this.regPhone.getText())) {
            if (!StringUtils.isEmpty(this.regPwd.getText()) && !StringUtils.isEmpty(this.regVercode.getText())) {
                this.regBtn.setEnabled(true);
            }
            this.rmRegPhone.setVisibility(0);
            return;
        }
        this.regBtn.setEnabled(false);
        this.rmRegPhone.setVisibility(4);
    }

    /* access modifiers changed from: private */
    public void checkRegVercode() {
        if (StringUtils.isEmpty(this.regVercode.getText())) {
            this.regBtn.setEnabled(false);
        } else if (!StringUtils.isEmpty(this.regPhone.getText()) && !StringUtils.isEmpty(this.regPwd.getText())) {
            this.regBtn.setEnabled(true);
        }
    }

    /* access modifiers changed from: private */
    public void checkRegPwd() {
        if (!StringUtils.isEmpty(this.regPwd.getText())) {
            if (!StringUtils.isEmpty(this.regPhone.getText()) && !StringUtils.isEmpty(this.regVercode.getText())) {
                this.regBtn.setEnabled(true);
            }
            this.regPwdSafe.setVisibility(0);
            return;
        }
        this.regBtn.setEnabled(false);
        this.regPwdSafe.setVisibility(4);
    }

    @OnClick({2131297292, 2131297077, 2131297084, 2131297083, 2131297085, 2131297332})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.reg_area /*2131297077*/:
                startActivityForResult(new Intent(Utils.getContext(), AreaActivity.class), 10);
                return;
            case R.id.reg_rm_phone /*2131297083*/:
                this.regPhone.setText("");
                return;
            case R.id.register_btn /*2131297085*/:
                regAccount();
                return;
            case R.id.title_left_ll /*2131297292*/:
                finish();
                return;
            case R.id.tv_vercode /*2131297332*/:
                getVercode();
                return;
            default:
                return;
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
        this.mCount = this.mCountCloud;
        this.vercodeTip.setEnabled(true);
    }

    private void regAccount() {
        String trim = this.regPhone.getText().toString().trim();
        String trim2 = this.regArea.getText().toString().trim();
        String trim3 = this.regPwd.getText().toString().trim();
        String trim4 = this.regVercode.getText().toString().trim();
        if (StringUtils.isEmpty(trim)) {
            ToastUtils.showShort((CharSequence) "请输入电话号码");
        } else if (trim2.equals("区号")) {
            ToastUtils.showShort((CharSequence) "请选择手机区号");
        } else if (StringUtils.isEmpty(trim4)) {
            ToastUtils.showShort((CharSequence) "请输入短信验证码");
        } else if (StringUtils.isEmpty(trim3)) {
            ToastUtils.showShort((CharSequence) "请输入登录密码");
        } else if (trim3.length() < 6) {
            ToastUtils.showShort((CharSequence) "请输入6-16位登录密码");
        } else {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("code", trim2);
            String str = "iso_code";
            this.request.put(str, (String) PreferenceUtil.get(Utils.getContext(), str, "AU"));
            this.request.put(UserPreference.MOBILE, trim);
            this.request.put("verifyCode", trim4);
            this.request.put("password", trim3);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            Api.getService().Register(this.request).enqueue(new CommonCallBack(this, true) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!RegisterActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                if (jsonObject2 != null) {
                                    String str = "token";
                                    PreferenceUtil.put(Utils.getContext(), str, jsonObject2.optString(str));
                                    RegisterActivity.this.gotoActivity(BasicInfoActivity.class);
                                    RegisterActivity.this.finish();
                                } else {
                                    return;
                                }
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                }
            });
        }
    }

    private void getVercode() {
        String trim = this.regArea.getText().toString().trim();
        String trim2 = this.regPhone.getText().toString().trim();
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
        Api.getService().getCode(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!RegisterActivity.this.isDestroy) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                String str = "expire";
                                if (!StringUtils.isEmpty(jsonObject2.optString(str))) {
                                    RegisterActivity.this.mCountCloud = Integer.parseInt(jsonObject2.optString(str));
                                    RegisterActivity registerActivity = RegisterActivity.this;
                                    registerActivity.mCount = registerActivity.mCountCloud;
                                }
                            }
                            RegisterActivity.this.mHandler.sendMessageDelayed(Message.obtain(), 1000);
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
            this.regArea.setText(intent.getExtras().getString(UserPreference.AREA));
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler = null;
    }
}
