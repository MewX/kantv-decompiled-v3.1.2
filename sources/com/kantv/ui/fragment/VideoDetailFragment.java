package com.kantv.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.avos.avoscloud.im.v2.Conversation;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.GpsUtil;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.ui.activity.AccountLoginActivity;
import com.kantv.ui.activity.CommentActivity;
import com.kantv.ui.activity.OfflineVideoActivity;
import com.kantv.ui.activity.SetActivity;
import com.kantv.ui.activity.StarActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.CommentChildBean;
import com.kantv.ui.bean.EntityVideo;
import com.kantv.ui.bean.String4Bean;
import com.kantv.ui.bean.String8Bean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.download.SettingsManager;
import com.kantv.ui.download.VideoDownloadManager;
import com.kantv.ui.m3u8downloader.M3U8Downloader;
import com.kantv.ui.m3u8downloader.bean.M3U8;
import com.kantv.ui.m3u8downloader.utils.MUtils;
import com.kantv.ui.m3u8downloader.utils.SdcardPictureHelper;
import com.kantv.ui.photo.PermissionUtil;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.NetWorkUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.ScreenUtils;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.view.ShapedImageView;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tandong.bottomview.view.BottomView;
import com.tencent.open.SocialConstants;
import debug.KanApplication;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.ResponseBody;
import org.fourthline.cling.binding.xml.Descriptor.Device;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class VideoDetailFragment extends BaseFragment {
    private static final String TAG = "VideoDetailFragment";
    public static String mPartId;
    public static String tvid;
    /* access modifiers changed from: private */
    public long SDcardTotalSize;
    /* access modifiers changed from: private */
    public long SDcardUseSize;
    @BindView(2131296264)
    TextView aboutExtendTV;
    @BindView(2131297381)
    RelativeLayout aboutLayout;
    @BindView(2131296362)
    TextView allCommentTv;
    @BindView(2131296465)
    ImageView collectImg;
    @BindView(2131296473)
    RecyclerView commentRecycler;
    /* access modifiers changed from: private */
    public String commentSumNum;
    @BindView(2131296476)
    TextView commentTxt;
    private long currentTime;
    private String defeated_img;
    private String defeated_title;
    private String defeated_url;
    @BindView(2131296512)
    LinearLayout detailCommentLayout;
    /* access modifiers changed from: private */
    public TextView downloadNum;
    /* access modifiers changed from: private */
    public int downloadingNum;
    private boolean fast;
    /* access modifiers changed from: private */
    public JSONObject info;
    private JSONArray initdownloadArray;
    /* access modifiers changed from: private */
    public boolean isLogin;
    private boolean isNum = true;
    /* access modifiers changed from: private */
    public boolean isXianlu;
    /* access modifiers changed from: private */
    public String is_collect;
    public int isplay;
    /* access modifiers changed from: private */
    public VideoPlayActivity mActivity;
    public CommonAdapter<String8Bean> mAdapter;
    /* access modifiers changed from: private */
    public BottomView mBottomView;
    /* access modifiers changed from: private */
    public CommonAdapter<CommentChildBean> mCommentAdapter;
    /* access modifiers changed from: private */
    public List<CommentChildBean> mCommentData = new ArrayList();
    private JSONObject mData = null;
    CommonAdapter<String8Bean> mDownloadAdapter;
    /* access modifiers changed from: private */
    public JSONObject mDownloadDetail;
    public String mPart = null;
    /* access modifiers changed from: private */
    public JSONArray mPartinfo;
    public List<String8Bean> mPlayData;
    @BindView(2131297367)
    RecyclerView mPlayListRecycler;
    public String mPlayName;
    private JSONObject mPlayinfo;
    public int mPosition = 0;
    private CommonAdapter<String8Bean> mRecommenAdapter;
    private List<String8Bean> mRecommenData;
    @BindView(2131296612)
    RecyclerView mRecommendList;
    private CommonAdapter<String4Bean> mStarAdapter;
    private List<String4Bean> mStarData;
    @BindView(2131296613)
    RecyclerView mStarList;
    @BindView(2131296617)
    TextView mStarTxt;
    /* access modifiers changed from: private */
    public String mTid;
    @BindView(2131296614)
    TextView mUpdatanum;
    @BindView(2131296262)
    TextView mVideoAbout;
    @BindView(2131297369)
    TextView mVideoName;
    /* access modifiers changed from: private */
    public List<String> mp4NameList;
    /* access modifiers changed from: private */
    public boolean notDownload;
    private boolean orderFlag;
    public String photo;
    public JSONObject playinfo;
    private String sdcardPath;
    public String shareurl = null;
    public String title;
    /* access modifiers changed from: private */
    public String tvTitle;
    @BindView(2131297376)
    ShapedImageView videoDetailAdImg;
    @BindView(2131297368)
    TextView videoDetailScore;
    /* access modifiers changed from: private */
    public long videoSizeSum;

    public VideoDetailFragment() {
        String str = "";
        this.photo = str;
        this.title = null;
        this.isplay = 0;
        this.isXianlu = false;
        this.notDownload = true;
        this.defeated_url = null;
        this.defeated_img = null;
        this.defeated_title = null;
        this.mp4NameList = new ArrayList();
        this.mDownloadDetail = new JSONObject();
        this.fast = true;
        this.sdcardPath = str;
        this.currentTime = 0;
        this.isLogin = false;
        this.downloadingNum = 0;
        this.mDownloadAdapter = null;
        this.SDcardTotalSize = 0;
        this.SDcardUseSize = 0;
        this.tvTitle = str;
        this.mBottomView = null;
        this.orderFlag = false;
        this.videoSizeSum = 0;
        this.playinfo = null;
    }

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_video_detail, null);
        return this.mRootView;
    }

    public void onResume() {
        super.onResume();
    }

    public void initData() {
        initDownload();
        if (this.fast) {
            this.mActivity = (VideoPlayActivity) getActivity();
            this.fast = false;
        }
    }

    /* access modifiers changed from: private */
    public void initDownload() {
        String str = "onCreate2";
        String str2 = TAG;
        String str3 = "";
        try {
            String str4 = (String) PreferenceUtil.get(Utils.getContext(), "download", str3);
            if (!str4.isEmpty()) {
                this.mDownloadDetail = new JSONObject(str4);
            }
            if (Environment.getExternalStorageState().equals("mounted")) {
                boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), SettingsManager.ISPHONESDCARD, Boolean.valueOf(true))).booleanValue();
                SettingsManager.isPhoneSdCard = booleanValue;
                StringBuilder sb = new StringBuilder();
                sb.append("iisPhoneSdCard    ");
                sb.append(booleanValue);
                AILog.d(str2, sb.toString());
                if (booleanValue) {
                    SettingsManager.changePath(true, str3, Utils.getContext());
                    return;
                }
                this.sdcardPath = SettingsManager.getStoragePath(getActivity(), true);
                SettingsManager.changePath(false, this.sdcardPath, Utils.getContext());
                File file = new File(SettingsManager.DIRPATH);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(file.exists());
                AILog.d(str2, sb2.toString());
                if (!(getActivity() == null || getActivity().getExternalFilesDir(null) == null)) {
                    getActivity().getExternalFilesDir(null).getAbsolutePath();
                }
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(SettingsManager.getPhotoDirPath());
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append(file2.exists());
                AILog.d(str2, sb3.toString());
                if (!(getActivity() == null || getActivity().getExternalFilesDir(null) == null)) {
                    getActivity().getExternalFilesDir(null).getAbsolutePath();
                }
                if (!file2.exists()) {
                    file2.mkdirs();
                    return;
                }
                return;
            }
            SettingsManager.changePath(true, str3, Utils.getContext());
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void initInfoView(JSONObject jSONObject, String str, String str2, String str3) {
        String str4;
        String str5;
        String str6;
        int i;
        String str7;
        int i2;
        String str8;
        String str9;
        String str10;
        JSONObject jSONObject2 = jSONObject;
        String str11 = str3;
        this.mPlayData = new ArrayList();
        this.mStarData = new ArrayList();
        this.mRecommenData = new ArrayList();
        this.mData = jSONObject2;
        this.info = StringUtils.toJsonObject(jSONObject2.optString("info"));
        JSONObject jSONObject3 = this.info;
        if (jSONObject3 != null) {
            String str12 = "seo";
            jSONObject3.optString(str12);
            String str13 = "title";
            this.mPlayName = this.info.optString(str13);
            String str14 = "_id";
            this.mTid = this.info.optString(str14);
            String str15 = "is_collect";
            this.is_collect = this.info.optString(str15);
            this.tvTitle = this.info.optString(str13);
            this.commentSumNum = this.info.optString("comm_nums");
            String str16 = this.is_collect;
            String str17 = "0";
            if (str16 == null || !str16.equals(str17)) {
                ImageView imageView = this.collectImg;
                if (imageView != null) {
                    imageView.setImageDrawable(Utils.getContext().getResources().getDrawable(R.drawable.watch_list_selected));
                    PreferenceUtil.put(Utils.getContext(), str15, Boolean.valueOf(true));
                }
            } else {
                ImageView imageView2 = this.collectImg;
                if (imageView2 != null) {
                    imageView2.setImageDrawable(Utils.getContext().getResources().getDrawable(R.drawable.watch_list));
                    PreferenceUtil.put(Utils.getContext(), str15, Boolean.valueOf(false));
                }
            }
            String str18 = "msg";
            if (!StringUtils.isEmpty(this.info.optString(str18))) {
                TextView textView = this.mUpdatanum;
                if (textView != null) {
                    textView.setText(this.info.optString(str18));
                }
            }
            JSONObject jSONObject4 = this.info;
            String str19 = Param.SCORE;
            if (!StringUtils.isEmpty(jSONObject4.optString(str19))) {
                TextView textView2 = this.videoDetailScore;
                if (textView2 != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("豆瓣:");
                    sb.append(this.info.optString(str19));
                    sb.append("分");
                    textView2.setText(sb.toString());
                }
            }
            TextView textView3 = this.mVideoName;
            if (textView3 != null) {
                textView3.setText(this.mPlayName);
            }
            JSONObject jSONObject5 = this.info;
            String str20 = UserPreference.ABOUT_ME;
            if (StringUtils.isEmpty(jSONObject5.optString(str20)) || this.mVideoAbout == null) {
                RelativeLayout relativeLayout = this.aboutLayout;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(8);
                }
            } else {
                RelativeLayout relativeLayout2 = this.aboutLayout;
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(0);
                }
                if (this.info.optString(str20).length() < 42) {
                    TextView textView4 = this.mVideoAbout;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.info.optString(str20));
                    sb2.append("...");
                    textView4.setText(sb2.toString());
                } else {
                    TextView textView5 = this.mVideoAbout;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.info.optString(str20).substring(0, 42));
                    sb3.append("...");
                    textView5.setText(sb3.toString());
                }
            }
            this.mPlayinfo = StringUtils.toJsonObject(jSONObject2.optString("playinfo"));
            String str21 = "partinfo";
            if (!StringUtils.isEmpty(jSONObject2.optString(str21))) {
                JSONObject jsonObject = StringUtils.toJsonObject(jSONObject2.optString(str21));
                if (jsonObject != null) {
                    this.mPartinfo = StringUtils.toJsonArray(jsonObject.optString("positive"));
                } else {
                    return;
                }
            }
            String str22 = "1";
            if (str11.equals(str22)) {
                this.mPart = str;
                mPartId = str2;
            } else if (str11.equals(str17) && StringUtils.isJSONArrayNotEmpty(this.mPartinfo)) {
                JSONObject jSONobject = StringUtils.getJSONobject(this.mPartinfo, 0);
                if (!(jSONobject == null || jSONobject.optString(str13) == null)) {
                    if (jSONobject.optString(str13).length() < 3 || !isOrderRank()) {
                        this.mPart = jSONobject.optString(str13);
                        mPartId = jSONobject.optString("part_id");
                    } else {
                        JSONArray jSONArray = this.mPartinfo;
                        JSONObject jSONobject2 = StringUtils.getJSONobject(jSONArray, jSONArray.length() - 1);
                        this.mPart = jSONobject2.optString(str13);
                        mPartId = jSONobject2.optString("part_id");
                    }
                }
                for (int i3 = 0; i3 < this.mPartinfo.length(); i3++) {
                    JSONObject jSONobject3 = StringUtils.getJSONobject(this.mPartinfo, i3);
                    if (jSONobject3 != null) {
                        String str23 = this.mPart.equals(jSONobject3.optString(str13)) ? str17 : str22;
                        List<String8Bean> list = this.mPlayData;
                        String8Bean string8Bean = new String8Bean(jSONobject3.optString(str14), jSONobject3.optString("part"), jSONobject3.optString(str13), jSONobject3.optString("url"), jSONobject3.optString("prologue"), jSONobject3.optString(AppSettingsData.STATUS_NEW), jSONobject3.optString("source"), str23);
                        list.add(string8Bean);
                    }
                }
            }
            JSONArray jsonArray = StringUtils.toJsonArray(jSONObject2.optString("actorInfo"));
            String str24 = "photo";
            if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                int i4 = 0;
                while (i4 < jsonArray.length()) {
                    if (Integer.parseInt(Utils.interfaceVersion) < 100) {
                        JSONObject jSONobject4 = StringUtils.getJSONobject(jsonArray, i4);
                        if (jSONobject4 != null) {
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jSONobject4.optString("actor"));
                            if (jsonObject2 != null) {
                                str10 = str19;
                                str9 = str13;
                                str8 = str12;
                                this.mStarData.add(new String4Bean(jsonObject2.optString(str24), jsonObject2.optString("name"), jSONobject4.optString("videos"), jsonObject2.optString(str14)));
                            }
                        }
                        str8 = str12;
                        str9 = str13;
                        str10 = str19;
                    } else {
                        str8 = str12;
                        str9 = str13;
                        str10 = str19;
                        JSONObject jSONobject5 = StringUtils.getJSONobject(jsonArray, i4);
                        if (jSONobject5 != null) {
                            this.mStarData.add(new String4Bean(jSONobject5.optString(str24), jSONobject5.optString("name"), jSONobject5.optString("role"), jSONobject5.optString(str14)));
                        }
                    }
                    i4++;
                    str19 = str10;
                    str13 = str9;
                    str12 = str8;
                }
                str4 = str12;
                str5 = str13;
                str6 = str19;
            } else {
                str4 = str12;
                str5 = str13;
                str6 = str19;
                RecyclerView recyclerView = this.mStarList;
                if (recyclerView != null) {
                    recyclerView.setVisibility(8);
                    this.mStarTxt.setVisibility(8);
                }
            }
            if (this.mStarData.size() != 0) {
                this.mStarAdapter = new CommonAdapter<String4Bean>(Utils.getContext(), R.layout.item_videostar, this.mStarData) {
                    /* access modifiers changed from: protected */
                    public void convert(ViewHolder viewHolder, final String4Bean string4Bean, int i) {
                        viewHolder.setText(R.id.item_videostar_name, string4Bean.getText2());
                        viewHolder.setImageURL(R.id.item_videostar_head, string4Bean.getText1());
                        viewHolder.setOnClickListener(R.id.item_videostar_ll, new OnClickListener() {
                            public void onClick(View view) {
                                VideoDetailFragment.this.goStarActivity(string4Bean.getText2(), string4Bean.getText1(), string4Bean.getText4(), "star");
                                new Bundle().putString("name", string4Bean.getText2());
                            }
                        });
                    }
                };
                RecyclerView recyclerView2 = this.mStarList;
                if (recyclerView2 != null) {
                    recyclerView2.setLayoutManager(new StaggeredGridLayoutManager(1, 0));
                    this.mStarList.setAdapter(this.mStarAdapter);
                }
            } else {
                RecyclerView recyclerView3 = this.mStarList;
                if (recyclerView3 != null) {
                    recyclerView3.setVisibility(8);
                }
            }
            initCMTRequest();
            RecyclerView recyclerView4 = this.commentRecycler;
            if (recyclerView4 != null) {
                recyclerView4.setLayoutManager(new LinearLayoutManager(Utils.getContext()));
            }
            this.mCommentAdapter = new CommonAdapter<CommentChildBean>(Utils.getContext(), R.layout.item_videocomment, this.mCommentData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, CommentChildBean commentChildBean, int i) {
                    ViewHolder viewHolder2 = viewHolder;
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
                                    bundle.putString("tid", VideoDetailFragment.this.mTid);
                                    String str = "type";
                                    bundle.putString(str, "0");
                                    VideoDetailFragment.this.gotoActivity(bundle, CommentActivity.class);
                                    new Bundle().putString(str, UserPreference.ANALYZE13);
                                    return;
                                }
                                VideoDetailFragment.this.initAlertDialog("提示", "你登入已过期或者在别的地方登入", 1);
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
                                    viewHolder.setTextColor(R.id.item_replysubmit_text, VideoDetailFragment.this.getResources().getColor(R.color.them_color));
                                }
                            }
                        };
                        viewHolder2.setAdapter(R.id.item_index_recycler, r0, VideoDetailFragment.this.getActivity(), 1);
                    }
                    String str2 = "";
                    if (TextUtils.isEmpty(commentChildBean.getStr7()) || !commentChildBean.getStr7().equals("myself")) {
                        viewHolder2.setCircleImageURL(R.id.item_index_pltx, commentChildBean.getStr7(), DensityUtil.Density40, DensityUtil.Density40);
                    } else {
                        viewHolder2.setCircleImageURL(R.id.item_index_pltx, (String) PreferenceUtil.get(Utils.getContext(), "Photo", str2), DensityUtil.Density40, DensityUtil.Density40);
                    }
                    viewHolder2.setText(R.id.item_index_plname, commentChildBean.getStr6());
                    viewHolder2.setText(R.id.item_index_time, DateUtil.timeStamp2Date(commentChildBean.getStr5(), "yyyy-MM-dd"));
                    viewHolder2.setText(R.id.item_index_comment, commentChildBean.getStr3().replace(" ", str2));
                    viewHolder2.setText(R.id.item_index_num, commentChildBean.getStr8());
                    viewHolder2.setOnClickListener(R.id.item_index_qj, new OnClickListener() {
                        public void onClick(View view) {
                            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                Bundle bundle = new Bundle();
                                bundle.putString("json", commentChildBean2.getStr10());
                                String str = "type";
                                bundle.putString(str, "0");
                                new Bundle().putString(str, UserPreference.ANALYZE13);
                                if (VideoDetailFragment.this.mActivity == null) {
                                    return;
                                }
                                if (!GpsUtil.isOpen() && CommonViewModel.isMustOpenGps()) {
                                    GpsUtil.requestGps(VideoDetailFragment.this.getActivity());
                                } else if (VideoDetailFragment.this.mActivity.checkPersonalInfo()) {
                                    VideoDetailFragment.this.mActivity.replyCommentDialog(commentChildBean2.getStr1(), commentChildBean2.getStr2(), commentChildBean2.getStr6(), i2);
                                }
                            } else {
                                VideoDetailFragment.this.initAlertDialog(VideoDetailFragment.this.getResources().getString(R.string.login_text1), VideoDetailFragment.this.getResources().getString(R.string.login_text3), 1);
                            }
                        }
                    });
                    viewHolder2.setVisible(R.id.item_index_reply, false);
                    if (commentChildBean.getStr4().equals(str)) {
                        viewHolder2.setImageDrawable(R.id.item_index_dianzhan, VideoDetailFragment.this.getResources().getDrawable(R.drawable.hand_like_enable));
                    } else if (commentChildBean.getStr4().equals("0")) {
                        viewHolder2.setImageDrawable(R.id.item_index_dianzhan, VideoDetailFragment.this.getResources().getDrawable(R.drawable.hand_like_disable));
                    }
                    viewHolder2.setOnClickListener(R.id.item_index_dianji, new OnClickListener() {
                        public void onClick(View view) {
                            if (commentChildBean2.getStr4().equals("1")) {
                                ToastUtils.showShort((CharSequence) "当前已经点赞！");
                            } else if (commentChildBean2.getStr4().equals("0")) {
                                if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                                    VideoDetailFragment.this.initRequestLikeThis(commentChildBean2.getStr2(), commentChildBean2.getStr1(), i2);
                                } else {
                                    ToastUtils.showShort((CharSequence) "您当前未登录，不能点赞！");
                                }
                            }
                        }
                    });
                }
            };
            RecyclerView recyclerView5 = this.commentRecycler;
            if (recyclerView5 != null) {
                i = 0;
                recyclerView5.setNestedScrollingEnabled(false);
                this.commentRecycler.setAdapter(this.mCommentAdapter);
            } else {
                i = 0;
            }
            RecyclerView recyclerView6 = this.mPlayListRecycler;
            if (recyclerView6 != null) {
                recyclerView6.setLayoutManager(new StaggeredGridLayoutManager(1, i));
            }
            if (!str11.equals("2")) {
                JSONObject jSONObject6 = this.mPlayinfo;
                String optString = jSONObject6 != null ? jSONObject6.optString("history") : "";
                if (!StringUtils.isEmpty(optString) && StringUtils.toJsonObject(optString) != null) {
                    String optString2 = StringUtils.toJsonObject(optString).optString("part");
                    StringUtils.toJsonObject(optString).optString(Device.SEC_PREFIX);
                    if (!optString2.isEmpty()) {
                        if (optString2.equals(str17)) {
                            optString2 = this.mPart;
                        }
                        for (int i5 = 0; i5 < this.mPlayData.size(); i5++) {
                            if (optString2.equals(((String8Bean) this.mPlayData.get(i5)).getStr2())) {
                                this.mPosition = i5;
                            }
                        }
                        if (this.mPlayData.size() != 0) {
                            int i6 = 0;
                            for (int i7 = 0; i7 < this.mPlayData.size(); i7++) {
                                ((String8Bean) this.mPlayData.get(i7)).setStr8(str22);
                                if (optString2.equals(((String8Bean) this.mPlayData.get(i7)).getStr2())) {
                                    this.mPart = optString2;
                                    mPartId = ((String8Bean) this.mPlayData.get(i7)).getStr1();
                                    i6 = i7;
                                }
                            }
                            ((String8Bean) this.mPlayData.get(i6)).setStr8(str17);
                        }
                    }
                }
            }
            if (this.mPlayData.size() != 0) {
                if (((String8Bean) this.mPlayData.get(0)).getStr3().length() < 3) {
                    this.isNum = true;
                    this.mAdapter = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_videodetail_num, this.mPlayData) {
                        /* access modifiers changed from: protected */
                        public void convert(ViewHolder viewHolder, final String8Bean string8Bean, final int i) {
                            viewHolder.setText(R.id.item_videodetail_text, string8Bean.getStr3());
                            StringBuilder sb = new StringBuilder();
                            sb.append("position = ");
                            sb.append(i);
                            sb.append("  string8Bean= ");
                            sb.append(string8Bean.getStr8());
                            AILog.d(VideoDetailFragment.TAG, sb.toString());
                            if (string8Bean.getStr8().equals("0")) {
                                VideoDetailFragment.this.mPosition = i;
                                viewHolder.setVisible(R.id.item_play_here, true);
                                viewHolder.setTextColor(R.id.item_videodetail_text, VideoDetailFragment.this.getResources().getColor(R.color.them_color));
                            } else {
                                viewHolder.setVisible(R.id.item_play_here, false);
                                viewHolder.setTextColor(R.id.item_videodetail_text, VideoDetailFragment.this.getResources().getColor(R.color.cursor_color));
                            }
                            if (string8Bean.getStr6().equals("1")) {
                                viewHolder.setVisible(R.id.item_new_img, true);
                            } else {
                                viewHolder.setInVisible(R.id.item_new_img);
                            }
                            viewHolder.setOnClickListener(R.id.videodetail_num_rl, new OnClickListener() {
                                public void onClick(View view) {
                                    String str;
                                    VideoDetailFragment.mPartId = string8Bean.getStr1();
                                    AILog.d(VideoDetailFragment.TAG, string8Bean.getStr1());
                                    int i = 0;
                                    while (true) {
                                        str = "0";
                                        if (i >= VideoDetailFragment.this.mPlayData.size()) {
                                            break;
                                        }
                                        if (i != i) {
                                            ((String8Bean) VideoDetailFragment.this.mPlayData.get(i)).setStr8("1");
                                        } else {
                                            ((String8Bean) VideoDetailFragment.this.mPlayData.get(i)).setStr8(str);
                                        }
                                        i++;
                                    }
                                    if (VideoDetailFragment.this.mAdapter != null) {
                                        VideoDetailFragment.this.mAdapter.notifyDataSetChanged();
                                    }
                                    if (string8Bean.getStr8().equals(str)) {
                                        VideoDetailFragment.this.mPart = string8Bean.getStr3();
                                        VideoDetailFragment.this.requestSwitchVideo(string8Bean.getStr1(), VideoDetailFragment.this.mPart);
                                        new Handler().postDelayed(new Runnable() {
                                            public void run() {
                                                if (VideoDetailFragment.this.mBottomView != null) {
                                                    VideoDetailFragment.this.mBottomView.dismissBottomView();
                                                }
                                            }
                                        }, 2000);
                                    }
                                }
                            });
                        }
                    };
                } else {
                    this.isNum = false;
                    this.mAdapter = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_videodetail_str, this.mPlayData) {
                        /* access modifiers changed from: protected */
                        public void convert(ViewHolder viewHolder, final String8Bean string8Bean, final int i) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("position = ");
                            sb.append(i);
                            sb.append("  string8Bean= ");
                            sb.append(string8Bean.getStr8());
                            AILog.d(VideoDetailFragment.TAG, sb.toString());
                            viewHolder.setText(R.id.item_videodetail_text, string8Bean.getStr3());
                            if (string8Bean.getStr8().equals("0")) {
                                VideoDetailFragment.this.mPosition = i;
                                viewHolder.setVisible(R.id.item_play_here, true);
                                viewHolder.setTextColor(R.id.item_videodetail_text, VideoDetailFragment.this.getResources().getColor(R.color.them_color));
                            } else {
                                viewHolder.setVisible(R.id.item_play_here, false);
                                viewHolder.setTextColor(R.id.item_videodetail_text, VideoDetailFragment.this.getResources().getColor(R.color.black));
                            }
                            if (string8Bean.getStr6().equals("1")) {
                                viewHolder.setVisible(R.id.item_new_img, true);
                            } else {
                                viewHolder.setInVisible(R.id.item_new_img);
                            }
                            viewHolder.setOnClickListener(R.id.videodetail_str_rl, new OnClickListener() {
                                public void onClick(View view) {
                                    String str;
                                    VideoDetailFragment.mPartId = string8Bean.getStr1();
                                    if (VideoDetailFragment.this.isplay == 0) {
                                        int i = 0;
                                        while (true) {
                                            str = "0";
                                            if (i >= VideoDetailFragment.this.mPlayData.size()) {
                                                break;
                                            }
                                            if (i != i) {
                                                ((String8Bean) VideoDetailFragment.this.mPlayData.get(i)).setStr8("1");
                                            } else {
                                                ((String8Bean) VideoDetailFragment.this.mPlayData.get(i)).setStr8(str);
                                            }
                                            i++;
                                        }
                                        if (VideoDetailFragment.this.mAdapter != null) {
                                            VideoDetailFragment.this.mAdapter.notifyDataSetChanged();
                                        }
                                        if (string8Bean.getStr8().equals(str)) {
                                            VideoDetailFragment.this.mPart = string8Bean.getStr3();
                                            VideoDetailFragment.mPartId = string8Bean.getStr1();
                                            VideoDetailFragment.this.requestSwitchVideo(string8Bean.getStr1(), VideoDetailFragment.this.mPart);
                                            new Handler().postDelayed(new Runnable() {
                                                public void run() {
                                                    if (VideoDetailFragment.this.mBottomView != null) {
                                                        VideoDetailFragment.this.mBottomView.dismissBottomView();
                                                    }
                                                }
                                            }, 2000);
                                        }
                                    }
                                }
                            });
                        }
                    };
                }
                RecyclerView recyclerView7 = this.mPlayListRecycler;
                if (recyclerView7 != null) {
                    recyclerView7.setAdapter(this.mAdapter);
                    this.mPlayListRecycler.scrollToPosition(this.mPosition);
                }
            } else {
                RecyclerView recyclerView8 = this.mPlayListRecycler;
                if (recyclerView8 != null) {
                    recyclerView8.setVisibility(8);
                }
            }
            JSONArray jsonArray2 = StringUtils.toJsonArray(jSONObject2.optString("like_tv"));
            if (StringUtils.isJSONArrayNotEmpty(jsonArray2)) {
                for (int i8 = 0; i8 < jsonArray2.length(); i8++) {
                    JSONObject jSONobject6 = StringUtils.getJSONobject(jsonArray2, i8);
                    List<String8Bean> list2 = this.mRecommenData;
                    String8Bean string8Bean2 = new String8Bean(jSONobject6.optString(str4), jSONobject6.optString(str5), jSONobject6.optString(str6), jSONobject6.optString(str24), jSONobject6.optString("url"), jSONobject6.optString("descript"), "", "");
                    list2.add(string8Bean2);
                }
                str7 = str5;
            } else {
                str7 = str5;
                RecyclerView recyclerView9 = this.mRecommendList;
                if (recyclerView9 != null) {
                    recyclerView9.setVisibility(8);
                }
            }
            RecyclerView recyclerView10 = this.mRecommendList;
            if (recyclerView10 != null) {
                recyclerView10.setLayoutManager(new StaggeredGridLayoutManager(3, 1));
            }
            this.mRecommenAdapter = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_tv_card, this.mRecommenData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, final String8Bean string8Bean, int i) {
                    viewHolder.setText(R.id.item_card_name, string8Bean.getStr2());
                    viewHolder.setVisible(R.id.item_card_name, true);
                    viewHolder.setImageURL(R.id.item_card_img, string8Bean.getStr4());
                    viewHolder.setText(R.id.item_card_desc, string8Bean.getStr6());
                    viewHolder.setOnClickListener(R.id.item_card_ll, new OnClickListener() {
                        public void onClick(View view) {
                            Bundle bundle = new Bundle();
                            bundle.putString("tid", string8Bean.getStr5());
                            bundle.putString("part_id", "");
                            bundle.putString("seo", string8Bean.getStr1());
                            VideoDetailFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                            if (VideoDetailFragment.this.mActivity != null) {
                                VideoDetailFragment.this.mActivity.finish();
                            }
                            new Bundle().putString("title", string8Bean.getStr2());
                        }
                    });
                }
            };
            RecyclerView recyclerView11 = this.mRecommendList;
            if (recyclerView11 != null) {
                recyclerView11.setHasFixedSize(true);
                this.mRecommendList.setNestedScrollingEnabled(false);
                this.mRecommendList.setAdapter(this.mRecommenAdapter);
            }
            if (jSONObject2 == null || StringUtils.isEmpty(jSONObject2.optString("ad"))) {
                this.videoDetailAdImg.setVisibility(8);
            } else {
                JSONObject jsonObject3 = StringUtils.toJsonObject(jSONObject2.optString("ad"));
                if (jsonObject3 != null && !StringUtils.isEmpty(jsonObject3.optString("play_selectpart_bottom"))) {
                    final JSONObject jsonObject4 = StringUtils.toJsonObject(jsonObject3.optString("play_selectpart_bottom"));
                    if (jsonObject4 != null) {
                        String optString3 = jsonObject4.optString(str24);
                        JSONObject jsonObject5 = StringUtils.toJsonObject(jsonObject4.optString("photo_size"));
                        if (jsonObject5 != null) {
                            String optString4 = jsonObject5.optString("width");
                            String optString5 = jsonObject5.optString("height");
                            if (!StringUtils.isEmpty(optString4) && !StringUtils.isEmpty(optString5)) {
                                try {
                                    LayoutParams layoutParams = this.videoDetailAdImg.getLayoutParams();
                                    layoutParams.height = (int) (((float) (ScreenUtils.getScreenWidth(getContext()) - 20)) / (Float.parseFloat(optString4) / Float.parseFloat(optString5)));
                                    this.videoDetailAdImg.setLayoutParams(layoutParams);
                                } catch (Exception unused) {
                                }
                            }
                        }
                        this.videoDetailAdImg.setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                Bundle bundle = new Bundle();
                                try {
                                    CommonViewModel.adsClick(jsonObject4.optLong("_id"));
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                String str = "opentype";
                                String str2 = "url";
                                if (StringUtils.isEmpty(jsonObject4.optString(str)) || !jsonObject4.optString(str).equals("0")) {
                                    String str3 = "title";
                                    bundle.putString(str3, jsonObject4.optString(str3));
                                    bundle.putString(str2, jsonObject4.optString(str2));
                                    Intent intent = new Intent(Utils.getContext(), WebViewActivity.class);
                                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                    intent.putExtras(bundle);
                                    Utils.getContext().startActivity(intent);
                                    return;
                                }
                                Intent intent2 = new Intent();
                                intent2.setAction("android.intent.action.VIEW");
                                intent2.setData(Uri.parse(jsonObject4.optString(str2)));
                                intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                Utils.getContext().startActivity(intent2);
                            }
                        });
                        int length = optString3.length();
                        if (length >= 3) {
                            if (optString3.substring(length - 3, length).equals("gif")) {
                                Glide.with(Utils.getContext()).load(optString3).asGif().diskCacheStrategy(DiskCacheStrategy.ALL).into((ImageView) this.videoDetailAdImg);
                            } else {
                                i2 = 0;
                                Glide.with(Utils.getContext()).load(optString3).skipMemoryCache(false).placeholder((int) R.drawable.placeholder2).diskCacheStrategy(DiskCacheStrategy.ALL).into(this.videoDetailAdImg);
                                this.videoDetailAdImg.setVisibility(i2);
                                CommonViewModel.adsShow(jsonObject4.optLong(str14), jsonObject4.optString(str7));
                            }
                        }
                        i2 = 0;
                        this.videoDetailAdImg.setVisibility(i2);
                        try {
                            CommonViewModel.adsShow(jsonObject4.optLong(str14), jsonObject4.optString(str7));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    private void initCMTRequest() {
        this.request.clear();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str);
        this.request.put("tvid", this.mTid);
        this.request.put("page", "1");
        String str2 = "0";
        this.request.put("type", str2);
        this.request.put(Conversation.QUERY_PARAM_SORT, AppSettingsData.STATUS_NEW);
        this.request.put("devicetype", str2);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().getComments(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            /* JADX WARNING: Removed duplicated region for block: B:44:0x0102 A[SYNTHETIC, Splitter:B:44:0x0102] */
            /* JADX WARNING: Removed duplicated region for block: B:63:0x0164 A[Catch:{ Exception -> 0x027e }] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onResponse(retrofit2.Call<okhttp3.ResponseBody> r29, retrofit2.Response<okhttp3.ResponseBody> r30) {
                /*
                    r28 = this;
                    r1 = r28
                    super.onResponse(r29, r30)
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this
                    boolean r0 = r0.isonDestroy
                    if (r0 == 0) goto L_0x000e
                    return
                L_0x000e:
                    java.lang.String r0 = r1.json
                    boolean r0 = com.kantv.common.utils.StringUtils.isEmpty(r0)
                    if (r0 != 0) goto L_0x0296
                    com.google.gson.Gson r0 = new com.google.gson.Gson
                    r0.<init>()
                    r2 = 8
                    java.lang.String r3 = r1.json     // Catch:{ Exception -> 0x027e }
                    java.lang.String r4 = "\\[\\]"
                    java.lang.String r5 = "null"
                    java.lang.String r3 = r3.replaceAll(r4, r5)     // Catch:{ Exception -> 0x027e }
                    r1.json = r3     // Catch:{ Exception -> 0x027e }
                    java.lang.String r3 = r1.json     // Catch:{ Exception -> 0x027e }
                    java.lang.Class<com.kantv.ui.bean.CommentReqBean> r4 = com.kantv.ui.bean.CommentReqBean.class
                    java.lang.Object r0 = r0.fromJson(r3, r4)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean r0 = (com.kantv.ui.bean.CommentReqBean) r0     // Catch:{ Exception -> 0x027e }
                    int r3 = r0.getStatus()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r4 = "200"
                    int r4 = java.lang.Integer.parseInt(r4)     // Catch:{ Exception -> 0x027e }
                    if (r3 != r4) goto L_0x0296
                    com.kantv.ui.bean.CommentReqBean$DataBean r3 = r0.getData()     // Catch:{ Exception -> 0x027e }
                    if (r3 == 0) goto L_0x0258
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r0 = r3.getCommentList()     // Catch:{ Exception -> 0x027e }
                    if (r0 == 0) goto L_0x0258
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r0 = r3.getCommentList()     // Catch:{ Exception -> 0x027e }
                    java.util.List r0 = r0.getCommentList()     // Catch:{ Exception -> 0x027e }
                    if (r0 == 0) goto L_0x0258
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x027e }
                    android.widget.TextView r0 = r0.allCommentTv     // Catch:{ Exception -> 0x027e }
                    if (r0 == 0) goto L_0x009f
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x009b }
                    java.lang.String r0 = r0.commentSumNum     // Catch:{ Exception -> 0x009b }
                    boolean r0 = com.kantv.common.utils.StringUtils.isEmpty(r0)     // Catch:{ Exception -> 0x009b }
                    if (r0 != 0) goto L_0x009f
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x009b }
                    java.lang.String r0 = r0.commentSumNum     // Catch:{ Exception -> 0x009b }
                    boolean r0 = com.kantv.common.utils.StringUtils.isStr2Num(r0)     // Catch:{ Exception -> 0x009b }
                    if (r0 == 0) goto L_0x009f
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x009b }
                    android.widget.TextView r0 = r0.allCommentTv     // Catch:{ Exception -> 0x009b }
                    java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x009b }
                    r4.<init>()     // Catch:{ Exception -> 0x009b }
                    java.lang.String r5 = "查看全部"
                    r4.append(r5)     // Catch:{ Exception -> 0x009b }
                    com.kantv.ui.fragment.VideoDetailFragment r5 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x009b }
                    java.lang.String r5 = r5.commentSumNum     // Catch:{ Exception -> 0x009b }
                    int r5 = java.lang.Integer.parseInt(r5)     // Catch:{ Exception -> 0x009b }
                    r4.append(r5)     // Catch:{ Exception -> 0x009b }
                    java.lang.String r5 = "条评论"
                    r4.append(r5)     // Catch:{ Exception -> 0x009b }
                    java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x009b }
                    r0.setText(r4)     // Catch:{ Exception -> 0x009b }
                    goto L_0x009f
                L_0x009b:
                    r0 = move-exception
                    r0.printStackTrace()     // Catch:{ Exception -> 0x027e }
                L_0x009f:
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r0 = r3.getCommentList()     // Catch:{ Exception -> 0x027e }
                    java.util.List r0 = r0.getCommentList()     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r4 = r3.getCommentList()     // Catch:{ Exception -> 0x027e }
                    java.util.HashMap r4 = r4.getCommentUserIDList()     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX r3 = r3.getCommentList()     // Catch:{ Exception -> 0x027e }
                    java.util.List r3 = r3.getMyLikeIDList()     // Catch:{ Exception -> 0x027e }
                    int r5 = r0.size()     // Catch:{ Exception -> 0x027e }
                    r6 = 5
                    if (r5 <= r6) goto L_0x00bf
                    goto L_0x00c3
                L_0x00bf:
                    int r6 = r0.size()     // Catch:{ Exception -> 0x027e }
                L_0x00c3:
                    r5 = 0
                    r7 = 0
                L_0x00c5:
                    if (r7 >= r6) goto L_0x026c
                    java.lang.String r8 = ""
                    if (r4 == 0) goto L_0x00fa
                    int r9 = r4.size()     // Catch:{ Exception -> 0x027e }
                    if (r9 <= 0) goto L_0x00fa
                    java.lang.Object r9 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r9     // Catch:{ Exception -> 0x027e }
                    java.lang.String r9 = r9.getUid()     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r10 = r4.get(r9)     // Catch:{ Exception -> 0x027e }
                    if (r10 == 0) goto L_0x00fa
                    java.lang.Object r10 = r4.get(r9)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r10 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r10     // Catch:{ Exception -> 0x027e }
                    java.lang.String r10 = r10.getName()     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r9 = r4.get(r9)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r9 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r9     // Catch:{ Exception -> 0x027e }
                    java.lang.String r9 = r9.getPhoto()     // Catch:{ Exception -> 0x027e }
                    r18 = r9
                    r17 = r10
                    goto L_0x00fe
                L_0x00fa:
                    r17 = r8
                    r18 = r17
                L_0x00fe:
                    java.lang.String r9 = "0"
                    if (r3 == 0) goto L_0x0131
                    int r10 = r3.size()     // Catch:{ Exception -> 0x027e }
                    if (r10 <= 0) goto L_0x0131
                    r10 = r9
                    r9 = 0
                L_0x010a:
                    int r11 = r3.size()     // Catch:{ Exception -> 0x027e }
                    if (r9 >= r11) goto L_0x012f
                    java.lang.Object r11 = r3.get(r9)     // Catch:{ Exception -> 0x027e }
                    java.lang.String r11 = (java.lang.String) r11     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r12 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r12 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r12     // Catch:{ Exception -> 0x027e }
                    long r12 = r12.get_id()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r12 = java.lang.Long.toString(r12)     // Catch:{ Exception -> 0x027e }
                    boolean r11 = r11.equals(r12)     // Catch:{ Exception -> 0x027e }
                    if (r11 == 0) goto L_0x012c
                    java.lang.String r10 = "1"
                L_0x012c:
                    int r9 = r9 + 1
                    goto L_0x010a
                L_0x012f:
                    r15 = r10
                    goto L_0x0132
                L_0x0131:
                    r15 = r9
                L_0x0132:
                    java.util.ArrayList r9 = new java.util.ArrayList     // Catch:{ Exception -> 0x027e }
                    r9.<init>()     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r10 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r10 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r10     // Catch:{ Exception -> 0x027e }
                    java.util.List r10 = r10.getChild()     // Catch:{ Exception -> 0x027e }
                    if (r10 == 0) goto L_0x01f5
                    java.lang.Object r10 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r10 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r10     // Catch:{ Exception -> 0x027e }
                    java.util.List r10 = r10.getChild()     // Catch:{ Exception -> 0x027e }
                    int r10 = r10.size()     // Catch:{ Exception -> 0x027e }
                    if (r10 <= 0) goto L_0x01f5
                    r10 = 0
                L_0x0154:
                    java.lang.Object r11 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r11     // Catch:{ Exception -> 0x027e }
                    java.util.List r11 = r11.getChild()     // Catch:{ Exception -> 0x027e }
                    int r11 = r11.size()     // Catch:{ Exception -> 0x027e }
                    if (r10 >= r11) goto L_0x01f5
                    java.lang.Object r11 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r11     // Catch:{ Exception -> 0x027e }
                    java.util.List r11 = r11.getChild()     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r11 = r11.get(r10)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean.ChildBean) r11     // Catch:{ Exception -> 0x027e }
                    if (r4 == 0) goto L_0x01c3
                    int r12 = r4.size()     // Catch:{ Exception -> 0x027e }
                    if (r12 <= 0) goto L_0x01c3
                    long r12 = r11.getToUser()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r12 = java.lang.Long.toString(r12)     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r13 = r4.get(r12)     // Catch:{ Exception -> 0x027e }
                    if (r13 == 0) goto L_0x019f
                    java.lang.Object r13 = r4.get(r12)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r13 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r13     // Catch:{ Exception -> 0x027e }
                    java.lang.String r13 = r13.getName()     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r12 = r4.get(r12)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r12 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r12     // Catch:{ Exception -> 0x027e }
                    java.lang.String r12 = r12.getPhoto()     // Catch:{ Exception -> 0x027e }
                    goto L_0x01a1
                L_0x019f:
                    r12 = r8
                    r13 = r12
                L_0x01a1:
                    java.lang.String r14 = r11.getUid()     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r16 = r4.get(r14)     // Catch:{ Exception -> 0x027e }
                    if (r16 == 0) goto L_0x01bc
                    java.lang.Object r14 = r4.get(r14)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean r14 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentUserIDBean) r14     // Catch:{ Exception -> 0x027e }
                    java.lang.String r14 = r14.getName()     // Catch:{ Exception -> 0x027e }
                    r23 = r12
                    r21 = r13
                    r20 = r14
                    goto L_0x01c9
                L_0x01bc:
                    r20 = r8
                    r23 = r12
                    r21 = r13
                    goto L_0x01c9
                L_0x01c3:
                    r20 = r8
                    r21 = r20
                    r23 = r21
                L_0x01c9:
                    com.kantv.ui.bean.String8Bean r12 = new com.kantv.ui.bean.String8Bean     // Catch:{ Exception -> 0x027e }
                    java.lang.String r22 = r11.getComment()     // Catch:{ Exception -> 0x027e }
                    long r13 = r11.get_id()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r24 = java.lang.Long.toString(r13)     // Catch:{ Exception -> 0x027e }
                    long r13 = r11.getTvid()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r25 = java.lang.Long.toString(r13)     // Catch:{ Exception -> 0x027e }
                    long r13 = r11.getPid()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r26 = java.lang.Long.toString(r13)     // Catch:{ Exception -> 0x027e }
                    java.lang.String r27 = "0"
                    r19 = r12
                    r19.<init>(r20, r21, r22, r23, r24, r25, r26, r27)     // Catch:{ Exception -> 0x027e }
                    r9.add(r12)     // Catch:{ Exception -> 0x027e }
                    int r10 = r10 + 1
                    goto L_0x0154
                L_0x01f5:
                    com.kantv.ui.fragment.VideoDetailFragment r8 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x027e }
                    java.util.List r8 = r8.mCommentData     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentChildBean r10 = new com.kantv.ui.bean.CommentChildBean     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r11 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r11     // Catch:{ Exception -> 0x027e }
                    long r11 = r11.get_id()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r12 = java.lang.Long.toString(r11)     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r11 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r11     // Catch:{ Exception -> 0x027e }
                    long r13 = r11.getTvid()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r13 = java.lang.Long.toString(r13)     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r11 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r11     // Catch:{ Exception -> 0x027e }
                    java.lang.String r14 = r11.getComment()     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r11 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r11     // Catch:{ Exception -> 0x027e }
                    int r11 = r11.getCreated()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r16 = java.lang.Integer.toString(r11)     // Catch:{ Exception -> 0x027e }
                    java.lang.Object r11 = r0.get(r7)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.bean.CommentReqBean$DataBean$CommentListBeanX$CommentListBean r11 = (com.kantv.ui.bean.CommentReqBean.DataBean.CommentListBeanX.CommentListBean) r11     // Catch:{ Exception -> 0x027e }
                    int r11 = r11.getLike()     // Catch:{ Exception -> 0x027e }
                    java.lang.String r19 = java.lang.Integer.toString(r11)     // Catch:{ Exception -> 0x027e }
                    java.lang.String r21 = ""
                    java.lang.String r22 = ""
                    java.lang.String r23 = ""
                    java.lang.String r24 = ""
                    java.lang.String r25 = ""
                    java.lang.String r26 = "0"
                    r11 = r10
                    r20 = r9
                    r11.<init>(r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26)     // Catch:{ Exception -> 0x027e }
                    r8.add(r10)     // Catch:{ Exception -> 0x027e }
                    int r7 = r7 + 1
                    goto L_0x00c5
                L_0x0258:
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x027e }
                    android.widget.LinearLayout r0 = r0.detailCommentLayout     // Catch:{ Exception -> 0x027e }
                    if (r0 == 0) goto L_0x026c
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x027e }
                    android.widget.LinearLayout r0 = r0.detailCommentLayout     // Catch:{ Exception -> 0x027e }
                    r0.setVisibility(r2)     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x027e }
                    android.widget.TextView r0 = r0.commentTxt     // Catch:{ Exception -> 0x027e }
                    r0.setVisibility(r2)     // Catch:{ Exception -> 0x027e }
                L_0x026c:
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mCommentAdapter     // Catch:{ Exception -> 0x027e }
                    if (r0 == 0) goto L_0x0296
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this     // Catch:{ Exception -> 0x027e }
                    com.kantv.ui.adapter.CommonAdapter r0 = r0.mCommentAdapter     // Catch:{ Exception -> 0x027e }
                    r0.notifyDataSetChanged()     // Catch:{ Exception -> 0x027e }
                    goto L_0x0296
                L_0x027e:
                    r0 = move-exception
                    r0.printStackTrace()
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this
                    android.widget.LinearLayout r0 = r0.detailCommentLayout
                    if (r0 == 0) goto L_0x0296
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this
                    android.widget.LinearLayout r0 = r0.detailCommentLayout
                    r0.setVisibility(r2)
                    com.kantv.ui.fragment.VideoDetailFragment r0 = com.kantv.ui.fragment.VideoDetailFragment.this
                    android.widget.TextView r0 = r0.commentTxt
                    r0.setVisibility(r2)
                L_0x0296:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.fragment.VideoDetailFragment.AnonymousClass7.onResponse(retrofit2.Call, retrofit2.Response):void");
            }
        });
    }

    public void goStarActivity(String str, String str2, String str3, String str4) {
        if (!str3.equals("0")) {
            Intent intent = new Intent(getActivity(), StarActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("name", str);
            bundle.putString(SocialConstants.PARAM_IMG_URL, str2);
            bundle.putString("id", str3);
            bundle.putString("type", str4);
            JSONObject jSONObject = this.mPlayinfo;
            if (jSONObject != null) {
                bundle.putString("shareUrl", jSONObject.optString("uniShareUrl"));
            }
            intent.putExtras(bundle);
            startActivityForResult(intent, 10);
        }
    }

    public void requestSwitchVideo(String str, final String str2) {
        mPartId = str;
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str3);
        this.request.put("tvid", this.mTid);
        this.request.put("part_id", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().IndexPlay(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoDetailFragment.this.isonDestroy) {
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            String str = "status";
                            if (jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                if (jsonObject2 != null) {
                                    VideoDetailFragment.this.playinfo = StringUtils.toJsonObject(jsonObject2.optString("playinfo"));
                                    if (VideoDetailFragment.this.playinfo != null) {
                                        JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("info"));
                                        if (jsonObject3 != null) {
                                            VideoDetailFragment.this.title = jsonObject3.optString("seo_title");
                                            VideoDetailFragment videoDetailFragment = VideoDetailFragment.this;
                                            videoDetailFragment.shareurl = videoDetailFragment.playinfo.optString("uniShareUrl");
                                            VideoDetailFragment.this.photo = jsonObject3.optString("photo");
                                            VideoDetailFragment.this.playinfo.optString("must_shared");
                                            JSONObject jsonObject4 = StringUtils.toJsonObject(VideoDetailFragment.this.playinfo.optString("limitIp"));
                                            if (jsonObject4 != null) {
                                                jsonObject4.optString(str);
                                                jsonObject4.optString("msg");
                                                VideoDetailFragment.this.playinfo.optString("watch_condition");
                                                VideoDetailFragment.tvid = jsonObject3.optString("_id");
                                                if (StringUtils.isNum(str2)) {
                                                    VideoDetailFragment videoDetailFragment2 = VideoDetailFragment.this;
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append(VideoDetailFragment.this.mPlayName);
                                                    sb.append(" 第");
                                                    sb.append(str2);
                                                    sb.append("集");
                                                    videoDetailFragment2.title = sb.toString();
                                                } else {
                                                    VideoDetailFragment videoDetailFragment3 = VideoDetailFragment.this;
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append(VideoDetailFragment.this.mPlayName);
                                                    sb2.append(" ");
                                                    sb2.append(str2);
                                                    videoDetailFragment3.title = sb2.toString();
                                                }
                                                StringBuilder sb3 = new StringBuilder();
                                                sb3.append("切换标题");
                                                sb3.append(VideoDetailFragment.this.title);
                                                String sb4 = sb3.toString();
                                                String str2 = VideoDetailFragment.TAG;
                                                AILog.d(str2, sb4);
                                                if (VideoDetailFragment.this.mActivity != null) {
                                                    String str3 = "url";
                                                    if (VideoDetailFragment.this.mActivity.tpChoice || VideoDetailFragment.this.mActivity.isnotshow) {
                                                        VideoDetailFragment.this.mActivity.currentUrl = VideoDetailFragment.this.playinfo.optString(str3);
                                                        StringBuilder sb5 = new StringBuilder();
                                                        sb5.append("切换投屏url");
                                                        sb5.append(VideoDetailFragment.this.playinfo.optString(str3));
                                                        AILog.d(str2, sb5.toString());
                                                        VideoDetailFragment.this.mActivity.play();
                                                    } else {
                                                        VideoDetailFragment.this.mActivity.switchPlayVideo(VideoDetailFragment.this.playinfo.optString(str3), VideoDetailFragment.this.playinfo.optString("playlogo"), VideoDetailFragment.this.title, false, true, VideoDetailFragment.this.playinfo.optString("prologue"), VideoDetailFragment.this.playinfo.optString("epilogue"), "");
                                                    }
                                                }
                                                VideoDetailFragment videoDetailFragment4 = VideoDetailFragment.this;
                                                videoDetailFragment4.isplay = 0;
                                                videoDetailFragment4.isXianlu = true;
                                                VideoDetailFragment.this.notDownload = true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        ToastUtils.showShort((CharSequence) "数据请求失败，请稍后再试。。");
                    }
                }
            }
        });
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            sb.append("");
            AILog.d(TAG, sb.toString());
            if (i == 10) {
                String str = "tid";
                String stringExtra = intent.getStringExtra(str);
                String str2 = "seo";
                String stringExtra2 = intent.getStringExtra(str2);
                Bundle bundle = new Bundle();
                bundle.putString(str, stringExtra);
                bundle.putString(str2, stringExtra2);
                gotoActivity(bundle, VideoPlayActivity.class);
                VideoPlayActivity videoPlayActivity = this.mActivity;
                if (videoPlayActivity != null) {
                    videoPlayActivity.finish();
                }
            }
        }
    }

    @OnClick({2131296530, 2131296264, 2131296362, 2131297175, 2131296465})
    public void onClick(View view) {
        boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue();
        switch (view.getId()) {
            case R.id.about_extend /*2131296264*/:
                TextView textView = this.mVideoAbout;
                if (textView != null) {
                    textView.setMaxLines(Integer.MAX_VALUE);
                    this.mVideoAbout.setEllipsize(null);
                    this.mVideoAbout.setFilters(new InputFilter[]{new LengthFilter(Integer.MAX_VALUE)});
                    JSONObject jSONObject = this.info;
                    if (jSONObject != null) {
                        this.mVideoAbout.setText(jSONObject.optString(UserPreference.ABOUT_ME));
                    }
                }
                TextView textView2 = this.aboutExtendTV;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    return;
                }
                return;
            case R.id.all_comment_tv /*2131296362*/:
                Bundle bundle = new Bundle();
                bundle.putString("tid", this.mTid);
                gotoActivity(bundle, CommentActivity.class);
                return;
            case R.id.collectImg /*2131296465*/:
                if (isQuicklyClick()) {
                    return;
                }
                if (!booleanValue) {
                    initAlertDialog(getResources().getString(R.string.login_text1), getResources().getString(R.string.login_text3), 1);
                    return;
                } else if (CommonViewModel.checkNotification(getContext(), getResources().getString(R.string.open_push_title), getResources().getString(R.string.open_push_tips), UserPreference.COLLECT_MUST_OPEN_PUSH)) {
                    requestCollect();
                    return;
                } else {
                    return;
                }
            case R.id.download_video /*2131296530*/:
                if (!isQuicklyClick()) {
                    String str = "download";
                    CommonViewModel.tongJiOperate(str, this.mTid);
                    initOnlineStatus(str);
                    return;
                }
                return;
            case R.id.selectNum /*2131297175*/:
                initSelectVideoNumDialog();
                return;
            default:
                return;
        }
    }

    public void requestCollect() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.clear();
        this.request.put("_token", str);
        String str2 = this.is_collect;
        String str3 = "0";
        String str4 = "type";
        if (str2 == null || !str2.equals(str3)) {
            this.request.put(str4, "cannel");
        } else {
            this.request.put(str4, "collect");
        }
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("tvid", this.mTid);
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().doCollect(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoDetailFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        String optString = jsonObject.optString("status");
                        String str = "msg";
                        if (optString.equals(StatusCode.STATUS_OK)) {
                            String str2 = "is_collect";
                            String str3 = "0";
                            if (VideoDetailFragment.this.is_collect == null || !VideoDetailFragment.this.is_collect.equals(str3)) {
                                VideoDetailFragment.this.is_collect = str3;
                                if (VideoDetailFragment.this.collectImg != null) {
                                    VideoDetailFragment.this.collectImg.setImageDrawable(Utils.getContext().getResources().getDrawable(R.drawable.watch_list));
                                    PreferenceUtil.put(Utils.getContext(), str2, Boolean.valueOf(false));
                                }
                            } else {
                                VideoDetailFragment.this.is_collect = "1";
                                if (VideoDetailFragment.this.collectImg != null) {
                                    VideoDetailFragment.this.collectImg.setImageDrawable(Utils.getContext().getResources().getDrawable(R.drawable.watch_list_selected));
                                    PreferenceUtil.put(Utils.getContext(), str2, Boolean.valueOf(true));
                                }
                                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE20).build());
                            }
                            ToastUtils.showShort((CharSequence) jsonObject.optString(str));
                        } else if (optString.equals("401")) {
                            KanApplication.exitLogin();
                            ToastUtils.showShort((CharSequence) VideoDetailFragment.this.getResources().getString(R.string.login_text2));
                        } else {
                            ToastUtils.showShort((CharSequence) jsonObject.optString(str));
                        }
                    }
                }
            }
        });
    }

    public void initSelectVideoNumDialog() {
        this.mBottomView = new BottomView((Context) getActivity(), (int) R.style.BottomViewTheme_Defalut, (int) R.layout.bottomview_videodata);
        RecyclerView recyclerView = (RecyclerView) this.mBottomView.getView().findViewById(R.id.bottomview_videodata_recycleview);
        ((ImageView) this.mBottomView.getView().findViewById(R.id.bottomview_videodeta_close)).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (VideoDetailFragment.this.mBottomView != null) {
                    VideoDetailFragment.this.mBottomView.dismissBottomView();
                }
            }
        });
        CommonAdapter<String8Bean> commonAdapter = this.mAdapter;
        if (this.isNum) {
            recyclerView.setLayoutManager(new StaggeredGridLayoutManager(5, 1));
        } else {
            recyclerView.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
        }
        recyclerView.setAdapter(commonAdapter);
        this.mBottomView.setAnimation(R.style.BottomToTopAnim);
        this.mBottomView.showBottomView(true);
    }

    public void showFullSelectVideoDialog() {
        if (getActivity() != null) {
            this.mBottomView = new BottomView((Context) getActivity(), (int) R.style.BottomViewTheme_Defalut, (int) R.layout.bottomview_full_videodata);
        }
        BottomView bottomView = this.mBottomView;
        if (bottomView != null) {
            RecyclerView recyclerView = (RecyclerView) bottomView.getView().findViewById(R.id.bottomview_videodata_recycleview);
            ((ImageView) this.mBottomView.getView().findViewById(R.id.bottomview_videodeta_close)).setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (VideoDetailFragment.this.mBottomView != null) {
                        VideoDetailFragment.this.mBottomView.dismissBottomView();
                    }
                }
            });
            CommonAdapter<String8Bean> commonAdapter = this.mAdapter;
            if (this.isNum) {
                recyclerView.setLayoutManager(new StaggeredGridLayoutManager(5, 1));
            } else {
                recyclerView.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
            }
            recyclerView.setAdapter(commonAdapter);
            this.mBottomView.setAnimation(R.style.BottomToTopAnim);
            this.mBottomView.showBottomView(true);
        }
    }

    public void initOnlineStatus(String str) {
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        final boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(true))).booleanValue();
        if (!StringUtils.isEmpty(str2)) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("_token", str2);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            Call onlineStatus = Api.getService().onlineStatus(this.request);
            final String str3 = str;
            AnonymousClass12 r3 = new CommonCallBack(getActivity(), true) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!VideoDetailFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            String str = "提示";
                            if (jsonObject.optString("data").equals("0")) {
                                KanApplication.clearLogin();
                                VideoDetailFragment.this.isLogin = false;
                                VideoDetailFragment.this.initAlertDialog(str, "你登入已过期或者在别的地方登入", 1);
                            } else if (str3.equals("download")) {
                                VideoDetailFragment.this.mPartinfo;
                                if (SettingsManager.checkSDCard()) {
                                    if (!Environment.getExternalStorageState().equals("mounted")) {
                                        VideoDetailFragment.this.SDcardUseSize = 0;
                                        VideoDetailFragment.this.SDcardTotalSize = 0;
                                        VideoDetailFragment.this.readSDCard();
                                        VideoDetailFragment.this.readSystem();
                                    } else if (SettingsManager.isPhoneSdCard) {
                                        VideoDetailFragment.this.SDcardUseSize = 0;
                                        VideoDetailFragment.this.SDcardTotalSize = 0;
                                        VideoDetailFragment.this.readSDCard();
                                        VideoDetailFragment.this.readSystem();
                                    }
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("SDcardTotalSize: ");
                                    VideoDetailFragment videoDetailFragment = VideoDetailFragment.this;
                                    sb.append(videoDetailFragment.formetFileSize(videoDetailFragment.SDcardTotalSize));
                                    sb.append(" SDcardUseSize: ");
                                    VideoDetailFragment videoDetailFragment2 = VideoDetailFragment.this;
                                    sb.append(videoDetailFragment2.formetFileSize(videoDetailFragment2.SDcardUseSize));
                                    AILog.d(VideoDetailFragment.TAG, sb.toString());
                                    VideoDetailFragment.this.initPlayData();
                                    if (!booleanValue) {
                                        VideoDetailFragment.this.initAlertDialog(str, "您当前还未登录，是否前往登录？", 1);
                                    } else if (VideoDetailFragment.this.havePermissionForWriteStorage()) {
                                        VideoDetailFragment.this.download();
                                    }
                                } else {
                                    ToastUtils.showShort((CharSequence) "下载功能需要SD卡");
                                }
                            }
                        }
                    }
                }
            };
            onlineStatus.enqueue(r3);
            return;
        }
        KanApplication.clearLogin();
        this.isLogin = false;
        initAlertDialog("提示", "您当前还未登录，是否前往登录？", 1);
    }

    /* access modifiers changed from: private */
    public void download() {
        getFileName();
        initDownloadingData();
        this.mBottomView = new BottomView((Context) getActivity(), (int) R.style.BottomViewTheme_Defalut, (int) R.layout.bottomview_videodownload);
        RecyclerView recyclerView = (RecyclerView) this.mBottomView.getView().findViewById(R.id.bottomview_videodown_recycleview);
        ImageView imageView = (ImageView) this.mBottomView.getView().findViewById(R.id.bottomview_videodeta_close);
        TextView textView = (TextView) this.mBottomView.getView().findViewById(R.id.sdcard_tv);
        TextView textView2 = (TextView) this.mBottomView.getView().findViewById(R.id.managertv);
        this.downloadNum = (TextView) this.mBottomView.getView().findViewById(R.id.downnum_tv);
        RelativeLayout relativeLayout = (RelativeLayout) this.mBottomView.getView().findViewById(R.id.downloadmanager_rl);
        JSONObject jSONObject = this.mDownloadDetail;
        if (jSONObject != null) {
            String str = "";
            if (jSONObject.length() > 0) {
                this.initdownloadArray = this.mDownloadDetail.optJSONArray("downloadlist");
                this.downloadingNum = this.initdownloadArray.length();
                if (this.initdownloadArray.length() > 0) {
                    TextView textView3 = this.downloadNum;
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.downloadingNum);
                    sb.append(str);
                    textView3.setText(sb.toString());
                } else {
                    List<String> list = this.mp4NameList;
                    if (list != null && list.size() > 0) {
                        this.downloadingNum = this.mp4NameList.size();
                        TextView textView4 = this.downloadNum;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(this.downloadingNum);
                        sb2.append(str);
                        textView4.setText(sb2.toString());
                    }
                }
            } else {
                List<String> list2 = this.mp4NameList;
                if (list2 != null && list2.size() > 0) {
                    this.downloadingNum = this.mp4NameList.size();
                    TextView textView5 = this.downloadNum;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.downloadingNum);
                    sb3.append(str);
                    textView5.setText(sb3.toString());
                }
            }
        } else {
            this.downloadingNum = 0;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("SDcardTotalSize");
        sb4.append(formetFileSize(this.SDcardTotalSize));
        String sb5 = sb4.toString();
        String str2 = TAG;
        AILog.d(str2, sb5);
        StringBuilder sb6 = new StringBuilder();
        sb6.append("SDcardUseSize");
        sb6.append(formetFileSize(this.SDcardUseSize));
        AILog.d(str2, sb6.toString());
        String str3 = " 空间可用";
        String str4 = "剩余 ";
        if (!Environment.getExternalStorageState().equals("mounted")) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append(str4);
            sb7.append(formetFileSize(this.SDcardUseSize));
            sb7.append(str3);
            textView.setText(sb7.toString());
        } else if (SettingsManager.isPhoneSdCard) {
            StringBuilder sb8 = new StringBuilder();
            sb8.append(str4);
            sb8.append(formetFileSize(this.SDcardUseSize));
            sb8.append(str3);
            textView.setText(sb8.toString());
        } else {
            textView.setText(SettingsManager.getSd(new File(SettingsManager.getStoragePath(getActivity(), true))));
        }
        relativeLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (VideoDetailFragment.this.mActivity != null) {
                    VideoDetailFragment.this.mActivity.gotoActivity(OfflineVideoActivity.class);
                }
                if (VideoDetailFragment.this.mBottomView != null) {
                    VideoDetailFragment.this.mBottomView.dismissBottomView();
                }
            }
        });
        imageView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (VideoDetailFragment.this.mBottomView != null) {
                    VideoDetailFragment.this.mBottomView.dismissBottomView();
                }
            }
        });
        List<String8Bean> list3 = this.mPlayData;
        if (!(list3 == null || list3.size() == 0)) {
            if (((String8Bean) this.mPlayData.get(0)).getStr3().length() > 4) {
                this.isNum = false;
            } else {
                this.isNum = true;
            }
        }
        if (this.isNum) {
            recyclerView.setLayoutManager(new StaggeredGridLayoutManager(5, 1));
            this.mDownloadAdapter = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_videodownload, this.mPlayData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, final String8Bean string8Bean, final int i) {
                    viewHolder.setText(R.id.item_videodownload_text, string8Bean.getStr3());
                    ImageView imageView = (ImageView) viewHolder.getConvertView().findViewById(R.id.downloading);
                    if (string8Bean.str9.equals("1")) {
                        imageView.setVisibility(0);
                        imageView.setImageDrawable(VideoDetailFragment.this.getResources().getDrawable(R.drawable.downloading));
                    } else if (string8Bean.str9.equals("0")) {
                        imageView.setVisibility(8);
                    } else if (string8Bean.str9.equals("2")) {
                        imageView.setVisibility(0);
                        imageView.setImageDrawable(VideoDetailFragment.this.getResources().getDrawable(R.drawable.completed));
                    } else {
                        imageView.setVisibility(8);
                    }
                    viewHolder.setOnClickListener(R.id.videodownload_rl, new OnClickListener() {
                        public void onClick(View view) {
                            if (!VideoDetailFragment.this.isQuicklyClick()) {
                                if (!NetWorkUtils.isWifi(Utils.getContext())) {
                                    if (((Boolean) PreferenceUtil.get(Utils.getContext(), "download_type_wifi", Boolean.valueOf(true))).booleanValue()) {
                                        VideoDetailFragment.this.initAlertDialog("提示", "检测到正在使用移动网络，已为您关闭下载");
                                    }
                                }
                                if (StringUtils.isJSONArrayNotEmpty(VideoDetailFragment.this.mPartinfo)) {
                                    if (string8Bean.str9.equals("2")) {
                                        ToastUtils.showShort((CharSequence) "该视频已缓存完毕");
                                        return;
                                    }
                                    String str = "1";
                                    boolean equals = string8Bean.str9.equals(str);
                                    String str2 = "url";
                                    String str3 = "_id";
                                    String str4 = "part";
                                    String str5 = "    title  ";
                                    String str6 = "mPartinfo position";
                                    String str7 = VideoDetailFragment.TAG;
                                    int i = 0;
                                    if (equals) {
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 >= VideoDetailFragment.this.mPartinfo.length()) {
                                                break;
                                            } else if (i == i2) {
                                                StringBuilder sb = new StringBuilder();
                                                sb.append(str6);
                                                sb.append(i);
                                                sb.append(str5);
                                                sb.append(VideoDetailFragment.this.tvTitle);
                                                AILog.d(str7, sb.toString());
                                                JSONObject jSONobject = StringUtils.getJSONobject(VideoDetailFragment.this.mPartinfo, i2);
                                                jSONobject.optString(str4);
                                                String optString = jSONobject.optString(str3);
                                                String optString2 = jSONobject.optString(str2);
                                                while (true) {
                                                    VideoDownloadManager.instance();
                                                    if (i >= VideoDownloadManager.entityVideoList.size()) {
                                                        break;
                                                    }
                                                    VideoDownloadManager.instance();
                                                    if (((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).id.equals(optString)) {
                                                        VideoDetailFragment.this.alertDeleteDownloadDialog(optString2, optString, i);
                                                        break;
                                                    }
                                                    i++;
                                                }
                                            } else {
                                                i2++;
                                            }
                                        }
                                        return;
                                    }
                                    ((String8Bean) VideoDetailFragment.this.mPlayData.get(i)).str9 = str;
                                    if (VideoDetailFragment.this.mDownloadAdapter != null) {
                                        VideoDetailFragment.this.mDownloadAdapter.notifyDataSetChanged();
                                    }
                                    VideoDetailFragment.this.mPart = string8Bean.getStr3();
                                    VideoDetailFragment.mPartId = string8Bean.getStr1();
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("mPart");
                                    sb2.append(VideoDetailFragment.this.mPart);
                                    sb2.append("   mPartId");
                                    sb2.append(VideoDetailFragment.mPartId);
                                    AILog.d(str7, sb2.toString());
                                    VideoDetailFragment.this.notDownload = false;
                                    VideoDetailFragment.this.initDownload();
                                    String str8 = "";
                                    if (VideoDetailFragment.this.mDownloadDetail == null) {
                                        VideoDetailFragment.this.downloadingNum = VideoDetailFragment.this.downloadingNum + 1;
                                        TextView access$3100 = VideoDetailFragment.this.downloadNum;
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append(VideoDetailFragment.this.downloadingNum);
                                        sb3.append(str8);
                                        access$3100.setText(sb3.toString());
                                    } else if (VideoDetailFragment.this.mDownloadDetail == null || VideoDetailFragment.this.mDownloadDetail.length() <= 0) {
                                        VideoDetailFragment.this.downloadingNum = VideoDetailFragment.this.downloadingNum + 1;
                                        TextView access$31002 = VideoDetailFragment.this.downloadNum;
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(VideoDetailFragment.this.downloadingNum);
                                        sb4.append(str8);
                                        access$31002.setText(sb4.toString());
                                    } else {
                                        VideoDetailFragment.this.downloadingNum = VideoDetailFragment.this.downloadingNum + 1;
                                        TextView access$31003 = VideoDetailFragment.this.downloadNum;
                                        StringBuilder sb5 = new StringBuilder();
                                        sb5.append(VideoDetailFragment.this.downloadingNum);
                                        sb5.append(str8);
                                        access$31003.setText(sb5.toString());
                                    }
                                    StringBuilder sb6 = new StringBuilder();
                                    sb6.append("mPartinfo   position    ");
                                    sb6.append(i);
                                    sb6.append("        ");
                                    sb6.append(VideoDetailFragment.this.mPartinfo.toString());
                                    AILog.d(str7, sb6.toString());
                                    while (true) {
                                        if (i >= VideoDetailFragment.this.mPartinfo.length()) {
                                            break;
                                        } else if (i == i) {
                                            StringBuilder sb7 = new StringBuilder();
                                            sb7.append(str6);
                                            sb7.append(i);
                                            sb7.append(str5);
                                            sb7.append(VideoDetailFragment.this.tvTitle);
                                            AILog.d(str7, sb7.toString());
                                            JSONObject jSONobject2 = StringUtils.getJSONobject(VideoDetailFragment.this.mPartinfo, i);
                                            String optString3 = jSONobject2.optString(str4);
                                            String optString4 = jSONobject2.optString(str3);
                                            jSONobject2.optString(str2);
                                            VideoDetailFragment.this.requestAjaxPlay(optString4, optString3);
                                            break;
                                        } else {
                                            i++;
                                        }
                                    }
                                }
                            }
                        }
                    });
                }
            };
        } else {
            recyclerView.setLayoutManager(new StaggeredGridLayoutManager(1, 1));
            this.mDownloadAdapter = new CommonAdapter<String8Bean>(Utils.getContext(), R.layout.item_videodownload_str, this.mPlayData) {
                /* access modifiers changed from: protected */
                public void convert(ViewHolder viewHolder, final String8Bean string8Bean, final int i) {
                    viewHolder.setText(R.id.item_videodownload_text, string8Bean.getStr3());
                    ImageView imageView = (ImageView) viewHolder.getConvertView().findViewById(R.id.downloading);
                    if (string8Bean.str9.equals("1")) {
                        imageView.setVisibility(0);
                        imageView.setImageDrawable(VideoDetailFragment.this.getResources().getDrawable(R.drawable.downloading));
                    } else if (string8Bean.str9.equals("0")) {
                        imageView.setVisibility(8);
                    } else if (string8Bean.str9.equals("2")) {
                        imageView.setVisibility(0);
                        imageView.setImageDrawable(VideoDetailFragment.this.getResources().getDrawable(R.drawable.completed));
                    } else {
                        imageView.setVisibility(8);
                    }
                    viewHolder.setOnClickListener(R.id.videodownload_rl, new OnClickListener() {
                        public void onClick(View view) {
                            if (!VideoDetailFragment.this.isQuicklyClick()) {
                                if (!NetWorkUtils.isWifi(Utils.getContext())) {
                                    if (((Boolean) PreferenceUtil.get(Utils.getContext(), "download_type_wifi", Boolean.valueOf(true))).booleanValue()) {
                                        VideoDetailFragment.this.initAlertDialog("提示", "添加成功，当前设置仅wifi下缓存，如仍需下载请至【设置】开启");
                                    }
                                }
                                if (StringUtils.isJSONArrayNotEmpty(VideoDetailFragment.this.mPartinfo)) {
                                    if (string8Bean.str9.equals("2")) {
                                        ToastUtils.showShort((CharSequence) "该视频已缓存完毕");
                                        return;
                                    }
                                    String str = "1";
                                    boolean equals = string8Bean.str9.equals(str);
                                    String str2 = "url";
                                    String str3 = "_id";
                                    String str4 = "part";
                                    String str5 = "    title  ";
                                    String str6 = "mPartinfo position";
                                    String str7 = VideoDetailFragment.TAG;
                                    int i = 0;
                                    if (equals) {
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 >= VideoDetailFragment.this.mPartinfo.length()) {
                                                break;
                                            } else if (i == i2) {
                                                StringBuilder sb = new StringBuilder();
                                                sb.append(str6);
                                                sb.append(i);
                                                sb.append(str5);
                                                sb.append(VideoDetailFragment.this.tvTitle);
                                                AILog.d(str7, sb.toString());
                                                JSONObject jSONobject = StringUtils.getJSONobject(VideoDetailFragment.this.mPartinfo, i2);
                                                jSONobject.optString(str4);
                                                String optString = jSONobject.optString(str3);
                                                String optString2 = jSONobject.optString(str2);
                                                while (true) {
                                                    VideoDownloadManager.instance();
                                                    if (i >= VideoDownloadManager.entityVideoList.size()) {
                                                        break;
                                                    }
                                                    VideoDownloadManager.instance();
                                                    if (((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).id.equals(optString)) {
                                                        VideoDetailFragment.this.alertDeleteDownloadDialog(optString2, optString, i);
                                                        break;
                                                    }
                                                    i++;
                                                }
                                            } else {
                                                i2++;
                                            }
                                        }
                                        return;
                                    }
                                    ((String8Bean) VideoDetailFragment.this.mPlayData.get(i)).str9 = str;
                                    if (VideoDetailFragment.this.mDownloadAdapter != null) {
                                        VideoDetailFragment.this.mDownloadAdapter.notifyDataSetChanged();
                                    }
                                    VideoDetailFragment.this.mPart = string8Bean.getStr3();
                                    VideoDetailFragment.mPartId = string8Bean.getStr1();
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("mPart");
                                    sb2.append(VideoDetailFragment.this.mPart);
                                    sb2.append("   mPartId");
                                    sb2.append(VideoDetailFragment.mPartId);
                                    AILog.d(str7, sb2.toString());
                                    VideoDetailFragment.this.notDownload = false;
                                    VideoDetailFragment.this.initDownload();
                                    String str8 = "";
                                    if (VideoDetailFragment.this.mDownloadDetail == null) {
                                        VideoDetailFragment.this.downloadingNum = VideoDetailFragment.this.downloadingNum + 1;
                                        TextView access$3100 = VideoDetailFragment.this.downloadNum;
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append(VideoDetailFragment.this.downloadingNum);
                                        sb3.append(str8);
                                        access$3100.setText(sb3.toString());
                                    } else if (VideoDetailFragment.this.mDownloadDetail == null || VideoDetailFragment.this.mDownloadDetail.length() <= 0) {
                                        VideoDetailFragment.this.downloadingNum = VideoDetailFragment.this.downloadingNum + 1;
                                        TextView access$31002 = VideoDetailFragment.this.downloadNum;
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(VideoDetailFragment.this.downloadingNum);
                                        sb4.append(str8);
                                        access$31002.setText(sb4.toString());
                                    } else {
                                        VideoDetailFragment.this.downloadingNum = VideoDetailFragment.this.downloadingNum + 1;
                                        TextView access$31003 = VideoDetailFragment.this.downloadNum;
                                        StringBuilder sb5 = new StringBuilder();
                                        sb5.append(VideoDetailFragment.this.downloadingNum);
                                        sb5.append(str8);
                                        access$31003.setText(sb5.toString());
                                    }
                                    StringBuilder sb6 = new StringBuilder();
                                    sb6.append("mPartinfo   position    ");
                                    sb6.append(i);
                                    sb6.append("        ");
                                    sb6.append(VideoDetailFragment.this.mPartinfo.toString());
                                    AILog.d(str7, sb6.toString());
                                    while (true) {
                                        if (i >= VideoDetailFragment.this.mPartinfo.length()) {
                                            break;
                                        } else if (i == i) {
                                            StringBuilder sb7 = new StringBuilder();
                                            sb7.append(str6);
                                            sb7.append(i);
                                            sb7.append(str5);
                                            sb7.append(VideoDetailFragment.this.tvTitle);
                                            AILog.d(str7, sb7.toString());
                                            JSONObject jSONobject2 = StringUtils.getJSONobject(VideoDetailFragment.this.mPartinfo, i);
                                            String optString3 = jSONobject2.optString(str4);
                                            String optString4 = jSONobject2.optString(str3);
                                            jSONobject2.optString(str2);
                                            VideoDetailFragment.this.requestAjaxPlay(optString4, optString3);
                                            break;
                                        } else {
                                            i++;
                                        }
                                    }
                                }
                            }
                        }
                    });
                }
            };
        }
        recyclerView.setAdapter(this.mDownloadAdapter);
        this.mBottomView.setAnimation(R.style.BottomToTopAnim);
        this.mBottomView.showBottomView(true);
    }

    /* access modifiers changed from: private */
    public void requestAjaxPlay(String str, String str2) {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("part_id", str);
        this.request.put("tvid", this.mTid);
        this.request.put("circuit", "1");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Call lineSwitch = Api.getService().lineSwitch(this.request);
        final String str3 = str;
        final String str4 = str2;
        AnonymousClass17 r1 = new CommonCallBack(getActivity(), true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        String str = "status";
                        if (!StringUtils.isEmpty(jsonObject.optString(str)) && jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                VideoDetailFragment.this.videoSizeSum = jsonObject2.optLong("size");
                                if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                                    VideoDetailFragment.this.requestPlayUrlAndDownload(str3, str4);
                                }
                            }
                        }
                    }
                }
            }
        };
        lineSwitch.enqueue(r1);
    }

    /* access modifiers changed from: private */
    public void requestPlayUrlAndDownload(String str, String str2) {
        if (getActivity() != null) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("part_id", str);
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            Call requestUrl = Api.getService().requestUrl(this.request);
            final String str3 = str;
            final String str4 = str2;
            AnonymousClass18 r1 = new CommonCallBack(getActivity(), true) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    String str = "数据请求失败，请稍后再试。。";
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            String str2 = "status";
                            if (StringUtils.isEmpty(jsonObject.optString(str2)) || !jsonObject.optString(str2).equals(StatusCode.STATUS_OK)) {
                                ToastUtils.showShort((CharSequence) str);
                            } else {
                                final String optString = jsonObject.optString("data");
                                new Thread() {
                                    public void run() {
                                        String str = "photo";
                                        try {
                                            M3U8 parseIndex = MUtils.parseIndex(optString);
                                            VideoDetailFragment.this.photo = VideoDetailFragment.this.info.optString(str);
                                            VideoDetailFragment.this.saveTvDetail(str3, str4, VideoDetailFragment.this.tvTitle, optString, parseIndex.getTsList().size(), optString, VideoDetailFragment.this.photo);
                                            new SdcardPictureHelper(VideoDetailFragment.this.getActivity()).savePicture(VideoDetailFragment.this.tvTitle, VideoDetailFragment.this.photo);
                                        } catch (IOException e) {
                                            e.printStackTrace();
                                            VideoDetailFragment.this.photo = VideoDetailFragment.this.info.optString(str);
                                            M3U8 m3u8 = new M3U8();
                                            m3u8.setTsList(new ArrayList());
                                            VideoDetailFragment.this.saveTvDetail(str3, str4, VideoDetailFragment.this.tvTitle, optString, m3u8.getTsList().size(), optString, VideoDetailFragment.this.photo);
                                            new SdcardPictureHelper(VideoDetailFragment.this.getActivity()).savePicture(VideoDetailFragment.this.tvTitle, VideoDetailFragment.this.photo);
                                        }
                                    }
                                }.start();
                            }
                        }
                    } else {
                        ToastUtils.showShort((CharSequence) str);
                    }
                }
            };
            requestUrl.enqueue(r1);
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x02a0 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x02c1 A[Catch:{ JSONException -> 0x034a }, LOOP:5: B:82:0x02c1->B:87:0x0343, LOOP_START, PHI: r2 
      PHI: (r2v1 int) = (r2v0 int), (r2v9 int) binds: [B:81:0x02bf, B:87:0x0343] A[DONT_GENERATE, DONT_INLINE]] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void saveTvDetail(java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, int r24, java.lang.String r25, java.lang.String r26) {
        /*
            r19 = this;
            r13 = r19
            r14 = r20
            r15 = r21
            r11 = r22
            r12 = r25
            r16 = 0
            java.lang.String r0 = "VideoDetailFragment"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x0081 }
            r1.<init>()     // Catch:{ JSONException -> 0x0081 }
            java.lang.String r2 = "jsonTitle  "
            r1.append(r2)     // Catch:{ JSONException -> 0x0081 }
            r1.append(r11)     // Catch:{ JSONException -> 0x0081 }
            java.lang.String r2 = "  part_id  "
            r1.append(r2)     // Catch:{ JSONException -> 0x0081 }
            r1.append(r14)     // Catch:{ JSONException -> 0x0081 }
            java.lang.String r2 = "  part  "
            r1.append(r2)     // Catch:{ JSONException -> 0x0081 }
            r1.append(r15)     // Catch:{ JSONException -> 0x0081 }
            java.lang.String r2 = "  playinfo.optString(\"url\")  "
            r1.append(r2)     // Catch:{ JSONException -> 0x0081 }
            r5 = r23
            r1.append(r5)     // Catch:{ JSONException -> 0x0081 }
            java.lang.String r2 = "   size  "
            r1.append(r2)     // Catch:{ JSONException -> 0x0081 }
            r6 = r24
            r1.append(r6)     // Catch:{ JSONException -> 0x0081 }
            java.lang.String r1 = r1.toString()     // Catch:{ JSONException -> 0x0081 }
            com.kantv.common.log.AILog.d(r0, r1)     // Catch:{ JSONException -> 0x0081 }
            r7 = 0
            long r9 = java.lang.System.currentTimeMillis()     // Catch:{ JSONException -> 0x0081 }
            long r3 = r13.videoSizeSum     // Catch:{ JSONException -> 0x0081 }
            r1 = r19
            r2 = r22
            r17 = r3
            r3 = r20
            r4 = r21
            r5 = r23
            r6 = r24
            r8 = r26
            r15 = r12
            r11 = r17
            org.json.JSONObject r16 = r1.toJSON(r2, r3, r4, r5, r6, r7, r8, r9, r11)     // Catch:{ JSONException -> 0x007f }
            java.lang.String r0 = "VideoDetailFragment"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x007f }
            r1.<init>()     // Catch:{ JSONException -> 0x007f }
            java.lang.String r2 = "downloadDetail  "
            r1.append(r2)     // Catch:{ JSONException -> 0x007f }
            java.lang.String r2 = r16.toString()     // Catch:{ JSONException -> 0x007f }
            r1.append(r2)     // Catch:{ JSONException -> 0x007f }
            java.lang.String r1 = r1.toString()     // Catch:{ JSONException -> 0x007f }
            com.kantv.common.log.AILog.d(r0, r1)     // Catch:{ JSONException -> 0x007f }
            goto L_0x00a0
        L_0x007f:
            r0 = move-exception
            goto L_0x0083
        L_0x0081:
            r0 = move-exception
            r15 = r12
        L_0x0083:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "生成toJSON出错"
            r1.append(r2)
            java.lang.String r2 = r0.toString()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "VideoDetailFragment"
            com.kantv.common.log.AILog.d(r2, r1)
            r0.printStackTrace()
        L_0x00a0:
            r0 = r16
            org.json.JSONObject r1 = r13.mDownloadDetail
            r2 = 0
            if (r1 == 0) goto L_0x0289
            int r1 = r1.length()
            if (r1 <= 0) goto L_0x0289
            org.json.JSONObject r1 = r13.mDownloadDetail
            java.lang.String r3 = "downloadlist"
            org.json.JSONArray r1 = r1.optJSONArray(r3)
            int r3 = r1.length()
            if (r3 <= 0) goto L_0x01c1
            r3 = 0
        L_0x00bc:
            int r4 = r1.length()
            if (r3 >= r4) goto L_0x00f5
            java.lang.Object r4 = r1.opt(r3)
            org.json.JSONObject r4 = (org.json.JSONObject) r4
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "arrayJson"
            r5.append(r6)
            java.lang.String r6 = r4.toString()
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            java.lang.String r6 = "VideoDetailFragment"
            com.kantv.common.log.AILog.d(r6, r5)
            if (r4 == 0) goto L_0x00f2
            java.lang.String r5 = "id"
            java.lang.String r4 = r4.optString(r5)
            boolean r4 = r4.equals(r14)
            if (r4 == 0) goto L_0x00f2
            r3 = 0
            goto L_0x00f6
        L_0x00f2:
            int r3 = r3 + 1
            goto L_0x00bc
        L_0x00f5:
            r3 = 1
        L_0x00f6:
            if (r3 == 0) goto L_0x034e
            org.json.JSONObject r3 = r13.mDownloadDetail     // Catch:{ JSONException -> 0x01bb }
            monitor-enter(r3)     // Catch:{ JSONException -> 0x01bb }
            r1.put(r0)     // Catch:{ all -> 0x01b8 }
            org.json.JSONObject r0 = r13.mDownloadDetail     // Catch:{ all -> 0x01b8 }
            java.lang.String r4 = "downloadlist"
            r0.put(r4, r1)     // Catch:{ all -> 0x01b8 }
            android.content.Context r0 = com.kantv.common.utils.Utils.getContext()     // Catch:{ all -> 0x01b8 }
            java.lang.String r1 = "download"
            org.json.JSONObject r4 = r13.mDownloadDetail     // Catch:{ all -> 0x01b8 }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x01b8 }
            com.kantv.ui.utils.PreferenceUtil.put(r0, r1, r4)     // Catch:{ all -> 0x01b8 }
            monitor-exit(r3)     // Catch:{ all -> 0x01b8 }
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x01bb }
            com.kantv.ui.download.VideoDownloadManager.getDownloadingData2()     // Catch:{ JSONException -> 0x01bb }
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x01bb }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x01bb }
            int r0 = r0.size()     // Catch:{ JSONException -> 0x01bb }
            if (r0 <= 0) goto L_0x034e
        L_0x0126:
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x01bb }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x01bb }
            int r0 = r0.size()     // Catch:{ JSONException -> 0x01bb }
            if (r2 >= r0) goto L_0x034e
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x01bb }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x01bb }
            java.lang.Object r0 = r0.get(r2)     // Catch:{ JSONException -> 0x01bb }
            com.kantv.ui.bean.EntityVideo r0 = (com.kantv.ui.bean.EntityVideo) r0     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r0 = r0.url     // Catch:{ JSONException -> 0x01bb }
            boolean r0 = r0.equals(r15)     // Catch:{ JSONException -> 0x01bb }
            if (r0 == 0) goto L_0x01af
            java.lang.String r0 = "VideoDetailFragment"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x01bb }
            r1.<init>()     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r2 = "setOnClickListenername"
            r1.append(r2)     // Catch:{ JSONException -> 0x01bb }
            r1.append(r15)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r2 = "   "
            r1.append(r2)     // Catch:{ JSONException -> 0x01bb }
            r2 = r22
            r3 = r15
            r1.append(r2)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r4 = "(第"
            r1.append(r4)     // Catch:{ JSONException -> 0x01bb }
            r4 = r21
            r5 = r2
            r1.append(r4)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r2 = "集)"
            r1.append(r2)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r1 = r1.toString()     // Catch:{ JSONException -> 0x01bb }
            com.kantv.common.log.AILog.d(r0, r1)     // Catch:{ JSONException -> 0x01bb }
            android.content.Intent r0 = new android.content.Intent     // Catch:{ JSONException -> 0x01bb }
            android.content.Context r1 = com.kantv.common.utils.Utils.getContext()     // Catch:{ JSONException -> 0x01bb }
            java.lang.Class<com.kantv.ui.download.MyDownLoadService> r2 = com.kantv.ui.download.MyDownLoadService.class
            r0.<init>(r1, r2)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r1 = "url"
            r0.putExtra(r1, r3)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r1 = "name"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x01bb }
            r2.<init>()     // Catch:{ JSONException -> 0x01bb }
            r2.append(r5)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r3 = "-(第"
            r2.append(r3)     // Catch:{ JSONException -> 0x01bb }
            r2.append(r4)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r3 = "集)-"
            r2.append(r3)     // Catch:{ JSONException -> 0x01bb }
            r2.append(r14)     // Catch:{ JSONException -> 0x01bb }
            java.lang.String r2 = r2.toString()     // Catch:{ JSONException -> 0x01bb }
            r0.putExtra(r1, r2)     // Catch:{ JSONException -> 0x01bb }
            android.content.Context r1 = com.kantv.common.utils.Utils.getContext()     // Catch:{ JSONException -> 0x01bb }
            r1.startService(r0)     // Catch:{ JSONException -> 0x01bb }
            goto L_0x034e
        L_0x01af:
            r4 = r21
            r5 = r22
            r3 = r15
            int r2 = r2 + 1
            goto L_0x0126
        L_0x01b8:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x01b8 }
            throw r0     // Catch:{ JSONException -> 0x01bb }
        L_0x01bb:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x034e
        L_0x01c1:
            r4 = r21
            r5 = r22
            r3 = r15
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch:{ JSONException -> 0x0283 }
            r1.<init>()     // Catch:{ JSONException -> 0x0283 }
            r1.put(r0)     // Catch:{ JSONException -> 0x0283 }
            org.json.JSONObject r0 = r13.mDownloadDetail     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r6 = "downloadlist"
            r0.put(r6, r1)     // Catch:{ JSONException -> 0x0283 }
            org.json.JSONObject r1 = r13.mDownloadDetail     // Catch:{ JSONException -> 0x0283 }
            monitor-enter(r1)     // Catch:{ JSONException -> 0x0283 }
            android.content.Context r0 = com.kantv.common.utils.Utils.getContext()     // Catch:{ all -> 0x0280 }
            java.lang.String r6 = "download"
            org.json.JSONObject r7 = r13.mDownloadDetail     // Catch:{ all -> 0x0280 }
            java.lang.String r7 = r7.toString()     // Catch:{ all -> 0x0280 }
            com.kantv.ui.utils.PreferenceUtil.put(r0, r6, r7)     // Catch:{ all -> 0x0280 }
            monitor-exit(r1)     // Catch:{ all -> 0x0280 }
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x0283 }
            com.kantv.ui.download.VideoDownloadManager.getDownloadingData2()     // Catch:{ JSONException -> 0x0283 }
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x0283 }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x0283 }
            int r0 = r0.size()     // Catch:{ JSONException -> 0x0283 }
            if (r0 <= 0) goto L_0x034e
        L_0x01f9:
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x0283 }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x0283 }
            int r0 = r0.size()     // Catch:{ JSONException -> 0x0283 }
            if (r2 >= r0) goto L_0x034e
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x0283 }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x0283 }
            java.lang.Object r0 = r0.get(r2)     // Catch:{ JSONException -> 0x0283 }
            com.kantv.ui.bean.EntityVideo r0 = (com.kantv.ui.bean.EntityVideo) r0     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r0 = r0.url     // Catch:{ JSONException -> 0x0283 }
            boolean r0 = r0.equals(r3)     // Catch:{ JSONException -> 0x0283 }
            if (r0 == 0) goto L_0x027c
            java.lang.String r0 = "VideoDetailFragment"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x0283 }
            r1.<init>()     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r2 = "setOnClickListenername"
            r1.append(r2)     // Catch:{ JSONException -> 0x0283 }
            r1.append(r3)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r2 = "   "
            r1.append(r2)     // Catch:{ JSONException -> 0x0283 }
            r1.append(r5)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r2 = "(第"
            r1.append(r2)     // Catch:{ JSONException -> 0x0283 }
            r1.append(r4)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r2 = "集)"
            r1.append(r2)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r1 = r1.toString()     // Catch:{ JSONException -> 0x0283 }
            com.kantv.common.log.AILog.d(r0, r1)     // Catch:{ JSONException -> 0x0283 }
            android.content.Intent r0 = new android.content.Intent     // Catch:{ JSONException -> 0x0283 }
            android.content.Context r1 = com.kantv.common.utils.Utils.getContext()     // Catch:{ JSONException -> 0x0283 }
            java.lang.Class<com.kantv.ui.download.MyDownLoadService> r2 = com.kantv.ui.download.MyDownLoadService.class
            r0.<init>(r1, r2)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r1 = "url"
            r0.putExtra(r1, r3)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r1 = "name"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x0283 }
            r2.<init>()     // Catch:{ JSONException -> 0x0283 }
            r2.append(r5)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r3 = "-(第"
            r2.append(r3)     // Catch:{ JSONException -> 0x0283 }
            r2.append(r4)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r3 = "集)-"
            r2.append(r3)     // Catch:{ JSONException -> 0x0283 }
            r2.append(r14)     // Catch:{ JSONException -> 0x0283 }
            java.lang.String r2 = r2.toString()     // Catch:{ JSONException -> 0x0283 }
            r0.putExtra(r1, r2)     // Catch:{ JSONException -> 0x0283 }
            android.content.Context r1 = com.kantv.common.utils.Utils.getContext()     // Catch:{ JSONException -> 0x0283 }
            r1.startService(r0)     // Catch:{ JSONException -> 0x0283 }
            goto L_0x034e
        L_0x027c:
            int r2 = r2 + 1
            goto L_0x01f9
        L_0x0280:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0280 }
            throw r0     // Catch:{ JSONException -> 0x0283 }
        L_0x0283:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x034e
        L_0x0289:
            r4 = r21
            r5 = r22
            r3 = r15
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch:{ JSONException -> 0x034a }
            r1.<init>()     // Catch:{ JSONException -> 0x034a }
            r1.put(r0)     // Catch:{ JSONException -> 0x034a }
            org.json.JSONObject r0 = r13.mDownloadDetail     // Catch:{ JSONException -> 0x034a }
            java.lang.String r6 = "downloadlist"
            r0.put(r6, r1)     // Catch:{ JSONException -> 0x034a }
            org.json.JSONObject r1 = r13.mDownloadDetail     // Catch:{ JSONException -> 0x034a }
            monitor-enter(r1)     // Catch:{ JSONException -> 0x034a }
            android.content.Context r0 = com.kantv.common.utils.Utils.getContext()     // Catch:{ all -> 0x0347 }
            java.lang.String r6 = "download"
            org.json.JSONObject r7 = r13.mDownloadDetail     // Catch:{ all -> 0x0347 }
            java.lang.String r7 = r7.toString()     // Catch:{ all -> 0x0347 }
            com.kantv.ui.utils.PreferenceUtil.put(r0, r6, r7)     // Catch:{ all -> 0x0347 }
            monitor-exit(r1)     // Catch:{ all -> 0x0347 }
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x034a }
            com.kantv.ui.download.VideoDownloadManager.getDownloadingData2()     // Catch:{ JSONException -> 0x034a }
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x034a }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x034a }
            int r0 = r0.size()     // Catch:{ JSONException -> 0x034a }
            if (r0 <= 0) goto L_0x034e
        L_0x02c1:
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x034a }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x034a }
            int r0 = r0.size()     // Catch:{ JSONException -> 0x034a }
            if (r2 >= r0) goto L_0x034e
            com.kantv.ui.download.VideoDownloadManager.instance()     // Catch:{ JSONException -> 0x034a }
            java.util.List<com.kantv.ui.bean.EntityVideo> r0 = com.kantv.ui.download.VideoDownloadManager.entityVideoList     // Catch:{ JSONException -> 0x034a }
            java.lang.Object r0 = r0.get(r2)     // Catch:{ JSONException -> 0x034a }
            com.kantv.ui.bean.EntityVideo r0 = (com.kantv.ui.bean.EntityVideo) r0     // Catch:{ JSONException -> 0x034a }
            java.lang.String r0 = r0.url     // Catch:{ JSONException -> 0x034a }
            boolean r0 = r0.equals(r3)     // Catch:{ JSONException -> 0x034a }
            if (r0 == 0) goto L_0x0343
            java.lang.String r0 = "VideoDetailFragment"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x034a }
            r1.<init>()     // Catch:{ JSONException -> 0x034a }
            java.lang.String r2 = "setOnClickListenername"
            r1.append(r2)     // Catch:{ JSONException -> 0x034a }
            r1.append(r3)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r2 = "   "
            r1.append(r2)     // Catch:{ JSONException -> 0x034a }
            r1.append(r5)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r2 = "(第"
            r1.append(r2)     // Catch:{ JSONException -> 0x034a }
            r1.append(r4)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r2 = "集)"
            r1.append(r2)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r1 = r1.toString()     // Catch:{ JSONException -> 0x034a }
            com.kantv.common.log.AILog.d(r0, r1)     // Catch:{ JSONException -> 0x034a }
            android.content.Intent r0 = new android.content.Intent     // Catch:{ JSONException -> 0x034a }
            android.content.Context r1 = com.kantv.common.utils.Utils.getContext()     // Catch:{ JSONException -> 0x034a }
            java.lang.Class<com.kantv.ui.download.MyDownLoadService> r2 = com.kantv.ui.download.MyDownLoadService.class
            r0.<init>(r1, r2)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r1 = "url"
            r0.putExtra(r1, r3)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r1 = "name"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x034a }
            r2.<init>()     // Catch:{ JSONException -> 0x034a }
            r2.append(r5)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r3 = "-(第"
            r2.append(r3)     // Catch:{ JSONException -> 0x034a }
            r2.append(r4)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r3 = "集)-"
            r2.append(r3)     // Catch:{ JSONException -> 0x034a }
            r2.append(r14)     // Catch:{ JSONException -> 0x034a }
            java.lang.String r2 = r2.toString()     // Catch:{ JSONException -> 0x034a }
            r0.putExtra(r1, r2)     // Catch:{ JSONException -> 0x034a }
            android.content.Context r1 = com.kantv.common.utils.Utils.getContext()     // Catch:{ JSONException -> 0x034a }
            r1.startService(r0)     // Catch:{ JSONException -> 0x034a }
            goto L_0x034e
        L_0x0343:
            int r2 = r2 + 1
            goto L_0x02c1
        L_0x0347:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0347 }
            throw r0     // Catch:{ JSONException -> 0x034a }
        L_0x034a:
            r0 = move-exception
            r0.printStackTrace()
        L_0x034e:
            r19.initDownload()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.fragment.VideoDetailFragment.saveTvDetail(java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String):void");
    }

    public JSONObject toJSON(String str, String str2, String str3, String str4, int i, int i2, String str5, long j, long j2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", str);
        jSONObject.put("id", str2);
        jSONObject.put("part", str3);
        jSONObject.put("url", str4);
        jSONObject.put("tssize", i);
        jSONObject.put("state", i2);
        jSONObject.put("photo", str5);
        jSONObject.put("time", j);
        jSONObject.put("size", j2);
        return jSONObject;
    }

    /* access modifiers changed from: private */
    public String getFileName() {
        String str = "";
        if (SettingsManager.checkSDCard()) {
            this.mp4NameList.clear();
            String str2 = SettingsManager.DIRPATH;
            StringBuilder sb = new StringBuilder();
            sb.append("downloadPath：：   ");
            sb.append(str2);
            String sb2 = sb.toString();
            String str3 = TAG;
            AILog.d(str3, sb2);
            File file = new File(str2);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("dir.exists()：：   ");
            sb3.append(file.exists());
            AILog.d(str3, sb3.toString());
            if (file.exists()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("file.getName()：：   ");
                        sb4.append(file2.getName());
                        AILog.d(str3, sb4.toString());
                        String name = file2.getName();
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("fileName");
                        sb5.append(name);
                        AILog.d(str3, sb5.toString());
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("文件名mp4：：   ");
                        sb6.append(name);
                        AILog.d(str3, sb6.toString());
                        this.mp4NameList.add(name);
                    }
                }
            }
        }
        return str;
    }

    /* access modifiers changed from: private */
    public void initDownloadingData() {
        getFileName();
        List<String> list = this.mp4NameList;
        String str = TAG;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < this.mp4NameList.size(); i++) {
                StringBuilder sb = new StringBuilder();
                sb.append("mp4Namelist");
                sb.append((String) this.mp4NameList.get(i));
                AILog.d(str, sb.toString());
            }
        }
        List<String8Bean> list2 = this.mPlayData;
        if (list2 != null && list2.size() > 0) {
            int i2 = 0;
            while (i2 < this.mPlayData.size()) {
                String8Bean string8Bean = (String8Bean) this.mPlayData.get(i2);
                List<String> list3 = this.mp4NameList;
                if (list3 != null && list3.size() > 0) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= this.mp4NameList.size()) {
                            break;
                        }
                        String str2 = (String) this.mp4NameList.get(i3);
                        String str3 = "-";
                        if (str2.contains(str3)) {
                            String[] split = str2.split(str3);
                            if (split.length >= 1) {
                                String str4 = "";
                                String trim = Pattern.compile("[^0-9]").matcher(split[1]).replaceAll(str4).trim();
                                this.mPlayName = this.mPlayName.trim().replace(" ", str4);
                                if (str2.contains(this.mPlayName) && trim.equals(string8Bean.getStr3())) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("initDownloadingData name");
                                    sb2.append(str2);
                                    sb2.append("  tvname");
                                    sb2.append(this.mPlayName);
                                    sb2.append("  playdata.getStr3()  ");
                                    sb2.append(string8Bean.getStr3());
                                    AILog.d(str, sb2.toString());
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(SettingsManager.getDirPath());
                                    sb3.append(File.separator);
                                    sb3.append(str2);
                                    sb3.append(File.separator);
                                    sb3.append(SettingsManager.M3U8);
                                    String sb4 = sb3.toString();
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("filePath");
                                    sb5.append(sb4);
                                    AILog.d(str, sb5.toString());
                                    if (new File(sb4).exists()) {
                                        string8Bean.str9 = "2";
                                        this.mPlayData.set(i2, string8Bean);
                                        break;
                                    }
                                }
                            } else {
                                continue;
                            }
                        }
                        i3++;
                    }
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void alertDeleteDownloadDialog(final String str, final String str2, final int i) {
        AlertDialog msg = new AlertDialog(getContext()).builder().setMsg("停止并删除该集缓存");
        AnonymousClass20 r1 = new OnClickListener() {
            public void onClick(View view) {
                String str;
                String str2;
                VideoDownloadManager.instance();
                if (VideoDownloadManager.entityVideoList.size() > 0) {
                    int i = 0;
                    while (true) {
                        VideoDownloadManager.instance();
                        if (i < VideoDownloadManager.entityVideoList.size()) {
                            VideoDownloadManager.instance();
                            EntityVideo entityVideo = (EntityVideo) VideoDownloadManager.entityVideoList.get(i);
                            VideoDownloadManager.instance();
                            if (((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).id.equals(str2)) {
                                if (entityVideo.state == 2 || entityVideo.state == -1 || entityVideo.state == 1 || entityVideo.state == 4) {
                                    M3U8Downloader.getInstance().pause(entityVideo.url);
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(str2);
                                VideoDownloadManager.instance();
                                VideoDownloadManager.removeDownloadList(arrayList);
                                VideoDownloadManager.instance();
                                VideoDownloadManager.getDownloadingData3(str);
                                VideoDetailFragment.this.getFileName();
                                int i2 = 0;
                                while (true) {
                                    int size = VideoDetailFragment.this.mp4NameList.size();
                                    str = "";
                                    str2 = VideoDetailFragment.TAG;
                                    if (i2 >= size) {
                                        break;
                                    } else if (!((String) VideoDetailFragment.this.mp4NameList.get(i2)).contains(entityVideo.name) || !((String) VideoDetailFragment.this.mp4NameList.get(i2)).contains(entityVideo.part)) {
                                        i2++;
                                    } else {
                                        String dirPath = SettingsManager.getDirPath();
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(dirPath);
                                        sb.append(File.separator);
                                        sb.append(entityVideo.name.trim().replace(" ", str));
                                        File file = new File(sb.toString());
                                        StringBuilder sb2 = new StringBuilder();
                                        String str3 = "路径";
                                        sb2.append(str3);
                                        sb2.append(file.getAbsolutePath());
                                        sb2.append("       ");
                                        sb2.append(file.exists());
                                        AILog.d(str2, sb2.toString());
                                        if (file.exists()) {
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append(str3);
                                            sb3.append(file.getAbsolutePath());
                                            AILog.d(str2, sb3.toString());
                                            MUtils.RecursionDeleteFile(file);
                                        }
                                    }
                                }
                                for (int i3 = 0; i3 < VideoDetailFragment.this.mPlayData.size(); i3++) {
                                    if (i3 == i) {
                                        String str4 = "0";
                                        if (i < VideoDetailFragment.this.mPlayData.size()) {
                                            ((String8Bean) VideoDetailFragment.this.mPlayData.get(i)).str9 = str4;
                                        }
                                        for (int i4 = 0; i4 < VideoDetailFragment.this.mPlayData.size(); i4++) {
                                            StringBuilder sb4 = new StringBuilder();
                                            sb4.append("mPlayData.get(j)");
                                            sb4.append(((String8Bean) VideoDetailFragment.this.mPlayData.get(i4)).str9);
                                            AILog.d(str2, sb4.toString());
                                            ((String8Bean) VideoDetailFragment.this.mPlayData.get(i4)).str9 = str4;
                                        }
                                        VideoDetailFragment.this.initDownload();
                                        VideoDetailFragment.this.initPlayData();
                                        VideoDetailFragment.this.getFileName();
                                        VideoDetailFragment.this.initDownloadingData();
                                        if (VideoDetailFragment.this.mDownloadAdapter != null) {
                                            VideoDetailFragment.this.mDownloadAdapter.notifyDataSetChanged();
                                        }
                                        TextView access$3100 = VideoDetailFragment.this.downloadNum;
                                        StringBuilder sb5 = new StringBuilder();
                                        VideoDownloadManager.instance();
                                        sb5.append(VideoDownloadManager.entityVideoList.size());
                                        sb5.append(str);
                                        access$3100.setText(sb5.toString());
                                    }
                                }
                                return;
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                }
            }
        };
        msg.setNegativeButton("确定", r1).setPositiveButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void initPlayData() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "download", "");
        if (!str.isEmpty()) {
            try {
                this.mDownloadDetail = new JSONObject(str);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        List<String8Bean> list = this.mPlayData;
        if (list != null) {
            int size = list.size();
            String str2 = TAG;
            if (size > 0) {
                for (int i = 0; i < this.mPlayData.size(); i++) {
                    JSONObject jSONObject = this.mDownloadDetail;
                    if (jSONObject == null || jSONObject.length() <= 0) {
                        break;
                    }
                    JSONArray optJSONArray = this.mDownloadDetail.optJSONArray("downloadlist");
                    StringBuilder sb = new StringBuilder();
                    sb.append("downloadArray  ");
                    sb.append(optJSONArray.length());
                    AILog.d(str2, sb.toString());
                    String8Bean string8Bean = (String8Bean) this.mPlayData.get(i);
                    if (optJSONArray.length() <= 0) {
                        break;
                    }
                    int i2 = 0;
                    while (true) {
                        if (i2 >= optJSONArray.length()) {
                            break;
                        } else if (((JSONObject) optJSONArray.opt(i2)).opt("id").equals(string8Bean.getStr1())) {
                            string8Bean.str9 = "1";
                            this.mPlayData.set(i, string8Bean);
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            for (int i3 = 0; i3 < this.mPlayData.size(); i3++) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("STR9");
                sb2.append(((String8Bean) this.mPlayData.get(i3)).str9);
                AILog.d(str2, sb2.toString());
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean havePermissionForWriteStorage() {
        return PermissionUtil.checkPermission(getActivity(), new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 164);
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
        Api.getService().likethis(this.request).enqueue(new CommonCallBack(getActivity(), true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VideoDetailFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            ((CommentChildBean) VideoDetailFragment.this.mCommentData.get(i)).setStr4("1");
                            ((CommentChildBean) VideoDetailFragment.this.mCommentData.get(i)).setStr8(String.valueOf(Integer.parseInt(((CommentChildBean) VideoDetailFragment.this.mCommentData.get(i)).getStr8()) + 1));
                            if (VideoDetailFragment.this.mCommentAdapter != null) {
                                VideoDetailFragment.this.mCommentAdapter.notifyDataSetChanged();
                            }
                        }
                        ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                    }
                }
            }
        });
    }

    public String formetFileSize(long j) {
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (j < 1024) {
            StringBuilder sb = new StringBuilder();
            sb.append(decimalFormat.format((double) j));
            sb.append("B");
            return sb.toString();
        } else if (j < 1048576) {
            StringBuilder sb2 = new StringBuilder();
            double d = (double) j;
            Double.isNaN(d);
            sb2.append(decimalFormat.format(d / 1024.0d));
            sb2.append("KB");
            return sb2.toString();
        } else if (j < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb3 = new StringBuilder();
            double d2 = (double) j;
            Double.isNaN(d2);
            sb3.append(decimalFormat.format(d2 / 1048576.0d));
            sb3.append("M");
            return sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            double d3 = (double) j;
            Double.isNaN(d3);
            sb4.append(decimalFormat.format(d3 / 1.073741824E9d));
            sb4.append("G");
            return sb4.toString();
        }
    }

    /* access modifiers changed from: private */
    public void readSystem() {
        StatFs statFs = new StatFs(Environment.getRootDirectory().getPath());
        long blockSize = (long) statFs.getBlockSize();
        long blockCount = (long) statFs.getBlockCount();
        long availableBlocks = (long) statFs.getAvailableBlocks();
        StringBuilder sb = new StringBuilder();
        sb.append("block大小:");
        sb.append(blockSize);
        sb.append(",block数目:");
        sb.append(blockCount);
        sb.append(",总大小:");
        long j = blockCount * blockSize;
        sb.append(j);
        String str = "B";
        sb.append(str);
        String sb2 = sb.toString();
        String str2 = TAG;
        AILog.d(str2, sb2);
        this.SDcardTotalSize += j;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("可用的block数目：:");
        sb3.append(availableBlocks);
        sb3.append(",可用大小:");
        long j2 = availableBlocks * blockSize;
        sb3.append(j2);
        sb3.append(str);
        AILog.d(str2, sb3.toString());
        this.SDcardUseSize += j2;
    }

    /* access modifiers changed from: private */
    public void readSDCard() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSize = (long) statFs.getBlockSize();
            long blockCount = (long) statFs.getBlockCount();
            long availableBlocks = (long) statFs.getAvailableBlocks();
            StringBuilder sb = new StringBuilder();
            sb.append("block大小:");
            sb.append(blockSize);
            sb.append(",block数目:");
            sb.append(blockCount);
            sb.append(",总大小:");
            long j = blockCount * blockSize;
            sb.append(j);
            String str = "B";
            sb.append(str);
            String sb2 = sb.toString();
            String str2 = TAG;
            AILog.d(str2, sb2);
            this.SDcardTotalSize += j;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("可用的block数目：:");
            sb3.append(availableBlocks);
            sb3.append(",剩余空间:");
            long j2 = availableBlocks * blockSize;
            sb3.append(j2);
            sb3.append(str);
            AILog.d(str2, sb3.toString());
            this.SDcardUseSize += j2;
        }
    }

    /* access modifiers changed from: private */
    public void initAlertDialog(String str, String str2, final int i) {
        new AlertDialog(getContext()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton("确定", new OnClickListener() {
            public void onClick(View view) {
                if (i == 1) {
                    VideoDetailFragment.this.gotoActivity(AccountLoginActivity.class);
                    VideoDetailFragment.this.getActivity().finish();
                }
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void initAlertDialog(String str, String str2) {
        String str3 = "去设置";
        new AlertDialog(getActivity()).builder().setTitle(str).setMsg(str2).setNegativeButton("仅wifi下载", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(Utils.getContext(), SetActivity.class);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                Utils.getContext().startActivity(intent);
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public boolean isQuicklyClick() {
        boolean z;
        if (System.currentTimeMillis() - this.currentTime <= 400) {
            z = true;
            AILog.d(TAG, "*** quickly click!");
        } else {
            z = false;
        }
        this.currentTime = System.currentTimeMillis();
        return z;
    }

    private void initOpenPushDialog(String str, String str2) {
        String str3 = "立即开启";
        new AlertDialog(getActivity()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton(str3, new OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                if (VERSION.SDK_INT >= 9) {
                    intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.fromParts("package", Utils.getContext().getPackageName(), null));
                } else if (VERSION.SDK_INT <= 8) {
                    intent.setAction("android.intent.action.VIEW");
                    intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
                    intent.putExtra("com.android.settings.ApplicationPkgName", Utils.getContext().getPackageName());
                }
                VideoDetailFragment.this.startActivity(intent);
            }
        }).show();
    }

    public void setOrder(boolean z) {
        this.orderFlag = z;
    }

    private boolean isOrderRank() {
        return this.orderFlag;
    }

    public void refreshCommentsData() {
        List<CommentChildBean> list = this.mCommentData;
        if (list != null) {
            list.clear();
        }
        initCMTRequest();
    }

    public void addFirstContent(String str) {
        String str2 = str;
        CommentChildBean commentChildBean = r1;
        CommentChildBean commentChildBean2 = new CommentChildBean("0", "0", str2, "0", String.valueOf(System.currentTimeMillis() / 1000), (String) PreferenceUtil.get(Utils.getContext(), "name", ""), "myself", "0", new ArrayList(), "", "", "", "", "", "0");
        List<CommentChildBean> list = this.mCommentData;
        if (list != null) {
            list.add(0, commentChildBean);
        }
        CommonAdapter<CommentChildBean> commonAdapter = this.mCommentAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
    }

    public void insetComment(String str, String str2, int i) {
        List<CommentChildBean> list = this.mCommentData;
        if (!(list == null || list.size() <= i || this.mCommentData.get(i) == null)) {
            CommentChildBean commentChildBean = (CommentChildBean) this.mCommentData.get(i);
            List listBean = commentChildBean.getListBean();
            if (listBean == null) {
                listBean = new ArrayList();
            }
            String8Bean string8Bean = new String8Bean((String) PreferenceUtil.get(Utils.getContext(), "name", ""), str2, str, "", "", "", "", "0");
            listBean.add(0, string8Bean);
            commentChildBean.setListBean(listBean);
            this.mCommentData.set(i, commentChildBean);
        }
        CommonAdapter<CommentChildBean> commonAdapter = this.mCommentAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.is_collect = null;
        BottomView bottomView = this.mBottomView;
        if (bottomView != null) {
            bottomView.dismissBottomView();
            this.mBottomView = null;
        }
    }
}
