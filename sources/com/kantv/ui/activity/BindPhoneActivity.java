package com.kantv.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
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

public class BindPhoneActivity extends PackageActivity {
    @BindView(2131296393)
    TextView bindArea;
    @BindView(2131296397)
    EditText bindPhone;
    @BindView(2131296406)
    TextView bindPhoneBtn;
    @BindView(2131296402)
    EditText bindVercode;
    /* access modifiers changed from: private */
    public int mCount = 120;
    /* access modifiers changed from: private */
    public int mCountCloud;
    /* access modifiers changed from: private */
    public Handler mHandler = new MyHandler(this);
    @BindView(2131296483)
    TextView mTitle;
    @BindView(2131296401)
    ImageView rmBindPhone;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131297332)
    TextView vercodeTip;

    private static class MyHandler extends Handler {
        private final WeakReference<BindPhoneActivity> mActivity;

        public MyHandler(BindPhoneActivity bindPhoneActivity) {
            this.mActivity = new WeakReference<>(bindPhoneActivity);
        }

        public void handleMessage(Message message) {
            if (this.mActivity.get() != null) {
                ((BindPhoneActivity) this.mActivity.get()).todo();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.safecenter_bindphone);
        initBase();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN25);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(0);
        this.mTitle.setText("绑定新手机");
        this.titleRightLayout.setVisibility(8);
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "area_country", str);
        if (!StringUtils.isEmpty(str2)) {
            this.bindArea.setText(str2);
        }
        Timer timer = new Timer();
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), "ACCOUNTID", str);
        if (StringUtils.isEmpty(str3)) {
            timer.schedule(new TimerTask() {
                public void run() {
                    BindPhoneActivity bindPhoneActivity = BindPhoneActivity.this;
                    bindPhoneActivity.showKeyboard(bindPhoneActivity.bindPhone);
                }
            }, 200);
        } else if (!str3.contains("@")) {
            this.bindPhone.setText(str3);
        }
        checkBindPhone();
        checkBindVercode();
        this.bindPhone.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                BindPhoneActivity.this.checkBindPhone();
            }
        });
        this.bindVercode.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                BindPhoneActivity.this.checkBindVercode();
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
                    if (!StringUtils.isEmpty(BindPhoneActivity.this.bindPhone.getText().toString())) {
                        textView.requestFocus();
                    }
                    ((InputMethodManager) textView.getContext().getSystemService("input_method")).showSoftInput(textView, 0);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void checkBindPhone() {
        if (!StringUtils.isEmpty(this.bindPhone.getText())) {
            if (!StringUtils.isEmpty(this.bindVercode.getText())) {
                this.bindPhoneBtn.setEnabled(true);
            }
            this.rmBindPhone.setVisibility(0);
            return;
        }
        this.bindPhoneBtn.setEnabled(false);
        this.rmBindPhone.setVisibility(4);
    }

    /* access modifiers changed from: private */
    public void checkBindVercode() {
        if (StringUtils.isEmpty(this.bindVercode.getText())) {
            this.bindPhoneBtn.setEnabled(false);
        } else if (!StringUtils.isEmpty(this.bindPhone.getText())) {
            this.bindPhoneBtn.setEnabled(true);
        }
    }

    @OnClick({2131297292, 2131296393, 2131296402, 2131296401, 2131296406, 2131297332})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.bind_area /*2131296393*/:
                startActivityForResult(new Intent(Utils.getContext(), AreaActivity.class), 10);
                return;
            case R.id.bind_rm_phone /*2131296401*/:
                this.bindPhone.setText("");
                return;
            case R.id.bindphone_btn /*2131296406*/:
                bindPhone();
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

    private void bindPhone() {
        String trim = this.bindPhone.getText().toString().trim();
        String trim2 = this.bindArea.getText().toString().trim();
        String trim3 = this.bindVercode.getText().toString().trim();
        if (StringUtils.isEmpty(trim)) {
            ToastUtils.showShort((CharSequence) "请输入电话号码");
        } else if (trim2.equals("区号")) {
            ToastUtils.showShort((CharSequence) "请选择手机区号");
        } else if (StringUtils.isEmpty(trim3)) {
            ToastUtils.showShort((CharSequence) "请输入短信验证码");
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
            this.request.put("verifyCode", trim3);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
            Api.getService().updateMobile(this.request).enqueue(new CommonCallBack(this, true) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!BindPhoneActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                if (StringUtils.toJsonObject(jsonObject.optString("data")) != null) {
                                    BindPhoneActivity.this.finish();
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
        String trim = this.bindArea.getText().toString().trim();
        String trim2 = this.bindPhone.getText().toString().trim();
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
        this.request.put("type", "bind");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        Api.getService().getCode(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!BindPhoneActivity.this.isDestroy) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                String str = "expire";
                                if (!StringUtils.isEmpty(jsonObject2.optString(str))) {
                                    BindPhoneActivity.this.mCountCloud = Integer.parseInt(jsonObject2.optString(str));
                                    BindPhoneActivity bindPhoneActivity = BindPhoneActivity.this;
                                    bindPhoneActivity.mCount = bindPhoneActivity.mCountCloud;
                                }
                            }
                            BindPhoneActivity.this.mHandler.sendMessageDelayed(Message.obtain(), 1000);
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
            this.bindArea.setText(intent.getExtras().getString(UserPreference.AREA));
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler = null;
    }
}
