package com.kantv.ui.activity;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
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
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.ActionSheetDialog;
import com.kantv.ui.view.ActionSheetDialog.OnSheetItemClickListener;
import com.kantv.ui.view.ActionSheetDialog.SheetItemColor;
import com.tencent.open.SocialConstants;
import debug.KanApplication;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class FeedBackActivity extends PackageActivity {
    public Bundle b;
    @BindView(2131296576)
    EditText mEdit;
    @BindView(2131296601)
    EditText mMail;
    @BindView(2131296577)
    TextView mType;
    public String partId;
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
    public String tvId;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_feedback);
        initBase();
        initStatusBar();
        initTitle();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN16);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("我要反馈");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        this.titleRightTxt.setVisibility(0);
        this.titleRightTxt.setText("提交");
        this.titleRightTxt.setTextSize(15.0f);
        this.titleRightTxt.setTextColor(getResources().getColor(R.color.hot_gray));
        if (getIntent().getExtras() != null) {
            this.b = getIntent().getExtras();
            this.tvId = this.b.getString("tvid");
            this.partId = this.b.getString("part_id");
        }
        this.mEdit.setFocusable(true);
        this.mEdit.setFocusableInTouchMode(true);
        this.mEdit.requestFocus();
        new Timer().schedule(new TimerTask() {
            public void run() {
                ((InputMethodManager) FeedBackActivity.this.mEdit.getContext().getSystemService("input_method")).showSoftInput(FeedBackActivity.this.mEdit, 0);
            }
        }, 200);
        this.mEdit.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!StringUtils.isEmpty(FeedBackActivity.this.mEdit.getText())) {
                    FeedBackActivity.this.titleRightTxt.setTextColor(FeedBackActivity.this.getResources().getColor(R.color.white));
                } else {
                    FeedBackActivity.this.titleRightTxt.setTextColor(FeedBackActivity.this.getResources().getColor(R.color.hot_gray));
                }
            }
        });
    }

    private void initRequest() {
        String charSequence = this.mType.getText().toString();
        String trim = this.mEdit.getText().toString().trim();
        String trim2 = this.mMail.getText().toString().trim();
        if (StringUtils.isEmpty(trim)) {
            ToastUtils.showShort((CharSequence) "请输入您想要反馈的内容！");
        } else if (StringUtils.isEmpty(trim2)) {
            ToastUtils.showShort((CharSequence) "请输入邮箱地址。");
        } else {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("content", trim);
            String str = "type";
            if (charSequence.equals("求片")) {
                this.request.put(str, SocialConstants.TYPE_REQUEST);
            } else if (charSequence.equals("平台合作")) {
                this.request.put(str, "cooperate");
            } else {
                this.request.put(str, "adviceapp");
            }
            if (!StringUtils.isEmpty(this.tvId)) {
                this.request.put("tvid", this.tvId);
                this.request.put(str, "advice");
            }
            if (!StringUtils.isEmpty(this.partId)) {
                this.request.put("part_id", this.partId);
            }
            this.request.put("email", trim2);
            Map map = this.request;
            StringBuilder sb = new StringBuilder();
            sb.append(Build.BRAND);
            sb.append(" ");
            sb.append(Build.MODEL);
            map.put("device", sb.toString());
            this.request.put("os", VERSION.RELEASE);
            this.request.put("app_ver", Utils.getPackageInfo(this).versionName);
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            Api.getService().feedback(this.request).enqueue(new CommonCallBack(this, true) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!FeedBackActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                FeedBackActivity.this.finish();
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                }
            });
        }
    }

    private void initDialog() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this);
        actionSheetDialog.builder();
        String str = "求片";
        String str2 = "平台合作";
        actionSheetDialog.setTitle("请选择反馈类型").setCancelable(false).setCanceledOnTouchOutside(false).addSheetItem("意见反馈", SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                FeedBackActivity.this.mType.setText("意见反馈");
            }
        }).addSheetItem(str, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                FeedBackActivity.this.mType.setText("求片");
            }
        }).addSheetItem(str2, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                FeedBackActivity.this.mType.setText("平台合作");
            }
        }).show();
    }

    @OnClick({2131297328, 2131296578, 2131297292})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.feedback_type_ll) {
            initDialog();
        } else if (id == R.id.title_left_ll) {
            finish();
        } else if (id == R.id.tv_right) {
            EditText editText = this.mEdit;
            if (editText != null && !StringUtils.isEmpty(editText.getText())) {
                initRequest();
            }
        }
    }
}
