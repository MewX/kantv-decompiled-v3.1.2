package com.kantv.ui.activity;

import android.content.Intent;
import android.os.Bundle;
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
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.MainActivity;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.viewmodel.CommonViewModel;
import debug.KanApplication;
import java.util.Timer;
import java.util.TimerTask;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class AccountLoginActivity extends PackageActivity {
    @BindView(2131296301)
    TextView accountArea;
    @BindView(2131296302)
    TextView accountBtn;
    String accountId;
    @BindView(2131296304)
    ImageView accountLoginEmail;
    @BindView(2131296305)
    TextView accountLoginType;
    @BindView(2131296306)
    EditText accountPhone;
    @BindView(2131296307)
    EditText accountPwd;
    @BindView(2131296308)
    CheckBox pwdSafe;
    @BindView(2131297106)
    ImageView rmAccountImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297295)
    ImageView titleRightImg;
    @BindView(2131297328)
    TextView titleRightTxt;
    @BindView(2131296483)
    TextView titleTxt;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.login_account);
        initBase();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN5);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(0);
        this.titleTxt.setVisibility(4);
        this.titleRightImg.setVisibility(8);
        this.titleRightTxt.setVisibility(0);
        this.titleRightTxt.setText("注册");
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "area_country", str);
        if (!StringUtils.isEmpty(str2)) {
            this.accountArea.setText(str2);
        }
        Timer timer = new Timer();
        this.accountId = (String) PreferenceUtil.get(Utils.getContext(), "ACCOUNTID", str);
        if (!StringUtils.isEmpty(this.accountId)) {
            this.accountPhone.setText(this.accountId);
            timer.schedule(new TimerTask() {
                public void run() {
                    AccountLoginActivity accountLoginActivity = AccountLoginActivity.this;
                    accountLoginActivity.showKeyboard(accountLoginActivity.accountPwd);
                }
            }, 200);
        } else {
            timer.schedule(new TimerTask() {
                public void run() {
                    AccountLoginActivity accountLoginActivity = AccountLoginActivity.this;
                    accountLoginActivity.showKeyboard(accountLoginActivity.accountPhone);
                }
            }, 200);
        }
        checkAccountPhone();
        checkAccountPwd();
        this.accountPhone.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                AccountLoginActivity.this.checkAccountPhone();
            }
        });
        this.accountPwd.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                AccountLoginActivity.this.checkAccountPwd();
            }
        });
        this.pwdSafe.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    AccountLoginActivity.this.accountPwd.setInputType(IjkMediaMeta.FF_PROFILE_H264_HIGH_444);
                    AccountLoginActivity.this.accountPwd.setSelection(AccountLoginActivity.this.accountPwd.getText().toString().length());
                    return;
                }
                AccountLoginActivity.this.accountPwd.setInputType(TsExtractor.TS_STREAM_TYPE_AC3);
                AccountLoginActivity.this.accountPwd.setSelection(AccountLoginActivity.this.accountPwd.getText().toString().length());
            }
        });
        String str3 = "邮箱登录";
        String str4 = "手机号码";
        if (getIntent().getExtras() != null) {
            String string = getIntent().getExtras().getString("type");
            if (!StringUtils.isEmpty(string) && string.equals("phone")) {
                this.accountLoginEmail.setVisibility(8);
                this.accountArea.setVisibility(0);
                this.accountPhone.setHint(str4);
                this.accountPhone.setInputType(3);
                this.accountLoginType.setText(str3);
            }
        }
        if (!StringUtils.isEmpty(this.accountId) && !this.accountId.contains("@")) {
            this.accountLoginEmail.setVisibility(8);
            this.accountArea.setVisibility(0);
            this.accountPhone.setHint(str4);
            this.accountPhone.setInputType(3);
            this.accountLoginType.setText(str3);
        }
    }

    /* access modifiers changed from: private */
    public void showKeyboard(final TextView textView) {
        runOnUiThread(new Runnable() {
            public void run() {
                TextView textView = textView;
                if (textView != null) {
                    textView.setFocusable(true);
                    textView.setFocusableInTouchMode(true);
                    textView.requestFocus();
                    ((InputMethodManager) textView.getContext().getSystemService("input_method")).showSoftInput(textView, 0);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void checkAccountPhone() {
        if (!StringUtils.isEmpty(this.accountPhone.getText())) {
            if (!StringUtils.isEmpty(this.accountPwd.getText())) {
                this.accountBtn.setEnabled(true);
            }
            this.rmAccountImg.setVisibility(0);
            return;
        }
        this.accountBtn.setEnabled(false);
        this.rmAccountImg.setVisibility(4);
    }

    /* access modifiers changed from: private */
    public void checkAccountPwd() {
        if (!StringUtils.isEmpty(this.accountPwd.getText())) {
            if (!StringUtils.isEmpty(this.accountPhone.getText())) {
                this.accountBtn.setEnabled(true);
            }
            this.pwdSafe.setVisibility(0);
            return;
        }
        this.accountBtn.setEnabled(false);
        this.pwdSafe.setVisibility(4);
    }

    @OnClick({2131297292, 2131296301, 2131297106, 2131297328, 2131296598, 2131296302, 2131296305})
    public void onClick(View view) {
        String str = "";
        switch (view.getId()) {
            case R.id.account_area /*2131296301*/:
                startActivityForResult(new Intent(Utils.getContext(), AreaActivity.class), 10);
                break;
            case R.id.account_btn /*2131296302*/:
                if (this.accountLoginEmail.getVisibility() == 0) {
                    if (Utils.isEmail(this.accountPhone.getText().toString().trim())) {
                        accountDefaultLogin();
                        break;
                    } else {
                        ToastUtils.showShort((CharSequence) "请输入合法的邮箱");
                        return;
                    }
                } else {
                    accountLogin();
                    break;
                }
            case R.id.account_login_type /*2131296305*/:
                String str2 = "@";
                if (this.accountLoginEmail.getVisibility() != 0) {
                    this.accountLoginEmail.setVisibility(0);
                    this.accountArea.setVisibility(8);
                    this.accountPhone.setHint("邮箱账号");
                    this.accountPhone.setInputType(32);
                    this.accountLoginType.setText("手机号登录");
                    if (!StringUtils.isEmpty(this.accountId)) {
                        if (this.accountId.contains(str2)) {
                            this.accountPhone.setText(this.accountId);
                            break;
                        } else {
                            this.accountPhone.setText(str);
                            this.accountPhone.setFocusable(true);
                            this.accountPhone.setFocusableInTouchMode(true);
                            this.accountPhone.requestFocus();
                            break;
                        }
                    }
                } else {
                    this.accountLoginEmail.setVisibility(8);
                    this.accountArea.setVisibility(0);
                    this.accountPhone.setHint("手机号码");
                    this.accountPhone.setInputType(3);
                    this.accountLoginType.setText("邮箱登录");
                    if (!StringUtils.isEmpty(this.accountId)) {
                        if (this.accountId.contains(str2)) {
                            this.accountPhone.setText(str);
                            this.accountPhone.setFocusable(true);
                            this.accountPhone.setFocusableInTouchMode(true);
                            this.accountPhone.requestFocus();
                            break;
                        } else {
                            this.accountPhone.setText(this.accountId);
                            break;
                        }
                    }
                }
                break;
            case R.id.forget_pwd /*2131296598*/:
                Bundle bundle = new Bundle();
                String str3 = "type";
                if (this.accountLoginEmail.getVisibility() == 0) {
                    bundle.putString(str3, "email");
                } else {
                    bundle.putString(str3, "phone");
                }
                gotoActivity(bundle, ResetPwdActivity.class);
                break;
            case R.id.rm_account /*2131297106*/:
                this.accountPhone.setText(str);
                this.accountPhone.setFocusable(true);
                this.accountPhone.setFocusableInTouchMode(true);
                break;
            case R.id.title_left_ll /*2131297292*/:
                finish();
                break;
            case R.id.tv_right /*2131297328*/:
                if (this.accountLoginEmail.getVisibility() != 0) {
                    gotoActivity(RegisterActivity.class);
                    break;
                } else {
                    gotoActivity(EmailRegisterActivity.class);
                    break;
                }
        }
    }

    private void accountLogin() {
        final String trim = this.accountPhone.getText().toString().trim();
        String trim2 = this.accountArea.getText().toString().trim();
        String trim3 = this.accountPwd.getText().toString().trim();
        if (trim2.equals("区号")) {
            ToastUtils.showShort((CharSequence) "请选择手机区号");
            return;
        }
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("code", trim2);
        String str = "iso_code";
        this.request.put(str, (String) PreferenceUtil.get(Utils.getContext(), str, "AU"));
        this.request.put(UserPreference.MOBILE, trim);
        this.request.put("password", trim3);
        this.request.put("type", "1");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().Login(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!AccountLoginActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                String str = "userInfo";
                                if (StringUtils.toJsonObject(jsonObject2.optString(str)) != null) {
                                    KanApplication.token = jsonObject2.optString("token");
                                    new Bundle().putString("num", "1");
                                    try {
                                        CommonViewModel.inputUserBean(jsonObject2.optString(str), AccountLoginActivity.this, trim, KanApplication.token);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE49).build());
                                    if (((Boolean) PreferenceUtil.get(Utils.getContext(), "isfirst", Boolean.valueOf(true))).booleanValue()) {
                                        AccountLoginActivity.this.gotoActivity(MainActivity.class);
                                        AccountLoginActivity.this.finish();
                                    } else {
                                        AccountLoginActivity.this.finish();
                                    }
                                    KanApplication.getInstance().finishActivity(LoginActivity.class);
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    private void accountDefaultLogin() {
        final String trim = this.accountPhone.getText().toString().trim();
        String trim2 = this.accountPwd.getText().toString().trim();
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put(UserPreference.MAIL, trim);
        this.request.put("password", trim2);
        this.request.put("type", "2");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().Login(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!AccountLoginActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                String str = "userInfo";
                                JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString(str));
                                if (jsonObject3 != null) {
                                    KanApplication.token = jsonObject2.optString("token");
                                    new Bundle().putString("num", "1");
                                    CommonViewModel.inputUserBean(jsonObject2.optString(str), AccountLoginActivity.this, trim, KanApplication.token);
                                    KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE49).build());
                                    if (((Boolean) PreferenceUtil.get(Utils.getContext(), "isfirst", Boolean.valueOf(true))).booleanValue()) {
                                        AccountLoginActivity.this.gotoActivity(MainActivity.class);
                                        AccountLoginActivity.this.finish();
                                    } else {
                                        if (jsonObject3 != null && jsonObject3.optString("name").contains(AccountLoginActivity.this.getString(R.string.default_nick_head))) {
                                            AccountLoginActivity.this.gotoActivity(BasicInfoActivity.class);
                                        }
                                        AccountLoginActivity.this.finish();
                                    }
                                    KanApplication.getInstance().finishActivity(LoginActivity.class);
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10 && intent != null) {
            this.accountArea.setText(intent.getExtras().getString(UserPreference.AREA));
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
