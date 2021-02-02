package com.kantv.ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
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
import com.kantv.lib.verifyedittext.VerifyEditText;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import java.lang.ref.WeakReference;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class SafeVerInputActivity extends PackageActivity {
    @BindView(2131296399)
    TextView bindResendTv;
    private int mCount = 300;
    private Handler mHandler = new MyHandler(this);
    @BindView(2131297116)
    TextView safeVerNum;
    @BindView(2131297117)
    TextView safeVerTip;
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
    @BindView(2131297347)
    TextView verOkBtn;
    @BindView(2131297348)
    TextView vercodeTimer;
    @BindView(2131297350)
    VerifyEditText verifyEditText;

    private static class MyHandler extends Handler {
        private final WeakReference<SafeVerInputActivity> mActivity;

        public MyHandler(SafeVerInputActivity safeVerInputActivity) {
            this.mActivity = new WeakReference<>(safeVerInputActivity);
        }

        public void handleMessage(Message message) {
            if (this.mActivity.get() != null) {
                ((SafeVerInputActivity) this.mActivity.get()).todo();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_input_vernum);
        initBase();
        initStatusBar();
        initTitle();
        this.mHandler.sendMessageDelayed(Message.obtain(), 1000);
    }

    private void showKeyboard(final TextView textView) {
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

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("请输入验证码");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        if (getIntent().getExtras() != null) {
            Bundle extras = getIntent().getExtras();
            this.safeVerTip.setText(String.format(getString(R.string.safever_input_tip), new Object[]{extras.getString("phone")}));
        }
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                SafeVerInputActivity safeVerInputActivity = SafeVerInputActivity.this;
                safeVerInputActivity.showSoftInputFromWindow(safeVerInputActivity, (EditText) safeVerInputActivity.verifyEditText.editTextList.get(0));
            }
        }, 1000);
    }

    public void showSoftInputFromWindow(Activity activity, EditText editText) {
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
        ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
    }

    @OnClick({2131297292, 2131297347, 2131296399})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.bind_resend_tv) {
            verPhone();
        } else if (id == R.id.title_left_ll) {
            finish();
        } else if (id == R.id.ver_ok) {
            checkVar();
        }
    }

    private void checkVar() {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        if (!StringUtils.isEmpty(this.verifyEditText.getContent())) {
            this.request.put("verifyCode", this.verifyEditText.getContent());
        }
        this.request.put("type", "change");
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        Api.getService().validPhoneCode(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!SafeVerInputActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            SafeVerInputActivity.this.gotoActivity(BindPhoneActivity.class);
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    public void todo() {
        this.mCount--;
        if (this.mCount > 0) {
            this.mHandler.sendEmptyMessageDelayed(0, 1000);
            TextView textView = this.vercodeTimer;
            StringBuilder sb = new StringBuilder();
            sb.append(this.mCount);
            sb.append("秒后");
            textView.setText(sb.toString());
            this.bindResendTv.setTextColor(getResources().getColor(R.color.temp_tv_color));
            this.bindResendTv.setEnabled(false);
            return;
        }
        this.vercodeTimer.setText("");
        this.mCount = 300;
        this.bindResendTv.setTextColor(getResources().getColor(R.color.item_filter_color));
        this.bindResendTv.setEnabled(true);
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
                if (!SafeVerInputActivity.this.isDestroy) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler = null;
    }
}
