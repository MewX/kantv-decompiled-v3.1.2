package com.kantv.ui.activity;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.avos.avoscloud.im.v2.Conversation;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.imkan.tv.R;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.viewmodel.CommonViewModel;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class WxHaoActivity extends PackageActivity {
    /* access modifiers changed from: private */
    public static final String TAG = "WxHaoActivity";
    @BindView(2131297417)
    ImageView mClose;
    @BindView(2131296493)
    TextView mCopyCodeText;
    /* access modifiers changed from: private */
    public int mTimeOut;
    @BindView(2131297286)
    TextView mTip1Text;
    @BindView(2131297287)
    TextView mTip2Text;
    @BindView(2131297288)
    TextView mTip3Text;
    @BindView(2131297289)
    TextView mTip4Text;
    private String mTitle;
    @BindView(2131297290)
    TextView mTitleText;
    String photo;
    String scode;
    String text;

    private void initView() {
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.dilaog_wx_hao);
        ButterKnife.bind((Object) Integer.valueOf(R.layout.dilaog_wx_hao), (Activity) this);
        initBase();
        initView();
        initData();
    }

    private void initData() {
        this.scode = getIntent().getStringExtra("scode");
        if (!StringUtils.isEmpty(this.scode)) {
            this.mTip3Text.setText(this.scode);
            TextView textView = this.mTip4Text;
            StringBuilder sb = new StringBuilder();
            sb.append(getString(R.string.wx_how_tip6));
            sb.append(this.scode);
            textView.setText(sb.toString());
        }
        this.photo = getIntent().getStringExtra("photo");
        StringUtils.isEmpty(this.photo);
        this.text = getIntent().getStringExtra(MimeTypes.BASE_TYPE_TEXT);
        if (!StringUtils.isEmpty(this.text)) {
            this.mTip1Text.setText(getString(R.string.wx_how_tip4).replace(getString(R.string.wx_how_tip9), this.text));
            this.mTip2Text.setText(getString(R.string.wx_how_tip5).replace(getString(R.string.wx_how_tip9), this.text));
        }
        this.mTitle = getIntent().getStringExtra("title");
        if (!StringUtils.isEmpty(this.mTitle)) {
            this.mTitleText.setText(getString(R.string.wxhow_title).replace(getString(R.string.wxhow_title_tip), this.mTitle));
        }
        this.mTimeOut = getIntent().getIntExtra("time", 180);
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("code:");
        sb2.append(this.scode);
        sb2.append(" time:");
        sb2.append(this.mTimeOut);
        sb2.append(" tilte:");
        sb2.append(this.mTitle);
        sb2.append(" tip:");
        sb2.append(this.text);
        Log.i(str, sb2.toString());
        lambda$getState$0$WxHaoActivity();
    }

    private void getCode() {
        AILog.i(TAG, "getCode");
        CommonViewModel.getWxCode("0", new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                String str = "data";
                super.onResponse(call, response);
                try {
                    String access$000 = WxHaoActivity.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("getCode reponse:");
                    sb.append(this.json);
                    AILog.i(access$000, sb.toString());
                    JSONObject jSONObject = new JSONObject(this.json);
                    if (jSONObject.getInt("status") == 200) {
                        WxHaoActivity.this.scode = jSONObject.getJSONObject(str).getString("code");
                        WxHaoActivity.this.mTimeOut = jSONObject.getJSONObject(str).getInt(Conversation.TEMPORARYTTL);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    /* access modifiers changed from: private */
    /* renamed from: getState */
    public void lambda$getState$0$WxHaoActivity() {
        AILog.i(TAG, "getState");
        this.mMyHandler.postDelayed(new Runnable() {
            public final void run() {
                WxHaoActivity.this.lambda$getState$0$WxHaoActivity();
            }
        }, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        CommonViewModel.getWxCode("1", new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                String str = "data";
                super.onResponse(call, response);
                try {
                    String access$000 = WxHaoActivity.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("getState reponse:");
                    sb.append(this.json);
                    AILog.i(access$000, sb.toString());
                    JSONObject jSONObject = new JSONObject(this.json);
                    if (jSONObject.getInt("status") == 200) {
                        if (jSONObject.getJSONObject(str).getInt("subscribe") == 1) {
                            WxHaoActivity.this.setResult(-1);
                            WxHaoActivity.this.finish();
                        }
                        String string = jSONObject.getJSONObject(str).getString("code");
                        if (!StringUtils.isEmpty(string) && !string.equals(WxHaoActivity.this.scode)) {
                            WxHaoActivity.this.scode = string;
                            WxHaoActivity.this.mTimeOut = jSONObject.getJSONObject(str).getInt(Conversation.TEMPORARYTTL);
                            WxHaoActivity.this.mTip3Text.setText(WxHaoActivity.this.scode);
                            TextView textView = WxHaoActivity.this.mTip4Text;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(WxHaoActivity.this.getString(R.string.wx_how_tip6));
                            sb2.append(WxHaoActivity.this.scode);
                            textView.setText(sb2.toString());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    @OnClick({2131297417, 2131296493})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.copy_code) {
            ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Label", this.scode));
            StringBuilder sb = new StringBuilder();
            sb.append(getString(R.string.copy_success));
            sb.append(":");
            sb.append(this.scode);
            ToastUtils.show((CharSequence) sb.toString(), 1);
        } else if (id == R.id.wx_hao_close) {
            setResult(0);
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    public void onBackPressed() {
        setResult(0);
        super.onBackPressed();
    }
}
