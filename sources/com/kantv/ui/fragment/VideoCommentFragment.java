package com.kantv.ui.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.core.widget.NestedScrollView.OnScrollChangeListener;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.avos.avoscloud.im.v2.Conversation;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.utils.GpsUtil;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.AccountLoginActivity;
import com.kantv.ui.activity.VideoPlayActivity;
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
import io.fabric.sdk.android.services.settings.AppSettingsData;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class VideoCommentFragment extends BaseFragment {
    private boolean isFirst = true;
    /* access modifiers changed from: private */
    public boolean iserror = false;
    @BindView(2131296853)
    LinearLayout ll_more_hot;
    /* access modifiers changed from: private */
    public VideoPlayActivity mActivity;
    /* access modifiers changed from: private */
    public CommonAdapter<CommentChildBean> mAdapter;
    /* access modifiers changed from: private */
    public CommonAdapter<CommentChildBean> mAdapter_hot;
    /* access modifiers changed from: private */
    public List<CommentChildBean> mData = new ArrayList();
    /* access modifiers changed from: private */
    public List<CommentChildBean> mData_hot = new ArrayList();
    private View mFoot;
    /* access modifiers changed from: private */
    public boolean mFromHot;
    @BindView(2131297375)
    XRecyclerView mRecyclerView;
    /* access modifiers changed from: private */
    public int page = 1;
    /* access modifiers changed from: private */
    public int page_hot = 1;
    private int pagesize = 10;
    private int pagesize_hot = 5;
    @BindView(2131297074)
    RecyclerView recycler_hot;
    @BindView(2131297139)
    NestedScrollView scroller;
    private TextView text;
    @BindView(2131297325)
    TextView tv_more_hot;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_video_comment, null);
        return this.mRootView;
    }

    public void initData() {
        this.mActivity = (VideoPlayActivity) getActivity();
        new Bundle().putString("num", "1");
        if (!StringUtils.isEmpty(getArguments().getString("tid"))) {
            this.mData.clear();
            this.mData_hot.clear();
            initHot();
            getHostList();
            InItView();
            initRequest();
            this.isFirst = false;
        }
    }

    private void initHot() {
        this.recycler_hot.setNestedScrollingEnabled(false);
        this.recycler_hot.setLayoutManager(new LinearLayoutManager(Utils.getContext()));
        final int i = DensityUtil.Density40;
        AnonymousClass1 r3 = new CommonAdapter<CommentChildBean>(Utils.getContext(), R.layout.item_videocomment, this.mData_hot) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, CommentChildBean commentChildBean, int i) {
                final ViewHolder viewHolder2 = viewHolder;
                final CommentChildBean commentChildBean2 = commentChildBean;
                final int i2 = i;
                String str = "1";
                if (commentChildBean.getStr15().equals(str)) {
                    viewHolder2.setVisible(R.id.item_index_bt, true);
                    viewHolder2.setVisible(R.id.item_index_contextbj, false);
                    viewHolder2.setOnClickListener(R.id.item_index_bt, new OnClickListener() {
                        public void onClick(View view) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                Bundle bundle = new Bundle();
                                bundle.putString("tid", VideoCommentFragment.this.mActivity.mTid);
                                String str = "type";
                                bundle.putString(str, "0");
                                new Bundle().putString(str, UserPreference.ANALYZE13);
                                return;
                            }
                            VideoCommentFragment.this.iserror = true;
                        }
                    });
                }
                if (commentChildBean.getListBean() == null || commentChildBean.getListBean().size() <= 0) {
                    viewHolder2.setVisible(R.id.item_index_recycler, false);
                } else {
                    viewHolder2.setVisible(R.id.item_index_recycler, true);
                    ArrayList arrayList = new ArrayList();
                    final int size = commentChildBean.getListBean().size();
                    int i3 = size < 6 ? size : 5;
                    for (int i4 = 0; i4 < i3; i4++) {
                        arrayList.add(commentChildBean.getListBean().get(i4));
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
                                viewHolder.setTextColor(R.id.item_replysubmit_text, VideoCommentFragment.this.getResources().getColor(R.color.them_color));
                            }
                        }
                    };
                    viewHolder2.setAdapter(R.id.item_index_recycler, r0, VideoCommentFragment.this.getActivity(), 1);
                }
                String str2 = "";
                if (TextUtils.isEmpty(commentChildBean.getStr7()) || !commentChildBean.getStr7().equals("myself")) {
                    String str7 = commentChildBean.getStr7();
                    int i5 = i;
                    viewHolder2.setCircleImageURL(R.id.item_index_pltx, str7, i5, i5);
                } else {
                    String str3 = (String) PreferenceUtil.get(Utils.getContext(), "Photo", str2);
                    int i6 = i;
                    viewHolder2.setCircleImageURL(R.id.item_index_pltx, str3, i6, i6);
                }
                viewHolder2.setText(R.id.item_index_plname, commentChildBean.getStr6());
                viewHolder2.setText(R.id.item_index_time, DateUtil.timeStamp2Date(commentChildBean.getStr5(), "yyyy-MM-dd"));
                viewHolder2.setText(R.id.item_index_comment, commentChildBean.getStr3().replace(" ", str2));
                viewHolder2.setText(R.id.item_index_num, commentChildBean.getStr8());
                viewHolder2.setOnClickListener(R.id.item_index_qj, new OnClickListener() {
                    public void onClick(View view) {
                        if (!((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                            VideoCommentFragment.this.initAlertDialog("提示", "您当前还未登录，是否前往登录？");
                            VideoCommentFragment.this.iserror = true;
                        } else if (VideoCommentFragment.this.mActivity == null) {
                        } else {
                            if (!GpsUtil.isOpen() && CommonViewModel.isMustOpenGps()) {
                                GpsUtil.requestGps(VideoCommentFragment.this.getActivity());
                            } else if (VideoCommentFragment.this.mActivity.checkPersonalInfo()) {
                                VideoCommentFragment.this.mFromHot = true;
                                VideoCommentFragment.this.replyCommentDialog(commentChildBean2.getStr1(), commentChildBean2.getStr2(), commentChildBean2.getStr6(), commentChildBean2.getStr3(), i2);
                            }
                        }
                    }
                });
                viewHolder2.setVisible(R.id.item_index_reply, false);
                if (commentChildBean.getStr4().equals(str)) {
                    viewHolder2.setImageDrawable(R.id.item_index_dianzhan, VideoCommentFragment.this.getResources().getDrawable(R.drawable.hand_like_enable));
                } else if (commentChildBean.getStr4().equals("0")) {
                    viewHolder2.setImageDrawable(R.id.item_index_dianzhan, VideoCommentFragment.this.getResources().getDrawable(R.drawable.hand_like_disable));
                }
                viewHolder2.setOnClickListener(R.id.item_index_dianji, new OnClickListener() {
                    public void onClick(View view) {
                        String str = "1";
                        if (commentChildBean2.getStr4().equals(str)) {
                            ToastUtils.showShort((CharSequence) "当前已经点赞！");
                        } else if (commentChildBean2.getStr4().equals("0")) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                CommentChildBean commentChildBean = commentChildBean2;
                                StringBuilder sb = new StringBuilder();
                                sb.append(Integer.valueOf(commentChildBean2.getStr8()).intValue() + 1);
                                String str2 = "";
                                sb.append(str2);
                                commentChildBean.setStr8(sb.toString());
                                commentChildBean2.setStr4(str);
                                if (VideoCommentFragment.this.mAdapter_hot != null) {
                                    VideoCommentFragment.this.mAdapter_hot.notifyDataSetChanged();
                                }
                                ViewHolder viewHolder = viewHolder2;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(Integer.valueOf(commentChildBean2.getStr8()).intValue() + 1);
                                sb2.append(str2);
                                viewHolder.setText(R.id.item_index_num, sb2.toString());
                                VideoCommentFragment.this.initRequestLikeThis(commentChildBean2.getStr2(), commentChildBean2.getStr1(), i2 - 1);
                                return;
                            }
                            ToastUtils.showShort((CharSequence) "您当前未登录，不能点赞！");
                        }
                    }
                });
            }
        };
        this.mAdapter_hot = r3;
        this.recycler_hot.setAdapter(this.mAdapter_hot);
        this.ll_more_hot.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                VideoCommentFragment.this.page_hot = VideoCommentFragment.this.page_hot + 1;
                VideoCommentFragment.this.getHostList();
            }
        });
    }

    /* access modifiers changed from: private */
    public void getHostList() {
        this.request.clear();
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str2);
        if (this.mActivity != null) {
            this.request.put("tvid", this.mActivity.mTid);
        }
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(this.page_hot);
        sb.append(str);
        map.put("page", sb.toString());
        Map map2 = this.request;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.pagesize_hot);
        sb2.append(str);
        map2.put("pagesize", sb2.toString());
        String str3 = "0";
        this.request.put("type", str3);
        this.request.put(Conversation.QUERY_PARAM_SORT, "hot");
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().getComments(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            /* JADX WARNING: Removed duplicated region for block: B:34:0x00c4 A[SYNTHETIC, Splitter:B:34:0x00c4] */
            /* JADX WARNING: Removed duplicated region for block: B:53:0x0126 A[Catch:{ Exception -> 0x022c }] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onResponse(retrofit2.Call<okhttp3.ResponseBody> r27, retrofit2.Response<okhttp3.ResponseBody> r28) {
                /*
                    r26 = this;
                    r1 = r26
                    super.onResponse(r27, r28)
                    com.kantv.ui.fragment.VideoCommentFragment r0 = com.kantv.ui.fragment.VideoCommentFragment.this
                    boolean r0 = r0.isonDestroy
                    if (r0 == 0) goto L_0x000e
                    return
                L_0x000e:
                    java.lang.String r0 = r1.json
                    boolean r0 = com.kantv.common.utils.StringUtils.isEmpty(r0)
                    if (r0 != 0) goto L_0x0230
                    com.google.gson.Gson r0 = new com.google.gson.Gson
                    r0.<init>()
                    java.lang.String r2 = r1.json     // Catch:{ Exception -> 0x022c }
                    java.lang.String r3 = "\\[\\]"
                    java.lang.String r4 = "null"
                    java.lang.String r2 = r2.replaceAll(r3, r4)     // Catch:{ Exception -> 0x022c }
                    r1.json = r2     // Catch:{ Exception -> 0x022c }
                    java.lang.String r2 = r1.json     // Catch:{ Exception -> 0x022c }
                    java.lang.Class<com.kantv.ui.bean.CommentReqBean> r3 = com.kantv.ui.bean.CommentReqBean.class
                    java.lang.Object r0 = r0.fromJson(r2, r3)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean r0 = (com.kantv.ui.bean.CommentReqBean) r0     // Catch:{ Exception -> 0x022c }
                    int r2 = r0.getStatus()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r3 = "200"
                    int r3 = java.lang.Integer.parseInt(r3)     // Catch:{ Exception -> 0x022c }
                    if (r2 != r3) goto L_0x0230
                    com.kantv.ui.bean.CommentReqBean$DataBean r0 = r0.getData()     // Catch:{ Exception -> 0x022c }
                    if (r0 == 0) goto L_0x021a
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r2 = r0.getCommentList()     // Catch:{ Exception -> 0x022c }
                    if (r2 == 0) goto L_0x021a
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r2 = r0.getCommentList()     // Catch:{ Exception -> 0x022c }
                    java.util.List r2 = r2.getCommentList()     // Catch:{ Exception -> 0x022c }
                    if (r2 == 0) goto L_0x021a
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r2 = r0.getCommentList()     // Catch:{ Exception -> 0x022c }
                    java.util.List r2 = r2.getCommentList()     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r3 = r0.getCommentList()     // Catch:{ Exception -> 0x022c }
                    java.util.HashMap r3 = r3.getCommentUserIDList()     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r0 = r0.getCommentList()     // Catch:{ Exception -> 0x022c }
                    java.util.List r0 = r0.getMyLikeIDList()     // Catch:{ Exception -> 0x022c }
                    int r4 = r2.size()     // Catch:{ Exception -> 0x022c }
                    r5 = 5
                    r6 = 0
                    if (r4 >= r5) goto L_0x007d
                    com.kantv.ui.fragment.VideoCommentFragment r4 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x022c }
                    android.widget.LinearLayout r4 = r4.ll_more_hot     // Catch:{ Exception -> 0x022c }
                    r5 = 8
                    r4.setVisibility(r5)     // Catch:{ Exception -> 0x022c }
                    goto L_0x0084
                L_0x007d:
                    com.kantv.ui.fragment.VideoCommentFragment r4 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x022c }
                    android.widget.LinearLayout r4 = r4.ll_more_hot     // Catch:{ Exception -> 0x022c }
                    r4.setVisibility(r6)     // Catch:{ Exception -> 0x022c }
                L_0x0084:
                    r4 = 0
                L_0x0085:
                    int r5 = r2.size()     // Catch:{ Exception -> 0x022c }
                    if (r4 >= r5) goto L_0x021a
                    java.lang.String r5 = ""
                    if (r3 == 0) goto L_0x00bd
                    int r7 = r3.size()     // Catch:{ Exception -> 0x022c }
                    if (r7 <= 0) goto L_0x00bd
                    java.lang.Object r7 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r7 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r7     // Catch:{ Exception -> 0x022c }
                    java.lang.String r7 = r7.getUid()     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r8 = r3.get(r7)     // Catch:{ Exception -> 0x022c }
                    if (r8 == 0) goto L_0x00bd
                    java.lang.Object r8 = r3.get(r7)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r8     // Catch:{ Exception -> 0x022c }
                    java.lang.String r8 = r8.getName()     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r7 = r3.get(r7)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r7 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r7     // Catch:{ Exception -> 0x022c }
                    java.lang.String r7 = r7.getPhoto()     // Catch:{ Exception -> 0x022c }
                    r16 = r7
                    r15 = r8
                    goto L_0x00c0
                L_0x00bd:
                    r15 = r5
                    r16 = r15
                L_0x00c0:
                    java.lang.String r7 = "0"
                    if (r0 == 0) goto L_0x00f3
                    int r8 = r0.size()     // Catch:{ Exception -> 0x022c }
                    if (r8 <= 0) goto L_0x00f3
                    r8 = r7
                    r7 = 0
                L_0x00cc:
                    int r9 = r0.size()     // Catch:{ Exception -> 0x022c }
                    if (r7 >= r9) goto L_0x00f1
                    java.lang.Object r9 = r0.get(r7)     // Catch:{ Exception -> 0x022c }
                    java.lang.String r9 = (java.lang.String) r9     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r10 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r10 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r10     // Catch:{ Exception -> 0x022c }
                    long r10 = r10.get_id()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r10 = java.lang.Long.toString(r10)     // Catch:{ Exception -> 0x022c }
                    boolean r9 = r9.equals(r10)     // Catch:{ Exception -> 0x022c }
                    if (r9 == 0) goto L_0x00ee
                    java.lang.String r8 = "1"
                L_0x00ee:
                    int r7 = r7 + 1
                    goto L_0x00cc
                L_0x00f1:
                    r13 = r8
                    goto L_0x00f4
                L_0x00f3:
                    r13 = r7
                L_0x00f4:
                    java.util.ArrayList r7 = new java.util.ArrayList     // Catch:{ Exception -> 0x022c }
                    r7.<init>()     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r8 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r8     // Catch:{ Exception -> 0x022c }
                    java.util.List r8 = r8.getChild()     // Catch:{ Exception -> 0x022c }
                    if (r8 == 0) goto L_0x01b7
                    java.lang.Object r8 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r8     // Catch:{ Exception -> 0x022c }
                    java.util.List r8 = r8.getChild()     // Catch:{ Exception -> 0x022c }
                    int r8 = r8.size()     // Catch:{ Exception -> 0x022c }
                    if (r8 <= 0) goto L_0x01b7
                    r8 = 0
                L_0x0116:
                    java.lang.Object r9 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x022c }
                    java.util.List r9 = r9.getChild()     // Catch:{ Exception -> 0x022c }
                    int r9 = r9.size()     // Catch:{ Exception -> 0x022c }
                    if (r8 >= r9) goto L_0x01b7
                    java.lang.Object r9 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x022c }
                    java.util.List r9 = r9.getChild()     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r9 = r9.get(r8)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean.ChildBean) r9     // Catch:{ Exception -> 0x022c }
                    if (r3 == 0) goto L_0x0185
                    int r10 = r3.size()     // Catch:{ Exception -> 0x022c }
                    if (r10 <= 0) goto L_0x0185
                    long r10 = r9.getToUser()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r10 = java.lang.Long.toString(r10)     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r11 = r3.get(r10)     // Catch:{ Exception -> 0x022c }
                    if (r11 == 0) goto L_0x0161
                    java.lang.Object r11 = r3.get(r10)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r11     // Catch:{ Exception -> 0x022c }
                    java.lang.String r11 = r11.getName()     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r10 = r3.get(r10)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r10 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r10     // Catch:{ Exception -> 0x022c }
                    java.lang.String r10 = r10.getPhoto()     // Catch:{ Exception -> 0x022c }
                    goto L_0x0163
                L_0x0161:
                    r10 = r5
                    r11 = r10
                L_0x0163:
                    java.lang.String r12 = r9.getUid()     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r14 = r3.get(r12)     // Catch:{ Exception -> 0x022c }
                    if (r14 == 0) goto L_0x017e
                    java.lang.Object r12 = r3.get(r12)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r12 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r12     // Catch:{ Exception -> 0x022c }
                    java.lang.String r12 = r12.getName()     // Catch:{ Exception -> 0x022c }
                    r21 = r10
                    r19 = r11
                    r18 = r12
                    goto L_0x018b
                L_0x017e:
                    r18 = r5
                    r21 = r10
                    r19 = r11
                    goto L_0x018b
                L_0x0185:
                    r18 = r5
                    r19 = r18
                    r21 = r19
                L_0x018b:
                    com.kantv.ui.bean.String8Bean r10 = new com.kantv.ui.bean.String8Bean     // Catch:{ Exception -> 0x022c }
                    java.lang.String r20 = r9.getComment()     // Catch:{ Exception -> 0x022c }
                    long r11 = r9.get_id()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r22 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x022c }
                    long r11 = r9.getTvid()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r23 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x022c }
                    long r11 = r9.getPid()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r24 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x022c }
                    java.lang.String r25 = "0"
                    r17 = r10
                    r17.<init>(r18, r19, r20, r21, r22, r23, r24, r25)     // Catch:{ Exception -> 0x022c }
                    r7.add(r10)     // Catch:{ Exception -> 0x022c }
                    int r8 = r8 + 1
                    goto L_0x0116
                L_0x01b7:
                    com.kantv.ui.fragment.VideoCommentFragment r5 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x022c }
                    java.util.List r5 = r5.mData_hot     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentChildBean r8 = new com.kantv.ui.bean.CommentChildBean     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r9 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x022c }
                    long r9 = r9.get_id()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r10 = java.lang.Long.toString(r9)     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r9 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x022c }
                    long r11 = r9.getTvid()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r11 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r9 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x022c }
                    java.lang.String r12 = r9.getComment()     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r9 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x022c }
                    int r9 = r9.getCreated()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r14 = java.lang.Integer.toString(r9)     // Catch:{ Exception -> 0x022c }
                    java.lang.Object r9 = r2.get(r4)     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x022c }
                    int r9 = r9.getLike()     // Catch:{ Exception -> 0x022c }
                    java.lang.String r17 = java.lang.Integer.toString(r9)     // Catch:{ Exception -> 0x022c }
                    java.lang.String r19 = ""
                    java.lang.String r20 = ""
                    java.lang.String r21 = ""
                    java.lang.String r22 = ""
                    java.lang.String r23 = ""
                    java.lang.String r24 = "0"
                    r9 = r8
                    r18 = r7
                    r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24)     // Catch:{ Exception -> 0x022c }
                    r5.add(r8)     // Catch:{ Exception -> 0x022c }
                    int r4 = r4 + 1
                    goto L_0x0085
                L_0x021a:
                    com.kantv.ui.fragment.VideoCommentFragment r0 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter_hot     // Catch:{ Exception -> 0x022c }
                    if (r0 == 0) goto L_0x0230
                    com.kantv.ui.fragment.VideoCommentFragment r0 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x022c }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter_hot     // Catch:{ Exception -> 0x022c }
                    r0.notifyDataSetChanged()     // Catch:{ Exception -> 0x022c }
                    goto L_0x0230
                L_0x022c:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x0230:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.fragment.VideoCommentFragment.AnonymousClass3.onResponse(retrofit2.Call, retrofit2.Response):void");
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
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
        if (this.mActivity != null) {
            this.request.put("tvid", this.mActivity.mTid);
        }
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(this.page);
        sb.append(str);
        map.put("page", sb.toString());
        Map map2 = this.request;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.pagesize);
        sb2.append(str);
        map2.put("pagesize", sb2.toString());
        String str3 = "0";
        this.request.put("type", str3);
        this.request.put(Conversation.QUERY_PARAM_SORT, AppSettingsData.STATUS_NEW);
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().getComments(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            /* JADX WARNING: Removed duplicated region for block: B:33:0x00b9 A[SYNTHETIC, Splitter:B:33:0x00b9] */
            /* JADX WARNING: Removed duplicated region for block: B:52:0x011b A[Catch:{ Exception -> 0x0221 }] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onResponse(retrofit2.Call<okhttp3.ResponseBody> r27, retrofit2.Response<okhttp3.ResponseBody> r28) {
                /*
                    r26 = this;
                    r1 = r26
                    super.onResponse(r27, r28)
                    com.kantv.ui.fragment.VideoCommentFragment r0 = com.kantv.ui.fragment.VideoCommentFragment.this
                    boolean r0 = r0.isonDestroy
                    if (r0 == 0) goto L_0x000e
                    return
                L_0x000e:
                    java.lang.String r0 = r1.json
                    boolean r0 = com.kantv.common.utils.StringUtils.isEmpty(r0)
                    r2 = 0
                    if (r0 != 0) goto L_0x0226
                    com.google.gson.Gson r0 = new com.google.gson.Gson
                    r0.<init>()
                    java.lang.String r3 = r1.json     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r4 = "\\[\\]"
                    java.lang.String r5 = "null"
                    java.lang.String r3 = r3.replaceAll(r4, r5)     // Catch:{ Exception -> 0x0221 }
                    r1.json = r3     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r3 = r1.json     // Catch:{ Exception -> 0x0221 }
                    java.lang.Class<com.kantv.ui.bean.CommentReqBean> r4 = com.kantv.ui.bean.CommentReqBean.class
                    java.lang.Object r0 = r0.fromJson(r3, r4)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean r0 = (com.kantv.ui.bean.CommentReqBean) r0     // Catch:{ Exception -> 0x0221 }
                    int r3 = r0.getStatus()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r4 = "200"
                    int r4 = java.lang.Integer.parseInt(r4)     // Catch:{ Exception -> 0x0221 }
                    if (r3 != r4) goto L_0x0226
                    com.kantv.ui.fragment.VideoCommentFragment r3 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x0221 }
                    com.kantv.lib.recyclerview.XRecyclerView r3 = r3.mRecyclerView     // Catch:{ Exception -> 0x0221 }
                    if (r3 == 0) goto L_0x004b
                    com.kantv.ui.fragment.VideoCommentFragment r3 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x0221 }
                    com.kantv.lib.recyclerview.XRecyclerView r3 = r3.mRecyclerView     // Catch:{ Exception -> 0x0221 }
                    r3.refreshComplete()     // Catch:{ Exception -> 0x0221 }
                L_0x004b:
                    com.kantv.ui.bean.CommentReqBean$DataBean r0 = r0.getData()     // Catch:{ Exception -> 0x0221 }
                    if (r0 == 0) goto L_0x020f
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r3 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    if (r3 == 0) goto L_0x020f
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r3 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    java.util.List r3 = r3.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    if (r3 == 0) goto L_0x020f
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r3 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    java.util.List r3 = r3.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r4 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    java.util.HashMap r4 = r4.getCommentUserIDList()     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r0 = r0.getCommentList()     // Catch:{ Exception -> 0x0221 }
                    java.util.List r0 = r0.getMyLikeIDList()     // Catch:{ Exception -> 0x0221 }
                    r5 = 0
                L_0x007a:
                    int r6 = r3.size()     // Catch:{ Exception -> 0x0221 }
                    if (r5 >= r6) goto L_0x020f
                    java.lang.String r6 = ""
                    if (r4 == 0) goto L_0x00b2
                    int r7 = r4.size()     // Catch:{ Exception -> 0x0221 }
                    if (r7 <= 0) goto L_0x00b2
                    java.lang.Object r7 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r7 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r7     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r7 = r7.getUid()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r8 = r4.get(r7)     // Catch:{ Exception -> 0x0221 }
                    if (r8 == 0) goto L_0x00b2
                    java.lang.Object r8 = r4.get(r7)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r8     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r8 = r8.getName()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r7 = r4.get(r7)     // Catch:{ Exception -> 0x0221 }
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
                    java.lang.Object r10 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
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
                    java.lang.Object r8 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r8     // Catch:{ Exception -> 0x0221 }
                    java.util.List r8 = r8.getChild()     // Catch:{ Exception -> 0x0221 }
                    if (r8 == 0) goto L_0x01ac
                    java.lang.Object r8 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r8 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r8     // Catch:{ Exception -> 0x0221 }
                    java.util.List r8 = r8.getChild()     // Catch:{ Exception -> 0x0221 }
                    int r8 = r8.size()     // Catch:{ Exception -> 0x0221 }
                    if (r8 <= 0) goto L_0x01ac
                    r8 = 0
                L_0x010b:
                    java.lang.Object r9 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    java.util.List r9 = r9.getChild()     // Catch:{ Exception -> 0x0221 }
                    int r9 = r9.size()     // Catch:{ Exception -> 0x0221 }
                    if (r8 >= r9) goto L_0x01ac
                    java.lang.Object r9 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    java.util.List r9 = r9.getChild()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r9.get(r8)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean.ChildBean) r9     // Catch:{ Exception -> 0x0221 }
                    if (r4 == 0) goto L_0x017a
                    int r10 = r4.size()     // Catch:{ Exception -> 0x0221 }
                    if (r10 <= 0) goto L_0x017a
                    long r10 = r9.getToUser()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r10 = java.lang.Long.toString(r10)     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r11 = r4.get(r10)     // Catch:{ Exception -> 0x0221 }
                    if (r11 == 0) goto L_0x0156
                    java.lang.Object r11 = r4.get(r10)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r11     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r11 = r11.getName()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r10 = r4.get(r10)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r10 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r10     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r10 = r10.getPhoto()     // Catch:{ Exception -> 0x0221 }
                    goto L_0x0158
                L_0x0156:
                    r10 = r6
                    r11 = r10
                L_0x0158:
                    java.lang.String r12 = r9.getUid()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r14 = r4.get(r12)     // Catch:{ Exception -> 0x0221 }
                    if (r14 == 0) goto L_0x0173
                    java.lang.Object r12 = r4.get(r12)     // Catch:{ Exception -> 0x0221 }
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
                    com.kantv.ui.fragment.VideoCommentFragment r6 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x0221 }
                    java.util.List r6 = r6.mData     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentChildBean r8 = new com.kantv.ui.bean.CommentChildBean     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    long r9 = r9.get_id()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r10 = java.lang.Long.toString(r9)     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    long r11 = r9.getTvid()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r11 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r12 = r9.getComment()     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x0221 }
                    int r9 = r9.getCreated()     // Catch:{ Exception -> 0x0221 }
                    java.lang.String r14 = java.lang.Integer.toString(r9)     // Catch:{ Exception -> 0x0221 }
                    java.lang.Object r9 = r3.get(r5)     // Catch:{ Exception -> 0x0221 }
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
                    com.kantv.ui.fragment.VideoCommentFragment r0 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter     // Catch:{ Exception -> 0x0221 }
                    if (r0 == 0) goto L_0x0226
                    com.kantv.ui.fragment.VideoCommentFragment r0 = com.kantv.ui.fragment.VideoCommentFragment.this     // Catch:{ Exception -> 0x0221 }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter     // Catch:{ Exception -> 0x0221 }
                    r0.notifyDataSetChanged()     // Catch:{ Exception -> 0x0221 }
                    goto L_0x0226
                L_0x0221:
                    r0 = move-exception
                    r0.printStackTrace()
                    return
                L_0x0226:
                    com.kantv.ui.fragment.VideoCommentFragment r0 = com.kantv.ui.fragment.VideoCommentFragment.this
                    com.kantv.lib.recyclerview.XRecyclerView r0 = r0.mRecyclerView
                    r0.setloadMoreVisible(r2)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.fragment.VideoCommentFragment.AnonymousClass4.onResponse(retrofit2.Call, retrofit2.Response):void");
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                VideoCommentFragment.this.mRecyclerView.setloadMoreVisible(false);
            }
        });
    }

    private void InItView() {
        NestedScrollView nestedScrollView = this.scroller;
        if (nestedScrollView != null) {
            nestedScrollView.setOnScrollChangeListener(new OnScrollChangeListener() {
                public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
                    if (i2 == nestedScrollView.getChildAt(0).getMeasuredHeight() - nestedScrollView.getMeasuredHeight()) {
                        VideoCommentFragment.this.mRecyclerView.setloadMoreVisible(true);
                        VideoCommentFragment.this.page = VideoCommentFragment.this.page + 1;
                        VideoCommentFragment.this.initRequest();
                    }
                }
            });
        }
        this.mRecyclerView.setNestedScrollingEnabled(false);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(Utils.getContext()));
        this.mRecyclerView.setPullRefreshEnabled(false);
        this.mRecyclerView.setLoadingMoreEnabled(true);
        final int i = DensityUtil.Density40;
        AnonymousClass6 r2 = new CommonAdapter<CommentChildBean>(Utils.getContext(), R.layout.item_videocomment, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, CommentChildBean commentChildBean, int i) {
                final ViewHolder viewHolder2 = viewHolder;
                final CommentChildBean commentChildBean2 = commentChildBean;
                final int i2 = i;
                String str = "1";
                if (commentChildBean.getStr15().equals(str)) {
                    viewHolder2.setVisible(R.id.item_index_bt, true);
                    viewHolder2.setVisible(R.id.item_index_contextbj, false);
                    viewHolder2.setOnClickListener(R.id.item_index_bt, new OnClickListener() {
                        public void onClick(View view) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                Bundle bundle = new Bundle();
                                bundle.putString("tid", VideoCommentFragment.this.mActivity.mTid);
                                String str = "type";
                                bundle.putString(str, "0");
                                new Bundle().putString(str, UserPreference.ANALYZE13);
                                return;
                            }
                            VideoCommentFragment.this.iserror = true;
                        }
                    });
                }
                if (commentChildBean.getListBean() == null || commentChildBean.getListBean().size() <= 0) {
                    viewHolder2.setVisible(R.id.item_index_recycler, false);
                } else {
                    viewHolder2.setVisible(R.id.item_index_recycler, true);
                    ArrayList arrayList = new ArrayList();
                    final int size = commentChildBean.getListBean().size();
                    int i3 = size < 6 ? size : 5;
                    for (int i4 = 0; i4 < i3; i4++) {
                        arrayList.add(commentChildBean.getListBean().get(i4));
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
                                viewHolder.setTextColor(R.id.item_replysubmit_text, VideoCommentFragment.this.getResources().getColor(R.color.them_color));
                            }
                        }
                    };
                    viewHolder2.setAdapter(R.id.item_index_recycler, r0, VideoCommentFragment.this.getActivity(), 1);
                }
                String str2 = "";
                if (TextUtils.isEmpty(commentChildBean.getStr7()) || !commentChildBean.getStr7().equals("myself")) {
                    String str7 = commentChildBean.getStr7();
                    int i5 = i;
                    viewHolder2.setCircleImageURL(R.id.item_index_pltx, str7, i5, i5);
                } else {
                    String str3 = (String) PreferenceUtil.get(Utils.getContext(), "Photo", str2);
                    int i6 = i;
                    viewHolder2.setCircleImageURL(R.id.item_index_pltx, str3, i6, i6);
                }
                viewHolder2.setText(R.id.item_index_plname, commentChildBean.getStr6());
                viewHolder2.setText(R.id.item_index_time, DateUtil.timeStamp2Date(commentChildBean.getStr5(), "yyyy-MM-dd"));
                viewHolder2.setText(R.id.item_index_comment, commentChildBean.getStr3().replace(" ", str2));
                viewHolder2.setText(R.id.item_index_num, commentChildBean.getStr8());
                viewHolder2.setOnClickListener(R.id.item_index_qj, new OnClickListener() {
                    public void onClick(View view) {
                        if (!((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                            VideoCommentFragment.this.initAlertDialog("提示", "您当前还未登录，是否前往登录？");
                            VideoCommentFragment.this.iserror = true;
                        } else if (VideoCommentFragment.this.mActivity == null) {
                        } else {
                            if (!GpsUtil.isOpen() && CommonViewModel.isMustOpenGps()) {
                                GpsUtil.requestGps(VideoCommentFragment.this.getActivity());
                            } else if (VideoCommentFragment.this.mActivity.checkPersonalInfo()) {
                                VideoCommentFragment.this.mFromHot = false;
                                VideoCommentFragment.this.replyCommentDialog(commentChildBean2.getStr1(), commentChildBean2.getStr2(), commentChildBean2.getStr6(), commentChildBean2.getStr3(), i2 - 1);
                            }
                        }
                    }
                });
                viewHolder2.setVisible(R.id.item_index_reply, false);
                if (commentChildBean.getStr4().equals(str)) {
                    viewHolder2.setImageDrawable(R.id.item_index_dianzhan, VideoCommentFragment.this.getResources().getDrawable(R.drawable.hand_like_enable));
                } else if (commentChildBean.getStr4().equals("0")) {
                    viewHolder2.setImageDrawable(R.id.item_index_dianzhan, VideoCommentFragment.this.getResources().getDrawable(R.drawable.hand_like_disable));
                }
                viewHolder2.setOnClickListener(R.id.item_index_dianji, new OnClickListener() {
                    public void onClick(View view) {
                        String str = "1";
                        if (commentChildBean2.getStr4().equals(str)) {
                            ToastUtils.showShort((CharSequence) "当前已经点赞！");
                        } else if (commentChildBean2.getStr4().equals("0")) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                CommentChildBean commentChildBean = commentChildBean2;
                                StringBuilder sb = new StringBuilder();
                                sb.append(Integer.valueOf(commentChildBean2.getStr8()).intValue() + 1);
                                sb.append("");
                                commentChildBean.setStr8(sb.toString());
                                commentChildBean2.setStr4(str);
                                if (VideoCommentFragment.this.mAdapter != null) {
                                    VideoCommentFragment.this.mAdapter.notifyDataSetChanged();
                                }
                                viewHolder2.setText(R.id.item_index_num, commentChildBean2.getStr8());
                                VideoCommentFragment.this.initRequestLikeThis(commentChildBean2.getStr2(), commentChildBean2.getStr1(), i2 - 1);
                                return;
                            }
                            ToastUtils.showShort((CharSequence) "您当前未登录，不能点赞！");
                        }
                    }
                });
            }
        };
        this.mAdapter = r2;
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                VideoCommentFragment.this.page = 1;
                if (VideoCommentFragment.this.mData != null) {
                    VideoCommentFragment.this.mData.clear();
                }
                VideoCommentFragment.this.initRequest();
            }

            public void onLoadMore() {
                VideoCommentFragment.this.page = VideoCommentFragment.this.page + 1;
                VideoCommentFragment.this.mRecyclerView.setloadMoreVisible(true);
                VideoCommentFragment.this.initRequest();
            }
        });
    }

    /* access modifiers changed from: private */
    public void replyCommentDialog(String str, String str2, String str3, String str4, int i) {
        BottomView bottomView = new BottomView((Context) getActivity(), (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_reply_comment);
        TextView textView = (TextView) bottomView.getView().findViewById(R.id.reply_id);
        TextView textView2 = (TextView) bottomView.getView().findViewById(R.id.replyComment);
        if (str.equals("0")) {
            textView2.setVisibility(8);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append(": ");
        sb.append(str4);
        textView.setText(sb.toString());
        final BottomView bottomView2 = bottomView;
        final String str5 = str;
        final String str6 = str2;
        final String str7 = str3;
        final int i2 = i;
        AnonymousClass8 r0 = new OnClickListener() {
            public void onClick(View view) {
                if (VideoCommentFragment.this.mActivity != null) {
                    bottomView2.dismissBottomView();
                    VideoCommentFragment.this.mActivity.replyCommentDialog(str5, str6, str7, i2);
                }
            }
        };
        textView2.setOnClickListener(r0);
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
    }

    /* access modifiers changed from: private */
    public void initAlertDialog(String str, String str2) {
        String str3 = "确定";
        new AlertDialog(getActivity()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                VideoCommentFragment.this.gotoActivity(AccountLoginActivity.class);
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void initRequestLikeThis(String str, String str2, int i) {
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
        Api.getService().likethis(this.request).enqueue(new CommonCallBack(getActivity(), true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoCommentFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        jsonObject.optString("status").equals(StatusCode.STATUS_OK);
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    public void refreshCommentsData() {
        this.page = 1;
        this.page_hot = 1;
        List<CommentChildBean> list = this.mData;
        if (list != null) {
            list.clear();
        }
        List<CommentChildBean> list2 = this.mData_hot;
        if (list2 != null) {
            list2.clear();
        }
        if (this.mActivity != null) {
            getHostList();
            initRequest();
        }
    }

    public void addFirstContent(String str) {
        String str2 = str;
        CommentChildBean commentChildBean = r1;
        CommentChildBean commentChildBean2 = new CommentChildBean("0", "0", str2, "0", String.valueOf(System.currentTimeMillis() / 1000), (String) PreferenceUtil.get(Utils.getContext(), "name", ""), "myself", "0", new ArrayList(), "", "", "", "", "", "0");
        List<CommentChildBean> list = this.mData;
        if (list != null) {
            list.add(0, commentChildBean);
        }
        CommonAdapter<CommentChildBean> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
    }

    public void insetComment(String str, String str2, int i) {
        int i2 = i;
        String str3 = "";
        String str4 = "name";
        if (this.mFromHot) {
            List<CommentChildBean> list = this.mData_hot;
            if (!(list == null || list.size() <= i2 || this.mData_hot.get(i2) == null)) {
                CommentChildBean commentChildBean = (CommentChildBean) this.mData_hot.get(i2);
                List listBean = commentChildBean.getListBean();
                if (listBean == null) {
                    listBean = new ArrayList();
                }
                String8Bean string8Bean = r7;
                String8Bean string8Bean2 = new String8Bean((String) PreferenceUtil.get(Utils.getContext(), str4, str3), str2, str, "", "", "", "", "0");
                listBean.add(0, string8Bean);
                commentChildBean.setListBean(listBean);
                this.mData_hot.set(i2, commentChildBean);
            }
            CommonAdapter<CommentChildBean> commonAdapter = this.mAdapter_hot;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        List<CommentChildBean> list2 = this.mData;
        if (!(list2 == null || list2.size() <= i2 || this.mData.get(i2) == null)) {
            CommentChildBean commentChildBean2 = (CommentChildBean) this.mData.get(i2);
            List listBean2 = commentChildBean2.getListBean();
            if (listBean2 == null) {
                listBean2 = new ArrayList();
            }
            String8Bean string8Bean3 = r7;
            String8Bean string8Bean4 = new String8Bean((String) PreferenceUtil.get(Utils.getContext(), str4, str3), str2, str, "", "", "", "", "0");
            listBean2.add(0, string8Bean3);
            commentChildBean2.setListBean(listBean2);
            this.mData.set(i2, commentChildBean2);
        }
        CommonAdapter<CommentChildBean> commonAdapter2 = this.mAdapter;
        if (commonAdapter2 != null) {
            commonAdapter2.notifyDataSetChanged();
        }
    }
}
