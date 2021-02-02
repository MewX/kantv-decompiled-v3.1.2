package com.kantv.ui.fragment;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.OnScrollListener;
import butterknife.BindView;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.common.ConnectionResult;
import com.google.gson.Gson;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.gallery.GalleryViewPager;
import com.kantv.lib.gallery.ScaleGalleryTransformer;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.activity.FilterActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ScrolGalleryAdapter;
import com.kantv.ui.adapter.VideoClassAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.EventBusBean;
import com.kantv.ui.bean.HotClassBean;
import com.kantv.ui.bean.SlideImgBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.interfaces.ScrollEffect;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.ScreenUtils;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.ShapedImageView;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.samsung.multiscreen.Message;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class VideoClassFragment extends BaseFragment {
    private static final String TAG = "VideoClassFragment";
    /* access modifiers changed from: private */
    public String biaoqian;
    GalleryViewPager galleryViewPager;
    private boolean isFirstLoad = true;
    private CommonAdapter<List<HotClassBean>> mAdapter = null;
    private List<List<HotClassBean>> mData = new ArrayList();
    private View mFoot;
    private View mHeader;
    private List<HotClassBean> mHotClassData;
    private List<SlideImgBean> mImgData;
    private List<String> mImgList;
    @BindView(2131297363)
    XRecyclerView mRecyclerView;
    private List<String> mTitles;
    private ScrolGalleryAdapter scrolGalleryAdapter = null;
    /* access modifiers changed from: private */
    public ScrollEffect scrollEffect = null;
    int scrollImgSum = 6;
    private String search_title;
    /* access modifiers changed from: private */
    public String seo;
    /* access modifiers changed from: private */
    public int todayUpateNum = 0;
    /* access modifiers changed from: private */
    public String type;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_video_class, null);
        return this.mRootView;
    }

    public void initData() {
        this.type = getArguments().getString("id");
        this.biaoqian = getArguments().getString("value");
        Tracker defaultTracker = KanApplication.getDefaultTracker();
        EventBuilder eventBuilder = new EventBuilder();
        StringBuilder sb = new StringBuilder();
        sb.append("影视_版块_");
        sb.append(this.biaoqian);
        defaultTracker.send(eventBuilder.setCategory(sb.toString()).build());
        if (!StringUtils.isEmpty(this.search_title)) {
            EventBus.getDefault().post(new EventBusBean("TabTvFragment", "001", this.search_title));
        }
        if (this.isFirstLoad) {
            this.mHeader = LayoutInflater.from(getActivity()).inflate(R.layout.header_video_class, null);
            fillDataView();
            initCacheData();
        }
        this.mRecyclerView.addOnScrollListener(new OnScrollListener() {
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (VideoClassFragment.this.scrollEffect == null) {
                    return;
                }
                if (i2 > 10) {
                    VideoClassFragment.this.scrollEffect.reduce();
                } else if (i2 <= -10) {
                    VideoClassFragment.this.scrollEffect.expand();
                }
            }
        });
    }

    private void initCacheData() {
        Context context = Utils.getContext();
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append("_json");
        String str = "";
        String str2 = (String) PreferenceUtil.get(context, sb.toString(), str);
        Context context2 = Utils.getContext();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.type);
        sb2.append("_time");
        int isCache = DateUtil.isCache(str2, (String) PreferenceUtil.get(context2, sb2.toString(), str));
        if (isCache == 0) {
            initParse(str2);
            initTodayUpdate();
        } else if (isCache == 1) {
            initTodayUpdate();
            initRequest(str2, true);
        }
    }

    private void initTodayUpdate() {
        if (this.request != null) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("seo", this.type);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            if (!StringUtils.isEmpty(KanApplication.token)) {
                this.request.put("_token", KanApplication.token);
            }
            Api.getService().todayUpdate(this.request).enqueue(new CommonCallBack(getActivity(), false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!VideoClassFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            try {
                                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                if (jsonObject2 != null) {
                                    JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString(ConversationControlOp.UPDATE));
                                    if (jsonObject3 != null) {
                                        VideoClassFragment.this.todayUpateNum = Integer.parseInt(jsonObject3.optString(Message.TARGET_ALL));
                                        if (!(VideoClassFragment.this.todayUpateNum == 0 || VideoClassFragment.this.mRecyclerView == null)) {
                                            VideoClassFragment.this.mRecyclerView.setHeaderRefresh(VideoClassFragment.this.todayUpateNum, VideoClassFragment.this.type);
                                            VideoClassFragment.this.mRecyclerView.refreshComplete();
                                        }
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void initParse(String str) {
        if (!StringUtils.isEmpty(str)) {
            this.mImgList = new ArrayList();
            this.mTitles = new ArrayList();
            this.mImgData = new ArrayList();
            this.mHotClassData = new ArrayList();
            JSONObject jsonObject = StringUtils.toJsonObject(str);
            if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                if (jsonObject2 != null) {
                    JSONObject jsonObject3 = StringUtils.toJsonObject(jsonObject2.optString("info"));
                    if (jsonObject3 != null) {
                        this.seo = jsonObject3.optString("seo");
                        this.search_title = jsonObject3.optString("search_title");
                        if (!StringUtils.isEmpty(this.search_title)) {
                            EventBus.getDefault().post(new EventBusBean("TabTvFragment", "001", this.search_title));
                        }
                        parseScrollImgData(jsonObject2);
                        parseVideoClassData(jsonObject2);
                    }
                }
            }
        }
    }

    private void fillDataView() {
        if (this.isFirstLoad) {
            if (TextUtils.isEmpty(this.biaoqian)) {
                this.biaoqian.equals("体育录像");
            }
            this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            this.mAdapter = new CommonAdapter<List<HotClassBean>>(getActivity(), R.layout.item_videoclass, this.mData) {
                /* access modifiers changed from: protected */
                public void convert(final ViewHolder viewHolder, final List<HotClassBean> list, int i) {
                    if (list == null || list.size() <= 3 || i != 2) {
                        VideoClassAdapter videoClassAdapter = new VideoClassAdapter(list, VideoClassFragment.this.getActivity(), VideoClassFragment.this.biaoqian);
                        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.header_recommend_style, null);
                        View inflate2 = LayoutInflater.from(this.mContext).inflate(R.layout.footer_recommend_style, null);
                        LinearLayout linearLayout = (LinearLayout) inflate2.findViewById(R.id.item_recommend_refresh);
                        TextView textView = (TextView) inflate.findViewById(R.id.item_recommend_title);
                        final TextView textView2 = (TextView) inflate.findViewById(R.id.item_recommend_more);
                        textView.setText(((HotClassBean) list.get(0)).getName());
                        StringBuilder sb = new StringBuilder();
                        sb.append("更多");
                        sb.append(((HotClassBean) list.get(0)).getName());
                        textView2.setText(sb.toString());
                        String name = ((HotClassBean) list.get(0)).getName();
                        if (!StringUtils.isEmpty(name)) {
                            if (name.contains("美")) {
                                textView2.setTag("欧美");
                            } else if (name.contains("韩")) {
                                textView2.setTag("韩国");
                            } else if (name.contains("日")) {
                                textView2.setTag("日本");
                            } else if (name.contains("港")) {
                                textView2.setTag("港台");
                            } else if (name.contains("国")) {
                                textView2.setTag("内地");
                            } else {
                                textView2.setTag("全部");
                            }
                        }
                        ShapedImageView shapedImageView = (ShapedImageView) inflate.findViewById(R.id.video_class_adImg);
                        if (((HotClassBean) list.get(0)).getSeo() != null && ((HotClassBean) list.get(0)).getSeo().equals("ad")) {
                            textView.setVisibility(8);
                            textView2.setVisibility(8);
                            linearLayout.setVisibility(8);
                            if (!StringUtils.isEmpty(((HotClassBean) list.get(0)).getPhotoWidth()) && !StringUtils.isEmpty(((HotClassBean) list.get(0)).getPhotoHeight())) {
                                try {
                                    LayoutParams layoutParams = shapedImageView.getLayoutParams();
                                    layoutParams.height = (int) (((float) (ScreenUtils.getScreenWidth(VideoClassFragment.this.getContext()) - 20)) / (Float.parseFloat(((HotClassBean) list.get(0)).getPhotoWidth()) / Float.parseFloat(((HotClassBean) list.get(0)).getPhotoHeight())));
                                    shapedImageView.setLayoutParams(layoutParams);
                                    int length = ((HotClassBean) list.get(0)).getPhoto().length();
                                    if (length >= 3) {
                                        if (((HotClassBean) list.get(0)).getPhoto().substring(length - 3, length).equals("gif")) {
                                            Glide.with(Utils.getContext()).load(((HotClassBean) list.get(0)).getPhoto()).asGif().diskCacheStrategy(DiskCacheStrategy.ALL).into((ImageView) shapedImageView);
                                        } else {
                                            Glide.with(Utils.getContext()).load(((HotClassBean) list.get(0)).getPhoto()).skipMemoryCache(false).placeholder((int) R.drawable.placeholder2).diskCacheStrategy(DiskCacheStrategy.ALL).into(shapedImageView);
                                        }
                                    }
                                    shapedImageView.setVisibility(0);
                                    try {
                                        CommonViewModel.adsShow(Long.valueOf(((HotClassBean) list.get(0)).getTid()).longValue(), ((HotClassBean) list.get(0)).getName());
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    shapedImageView.setOnClickListener(new OnClickListener() {
                                        public void onClick(View view) {
                                            Bundle bundle = new Bundle();
                                            try {
                                                CommonViewModel.adsClick(Long.valueOf(((HotClassBean) list.get(0)).getTid()).longValue());
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                            if (StringUtils.isEmpty(((HotClassBean) list.get(0)).getOpenType()) || !((HotClassBean) list.get(0)).getOpenType().equals("0")) {
                                                bundle.putString("title", ((HotClassBean) list.get(0)).getName());
                                                bundle.putString("url", ((HotClassBean) list.get(0)).getUrl());
                                                Intent intent = new Intent(Utils.getContext(), WebViewActivity.class);
                                                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                                intent.putExtras(bundle);
                                                Utils.getContext().startActivity(intent);
                                                return;
                                            }
                                            Intent intent2 = new Intent();
                                            intent2.setAction("android.intent.action.VIEW");
                                            intent2.setData(Uri.parse(((HotClassBean) list.get(0)).getUrl()));
                                            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                            Utils.getContext().startActivity(intent2);
                                        }
                                    });
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            }
                        }
                        textView2.setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                if (VideoClassFragment.this.biaoqian.equals("体育录像")) {
                                    String url = ((HotClassBean) list.get(0)).getUrl();
                                    if (TextUtils.isEmpty(url)) {
                                        ToastUtils.show((CharSequence) "地址不存在", 0);
                                        return;
                                    }
                                    try {
                                        Intent intent = new Intent();
                                        intent.setAction("android.intent.action.VIEW");
                                        intent.setData(Uri.parse(url));
                                        VideoClassFragment.this.startActivity(intent);
                                    } catch (ActivityNotFoundException e) {
                                        e.getMessage();
                                    }
                                    return;
                                }
                                Bundle bundle = new Bundle();
                                bundle.putString("type", "");
                                String str = "seo";
                                if (Integer.parseInt(Utils.interfaceVersion) < 100) {
                                    bundle.putString(str, VideoClassFragment.this.seo);
                                } else {
                                    bundle.putString(str, VideoClassFragment.this.type);
                                }
                                bundle.putString("name", textView2.getTag() != null ? (String) textView2.getTag() : "全部");
                                VideoClassFragment.this.gotoActivity(bundle, FilterActivity.class);
                            }
                        });
                        linearLayout.setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                ((VideoClassAdapter) ((RecyclerView) viewHolder.getView(R.id.item_videoclass_recycler)).getAdapter()).switchRefresh();
                                ((RecyclerView) viewHolder.getView(R.id.item_videoclass_recycler)).getAdapter().notifyDataSetChanged();
                            }
                        });
                        videoClassAdapter.addHeaderView(inflate);
                        if (VideoClassFragment.this.biaoqian.equals("体育录像")) {
                            viewHolder.setAdapter2(R.id.item_videoclass_recycler, videoClassAdapter, VideoClassFragment.this.getActivity(), 2);
                        } else {
                            videoClassAdapter.addFooterView(inflate2);
                            viewHolder.setAdapter2(R.id.item_videoclass_recycler, videoClassAdapter, VideoClassFragment.this.getActivity(), 3);
                        }
                        videoClassAdapter.notifyDataSetChanged();
                        return;
                    }
                    AnonymousClass1 r15 = new CommonAdapter<HotClassBean>(Utils.getContext(), R.layout.item_hotclass, list) {
                        public int getItemCount() {
                            return 5;
                        }

                        /* access modifiers changed from: protected */
                        public void convert(ViewHolder viewHolder, final HotClassBean hotClassBean, int i) {
                            if (i == 4) {
                                viewHolder.setText(R.id.item_hostclass_text, "全部");
                                TextView textView = (TextView) viewHolder.getView(R.id.item_hostclass_text);
                                textView.setCompoundDrawablesWithIntrinsicBounds(VideoClassFragment.this.getResources().getDrawable(R.drawable.filter), null, null, null);
                                textView.setTextColor(VideoClassFragment.this.getResources().getColor(R.color.temp_tv_color));
                                textView.setBackground(VideoClassFragment.this.getResources().getDrawable(R.drawable.hot_all_class_bg));
                                viewHolder.setOnClickListener(R.id.item_hostclass_text, new OnClickListener() {
                                    public void onClick(View view) {
                                        Bundle bundle = new Bundle();
                                        bundle.putString("type", "");
                                        String str = "seo";
                                        if (Integer.parseInt(Utils.interfaceVersion) < 100) {
                                            bundle.putString(str, VideoClassFragment.this.seo);
                                        } else {
                                            bundle.putString(str, VideoClassFragment.this.type);
                                        }
                                        String str2 = "全部";
                                        bundle.putString("name", str2);
                                        VideoClassFragment.this.gotoActivity(bundle, FilterActivity.class);
                                        KanApplication.getDefaultTracker().send(new EventBuilder().setCategory("影视_筛选").setAction(UserPreference.ACTION1).setLabel(str2).build());
                                    }
                                });
                                return;
                            }
                            viewHolder.setText(R.id.item_hostclass_text, hotClassBean.getName());
                            viewHolder.setOnClickListener(R.id.item_hostclass_text, new OnClickListener() {
                                public void onClick(View view) {
                                    Bundle bundle = new Bundle();
                                    bundle.putString("type", hotClassBean.getType());
                                    String str = "seo";
                                    if (Integer.parseInt(Utils.interfaceVersion) < 100) {
                                        bundle.putString(str, VideoClassFragment.this.seo);
                                    } else {
                                        bundle.putString(str, VideoClassFragment.this.type);
                                    }
                                    bundle.putString("name", hotClassBean.getName());
                                    VideoClassFragment.this.gotoActivity(bundle, FilterActivity.class);
                                    KanApplication.getDefaultTracker().send(new EventBuilder().setCategory("影视_筛选").setAction(UserPreference.ACTION1).setLabel(hotClassBean.getName()).build());
                                }
                            });
                        }
                    };
                    viewHolder.setFocusable(R.id.item_videoclass_recycler, false);
                    viewHolder.setAdapter(R.id.item_videoclass_recycler, r15, VideoClassFragment.this.getActivity(), 5);
                    r15.notifyDataSetChanged();
                }
            };
            this.mRecyclerView.addHeaderView(this.mHeader);
            this.mRecyclerView.setAdapter(this.mAdapter);
            this.mRecyclerView.setPullRefreshEnabled(true);
            this.mRecyclerView.setLoadingListener(new LoadingListener() {
                public void onRefresh() {
                    VideoClassFragment.this.initRequest("", false);
                }

                public void onLoadMore() {
                    VideoClassFragment.this.initRequest("", false);
                }
            });
        } else {
            CommonAdapter<List<HotClassBean>> commonAdapter = this.mAdapter;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
        }
        this.isFirstLoad = false;
    }

    private void parseScrollImgData(JSONObject jSONObject) {
        this.galleryViewPager = (GalleryViewPager) this.mHeader.findViewById(R.id.video_class_scroll_vp);
        JSONArray jsonArray = StringUtils.toJsonArray(jSONObject.optString("top"));
        Gson gson = new Gson();
        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                this.mTitles.add(jSONobject.optString("title"));
                this.mImgList.add(jSONobject.optString("photo"));
                this.mImgData.add((SlideImgBean) gson.fromJson(jSONobject.toString(), SlideImgBean.class));
            }
            if (this.scrolGalleryAdapter == null) {
                this.scrolGalleryAdapter = new ScrolGalleryAdapter(this.mImgData, Utils.getContext());
            }
            this.galleryViewPager.setAdapter(this.scrolGalleryAdapter);
            this.galleryViewPager.setCurrentItem(this.mImgData.size() / 2);
            this.galleryViewPager.setPageTransformer(true, new ScaleGalleryTransformer());
            this.galleryViewPager.setDuration(3000);
            this.galleryViewPager.startAutoCycle();
            this.galleryViewPager.setSliderTransformDuration(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, null);
            return;
        }
        this.galleryViewPager.setVisibility(8);
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x010b A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void parseVideoClassData(org.json.JSONObject r13) {
        /*
            r12 = this;
            java.util.List<java.util.List<com.kantv.ui.bean.HotClassBean>> r0 = r12.mData
            if (r0 == 0) goto L_0x0007
            r0.clear()
        L_0x0007:
            java.lang.String r0 = "hot_label"
            java.lang.String r0 = r13.optString(r0)
            org.json.JSONArray r0 = com.kantv.common.utils.StringUtils.toJsonArray(r0)
            boolean r1 = com.kantv.common.utils.StringUtils.isJSONArrayNotEmpty(r0)
            java.lang.String r2 = "tid"
            r3 = 0
            java.lang.String r4 = "name"
            java.lang.String r5 = "url"
            if (r1 == 0) goto L_0x0058
            r1 = 0
        L_0x001f:
            int r6 = r0.length()
            if (r1 >= r6) goto L_0x0048
            org.json.JSONObject r6 = com.kantv.common.utils.StringUtils.getJSONobject(r0, r1)
            java.util.List<com.kantv.ui.bean.HotClassBean> r7 = r12.mHotClassData
            com.kantv.ui.bean.HotClassBean r8 = new com.kantv.ui.bean.HotClassBean
            java.lang.String r9 = r6.optString(r2)
            java.lang.String r10 = r6.optString(r4)
            java.lang.String r11 = "type"
            java.lang.String r11 = r6.optString(r11)
            java.lang.String r6 = r6.optString(r5)
            r8.<init>(r9, r10, r11, r6)
            r7.add(r8)
            int r1 = r1 + 1
            goto L_0x001f
        L_0x0048:
            java.util.List<java.util.List<com.kantv.ui.bean.HotClassBean>> r0 = r12.mData
            if (r0 == 0) goto L_0x0051
            java.util.List<com.kantv.ui.bean.HotClassBean> r1 = r12.mHotClassData
            r0.add(r1)
        L_0x0051:
            com.kantv.ui.adapter.CommonAdapter<java.util.List<com.kantv.ui.bean.HotClassBean>> r0 = r12.mAdapter
            if (r0 == 0) goto L_0x0058
            r0.notifyDataSetChanged()
        L_0x0058:
            java.lang.String r0 = "recommend"
            java.lang.String r13 = r13.optString(r0)
            org.json.JSONArray r13 = com.kantv.common.utils.StringUtils.toJsonArray(r13)
            boolean r0 = com.kantv.common.utils.StringUtils.isJSONArrayNotEmpty(r13)
            if (r0 == 0) goto L_0x010f
        L_0x0068:
            int r0 = r13.length()
            if (r3 >= r0) goto L_0x010f
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            org.json.JSONObject r1 = com.kantv.common.utils.StringUtils.getJSONobject(r13, r3)
            if (r1 != 0) goto L_0x007a
            return
        L_0x007a:
            java.lang.String r6 = "seo"
            java.lang.String r7 = r1.optString(r6)
            java.lang.String r8 = "list"
            if (r7 == 0) goto L_0x00e5
            java.lang.String r6 = r1.optString(r6)
            java.lang.String r7 = "ad"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L_0x00e5
            com.kantv.ui.bean.HotClassBean r6 = new com.kantv.ui.bean.HotClassBean
            java.lang.String r9 = "_id"
            java.lang.String r9 = r1.optString(r9)
            java.lang.String r10 = r1.optString(r4)
            java.lang.String r8 = r1.optString(r8)
            java.lang.String r11 = r1.optString(r5)
            r6.<init>(r9, r10, r8, r11)
            java.lang.String r8 = r1.optString(r5)
            r6.setUrl(r8)
            java.lang.String r8 = "photo"
            java.lang.String r8 = r1.optString(r8)
            r6.setPhoto(r8)
            r6.setSeo(r7)
            java.lang.String r7 = "opentype"
            java.lang.String r7 = r1.optString(r7)
            r6.setOpenType(r7)
            java.lang.String r7 = "photo_size"
            java.lang.String r1 = r1.optString(r7)
            org.json.JSONObject r1 = com.kantv.common.utils.StringUtils.toJsonObject(r1)
            if (r1 == 0) goto L_0x00e1
            java.lang.String r7 = "width"
            java.lang.String r7 = r1.optString(r7)
            r6.setPhotoWidth(r7)
            java.lang.String r7 = "height"
            java.lang.String r1 = r1.optString(r7)
            r6.setPhotoHeight(r1)
        L_0x00e1:
            r0.add(r6)
            goto L_0x00fd
        L_0x00e5:
            com.kantv.ui.bean.HotClassBean r6 = new com.kantv.ui.bean.HotClassBean
            java.lang.String r7 = r1.optString(r2)
            java.lang.String r9 = r1.optString(r4)
            java.lang.String r8 = r1.optString(r8)
            java.lang.String r1 = r1.optString(r5)
            r6.<init>(r7, r9, r8, r1)
            r0.add(r6)
        L_0x00fd:
            java.util.List<java.util.List<com.kantv.ui.bean.HotClassBean>> r1 = r12.mData
            if (r1 == 0) goto L_0x0104
            r1.add(r0)
        L_0x0104:
            com.kantv.ui.adapter.CommonAdapter<java.util.List<com.kantv.ui.bean.HotClassBean>> r0 = r12.mAdapter
            if (r0 == 0) goto L_0x010b
            r0.notifyDataSetChanged()
        L_0x010b:
            int r3 = r3 + 1
            goto L_0x0068
        L_0x010f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.fragment.VideoClassFragment.parseVideoClassData(org.json.JSONObject):void");
    }

    /* access modifiers changed from: private */
    public void initRequest(final String str, boolean z) {
        if (this.request != null) {
            this.request.clear();
            this.request.put("noncestr", SignConfig.noncestr);
            this.request.put("timestamp", SignConfig.timestamp);
            this.request.put("sbID", SignConfig.sbID);
            this.request.put("sign", SignConfig.sign);
            this.request.put("seo", this.type);
            this.request.put("devicetype", "0");
            this.request.put("interfaceVersion", Utils.interfaceVersion);
            if (!StringUtils.isEmpty(KanApplication.token)) {
                this.request.put("_token", KanApplication.token);
            }
            Api.getService().channel(this.request).enqueue(new CommonCallBack(getActivity(), z) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    if (!VideoClassFragment.this.isonDestroy) {
                        if (VideoClassFragment.this.mRecyclerView != null) {
                            VideoClassFragment.this.mRecyclerView.refreshComplete();
                        }
                        if (!StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                    Context context = Utils.getContext();
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(VideoClassFragment.this.type);
                                    sb.append("_json");
                                    PreferenceUtil.put(context, sb.toString(), this.json);
                                    Context context2 = Utils.getContext();
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(VideoClassFragment.this.type);
                                    sb2.append("_time");
                                    PreferenceUtil.put(context2, sb2.toString(), String.valueOf(System.currentTimeMillis() / 1000));
                                    VideoClassFragment.this.initParse(this.json);
                                } else if (!StringUtils.isEmpty(str)) {
                                    VideoClassFragment.this.initParse(str);
                                }
                            }
                        } else if (!StringUtils.isEmpty(str)) {
                            VideoClassFragment.this.initParse(str);
                        }
                    }
                }

                public void onFailure(Call<ResponseBody> call, Throwable th) {
                    super.onFailure(call, th);
                    if (VideoClassFragment.this.mRecyclerView != null) {
                        VideoClassFragment.this.mRecyclerView.refreshComplete();
                    }
                    if (!StringUtils.isEmpty(str)) {
                        VideoClassFragment.this.initParse(str);
                    }
                }
            });
        }
    }

    public void setScrollEffect(ScrollEffect scrollEffect2) {
        this.scrollEffect = scrollEffect2;
    }

    public void onDestroy() {
        super.onDestroy();
        this.mData = null;
        if (this.mAdapter != null) {
            this.mAdapter = null;
            this.mRecyclerView = null;
        }
        this.scrolGalleryAdapter = null;
        this.scrollEffect = null;
        EventBus.getDefault().unregister(this);
    }
}
