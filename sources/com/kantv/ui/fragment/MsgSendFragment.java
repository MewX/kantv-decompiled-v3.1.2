package com.kantv.ui.fragment;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.exoplayer2.C;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.MyInfoActivity;
import com.kantv.ui.activity.NewsDetailActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.MsgSendCommentBean;
import com.kantv.ui.bean.MsgSendCommentBean.VideoDetail;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tandong.bottomview.view.BottomView;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class MsgSendFragment extends BaseFragment {
    private boolean isFirst = true;
    /* access modifiers changed from: private */
    public CommonAdapter<MsgSendCommentBean> mAdapter;
    /* access modifiers changed from: private */
    public List<MsgSendCommentBean> mData = new ArrayList();
    @BindView(2131296366)
    XRecyclerView mRecyclerView;
    @BindView(2131296540)
    TextView mTip;
    @BindView(2131296483)
    TextView mTitle;
    /* access modifiers changed from: private */
    public int mType;
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
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.all_comments_empty, null);
        return this.mRootView;
    }

    public void initData() {
        if (this.isFirst) {
            this.isFirst = false;
            this.mType = getArguments().getInt("type");
            initView();
            initTitle();
            initRequest(this.mType, true);
        }
    }

    private void initTitle() {
        this.titleRelateLayout.setVisibility(8);
    }

    /* access modifiers changed from: private */
    public void initRequest(int i, final boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.page);
        String str = "";
        sb.append(str);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i);
        sb3.append(str);
        CommonViewModel.msgSend(sb2, "20", sb3.toString(), new CommonCallBack(getContext(), z) {
            /* JADX WARNING: Removed duplicated region for block: B:22:0x006a A[SYNTHETIC, Splitter:B:22:0x006a] */
            /* JADX WARNING: Removed duplicated region for block: B:42:0x0103 A[Catch:{ Exception -> 0x012d }] */
            /* JADX WARNING: Removed duplicated region for block: B:45:0x0112 A[Catch:{ Exception -> 0x012d }] */
            /* JADX WARNING: Removed duplicated region for block: B:48:0x0123 A[Catch:{ Exception -> 0x012d }] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onResponse(retrofit2.Call<okhttp3.ResponseBody> r19, retrofit2.Response<okhttp3.ResponseBody> r20) {
                /*
                    r18 = this;
                    r1 = r18
                    super.onResponse(r19, r20)
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    com.kantv.lib.recyclerview.XRecyclerView r0 = r0.mRecyclerView
                    if (r0 == 0) goto L_0x0019
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    com.kantv.lib.recyclerview.XRecyclerView r0 = r0.mRecyclerView
                    r0.refreshComplete()
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    com.kantv.lib.recyclerview.XRecyclerView r0 = r0.mRecyclerView
                    r0.loadMoreComplete()
                L_0x0019:
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    boolean r0 = r0.isonDestroy
                    if (r0 == 0) goto L_0x0022
                    return
                L_0x0022:
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    android.content.Context r0 = r0.getContext()
                    java.lang.String r2 = r1.json
                    java.lang.String r3 = ""
                    java.lang.String r4 = "null"
                    java.lang.String r2 = r2.replace(r4, r3)
                    com.google.gson.JsonObject r2 = com.kantv.ui.viewmodel.CommonViewModel.getJsonDataWithGson(r0, r2)
                    if (r2 == 0) goto L_0x0131
                    r5 = 0
                    java.lang.String r0 = "taCommentList"
                    com.google.gson.JsonObject r6 = r2.getAsJsonObject(r0)     // Catch:{ Exception -> 0x0048 }
                    java.lang.String r0 = "userIDList"
                    com.google.gson.JsonObject r5 = r2.getAsJsonObject(r0)     // Catch:{ Exception -> 0x0046 }
                    goto L_0x004d
                L_0x0046:
                    r0 = move-exception
                    goto L_0x004a
                L_0x0048:
                    r0 = move-exception
                    r6 = r5
                L_0x004a:
                    r0.printStackTrace()     // Catch:{ Exception -> 0x012d }
                L_0x004d:
                    java.lang.String r0 = "targetSourceList"
                    com.google.gson.JsonObject r7 = r2.getAsJsonObject(r0)     // Catch:{ Exception -> 0x012d }
                    java.lang.String r0 = "myCommentList"
                    com.google.gson.JsonArray r2 = r2.getAsJsonArray(r0)     // Catch:{ Exception -> 0x012d }
                    com.google.gson.Gson r8 = new com.google.gson.Gson     // Catch:{ Exception -> 0x012d }
                    r8.<init>()     // Catch:{ Exception -> 0x012d }
                    java.util.ArrayList r9 = new java.util.ArrayList     // Catch:{ Exception -> 0x012d }
                    r9.<init>()     // Catch:{ Exception -> 0x012d }
                    r10 = 0
                L_0x0064:
                    int r0 = r2.size()     // Catch:{ Exception -> 0x012d }
                    if (r10 >= r0) goto L_0x00ff
                    com.google.gson.JsonElement r0 = r2.get(r10)     // Catch:{ Exception -> 0x00f7 }
                    java.lang.Class<com.kantv.ui.bean.MsgSendCommentBean> r11 = com.kantv.ui.bean.MsgSendCommentBean.class
                    java.lang.Object r0 = r8.fromJson(r0, r11)     // Catch:{ Exception -> 0x00f7 }
                    com.kantv.ui.bean.MsgSendCommentBean r0 = (com.kantv.ui.bean.MsgSendCommentBean) r0     // Catch:{ Exception -> 0x00f7 }
                    long r11 = r0.getTvid()     // Catch:{ Exception -> 0x00f7 }
                    long r13 = r0.getPid()     // Catch:{ Exception -> 0x00f7 }
                    r20 = r5
                    long r4 = r0.getToUser()     // Catch:{ Exception -> 0x00f3 }
                    r15 = 0
                    int r17 = (r4 > r15 ? 1 : (r4 == r15 ? 0 : -1))
                    if (r17 == 0) goto L_0x00cf
                    java.lang.StringBuilder r15 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00f3 }
                    r15.<init>()     // Catch:{ Exception -> 0x00f3 }
                    r15.append(r4)     // Catch:{ Exception -> 0x00f3 }
                    r15.append(r3)     // Catch:{ Exception -> 0x00f3 }
                    java.lang.String r4 = r15.toString()     // Catch:{ Exception -> 0x00f3 }
                    r5 = r20
                    com.google.gson.JsonElement r4 = r5.get(r4)     // Catch:{ Exception -> 0x00f7 }
                    java.lang.Class<com.kantv.ui.bean.MsgSendCommentBean$CommentUserInfo> r15 = com.kantv.ui.bean.MsgSendCommentBean.CommentUserInfo.class
                    java.lang.Object r4 = r8.fromJson(r4, r15)     // Catch:{ Exception -> 0x00f7 }
                    com.kantv.ui.bean.MsgSendCommentBean$CommentUserInfo r4 = (com.kantv.ui.bean.MsgSendCommentBean.CommentUserInfo) r4     // Catch:{ Exception -> 0x00f7 }
                    r0.setmCommentUserInfo(r4)     // Catch:{ Exception -> 0x00f7 }
                    java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00f7 }
                    r4.<init>()     // Catch:{ Exception -> 0x00f7 }
                    r4.append(r13)     // Catch:{ Exception -> 0x00f7 }
                    r4.append(r3)     // Catch:{ Exception -> 0x00f7 }
                    java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x00f7 }
                    com.google.gson.JsonElement r4 = r6.get(r4)     // Catch:{ Exception -> 0x00f7 }
                    com.google.gson.JsonObject r4 = r4.getAsJsonObject()     // Catch:{ Exception -> 0x00f7 }
                    java.lang.String r13 = "comment"
                    com.google.gson.JsonElement r4 = r4.get(r13)     // Catch:{ Exception -> 0x00f7 }
                    java.lang.String r4 = r4.getAsString()     // Catch:{ Exception -> 0x00f7 }
                    r0.setSourcecomment(r4)     // Catch:{ Exception -> 0x00f7 }
                    goto L_0x00d1
                L_0x00cf:
                    r5 = r20
                L_0x00d1:
                    java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00f7 }
                    r4.<init>()     // Catch:{ Exception -> 0x00f7 }
                    r4.append(r11)     // Catch:{ Exception -> 0x00f7 }
                    r4.append(r3)     // Catch:{ Exception -> 0x00f7 }
                    java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x00f7 }
                    com.google.gson.JsonElement r4 = r7.get(r4)     // Catch:{ Exception -> 0x00f7 }
                    java.lang.Class<com.kantv.ui.bean.MsgSendCommentBean$VideoDetail> r11 = com.kantv.ui.bean.MsgSendCommentBean.VideoDetail.class
                    java.lang.Object r4 = r8.fromJson(r4, r11)     // Catch:{ Exception -> 0x00f7 }
                    com.kantv.ui.bean.MsgSendCommentBean$VideoDetail r4 = (com.kantv.ui.bean.MsgSendCommentBean.VideoDetail) r4     // Catch:{ Exception -> 0x00f7 }
                    r0.setmVideoInfo(r4)     // Catch:{ Exception -> 0x00f7 }
                    r9.add(r0)     // Catch:{ Exception -> 0x00f7 }
                    goto L_0x00fb
                L_0x00f3:
                    r0 = move-exception
                    r5 = r20
                    goto L_0x00f8
                L_0x00f7:
                    r0 = move-exception
                L_0x00f8:
                    r0.printStackTrace()     // Catch:{ Exception -> 0x012d }
                L_0x00fb:
                    int r10 = r10 + 1
                    goto L_0x0064
                L_0x00ff:
                    boolean r0 = r5     // Catch:{ Exception -> 0x012d }
                    if (r0 == 0) goto L_0x010c
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this     // Catch:{ Exception -> 0x012d }
                    java.util.List r0 = r0.mData     // Catch:{ Exception -> 0x012d }
                    r0.clear()     // Catch:{ Exception -> 0x012d }
                L_0x010c:
                    int r0 = r9.size()     // Catch:{ Exception -> 0x012d }
                    if (r0 <= 0) goto L_0x011b
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this     // Catch:{ Exception -> 0x012d }
                    java.util.List r0 = r0.mData     // Catch:{ Exception -> 0x012d }
                    r0.addAll(r9)     // Catch:{ Exception -> 0x012d }
                L_0x011b:
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this     // Catch:{ Exception -> 0x012d }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter     // Catch:{ Exception -> 0x012d }
                    if (r0 == 0) goto L_0x0131
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this     // Catch:{ Exception -> 0x012d }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mAdapter     // Catch:{ Exception -> 0x012d }
                    r0.notifyDataSetChanged()     // Catch:{ Exception -> 0x012d }
                    goto L_0x0131
                L_0x012d:
                    r0 = move-exception
                    r0.printStackTrace()
                L_0x0131:
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    java.util.List r0 = r0.mData
                    if (r0 == 0) goto L_0x0156
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    java.util.List r0 = r0.mData
                    int r0 = r0.size()
                    if (r0 != 0) goto L_0x0156
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    com.kantv.lib.recyclerview.XRecyclerView r0 = r0.mRecyclerView
                    r2 = 8
                    r0.setVisibility(r2)
                    com.kantv.ui.fragment.MsgSendFragment r0 = com.kantv.ui.fragment.MsgSendFragment.this
                    android.widget.TextView r0 = r0.mTip
                    r2 = 0
                    r0.setVisibility(r2)
                L_0x0156:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.fragment.MsgSendFragment.AnonymousClass1.onResponse(retrofit2.Call, retrofit2.Response):void");
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                if (MsgSendFragment.this.mRecyclerView != null) {
                    MsgSendFragment.this.mRecyclerView.refreshComplete();
                    MsgSendFragment.this.mRecyclerView.loadMoreComplete();
                }
                if (MsgSendFragment.this.mData != null && MsgSendFragment.this.mData.size() == 0) {
                    MsgSendFragment.this.mRecyclerView.setVisibility(8);
                    MsgSendFragment.this.mTip.setVisibility(0);
                }
            }
        });
    }

    private void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mRecyclerView.setPullRefreshEnabled(false);
        this.mAdapter = new CommonAdapter<MsgSendCommentBean>(getContext(), R.layout.item_send_comments, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, MsgSendCommentBean msgSendCommentBean, int i) {
                final VideoDetail videoDetail = msgSendCommentBean.getmVideoDetail();
                if (msgSendCommentBean.getToUser() == 0) {
                    viewHolder.setVisible(R.id.layout1, true);
                    viewHolder.setVisible(R.id.layout2, false);
                    StringBuilder sb = new StringBuilder();
                    sb.append(msgSendCommentBean.getComment());
                    String str = "";
                    sb.append(str);
                    viewHolder.setText(R.id.comment, sb.toString());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(msgSendCommentBean.getLike());
                    sb2.append(str);
                    viewHolder.setText(R.id.item_index_num, sb2.toString());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(videoDetail.getPhoto());
                    sb3.append(str);
                    viewHolder.setImageURL3(R.id.item_index_pltx, sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(videoDetail.getTitle());
                    sb4.append(str);
                    viewHolder.setText(R.id.item_index_plname, sb4.toString());
                    if (!StringUtils.isEmpty(videoDetail.getAboutme())) {
                        viewHolder.setText(R.id.item_index_plname2, videoDetail.getAboutme().replaceAll("\\s*", str));
                    }
                } else {
                    viewHolder.setVisible(R.id.layout1, false);
                    viewHolder.setVisible(R.id.layout2, true);
                    TextView textView = (TextView) viewHolder.getView(R.id.item_index_comment);
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(" ：");
                    sb5.append(msgSendCommentBean.getComment());
                    textView.setText(sb5.toString());
                    viewHolder.setText(R.id.user_nick_name, msgSendCommentBean.getmCommentUserInfo().getName());
                    viewHolder.setText(R.id.souce_comment, msgSendCommentBean.getSourcecomment());
                }
                viewHolder.setOnClickListener(R.id.item_index_qj, new OnClickListener() {
                    public void onClick(View view) {
                        String str = "";
                        if (MsgSendFragment.this.mType == 0) {
                            long tvid = videoDetail.getTvid();
                            String seo = videoDetail.getSeo();
                            Bundle bundle = new Bundle();
                            StringBuilder sb = new StringBuilder();
                            sb.append(tvid);
                            sb.append(str);
                            bundle.putString("tid", sb.toString());
                            bundle.putString("seo", seo);
                            MsgSendFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                        } else if (MsgSendFragment.this.mType == 1) {
                            Bundle bundle2 = new Bundle();
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(videoDetail.get_id());
                            sb2.append(str);
                            bundle2.putString("id", sb2.toString());
                            MsgSendFragment.this.gotoActivity(bundle2, NewsDetailActivity.class);
                        }
                    }
                });
            }
        };
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                MsgSendFragment.this.page = 1;
                if (MsgSendFragment.this.mData != null) {
                    MsgSendFragment.this.mData.clear();
                }
                MsgSendFragment msgSendFragment = MsgSendFragment.this;
                msgSendFragment.initRequest(msgSendFragment.mType, true);
            }

            public void onLoadMore() {
                MsgSendFragment.this.page = MsgSendFragment.this.page + 1;
                MsgSendFragment msgSendFragment = MsgSendFragment.this;
                msgSendFragment.initRequest(msgSendFragment.mType, false);
            }
        });
    }

    @OnClick({2131297292})
    public void onClick(View view) {
        if (view.getId() == R.id.title_left_ll) {
            getActivity().finish();
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
        new AlertDialog(getContext()).builder().setTitle(str).setMsg(str2).setCancelable(false).setPositiveButton("立即修改", new OnClickListener() {
            public void onClick(View view) {
                MsgSendFragment.this.gotoActivity(MyInfoActivity.class);
            }
        }).show();
    }

    private void replyCommentDialog(String str, String str2, String str3, String str4) {
        BottomView bottomView = new BottomView(getContext(), (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_reply_comment);
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
                MsgSendFragment.this.replyCommentDialog(str5, str6, str7);
            }
        };
        textView2.setOnClickListener(r0);
        bottomView.setAnimation(R.style.BottomToTopAnim);
        bottomView.showBottomView(true);
    }

    public void replyCommentDialog(String str, String str2, String str3) {
        BottomView bottomView = new BottomView(getContext(), (int) R.style.BottomViewTheme_Bottom, (int) R.layout.bottomview_commentedit);
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
                MsgSendFragment.this.request.clear();
                MsgSendFragment.this.request.put("noncestr", SignConfig.noncestr);
                MsgSendFragment.this.request.put("timestamp", SignConfig.timestamp);
                MsgSendFragment.this.request.put("sbID", SignConfig.sbID);
                MsgSendFragment.this.request.put("sign", SignConfig.sign);
                MsgSendFragment.this.request.put("_token", str);
                String str2 = str4;
                if (str2 != null && !str2.isEmpty()) {
                    MsgSendFragment.this.request.put("pid", str4);
                    MsgSendFragment.this.request.put("cid", str4);
                }
                MsgSendFragment.this.request.put("tvid", str5);
                String str3 = "0";
                MsgSendFragment.this.request.put("type", str3);
                MsgSendFragment.this.request.put("content", trim);
                MsgSendFragment.this.request.put("devicetype", str3);
                MsgSendFragment.this.request.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().replySubmit(MsgSendFragment.this.request).enqueue(new CommonCallBack(MsgSendFragment.this.getContext(), true) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!MsgSendFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            String str = "input_method";
                            if (jsonObject == null) {
                                ToastUtils.showShort((CharSequence) "提交失败");
                                InputMethodManager inputMethodManager = (InputMethodManager) MsgSendFragment.this.getActivity().getSystemService(str);
                                if (inputMethodManager != null) {
                                    inputMethodManager.hideSoftInputFromWindow(MsgSendFragment.this.getActivity().getWindow().getDecorView().getWindowToken(), 0);
                                }
                                if (bottomView2 != null) {
                                    bottomView2.dismissBottomView();
                                }
                                return;
                            }
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                MsgSendFragment.this.page = 1;
                                if (MsgSendFragment.this.mData != null) {
                                    MsgSendFragment.this.mData.clear();
                                }
                                MsgSendFragment.this.initRequest(MsgSendFragment.this.mType, true);
                                editText2.setText("");
                                InputMethodManager inputMethodManager2 = (InputMethodManager) MsgSendFragment.this.getActivity().getSystemService(str);
                                if (inputMethodManager2 != null) {
                                    inputMethodManager2.hideSoftInputFromWindow(MsgSendFragment.this.getActivity().getWindow().getDecorView().getWindowToken(), 0);
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

    private void initOpenGpsDialog(String str, String str2) {
        String str3 = "立即开启";
        new AlertDialog(getContext()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                try {
                    MsgSendFragment.this.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    intent.setAction("android.settings.SETTINGS");
                    try {
                        MsgSendFragment.this.startActivity(intent);
                    } catch (Exception unused2) {
                    }
                }
            }
        }).show();
    }
}
