package com.kantv.ui.fragment;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.avos.avoscloud.Messages.OpType;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.gson.Gson;
import com.google.gson.JsonParser;
import com.imkan.tv.R;
import com.kantv.common.BuildConfig;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.ui.MainActivity.IFragment;
import com.kantv.ui.activity.AccountLoginActivity;
import com.kantv.ui.activity.CollectActivity;
import com.kantv.ui.activity.HistoryActivity;
import com.kantv.ui.activity.MessageActivity;
import com.kantv.ui.activity.MyInfoActivity;
import com.kantv.ui.activity.NewCollectHistroyActivity;
import com.kantv.ui.activity.OfflineVideoActivity;
import com.kantv.ui.activity.SetActivity;
import com.kantv.ui.activity.VersionupActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.MineBean;
import com.kantv.ui.bean.MineBean.DataBean;
import com.kantv.ui.bean.MovieBean;
import com.kantv.ui.bean.UserInfoBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.view.CircleImageView;
import com.kantv.ui.view.ShareDialog;
import com.kantv.ui.view.ShareDialog.onClickback;
import com.kantv.ui.view.WaveView;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX.Req;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.mm.opensdk.modelmsg.WXWebpageObject;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import debug.KanApplication;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import q.rorbin.badgeview.Badge;
import q.rorbin.badgeview.QBadgeView;
import retrofit2.Call;
import retrofit2.Response;

public class MeFragment extends BaseFragment implements IFragment {
    static final int COUNTS = 5;
    static final long DURATION = 3000;
    /* access modifiers changed from: private */
    public IWXAPI api;
    private boolean isFastLoad = true;
    private boolean isFirst = true;
    private boolean isMsg = false;
    @BindView(2131296902)
    CircleImageView mHead;
    List<MovieBean> mHistoryData = new ArrayList();
    long[] mHits = null;
    @BindView(2131296903)
    RelativeLayout mInlogin;
    private Badge mMsg;
    @BindView(2131296966)
    TextView mMyMsg;
    @BindView(2131296904)
    TextView mName;
    @BindView(2131296905)
    RelativeLayout mNologin;
    private ShareDialog mShareDialog;
    /* access modifiers changed from: private */
    public Tencent mTencent;
    CommonAdapter<MovieBean> mWatchHistoryAdapter = null;
    @BindView(2131297405)
    WaveView mWaveView;
    private int page = 1;
    private String testUrl = BuildConfig.HOST1;
    @BindView(2131297353)
    TextView versionTv;
    @BindView(2131297401)
    RecyclerView watchHistoryRV;

