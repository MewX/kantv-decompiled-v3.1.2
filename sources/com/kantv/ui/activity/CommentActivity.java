package com.kantv.ui.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.avos.avoscloud.im.v2.Conversation;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.GpsUtil;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.CommentChildBean;
import com.kantv.ui.bean.String8Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tandong.bottomview.view.BottomView;
import debug.KanApplication;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class CommentActivity extends PackageActivity {
    /* access modifiers changed from: private */
    public CommonAdapter<CommentChildBean> mAdapter;
    /* access modifiers changed from: private */
    public List<CommentChildBean> mData = new ArrayList();
    @BindView(2131296366)
    XRecyclerView mRecyclerView;
    @BindView(2131296483)
    TextView mTitle;
    /* access modifiers changed from: private */
    public int page = 1;
    private int pagesize = 5;
    String tid;
    @BindView(2131297293)
    ImageView titleLeftImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131296482)
    RelativeLayout titleRelateLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.all_comments);
        initBase();
        initStatusBar();
        initTitle();
        if (getIntent().getExtras() != null) {
            this.tid = getIntent().getExtras().getString("tid");
            initView();
            initRequest();
        }
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN12);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.mTitle.setText("所有评论");
        this.mTitle.setTextSize(18.0f);
        this.mTitle.setTextColor(getResources().getColor(R.color.white));
        this.titleRightLayout.setVisibility(8);
    }

    /* access modifiers changed from: private */
    public void initRequest() {
        this.request.clear();
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str2);
        this.request.put("tvid", this.tid);
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(this.page);
        sb.append(str);
        map.put("page", sb.toString());
        String str3 = "0";
        this.request.put("type", str3);
        this.request.put(Conversation.QUERY_PARAM_SORT, AppSettingsData.STATUS_NEW);
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().getComments(this.request).enqueue(new CommonCallBack(this, false) {
            /* JADX WARNING: Removed duplicated region for block: B:33:0x00b9 A[SYNTHETIC, Splitter:B:33:0x00b9] */
            /* JADX WARNING: Removed duplicated region for block: B:52:0x011b A[Catch:{ Exception -> 0x0221 }] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onResponse(retrofit2.Call<okhttp3.ResponseBody> r27, retrofit2.Response<okhttp3.ResponseBody> r28) {
                /*
                    r26 = this;
                    r1 = r26
                    super.onResponse(r27, r28)
                    com.kantv.ui.activity.CommentActivity r0 = com.kantv.ui.activity.CommentActivity.this
                    boolean r0 = r0.isDestroy
                    if (r0 == 0) goto L_0x000e
                    return
                L_0x000e:
                    java.lang.String r0 = r1.json
                    boolean r0 = com.kantv.common.utils.StringUtils.isEmpty(r0)
                    if (r0 != 0) goto L_0x0225
                    com.google.gson.Gson r0 = new com.google.gson.Gson
                    r0.<init>()
                    java.lang.String r2 = r1.json     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r3 = "\\[\\]"
                    java.lang.String r4 = "null"
                    java.lang.String r2 = r2.replaceAll(r3, r4)     // Catch:{ Exception -> 0x0221 }
                    r1.json = r2     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r2 = r1.json     // Catch:{ Exception -> 0x0221 }
                    java.lang.Class<com.kantv.ui.bean.CommentReqBean> r3 = com.kantv.ui.bean.CommentReqBean.class
                    java.lang.Object r0 = r0.fromJson(r2, r3)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean r0 = (com.kantv.ui.bean.CommentReqBean) r0     // Catch:{ Exception -> 0x0221 }
                    int r2 = r0.getStatus()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r3 = "200"
                    int r3 = java.lang.Integer.parseInt(r3)     // Catch:{ Exception -> 0x0221 }
                    if (r2 != r3) goto L_0x0225
                    com.kantv.ui.activity.CommentActivity r2 = com.kantv.ui.activity.CommentActivity.this     // Catch:{ Exception -> 0x0221 }
                    com.kantv.lib.recyclerview.XRecyclerView r2 = r2.mRecyclerView     // Catch:{ Exception -> 0x0221 }
                    if (r2 == 0) goto L_0x004a
                    com.kantv.ui.activity.CommentActivity r2 = com.kantv.ui.activity.CommentActivity.this     // Catch:{ Exception -> 0x0221 }
                    com.kantv.lib.recyclerview.XRecyclerView r2 = r2.mRecyclerView     // Catch:{ Exception -> 0x0221 }
                    r2.refreshComplete()     // Catch:{ Exception -> 0x0221 }
                L_0x004a:
                    com.kantv.ui.bean.CommentReqBean$DataBean r0 = r0.getData()     // Catch:{ Exception -> 0x0221 }
                    if (r0 == 0) goto L_0x020f
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r2 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    if (r2 == 0) goto L_0x020f
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r2 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    java.util.List r2 = r2.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    if (r2 == 0) goto L_0x020f
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r2 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    java.util.List r2 = r2.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r3 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    java.util.HashMap r3 = r3.getCommentUserIDList()     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r0 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    java.util.List r0 = r0.getMyLikeIDList()     // Catch:{ Exception -> 0x0221 }
                    r4 = 0
                    r5 = 0
                L_0x007a:
                    int r6 = r2.size()     // Catch:{ Exception -> 0x0221 }
                    if (r5 >= r6) goto L_0x020f
                    java.lang.String r6 = ""
                    if (r3 == 0) goto L_0x00b2
                    int r7 = r3.size()     // Catch:{ Exception -> 0x0221 }
                    if (r7 <= 0) goto L_0x00b2
                    java.lang.Object r7 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r7 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r7     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r7 = r7.getUid()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r8 = r3.get(r7)     // Catch:{ Exception -> 0x0221 }
                    if (r8 == 0) goto L_0x00b2
                    java.lang.Object r8 = r3.get(r7)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r8     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r8 = r8.getName()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r7 = r3.get(r7)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r7 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r7     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r7 = r7.getPhoto()     // Catch:{ Exception -> 0x0221 }
                    r16 = r7
                    r15 = r8
                    goto L_0x00b5
                L_0x00b2:
                    r15 = r6
                    r16 = r15
                L_0x00b5:
                    java.lang.String r7 = "0"
                    if (r0 == 0) goto L_0x00e8
                    int r8 = r0.size()     // Catch:{ Exception -> 0x0221 }
                    if (r8 <= 0) goto L_0x00e8
                    r8 = r7
                    r7 = 0
                L_0x00c1:
                    int r9 = r0.size()     // Catch:{ Exception -> 0x0221 }
                    if (r7 >= r9) goto L_0x00e6
                    java.lang.Object r9 = r0.get(r7)     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r9 = (java.lang.String) r9     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r10 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r10 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r10     // Catch:{ Exception -> 0x0221 }
                    long r10 = r10.get_id()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r10 = java.lang.Long.toString(r10)     // Catch:{ Exception -> 0x0221 }
                    boolean r9 = r9.equals(r10)     // Catch:{ Exception -> 0x0221 }
                    if (r9 == 0) goto L_0x00e3
                    java.lang.String r8 = "1"
                L_0x00e3:
                    int r7 = r7 + 1
                    goto L_0x00c1
                L_0x00e6:
                    r13 = r8
                    goto L_0x00e9
                L_0x00e8:
                    r13 = r7
                L_0x00e9:
                    java.util.ArrayList r7 = new java.util.ArrayList     // Catch:{ Exception -> 0x0221 }
                    r7.<init>()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r8 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r8     // Catch:{ Exception -> 0x0221 }
                    java.util.List r8 = r8.getChild()     // Catch:{ Exception -> 0x0221 }
                    if (r8 == 0) goto L_0x01ac
                    java.lang.Object r8 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r8     // Catch:{ Exception -> 0x0221 }
                    java.util.List r8 = r8.getChild()     // Catch:{ Exception -> 0x0221 }
                    int r8 = r8.size()     // Catch:{ Exception -> 0x0221 }
                    if (r8 <= 0) goto L_0x01ac
                    r8 = 0
                L_0x010b:
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    java.util.List r9 = r9.getChild()     // Catch:{ Exception -> 0x0221 }
                    int r9 = r9.size()     // Catch:{ Exception -> 0x0221 }
                    if (r8 >= r9) goto L_0x01ac
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    java.util.List r9 = r9.getChild()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r9.get(r8)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean.ChildBean) r9     // Catch:{ Exception -> 0x0221 }
                    if (r3 == 0) goto L_0x017a
                    int r10 = r3.size()     // Catch:{ Exception -> 0x0221 }
                    if (r10 <= 0) goto L_0x017a
                    long r10 = r9.getToUser()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r10 = java.lang.Long.toString(r10)     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r11 = r3.get(r10)     // Catch:{ Exception -> 0x0221 }
                    if (r11 == 0) goto L_0x0156
                    java.lang.Object r11 = r3.get(r10)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r11     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r11 = r11.getName()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r10 = r3.get(r10)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r10 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r10     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r10 = r10.getPhoto()     // Catch:{ Exception -> 0x0221 }
                    goto L_0x0158
                L_0x0156:
                    r10 = r6
                    r11 = r10
                L_0x0158:
                    java.lang.String r12 = r9.getUid()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r14 = r3.get(r12)     // Catch:{ Exception -> 0x0221 }
                    if (r14 == 0) goto L_0x0173
                    java.lang.Object r12 = r3.get(r12)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r12 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r12     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r12 = r12.getName()     // Catch:{ Exception -> 0x0221 }
                    r21 = r10
                    r19 = r11
                    r18 = r12
                    goto L_0x0180
                L_0x0173:
                    r18 = r6
                    r21 = r10
                    r19 = r11
                    goto L_0x0180
                L_0x017a:
                    r18 = r6
                    r19 = r18
                    r21 = r19
                L_0x0180:
                    com.kantv.ui.bean.String8Bean r10 = new com.kantv.ui.bean.String8Bean     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r20 = r9.getComment()     // Catch:{ Exception -> 0x0221 }
                    long r11 = r9.get_id()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r22 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x0221 }
                    long r11 = r9.getTvid()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r23 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x0221 }
                    long r11 = r9.getPid()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r24 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r25 = "0"
                    r17 = r10
                    r17.<init>(r18, r19, r20, r21, r22, r23, r24, r25)     // Catch:{ Exception -> 0x0221 }
                    r7.add(r10)     // Catch:{ Exception -> 0x0221 }
                    int r8 = r8 + 1
                    goto L_0x010b
                L_0x01ac:
                    com.kantv.ui.activity.CommentActivity r6 = com.kantv.ui.activity.CommentActivity.this     // Catch:{ Exception -> 0x0221 }
                    java.util.List r6 = r6.mData     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentChildBean r8 = new com.kantv.ui.bean.CommentChildBean     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    long r9 = r9.get_id()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r10 = java.lang.Long.toString(r9)     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    long r11 = r9.getTvid()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r11 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r12 = r9.getComment()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    int r9 = r9.getCreated()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r14 = java.lang.Integer.toString(r9)     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r2.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    int r9 = r9.getLike()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r17 = java.lang.Integer.toString(r9)     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r19 = ""
                    java.lang.String r20 = ""
                    java.lang.String r21 = ""
                    java.lang.String r22 = ""
                    java.lang.String r23 = ""
                    java.lang.String r24 = "0"
                    r9 = r8
                    r18 = r7
                    r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24)     // Catch:{ Exception -> 0x0221 }
                    r6.add(r8)     // Catch:{ Exception -> 0x0221 }
                    int r5 = r5 + 1
                    goto L_0x007a
                L_0x020f:
                    com.kantv.ui.activity.CommentActivity r0 = com.kantv.ui.activity.CommentActivity.this     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter     // Catch:{ Exception -> 0x0221 }
                    if (r0 == 0) goto L_0x0225
                    com.kantv.ui.activity.CommentActivity r0 = com.kantv.ui.activity.CommentActivity.this     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter     // Catch:{ Exception -> 0x0221 }
                    r0.notifyDataSetChanged()     // Catch:{ Exception -> 0x0221 }
                    goto L_0x0225
                L_0x0221:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x0225:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.activity.CommentActivity.AnonymousClass1.onResponse(retrofit2.Call, retrofit2.Response):void");
            }
        });
    }

    private void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mRecyclerView.setPullRefreshEnabled(false);
        final int i = DensityUtil.Density40;
        AnonymousClass2 r2 = new CommonAdapter<CommentChildBean>(this, R.layout.item_videocomment, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, CommentChildBean commentChildBean, int i) {
                ViewHolder viewHolder2 = viewHolder;
                final CommentChildBean commentChildBean2 = commentChildBean;
                String str = "1";
                if (commentChildBean.getStr15().equals(str)) {
                    viewHolder2.setVisible(R.id.item_index_bt, true);
                    viewHolder2.setVisible(R.id.item_index_contextbj, false);
                    viewHolder2.setOnClickListener(R.id.item_index_bt, new OnClickListener() {
                        public void onClick(View view) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                Bundle bundle = new Bundle();
                                bundle.putString("tid", CommentActivity.this.tid);
                                bundle.putString("type", "0");
                            }
                        }
                    });
                }
                if (commentChildBean.getListBean() == null || commentChildBean.getListBean().size() <= 0) {
                    viewHolder2.setVisible(R.id.item_index_recycler, false);
                } else {
                    viewHolder2.setVisible(R.id.item_index_recycler, true);
                    ArrayList arrayList = new ArrayList();
                    final int size = commentChildBean.getListBean().size();
                    int i2 = size < 6 ? size : 5;
                    for (int i3 = 0; i3 < i2; i3++) {
                        arrayList.add(commentChildBean.getListBean().get(i3));
                    }
                    if (size > 5) {
                        String8Bean string8Bean = new String8Bean("", "", "", "", "", "", "", "1");
                        arrayList.add(string8Bean);
                    }
                    AnonymousClass2 r0 = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_replysubmit, arrayList) {
                        /* access modifiers changed from: protected */
                        public void convert(ViewHolder viewHolder, String8Bean string8Bean, int i) {
                            if (string8Bean.getStr8().equals("0")) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(string8Bean.getStr1());
                                sb.append("  回复  ");
                                sb.append(string8Bean.getStr2());
                                sb.append("：");
                                sb.append(string8Bean.getStr3());
                                viewHolder.setText(R.id.item_replysubmit_text, sb.toString());
                            } else if (string8Bean.getStr8().equals("1")) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("共");
                                sb2.append(size);
                                sb2.append("条回复");
                                viewHolder.setText(R.id.item_replysubmit_text, sb2.toString());
                                viewHolder.setTextColor(R.id.item_replysubmit_text, CommentActivity.this.getResources().getColor(R.color.them_color));
                            }
                        }
                    };
                    viewHolder2.setAdapter(R.id.item_index_recycler, r0, Utils.getContext(), 1);
                }
                String str7 = commentChildBean.getStr7();
                int i4 = i;
                viewHolder2.setCircleImageURL(R.id.item_index_pltx, str7, i4, i4);
                viewHolder2.setText(R.id.item_index_plname, commentChildBean.getStr6());
                viewHolder2.setText(R.id.item_index_time, DateUtil.timeStamp2Date(commentChildBean.getStr5(), "yyyy-MM-dd"));
                viewHolder2.setText(R.id.item_index_comment, commentChildBean.getStr3().replace(" ", ""));
                viewHolder2.setText(R.id.item_index_num, commentChildBean.getStr8());
                viewHolder2.setOnClickListener(R.id.item_index_qj, new OnClickListener() {
                    public void onClick(View view) {
                        if (!((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                            CommentActivity.this.initAlertDialog("提示", "您当前还未登录，是否前往登录？");
                        } else if (!GpsUtil.isOpen() && CommonViewModel.isMustOpenGps()) {
                            GpsUtil.requestGps(CommentActivity.this);
                        } else if (CommentActivity.this.checkPersonalInfo()) {
                            CommentActivity.this.replyCommentDialog(commentChildBean2.getStr1(), commentChildBean2.getStr2(), commentChildBean2.getStr6(), commentChildBean2.getStr3());
                        }
                    }
                });
                viewHolder2.setVisible(R.id.item_index_reply, false);
                if (commentChildBean.getStr4().equals(str)) {
                    viewHolder2.setImageDrawable(R.id.item_index_dianzhan, CommentActivity.this.getResources().getDrawable(R.drawable.hand_like_enable));
                } else if (commentChildBean.getStr4().equals("0")) {
                    viewHolder2.setImageDrawable(R.id.item_index_dianzhan, CommentActivity.this.getResources().getDrawable(R.drawable.hand_like_disable));
                }
                final int i5 = i;
                viewHolder2.setOnClickListener(R.id.item_index_dianji, new OnClickListener() {
                    public void onClick(View view) {
                        if (commentChildBean2.getStr4().equals("1")) {
                            ToastUtils.showShort((CharSequence) "当前已经点赞！");
                        } else if (commentChildBean2.getStr4().equals("0")) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                CommentActivity.this.initRequestLikeThis(commentChildBean2.getStr2(), commentChildBean2.getStr1(), i5 - 1);
                            } else {
                                ToastUtils.showShort((CharSequence) "您当前未登录，不能点赞！");
                            }
                        }
                    }
                });
            }
        };
        this.mAdapter = r2;
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                CommentActivity.this.page = 1;
                if (CommentActivity.this.mData != null) {
                    CommentActivity.this.mData.clear();
                }
                CommentActivity.this.initRequest();
            }

            public void onLoadMore() {
                CommentActivity.this.page = CommentActivity.this.page + 1;
                CommentActivity.this.initRequest();
            }
        });
    }

    @OnClick({2131297292})
    public void onClick(View view) {
        if (view.getId() == R.id.title_left_ll) {
            finish();
        }
    }

    public boolean checkPersonalInfo() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "name", "");
        if (StringUtils.isEmpty(str) || !str.contains(getString(R.string.default_nick_head))) {
            return true;
        }
        updatePersonInfoDialog("修改资料提示", "为了让大家更好的记住你，\n丰富你的个人资料吧！");
        return false;
    }

    private void updatePersonInfoDialog(String str, String str2) {
        new AlertDialog(this).builder().setTitle(str).setMsg(str2).setCancelable(false).setPositiveButton("立即修改", new OnClickListener() {
            public void onClick(View view) {
                CommentActivity.this.gotoActivity(MyInfoActivity.class);
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void replyCommentDialog(String str, String str2, String str3, String str4) {
        BottomView bottomView = new BottomView((Context) this, (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_reply_comment);
        TextView textView = (TextView) bottomView.getView().findViewById(R.id.reply_id);
        TextView textView2 = (TextView) bottomView.getView().findViewById(R.id.replyComment);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append(": ");
        sb.append(str4);
        textView.setText(sb.toString());
        final BottomView bottomView2 = bottomView;
        final String str5 = str;
        final String str6 = str2;
        final String str7 = str3;
        AnonymousClass5 r0 = new OnClickListener() {
            public void onClick(View view) {
                bottomView2.dismissBottomView();
                CommentActivity.this.replyCommentDialog(str5, str6, str7);
            }
        };
        textView2.setOnClickListener(r0);
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
    }

    public void replyCommentDialog(String str, String str2, String str3) {
        BottomView bottomView = new BottomView((Context) this, (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_commentedit);
        TextView textView = (TextView) bottomView.getView().findViewById(R.id.comment_submit);
        final EditText editText = (EditText) bottomView.getView().findViewById(R.id.comment_edit);
        StringBuilder sb = new StringBuilder();
        sb.append("回复 ");
        sb.append(str3);
        sb.append(": ");
        editText.setHint(sb.toString());
        final EditText editText2 = editText;
        final String str4 = str;
        final String str5 = str2;
        final BottomView bottomView2 = bottomView;
        AnonymousClass6 r0 = new OnClickListener() {
            public void onClick(View view) {
                String trim = editText2.getText().toString().trim();
                String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
                if (StringUtils.isEmpty(trim)) {
                    ToastUtils.showShort((CharSequence) "请输入评论内容");
                    return;
                }
                CommentActivity.this.request.clear();
                CommentActivity.this.request.put("noncestr", SignConfig.noncestr);
                CommentActivity.this.request.put("timestamp", SignConfig.timestamp);
                CommentActivity.this.request.put("sbID", SignConfig.sbID);
                CommentActivity.this.request.put("sign", SignConfig.sign);
                CommentActivity.this.request.put("_token", str);
                String str2 = str4;
                if (str2 != null && !str2.isEmpty()) {
                    CommentActivity.this.request.put("pid", str4);
                    CommentActivity.this.request.put("cid", str4);
                }
                CommentActivity.this.request.put("tvid", str5);
                String str3 = "0";
                CommentActivity.this.request.put("type", str3);
                CommentActivity.this.request.put("content", trim);
                CommentActivity.this.request.put("devicetype", str3);
                CommentActivity.this.request.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().replySubmit(CommentActivity.this.request).enqueue(new CommonCallBack(CommentActivity.this, true) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!CommentActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            String str = "input_method";
                            if (jsonObject == null) {
                                ToastUtils.showShort((CharSequence) "提交失败");
                                InputMethodManager inputMethodManager = (InputMethodManager) CommentActivity.this.getSystemService(str);
                                if (inputMethodManager != null) {
                                    inputMethodManager.hideSoftInputFromWindow(CommentActivity.this.getWindow().getDecorView().getWindowToken(), 0);
                                }
                                if (bottomView2 != null) {
                                    bottomView2.dismissBottomView();
                                }
                                return;
                            }
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                CommentActivity.this.page = 1;
                                if (CommentActivity.this.mData != null) {
                                    CommentActivity.this.mData.clear();
                                }
                                CommentActivity.this.initRequest();
                                editText2.setText("");
                                InputMethodManager inputMethodManager2 = (InputMethodManager) CommentActivity.this.getSystemService(str);
                                if (inputMethodManager2 != null) {
                                    inputMethodManager2.hideSoftInputFromWindow(CommentActivity.this.getWindow().getDecorView().getWindowToken(), 0);
                                }
                                bottomView2.dismissBottomView();
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                        }
                    }
                });
            }
        };
        textView.setOnClickListener(r0);
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
        new Timer().schedule(new TimerTask() {
            public void run() {
                EditText editText = editText;
                if (editText != null) {
                    editText.setFocusable(true);
                    editText.setFocusableInTouchMode(true);
                    editText.requestFocus();
                    ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
                }
            }
        }, 200);
    }

    /* access modifiers changed from: private */
    public void initAlertDialog(String str, String str2) {
        String str3 = "确定";
        new AlertDialog(this).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                CommentActivity.this.gotoActivity(AccountLoginActivity.class);
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void initRequestLikeThis(String str, String str2, final int i) {
        this.request.clear();
        this.request.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("cid", str2);
        this.request.put("tvid", str);
        String str3 = "0";
        this.request.put("type", str3);
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().likethis(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!CommentActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            ((CommentChildBean) CommentActivity.this.mData.get(i)).setStr4("1");
                            ((CommentChildBean) CommentActivity.this.mData.get(i)).setStr8(String.valueOf(Integer.parseInt(((CommentChildBean) CommentActivity.this.mData.get(i)).getStr8()) + 1));
                            if (CommentActivity.this.mAdapter != null) {
                                CommentActivity.this.mAdapter.notifyDataSetChanged();
                            }
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }
}
