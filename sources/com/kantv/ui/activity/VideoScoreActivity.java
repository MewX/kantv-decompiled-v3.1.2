package com.kantv.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.ShareDialog;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.tencent.tauth.Tencent;
import debug.KanApplication;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class VideoScoreActivity extends PackageActivity {
    private IWXAPI api;
    public Bundle b;
    @BindView(2131296471)
    EditText commentEdit;
    @BindView(2131297129)
    ImageView mFilmHead;
    public String mFilmImg;
    @BindView(2131297065)
    RatingBar mRatingBar;
    public String mScore;
    @BindView(2131297122)
    ImageView mScoreHeadBg;
    @BindView(2131297126)
    ImageView mScoreShareImg;
    private ShareDialog mShareDialog;
    private Tencent mTencent;
    public String mTitle;
    @BindView(2131297121)
    ImageView scoreExitImg;
    @BindView(2131297124)
    TextView scoreOk;
    @BindView(2131297127)
    TextView scoreTitle;
    @BindView(2131297123)
    TextView socoreMsgTv;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_score);
        initBase();
        initStatusBar();
        initView();
        this.mTencent = Tencent.createInstance("1106453625", Utils.getContext());
        String str = "wx70cbf5b9aacb0e47";
        this.api = WXAPIFactory.createWXAPI(this, str, false);
        this.api.registerApp(str);
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE19);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        if (getIntent().getExtras() != null) {
            this.b = getIntent().getExtras();
            this.mTitle = this.b.getString("title");
            this.mFilmImg = this.b.getString("film");
            this.mScore = this.b.getString(Param.SCORE);
            if (!StringUtils.isEmpty(this.mFilmImg)) {
                GlideUtils.loadImageBlur(this.mFilmImg, this.mScoreHeadBg);
                GlideUtils.loadimage(this.mFilmImg, this.mFilmHead);
            }
            this.scoreTitle.setText(this.mTitle);
            if (!StringUtils.isEmpty(this.mScore)) {
                try {
                    this.mRatingBar.setRating(Float.parseFloat(this.mScore));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        this.mRatingBar.setOnRatingBarChangeListener(new OnRatingBarChangeListener() {
            public void onRatingChanged(RatingBar ratingBar, float f, boolean z) {
                if (f == 0.0f) {
                    VideoScoreActivity.this.scoreOk.setEnabled(false);
                    return;
                }
                VideoScoreActivity.this.scoreOk.setEnabled(true);
                double d = (double) f;
                if (d == 0.5d || f == 1.0f) {
                    VideoScoreActivity.this.socoreMsgTv.setText("很差");
                } else if (d == 1.5d || f == 2.0f) {
                    VideoScoreActivity.this.socoreMsgTv.setText("较差");
                } else if (d == 2.5d || f == 3.0f) {
                    VideoScoreActivity.this.socoreMsgTv.setText("一般");
                } else if (d == 3.5d || f == 4.0f) {
                    VideoScoreActivity.this.socoreMsgTv.setText("值得一看");
                } else if (d == 4.5d || f == 5.0f) {
                    VideoScoreActivity.this.socoreMsgTv.setText("力荐");
                }
            }
        });
    }

    @OnClick({2131297121, 2131297126, 2131297124})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.score_exit) {
            finish();
        } else if (id == R.id.score_ok) {
            this.mRatingBar.getRating();
            if (((double) this.mRatingBar.getRating()) != 0.0d) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.mRatingBar.getRating() * 2.0f);
                sb.append("");
                requestGrade(sb.toString());
                return;
            }
            ToastUtils.showShort((CharSequence) "请评分后再提交");
        }
    }

    private void requestGrade(String str) {
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str2);
        this.request.put("tvid", getIntent().getExtras().getString("tid"));
        this.request.put(Param.SCORE, str);
        String str3 = "0";
        this.request.put("type", str3);
        this.request.put("content", this.commentEdit.getText().toString().trim());
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().doComment(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoScoreActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        String str = "status";
                        if (jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                            KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE19).build());
                        } else if (jsonObject.optString(str).equals("401")) {
                            KanApplication.exitLogin();
                            ToastUtils.showShort((CharSequence) VideoScoreActivity.this.getResources().getString(R.string.login_text2));
                            return;
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
