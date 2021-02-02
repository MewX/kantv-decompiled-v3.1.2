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
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.MyInfoActivity;
import com.kantv.ui.activity.NewsDetailActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.MsgReciverCommentBean;
import com.kantv.ui.bean.MsgReciverCommentBean.CommentUserInfo;
import com.kantv.ui.bean.MsgReciverCommentBean.VideoDetail;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.DateUtil;
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

public class MsgReciverFragment extends BaseFragment {
    private boolean isFirst = true;
    /* access modifiers changed from: private */
    public CommonAdapter<MsgReciverCommentBean> mAdapter;
    /* access modifiers changed from: private */
    public List<MsgReciverCommentBean> mData = new ArrayList();
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
        CommonViewModel.msgReceive(sb2, "20", sb3.toString(), new CommonCallBack(getContext(), z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                String str;
                super.onResponse(call, response);
                if (MsgReciverFragment.this.mRecyclerView != null) {
                    MsgReciverFragment.this.mRecyclerView.refreshComplete();
                    MsgReciverFragment.this.mRecyclerView.loadMoreComplete();
                }
                if (!MsgReciverFragment.this.isonDestroy) {
                    String str2 = "";
                    JsonObject jsonDataWithGson = CommonViewModel.getJsonDataWithGson(MsgReciverFragment.this.getContext(), this.json.replace("null", str2));
                    if (jsonDataWithGson != null) {
                        try {
                            JsonArray asJsonArray = jsonDataWithGson.getAsJsonArray("taCommentList");
                            JsonObject asJsonObject = jsonDataWithGson.getAsJsonObject("targetSourceList");
                            JsonObject asJsonObject2 = jsonDataWithGson.getAsJsonObject("userIDList");
                            JsonObject asJsonObject3 = jsonDataWithGson.getAsJsonObject("myCommentList");
                            Gson gson = new Gson();
                            ArrayList arrayList = new ArrayList();
                            int i = 0;
                            while (i < asJsonArray.size()) {
                                try {
                                    MsgReciverCommentBean msgReciverCommentBean = (MsgReciverCommentBean) gson.fromJson(asJsonArray.get(i), MsgReciverCommentBean.class);
                                    long uid = msgReciverCommentBean.getUid();
                                    long tvid = msgReciverCommentBean.getTvid();
                                    String str3 = str2;
                                    try {
                                        long pid = msgReciverCommentBean.getPid();
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(pid);
                                        str = str3;
                                        try {
                                            sb.append(str);
                                            String asString = asJsonObject3.get(sb.toString()).getAsJsonObject().get("comment").getAsString();
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(uid);
                                            sb2.append(str);
                                            CommentUserInfo commentUserInfo = (CommentUserInfo) gson.fromJson(asJsonObject2.get(sb2.toString()), CommentUserInfo.class);
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append(tvid);
                                            sb3.append(str);
                                            VideoDetail videoDetail = (VideoDetail) gson.fromJson(asJsonObject.get(sb3.toString()), VideoDetail.class);
                                            msgReciverCommentBean.setmCommentUserInfo(commentUserInfo);
                                            msgReciverCommentBean.setmVideoInfo(videoDetail);
                                            msgReciverCommentBean.setSourceCommnet(asString);
                                            arrayList.add(msgReciverCommentBean);
                                        } catch (Exception e) {
                                            e = e;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        str = str3;
                                        e.printStackTrace();
                                        i++;
                                        str2 = str;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    str = str2;
                                    e.printStackTrace();
                                    i++;
                                    str2 = str;
                                }
                                i++;
                                str2 = str;
                            }
                            if (z) {
                                MsgReciverFragment.this.mData.clear();
                            }
                            if (arrayList.size() > 0) {
                                MsgReciverFragment.this.mData.addAll(arrayList);
                            }
                            if (MsgReciverFragment.this.mAdapter != null) {
                                MsgReciverFragment.this.mAdapter.notifyDataSetChanged();
                            }
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (MsgReciverFragment.this.mData != null && MsgReciverFragment.this.mData.size() == 0) {
                        MsgReciverFragment.this.mRecyclerView.setVisibility(8);
                        MsgReciverFragment.this.mTip.setVisibility(0);
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
                if (MsgReciverFragment.this.mRecyclerView != null) {
                    MsgReciverFragment.this.mRecyclerView.refreshComplete();
                    MsgReciverFragment.this.mRecyclerView.loadMoreComplete();
                }
                if (MsgReciverFragment.this.mData != null && MsgReciverFragment.this.mData.size() == 0) {
                    MsgReciverFragment.this.mRecyclerView.setVisibility(8);
                    MsgReciverFragment.this.mTip.setVisibility(0);
                }
            }
        });
    }

    private void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mRecyclerView.setPullRefreshEnabled(false);
        final int i = DensityUtil.Density40;
        AnonymousClass2 r2 = new CommonAdapter<MsgReciverCommentBean>(getContext(), R.layout.item_video_comments, this.mData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, MsgReciverCommentBean msgReciverCommentBean, int i) {
                CommentUserInfo commentUserInfo = msgReciverCommentBean.getmCommentUserInfo();
                final VideoDetail videoDetail = msgReciverCommentBean.getmVideoDetail();
                String photo = commentUserInfo.getPhoto();
                int i2 = i;
                viewHolder.setCircleImageURL(R.id.item_index_pltx, photo, i2, i2);
                viewHolder.setText(R.id.item_index_plname, commentUserInfo.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(msgReciverCommentBean.getCreated());
                sb.append("");
                viewHolder.setText(R.id.item_index_time, DateUtil.timeStamp2Date(sb.toString(), "yyyy-MM-dd"));
                ((TextView) viewHolder.getView(R.id.item_index_comment)).setText(msgReciverCommentBean.getComment());
                viewHolder.setText(R.id.souce_comment, msgReciverCommentBean.getSourceCommnet());
                viewHolder.setVisible(R.id.item_index_num, false);
                viewHolder.setOnClickListener(R.id.item_index_qj, new OnClickListener() {
                    public void onClick(View view) {
                        String str = "";
                        if (MsgReciverFragment.this.mType == 0) {
                            long tvid = videoDetail.getTvid();
                            String seo = videoDetail.getSeo();
                            Bundle bundle = new Bundle();
                            StringBuilder sb = new StringBuilder();
                            sb.append(tvid);
                            sb.append(str);
                            bundle.putString("tid", sb.toString());
                            bundle.putString("seo", seo);
                            MsgReciverFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                        } else if (MsgReciverFragment.this.mType == 1) {
                            Bundle bundle2 = new Bundle();
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(videoDetail.get_id());
                            sb2.append(str);
                            bundle2.putString("id", sb2.toString());
                            MsgReciverFragment.this.gotoActivity(bundle2, NewsDetailActivity.class);
                        }
                    }
                });
                viewHolder.setVisible(R.id.item_index_dianzhan, false);
            }
        };
        this.mAdapter = r2;
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                MsgReciverFragment.this.page = 1;
                if (MsgReciverFragment.this.mData != null) {
                    MsgReciverFragment.this.mData.clear();
                }
                MsgReciverFragment msgReciverFragment = MsgReciverFragment.this;
                msgReciverFragment.initRequest(msgReciverFragment.mType, true);
            }

            public void onLoadMore() {
                MsgReciverFragment.this.page = MsgReciverFragment.this.page + 1;
                MsgReciverFragment msgReciverFragment = MsgReciverFragment.this;
                msgReciverFragment.initRequest(msgReciverFragment.mType, false);
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
                MsgReciverFragment.this.gotoActivity(MyInfoActivity.class);
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
                MsgReciverFragment.this.replyCommentDialog(str5, str6, str7);
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
                MsgReciverFragment.this.request.clear();
                MsgReciverFragment.this.request.put("noncestr", SignConfig.noncestr);
                MsgReciverFragment.this.request.put("timestamp", SignConfig.timestamp);
                MsgReciverFragment.this.request.put("sbID", SignConfig.sbID);
                MsgReciverFragment.this.request.put("sign", SignConfig.sign);
                MsgReciverFragment.this.request.put("_token", str);
                String str2 = str4;
                if (str2 != null && !str2.isEmpty()) {
                    MsgReciverFragment.this.request.put("pid", str4);
                    MsgReciverFragment.this.request.put("cid", str4);
                }
                MsgReciverFragment.this.request.put("tvid", str5);
                String str3 = "0";
                MsgReciverFragment.this.request.put("type", str3);
                MsgReciverFragment.this.request.put("content", trim);
                MsgReciverFragment.this.request.put("devicetype", str3);
                MsgReciverFragment.this.request.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().replySubmit(MsgReciverFragment.this.request).enqueue(new CommonCallBack(MsgReciverFragment.this.getContext(), true) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!MsgReciverFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            String str = "input_method";
                            if (jsonObject == null) {
                                ToastUtils.showShort((CharSequence) "提交失败");
                                InputMethodManager inputMethodManager = (InputMethodManager) MsgReciverFragment.this.getActivity().getSystemService(str);
                                if (inputMethodManager != null) {
                                    inputMethodManager.hideSoftInputFromWindow(MsgReciverFragment.this.getActivity().getWindow().getDecorView().getWindowToken(), 0);
                                }
                                if (bottomView2 != null) {
                                    bottomView2.dismissBottomView();
                                }
                                return;
                            }
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                MsgReciverFragment.this.page = 1;
                                if (MsgReciverFragment.this.mData != null) {
                                    MsgReciverFragment.this.mData.clear();
                                }
                                MsgReciverFragment.this.initRequest(MsgReciverFragment.this.mType, true);
                                editText2.setText("");
                                InputMethodManager inputMethodManager2 = (InputMethodManager) MsgReciverFragment.this.getActivity().getSystemService(str);
                                if (inputMethodManager2 != null) {
                                    inputMethodManager2.hideSoftInputFromWindow(MsgReciverFragment.this.getActivity().getWindow().getDecorView().getWindowToken(), 0);
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
                    MsgReciverFragment.this.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    intent.setAction("android.settings.SETTINGS");
                    try {
                        MsgReciverFragment.this.startActivity(intent);
                    } catch (Exception unused2) {
                    }
                }
            }
        }).show();
    }
}
