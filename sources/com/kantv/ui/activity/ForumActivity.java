package com.kantv.ui.activity;

import android.os.Bundle;
import android.view.View;
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
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class ForumActivity extends PackageActivity {
    @BindView(2131296600)
    EditText mEdit;
    @BindView(2131296601)
    EditText mMail;
    @BindView(2131296604)
    TextView mType;
    @BindView(2131297293)
    ImageView titleLeftImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131296482)
    RelativeLayout titleRelateLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131296483)
    TextView titleTV;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_forum);
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
        this.titleTV.setText("求片");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightLayout.setVisibility(8);
    }

    private void initRequest() {
        String charSequence = this.mType.getText().toString();
        String trim = this.mEdit.getText().toString().trim();
        String trim2 = this.mMail.getText().toString().trim();
        if (StringUtils.isEmpty(trim)) {
            ToastUtils.showShort((CharSequence) "请输入您想要的资源名称！");
        } else if (StringUtils.isEmpty(trim2)) {
            ToastUtils.showShort((CharSequence) "请输入邮箱地址。");
        } else {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            Map map = this.request;
            StringBuilder sb = new StringBuilder();
            sb.append("求");
            sb.append(charSequence);
            sb.append("@：");
            sb.append(trim);
            sb.append("@");
            map.put("content", sb.toString());
            this.request.put("type", SocialConstants.TYPE_REQUEST);
            this.request.put("email", trim2);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            Api.getService().feedback(this.request).enqueue(new CommonCallBack(this, true) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!ForumActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                ForumActivity.this.finish();
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
        String str = "电影";
        String str2 = "动漫";
        String str3 = "综艺";
        String str4 = "纪录片";
        actionSheetDialog.setTitle("请选择资源类别").setCancelable(false).setCanceledOnTouchOutside(false).addSheetItem("电视剧", SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                ForumActivity.this.mType.setText("电视剧");
            }
        }).addSheetItem(str, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                ForumActivity.this.mType.setText("电影");
            }
        }).addSheetItem(str2, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                ForumActivity.this.mType.setText("动漫");
            }
        }).addSheetItem(str3, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                ForumActivity.this.mType.setText("综艺");
            }
        }).addSheetItem(str4, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                ForumActivity.this.mType.setText("纪录片");
            }
        }).show();
    }

    @OnClick({2131296602, 2131296603, 2131297292})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.forum_ok /*2131296602*/:
                initRequest();
                return;
            case R.id.forum_select_ll /*2131296603*/:
                initDialog();
                return;
            case R.id.title_left_ll /*2131297292*/:
                finish();
                return;
            default:
                return;
        }
    }
}