    public int getIndex() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_me, null);
        return this.mRootView;
    }

    public void onResume() {
        super.onResume();
        Context context = Utils.getContext();
        Integer valueOf = Integer.valueOf(0);
        boolean booleanValue = ((Boolean) PreferenceUtil.get(context, "Login_State", Boolean.valueOf(false))).booleanValue();
        StringBuilder sb = new StringBuilder();
        sb.append(booleanValue);
        String str = "";
        sb.append(str);
        AILog.d("当前登录状态==", sb.toString());
        if (booleanValue) {
            this.mNologin.setVisibility(8);
            this.mInlogin.setVisibility(0);
            String str2 = (String) PreferenceUtil.get(Utils.getContext(), "Photo", str);
            String str3 = (String) PreferenceUtil.get(Utils.getContext(), "name", str);
            int isCache = DateUtil.isCache(str3, (String) PreferenceUtil.get(Utils.getContext(), UserPreference.NAME_TIME, "0"));
            if (isCache == 0) {
                this.mName.setText(str3);
                int i = DensityUtil.Density68;
                GlideUtils.loadimageRoundness(str2, this.mHead, i, i);
            } else if (isCache == 1) {
                initRequestMyInfo();
            }
            initWatchHistory();
            this.mMsg.setBadgeNumber(((Integer) PreferenceUtil.get(UserPreference.MSG_COMMENT_COUNT, valueOf)).intValue() + ((Integer) PreferenceUtil.get(UserPreference.MSG_LIKE_COUNT, valueOf)).intValue());
            return;
        }
        this.mNologin.setVisibility(0);
        this.mInlogin.setVisibility(8);
        this.watchHistoryRV.setVisibility(8);
        this.mHead.setImageDrawable(getResources().getDrawable(R.drawable.avatar));
    }

    public void initData() {
        if (this.isFirst) {
            this.mTencent = Tencent.createInstance("1106453625", Utils.getContext());
            String str = "wx70cbf5b9aacb0e47";
            this.api = WXAPIFactory.createWXAPI(getActivity(), str, false);
            this.api.registerApp(str);
            this.isFirst = false;
            try {
                PackageInfo packageInfo = Utils.getContext().getPackageManager().getPackageInfo(Utils.getContext().getPackageName(), 1);
                TextView textView = this.versionTv;
                StringBuilder sb = new StringBuilder();
                sb.append(packageInfo.versionName);
                sb.append("(");
                sb.append(packageInfo.versionCode);
                sb.append(")");
                textView.setText(sb.toString());
            } catch (NameNotFoundException e) {
                e.printStackTrace();
            }
            KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN4);
            KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
            this.mMsg = new QBadgeView(getActivity()).bindTarget(this.mMyMsg);
            this.mMsg.setBadgeNumber(((Integer) PreferenceUtil.get(UserPreference.MSG_COMMENT_COUNT, Integer.valueOf(0))).intValue() + ((Integer) PreferenceUtil.get(UserPreference.MSG_LIKE_COUNT, Integer.valueOf(0))).intValue());
        }
    }

    private void initRequestMyInfo() {
        this.request.clear();
        final String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().uinfo(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!MeFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                    try {
                        MineBean mineBean = (MineBean) new Gson().fromJson(this.json, MineBean.class);
                        if (mineBean != null && mineBean.getStatus() == Integer.parseInt(StatusCode.STATUS_OK)) {
                            DataBean data = mineBean.getData();
                            if (data != null) {
                                UserInfoBean userInfo = data.getUserInfo();
                                MeFragment.this.mName.setText(userInfo.getName());
                                int i = DensityUtil.Density68;
                                GlideUtils.loadimageRoundness(userInfo.getPhoto(), MeFragment.this.mHead, i, i);
                                CommonViewModel.inputUserBean(new JsonParser().parse(this.json).getAsJsonObject().getAsJsonObject("data").getAsJsonObject("userInfo").toString(), MeFragment.this.getActivity(), (String) PreferenceUtil.get(Utils.getContext(), "ACCOUNTID", ""), str);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    private void initRequest(boolean z) {
        this.request.clear();
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "token", str);
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("_token", str2);
        String str3 = "0";
        this.request.put("type", str3);
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(this.page);
        sb.append(str);
        map.put("page", sb.toString());
        this.request.put("devicetype", str3);
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().history(this.request).enqueue(new CommonCallBack(getActivity(), z) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!MeFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        String str = "status";
                        if (jsonObject.optString(str).equals(StatusCode.STATUS_OK)) {
                            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                            if (jsonObject2 != null) {
                                JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("historyContent"));
                                if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                                    if (MeFragment.this.mHistoryData != null) {
                                        MeFragment.this.mHistoryData.clear();
                                    }
                                    for (int i = 0; i < jsonArray.length(); i++) {
                                        JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                                        List<MovieBean> list = MeFragment.this.mHistoryData;
                                        MovieBean movieBean = r6;
                                        MovieBean movieBean2 = new MovieBean(jSONobject.optString("title"), jSONobject.optString(Param.SCORE), jSONobject.optString("photo"), jSONobject.optString("descript"), jSONobject.optString("totalcount"), "", "", "", jSONobject.optString("msg"), jSONobject.optString("seo"), jSONobject.optString("url"), jSONobject.optString("videoTag"));
                                        list.add(movieBean);
                                    }
                                    if (MeFragment.this.mHistoryData.size() > 0) {
                                        MeFragment.this.watchHistoryRV.setVisibility(0);
                                    }
                                    if (MeFragment.this.mWatchHistoryAdapter != null) {
                                        MeFragment.this.mWatchHistoryAdapter.notifyDataSetChanged();
                                    }
                                }
                            }
                        } else if (jsonObject.optString(str).equals("401")) {
                            ToastUtils.showShort((CharSequence) "登陆状态已失效，请重新登陆");
                            KanApplication.clearLogin();
                        }
                    }
                }
            }
        });
    }

    public void initWatchHistory() {
        this.mWatchHistoryAdapter = new CommonAdapter<MovieBean>(Utils.getContext(), R.layout.item_watchhistory, this.mHistoryData) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final MovieBean movieBean, int i) {
                viewHolder.setImageURL(R.id.item_history_head, movieBean.getPhoto());
                viewHolder.setText(R.id.item_history_name, movieBean.getTitle());
                viewHolder.setOnClickListener(R.id.item_history_ll, new OnClickListener() {
                    public void onClick(View view) {
                        Bundle bundle = new Bundle();
                        bundle.putString("seo", movieBean.getSeo());
                        bundle.putString("tid", movieBean.getUrl());
                        bundle.putString("preview", movieBean.getCurpart());
                        MeFragment.this.gotoActivity(bundle, VideoPlayActivity.class);
                    }
                });
            }
        };
        this.watchHistoryRV.setLayoutManager(new StaggeredGridLayoutManager(1, 0));
        this.watchHistoryRV.setAdapter(this.mWatchHistoryAdapter);
        initRequest(false);
    }

    @OnClick({2131296608, 2131296906, 2131297189, 2131297403, 2131296525, 2131296267, 2131297352, 2131297195, 2131296965, 2131297405, 2131297188, 2131296964})
    public void onClick(View view) {
        boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue();
        String str = "url";
        String str2 = "title";
        switch (view.getId()) {
            case R.id.aboutus /*2131296267*/:
                Bundle bundle = new Bundle();
                bundle.putString(str2, "关于我们");
                StringBuilder sb = new StringBuilder();
                sb.append(Api.getDomain());
                sb.append("notice/aboutus.html");
                bundle.putString(str, sb.toString());
                gotoActivity(bundle, WebViewActivity.class);
                return;
            case R.id.disclaimer /*2131296525*/:
                Bundle bundle2 = new Bundle();
                bundle2.putString(str2, "免责声明");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Api.getDomain());
                sb2.append("notice/disclaimer.html");
                bundle2.putString(str, sb2.toString());
                gotoActivity(bundle2, WebViewActivity.class);
                return;
            case R.id.fragment_mine_top /*2131296608*/:
                if (booleanValue) {
                    gotoActivity(MyInfoActivity.class);
                    return;
                } else {
                    gotoActivity(AccountLoginActivity.class);
                    return;
                }
            case R.id.mine_set /*2131296906*/:
                gotoActivity(SetActivity.class);
                return;
            case R.id.myCollectNews_layout /*2131296964*/:
                if (booleanValue) {
                    gotoActivity(NewCollectHistroyActivity.class);
                    return;
                } else {
                    gotoActivity(AccountLoginActivity.class);
                    return;
                }
            case R.id.myCollect_layout /*2131296965*/:
                if (booleanValue) {
                    gotoActivity(CollectActivity.class);
                    return;
                } else {
                    initAlertDialog(getResources().getString(R.string.login_text1), getResources().getString(R.string.login_text3), 2);
                    return;
                }
            case R.id.set_message /*2131297188*/:
                if (booleanValue) {
                    gotoActivity(MessageActivity.class);
                    return;
                } else {
                    initAlertDialog(getResources().getString(R.string.login_text1), getResources().getString(R.string.login_text3), 2);
                    return;
                }
            case R.id.set_video_cache /*2131297189*/:
                gotoActivity(OfflineVideoActivity.class);
                return;
            case R.id.shareKTV /*2131297195*/:
                initShareDialog();
                return;
            case R.id.versionUpdate /*2131297352*/:
                gotoActivity(VersionupActivity.class);
                return;
            case R.id.watch_history_ll /*2131297403*/:
                if (booleanValue) {
                    gotoActivity(HistoryActivity.class);
                    return;
                } else {
                    initAlertDialog("提示", "您当前还未登录，是否前往登录？", 2);
                    return;
                }
            case R.id.waveView /*2131297405*/:
                if (this.mHits == null) {
                    this.mHits = new long[5];
                }
                long[] jArr = this.mHits;
                System.arraycopy(jArr, 1, jArr, 0, jArr.length - 1);
                long[] jArr2 = this.mHits;
                jArr2[jArr2.length - 1] = SystemClock.uptimeMillis();
                if (SystemClock.uptimeMillis() - this.mHits[0] <= DURATION) {
                    this.mHits = null;
                    String str3 = this.testUrl;
                    String str4 = BuildConfig.HOST1;
                    String str5 = "app.svn.kantv6.com";
                    if (str3.equals(str4)) {
                        this.testUrl = str5;
                        ToastUtils.showShort((CharSequence) "test svn");
                    } else if (this.testUrl.equals(str5)) {
                        this.testUrl = str4;
                        ToastUtils.showShort((CharSequence) "test suramic");
                    }
                    AILog.d("egg", "***test***");
                    new Api();
                    Api.setDomain(this.testUrl);
                    Api.setSingletonNull();
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void initShareDialog() {
        this.mShareDialog = new ShareDialog((Context) getActivity(), (onClickback) new onClickback() {
            public void onShare(int i) {
                if (i != 0) {
                    String str = "您还未安装微信客户端";
                    String str2 = UserPreference.ACTION1;
                    String str3 = UserPreference.ANALYZE61;
                    String str4 = "qudao";
                    String str5 = "1";
                    String str6 = "num";
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                String str7 = "title";
                                String str8 = "req_type";
                                String str9 = "您的设备当前未安装QQ！";
                                if (i != 4) {
                                    if (i != 5) {
                                        if (i == 200) {
                                            new Bundle().putString(str6, str5);
                                            KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE62).build());
                                        }
                                    } else if (Utils.isQQClientAvailable(MeFragment.this.getActivity())) {
                                        Bundle bundle = new Bundle();
                                        bundle.putInt(str8, 1);
                                        bundle.putString(str7, MeFragment.this.getString(R.string.share1));
                                        bundle.putString("summary", MeFragment.this.getString(R.string.share2));
                                        bundle.putString("targetUrl", MeFragment.this.getString(R.string.share3));
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(MeFragment.this.getString(R.string.share4));
                                        bundle.putStringArrayList("imageUrl", arrayList);
                                        MeFragment.this.mTencent.shareToQzone(MeFragment.this.getActivity(), bundle, new IUiListener() {
                                            public void onCancel() {
                                            }

                                            public void onComplete(Object obj) {
                                            }

                                            public void onError(UiError uiError) {
                                            }
                                        });
                                        Bundle bundle2 = new Bundle();
                                        bundle2.putString(str6, str5);
                                        bundle2.putString(str4, "QQ空间");
                                        KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(str3).setAction(str2).setLabel("QQ空间").build());
                                    } else {
                                        ToastUtils.showShort((CharSequence) str9);
                                    }
                                } else if (Utils.isQQClientAvailable(MeFragment.this.getActivity())) {
                                    Bundle bundle3 = new Bundle();
                                    bundle3.putInt(str8, 1);
                                    bundle3.putString(str7, MeFragment.this.getString(R.string.share1));
                                    bundle3.putString("summary", MeFragment.this.getString(R.string.share2));
                                    bundle3.putString("targetUrl", MeFragment.this.getString(R.string.share3));
                                    bundle3.putString("imageUrl", MeFragment.this.getString(R.string.share4));
                                    MeFragment.this.mTencent.shareToQQ(MeFragment.this.getActivity(), bundle3, new IUiListener() {
                                        public void onCancel() {
                                        }

                                        public void onComplete(Object obj) {
                                        }

                                        public void onError(UiError uiError) {
                                        }
                                    });
                                    Bundle bundle4 = new Bundle();
                                    bundle4.putString(str6, str5);
                                    bundle4.putString(str4, "QQ好友");
                                    KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(str3).setAction(str2).setLabel("QQ好友").build());
                                } else {
                                    ToastUtils.showShort((CharSequence) str9);
                                }
                            } else if (!MeFragment.this.api.isWXAppInstalled()) {
                                ToastUtils.showShort((CharSequence) str);
                            } else {
                                MeFragment.this.wxShare(2);
                                Bundle bundle5 = new Bundle();
                                bundle5.putString(str6, str5);
                                String str10 = "微信收藏";
                                bundle5.putString(str4, str10);
                                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(str3).setAction(str2).setLabel(str10).build());
                            }
                        } else if (!MeFragment.this.api.isWXAppInstalled()) {
                            ToastUtils.showShort((CharSequence) str);
                        } else {
                            MeFragment.this.wxShare(1);
                            Bundle bundle6 = new Bundle();
                            bundle6.putString(str6, str5);
                            String str11 = "朋友圈";
                            bundle6.putString(str4, str11);
                            KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(str3).setAction(str2).setLabel(str11).build());
                        }
                    } else if (!MeFragment.this.api.isWXAppInstalled()) {
                        ToastUtils.showShort((CharSequence) str);
                    } else {
                        MeFragment.this.wxShare(0);
                        Bundle bundle7 = new Bundle();
                        bundle7.putString(str6, str5);
                        String str12 = "微信好友";
                        bundle7.putString(str4, str12);
                        KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(str3).setAction(str2).setLabel(str12).build());
                    }
                }
            }
        });
        this.mShareDialog.show();
    }

    /* access modifiers changed from: private */
    public void wxShare(int i) {
        WXWebpageObject wXWebpageObject = new WXWebpageObject();
        wXWebpageObject.webpageUrl = getString(R.string.share3);
        WXMediaMessage wXMediaMessage = new WXMediaMessage(wXWebpageObject);
        wXMediaMessage.title = getString(R.string.share1);
        wXMediaMessage.description = getString(R.string.share2);
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeResource, OpType.modify_VALUE, OpType.modify_VALUE, true);
        decodeResource.recycle();
        wXMediaMessage.thumbData = Utils.bmpToByteArray(createScaledBitmap, true);
        Req req = new Req();
        req.transaction = buildTransaction("webpage");
        req.message = wXMediaMessage;
        req.scene = i;
        this.api.sendReq(req);
    }

    private String buildTransaction(String str) {
        if (str == null) {
            return String.valueOf(System.currentTimeMillis());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(System.currentTimeMillis());
        return sb.toString();
    }

    private void initAlertDialog(String str, String str2, final int i) {
        new AlertDialog((Context) new WeakReference(getActivity()).get()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
                new Bundle().putString("num", "1");
                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE64).build());
            }
        }).setPositiveButton("确定", new OnClickListener() {
            public void onClick(View view) {
                int i = i;
                if (i != 1 && i == 2) {
                    MeFragment.this.gotoActivity(AccountLoginActivity.class);
                }
            }
        }).show();
    }

    public void onDestroy() {
        super.onDestroy();
        this.mHistoryData.clear();
        this.mHistoryData = null;
    }
}
