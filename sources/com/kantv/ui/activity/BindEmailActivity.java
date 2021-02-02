package com.kantv.ui.activity;

import android.os.Bundle;
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
import java.util.Timer;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class BindEmailActivity extends PackageActivity {
    @BindView(2131296394)
    EditText bindEmail;
    @BindView(2131296404)
    TextView bindEmailBtn;
    @BindView(2131296483)
    TextView mTitle;
    @BindView(2131296400)
    ImageView rmBindEmail;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.safecenter_bindemail);
        initBase();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN25);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(0);
        this.mTitle.setText("绑定邮箱");
        this.titleRightLayout.setVisibility(8);
        new Timer();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "ACCOUNTID", "");
        if (StringUtils.isEmpty(str)) {
            this.mMyHandler.postDelayed(new Runnable() {
                public final void run() {
                    BindEmailActivity.this.lambda$initView$1$BindEmailActivity();
                }
            }, 200);
        } else if (str.contains("@")) {
            this.bindEmail.setText(str);
        } else {
            this.mMyHandler.postDelayed(new Runnable() {
                public final void run() {
                    BindEmailActivity.this.lambda$initView$0$BindEmailActivity();
                }
            }, 200);
        }
        checkBindEmail();
        this.bindEmail.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                BindEmailActivity.this.checkBindEmail();
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$BindEmailActivity() {
        showKeyboard(this.bindEmail);
    }

    public /* synthetic */ void lambda$initView$1$BindEmailActivity() {
        showKeyboard(this.bindEmail);
    }

    private void showKeyboard(final TextView textView) {
        runOnUiThread(new Runnable() {
            public void run() {
                TextView textView = textView;
                if (textView != null) {
                    textView.setFocusable(true);
                    textView.setFocusableInTouchMode(true);
                    if (!StringUtils.isEmpty(BindEmailActivity.this.bindEmail.getText().toString())) {
                        textView.requestFocus();
                    }
                    ((InputMethodManager) textView.getContext().getSystemService("input_method")).showSoftInput(textView, 0);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void checkBindEmail() {
        if (!StringUtils.isEmpty(this.bindEmail.getText())) {
            this.bindEmailBtn.setEnabled(true);
            this.rmBindEmail.setVisibility(0);
            return;
        }
        this.bindEmailBtn.setEnabled(false);
        this.rmBindEmail.setVisibility(4);
    }

    @OnClick({2131297292, 2131296400, 2131296404})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.bind_rm_email) {
            this.bindEmail.setText("");
        } else if (id == R.id.bindemail_btn) {
            bindEmail();
        } else if (id == R.id.title_left_ll) {
            finish();
        }
    }

    private void bindEmail() {
        final String trim = this.bindEmail.getText().toString().trim();
        if (StringUtils.isEmpty(trim)) {
            ToastUtils.showShort((CharSequence) "请输入邮箱账号");
        } else if (!Utils.isEmail(trim)) {
            ToastUtils.showShort((CharSequence) "请输入合法的邮箱");
        } else {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put(UserPreference.MAIL, trim);
            this.request.put("type", "bind");
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
            Api.getService().sendEmail(this.request).enqueue(new CommonCallBack(this, true) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!BindEmailActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                PreferenceUtil.put(Utils.getContext(), "ACCOUNTID", trim);
                                Bundle bundle = new Bundle();
                                bundle.putString("type", "emailbind");
                                bundle.putString("email", trim);
                                BindEmailActivity.this.gotoActivity(bundle, SendEmailResultActivity.class);
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
