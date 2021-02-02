package com.kantv.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.MainActivity;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class LoginActivity extends PackageActivity {
    private static final String TAG = "LoginActivity";
    @BindView(2131296875)
    TextView loginBtn;
    @BindView(2131296880)
    TextView loginType;
    @BindView(2131296874)
    TextView mLoginArea;
    @BindView(2131296876)
    ImageView mLoginEmail;
    @BindView(2131296878)
    EditText mLoginPhone;
    @BindView(2131296879)
    ImageView rmMobileImg;
    boolean statusUserExit = false;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_login);
        initBase();
        initView();
        initRequest();
        KanApplication.clearTvDefaultIndexJson();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN19);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        checkLoginPhone();
        this.mLoginPhone.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                LoginActivity.this.checkLoginPhone();
            }
        });
        String str = (String) PreferenceUtil.get(Utils.getContext(), "area_country", "");
        if (!StringUtils.isEmpty(str)) {
            this.mLoginArea.setText(str);
        }
    }

    /* access modifiers changed from: private */
    public void checkLoginPhone() {
        if (!StringUtils.isEmpty(this.mLoginPhone.getText())) {
            this.loginBtn.setEnabled(true);
            this.rmMobileImg.setVisibility(0);
            return;
        }
        this.loginBtn.setEnabled(false);
        this.rmMobileImg.setVisibility(4);
    }

    private void initRequest() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        AILog.d(this.request);
        Api.getService().getCountry(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!LoginActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        String str = "data";
                        if (!StringUtils.isEmpty(jsonObject.optString(str))) {
                            JSONArray jsonArray = StringUtils.toJsonArray(jsonObject.optString(str));
                            if (jsonArray != null) {
                                for (int i = 0; i < jsonArray.length(); i++) {
                                    if (StringUtils.getJSONobject(jsonArray, i) != null) {
                                        JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                        String str2 = Param.LOCATION;
                                        if (jSONobject.optString(str2) != null && StringUtils.getJSONobject(jsonArray, i).optString(str2).equals("1")) {
                                            TextView textView = LoginActivity.this.mLoginArea;
                                            StringBuilder sb = new StringBuilder();
                                            String str3 = "+";
                                            sb.append(str3);
                                            JSONObject jSONobject2 = StringUtils.getJSONobject(jsonArray, i);
                                            String str4 = UserPreference.AREA_CODE;
                                            sb.append(jSONobject2.optString(str4));
                                            textView.setText(sb.toString());
                                            String str5 = "iso_code";
                                            if (!StringUtils.isEmpty(StringUtils.getJSONobject(jsonArray, i).optString(str5))) {
                                                PreferenceUtil.put(Utils.getContext(), str5, StringUtils.getJSONobject(jsonArray, i).optString(str5));
                                            }
                                            Context context = Utils.getContext();
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(str3);
                                            sb2.append(StringUtils.getJSONobject(jsonArray, i).optString(str4));
                                            PreferenceUtil.put(context, "area_country", sb2.toString());
                                        }
                                    }
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
            this.mLoginArea.setText(intent.getExtras().getString(UserPreference.AREA));
        }
    }

    @OnClick({2131296874, 2131296879, 2131296880, 2131296818, 2131296875})
    public void onClick(View view) {
        String str = "";
        switch (view.getId()) {
            case R.id.jump_tv /*2131296818*/:
                gotoActivity(MainActivity.class);
                return;
            case R.id.login_area /*2131296874*/:
                startActivityForResult(new Intent(Utils.getContext(), AreaActivity.class), 10);
                return;
            case R.id.login_btn /*2131296875*/:
                String str2 = (String) PreferenceUtil.get(Utils.getContext(), "ACCOUNTID", str);
                if (!StringUtils.isEmpty(str2) && str2.equals(this.mLoginPhone.getText().toString().trim()) && this.statusUserExit) {
                    Bundle bundle = new Bundle();
                    String str3 = "type";
                    if (this.mLoginEmail.getVisibility() == 0) {
                        bundle.putString(str3, "email");
                    } else {
                        bundle.putString(str3, "phone");
                    }
                    gotoActivity(bundle, AccountLoginActivity.class);
                    return;
                } else if (this.mLoginEmail.getVisibility() == 0) {
                    emailIsExistHandle();
                    return;
                } else {
                    userIsExistHandle();
                    return;
                }
            case R.id.login_revmobile /*2131296879*/:
                this.mLoginPhone.setText(str);
                return;
            case R.id.login_type /*2131296880*/:
                if (this.mLoginEmail.getVisibility() == 0) {
                    this.mLoginEmail.setVisibility(8);
                    this.mLoginArea.setVisibility(0);
                    this.mLoginPhone.setHint("手机号码");
                    this.loginType.setText("邮箱登录");
                    this.mLoginPhone.setInputType(2);
                    return;
                }
                this.mLoginEmail.setVisibility(0);
                this.mLoginArea.setVisibility(8);
                this.mLoginPhone.setHint("邮箱账号");
                this.loginType.setText("手机号登录");
                this.mLoginPhone.setInputType(32);
                return;
            default:
                return;
        }
    }

    private void userIsExistHandle() {
        if (this.mLoginArea.getText().toString().equals("区号")) {
            ToastUtils.showShort((CharSequence) "请选择手机区号");
            return;
        }
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("code", this.mLoginArea.getText().toString().trim());
        this.request.put(UserPreference.MOBILE, this.mLoginPhone.getText().toString().trim());
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().userExist(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!LoginActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            PreferenceUtil.put(Utils.getContext(), "ACCOUNTID", LoginActivity.this.mLoginPhone.getText().toString().trim());
                            String str = "data";
                            if (StringUtils.isEmpty(jsonObject.optString(str)) || !jsonObject.optString(str).equals("1")) {
                                LoginActivity.this.gotoActivity(RegisterActivity.class);
                                LoginActivity.this.statusUserExit = false;
                            } else {
                                Bundle bundle = new Bundle();
                                bundle.putString("type", "phone");
                                LoginActivity.this.gotoActivity(bundle, AccountLoginActivity.class);
                                LoginActivity.this.statusUserExit = true;
                            }
                        } else {
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                }
            }
        });
    }

    private void emailIsExistHandle() {
        if (!Utils.isEmail(this.mLoginPhone.getText().toString().trim())) {
            ToastUtils.showShort((CharSequence) "请输入合法的邮箱");
            return;
        }
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put(UserPreference.MAIL, this.mLoginPhone.getText().toString().trim());
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().mailExist(this.request).enqueue(new CommonCallBack(this, false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!LoginActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        PreferenceUtil.put(Utils.getContext(), "ACCOUNTID", LoginActivity.this.mLoginPhone.getText().toString().trim());
                        String str = "data";
                        if (StringUtils.isEmpty(jsonObject.optString(str)) || !jsonObject.optString(str).equals("1")) {
                            LoginActivity.this.gotoActivity(EmailRegisterActivity.class);
                            LoginActivity.this.statusUserExit = false;
                        } else {
                            Bundle bundle = new Bundle();
                            bundle.putString("type", "email");
                            LoginActivity.this.gotoActivity(bundle, AccountLoginActivity.class);
                            LoginActivity.this.statusUserExit = true;
                        }
                    }
                }
            }
        });
    }
}
