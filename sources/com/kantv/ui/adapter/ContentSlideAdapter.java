package com.kantv.ui.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.LayoutManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.android.exoplayer2.C;
import com.imkan.tv.R;
import com.kantv.common.bean.AdBean;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.bean.MovieBean;
import com.kantv.ui.utils.ScreenUtils;
import com.kantv.ui.viewmodel.CommonViewModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class ContentSlideAdapter extends Adapter<ContentSliderVH> {
    private List<List<MovieBean>> IndexData;
    private int TYPE_FOOTER;
    private int TYPE_HEADER;
    private int TYPE_NORMAL;
    private View VIEW_FOOTER;
    private View VIEW_HEADER;
    SingleListAdatper adapter;
    List<MovieBean> data;
    private Map<Integer, AdBean> mAds;
    /* access modifiers changed from: private */
    public Context mContext;
    private List<Map<String, Object>> mDatas;
    private RecyclerView mRecyclerView;
    private boolean random_look_flag;
    /* access modifiers changed from: private */
    public List<String> str;

    public ContentSlideAdapter(List<List<MovieBean>> list, Context context, JSONArray jSONArray, Map<Integer, AdBean> map, List<Map<String, Object>> list2) {
        this.TYPE_NORMAL = 1000;
        this.TYPE_HEADER = 1001;
        this.TYPE_FOOTER = 1002;
        this.adapter = null;
        this.random_look_flag = false;
        this.data = new ArrayList();
        this.IndexData = list;
        this.mContext = context;
        this.str = new ArrayList();
        this.mAds = map;
        this.mDatas = list2;
        if (StringUtils.isJSONArrayNotEmpty(jSONArray)) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONobject = StringUtils.getJSONobject(jSONArray, i);
                String str2 = "name";
                if (!StringUtils.isEmpty(jSONobject.optString(str2))) {
                    this.str.add(jSONobject.optString(str2));
                }
            }
        }
    }

    public SingleListAdatper getSingleAdapter() {
        return this.adapter;
    }

    public ContentSlideAdapter(List<List<MovieBean>> list, Context context, JSONObject jSONObject, boolean z) {
        this.TYPE_NORMAL = 1000;
        this.TYPE_HEADER = 1001;
        this.TYPE_FOOTER = 1002;
        this.adapter = null;
        this.random_look_flag = false;
        this.data = new ArrayList();
        this.IndexData = list;
        this.mContext = context;
        this.str = new ArrayList();
        this.random_look_flag = z;
        if (jSONObject != null) {
            String str2 = "name";
            if (!StringUtils.isEmpty(jSONObject.optString(str2))) {
                this.str.add(jSONObject.optString(str2));
            }
        }
    }

    public void addSingleAdapterData(MovieBean movieBean) {
        List<MovieBean> list = this.data;
        if (list != null) {
            list.add(movieBean);
        }
    }

    public ContentSliderVH onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == this.TYPE_FOOTER) {
            return new ContentSliderVH(this.VIEW_FOOTER);
        }
        if (i == this.TYPE_HEADER) {
            return new ContentSliderVH(this.VIEW_HEADER);
        }
        return new ContentSliderVH(getLayout(R.layout.common_recycler));
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x00e9  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00fd  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x011b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onBindViewHolder(final com.kantv.ui.adapter.ContentSliderVH r10, final int r11) {
        /*
            r9 = this;
            boolean r0 = r9.isHeaderView(r11)
            if (r0 != 0) goto L_0x0132
            boolean r0 = r9.isFooterView(r11)
            if (r0 != 0) goto L_0x0132
            boolean r0 = r9.haveHeaderView()
            if (r0 == 0) goto L_0x0014
            int r11 = r11 + -1
        L_0x0014:
            androidx.recyclerview.widget.RecyclerView r0 = r10.mRecyclerView
            androidx.recyclerview.widget.GridLayoutManager r1 = new androidx.recyclerview.widget.GridLayoutManager
            android.content.Context r2 = r9.mContext
            r3 = 3
            r1.<init>(r2, r3)
            r0.setLayoutManager(r1)
            androidx.recyclerview.widget.RecyclerView r0 = r10.mRecyclerView
            r1 = 0
            r0.setFocusable(r1)
            android.content.Context r0 = r9.mContext
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            r2 = 2131492996(0x7f0c0084, float:1.860946E38)
            r3 = 0
            android.view.View r0 = r0.inflate(r2, r3)
            android.content.Context r2 = r9.mContext
            android.view.LayoutInflater r2 = android.view.LayoutInflater.from(r2)
            r4 = 2131492976(0x7f0c0070, float:1.860942E38)
            android.view.View r2 = r2.inflate(r4, r3)
            r3 = 2131296782(0x7f09020e, float:1.821149E38)
            android.view.View r3 = r2.findViewById(r3)
            android.widget.LinearLayout r3 = (android.widget.LinearLayout) r3
            r4 = 2131296783(0x7f09020f, float:1.8211492E38)
            android.view.View r4 = r0.findViewById(r4)
            android.widget.TextView r4 = (android.widget.TextView) r4
            r5 = 2131296781(0x7f09020d, float:1.8211488E38)
            android.view.View r5 = r0.findViewById(r5)
            android.widget.TextView r5 = (android.widget.TextView) r5
            boolean r6 = r9.random_look_flag
            if (r6 == 0) goto L_0x0080
            java.util.List<java.util.List<com.kantv.ui.bean.MovieBean>> r6 = r9.IndexData
            if (r6 == 0) goto L_0x0075
            int r6 = r6.size()
            if (r6 < r11) goto L_0x0075
            java.util.List<java.util.List<com.kantv.ui.bean.MovieBean>> r6 = r9.IndexData
            java.lang.Object r6 = r6.get(r11)
            java.util.List r6 = (java.util.List) r6
            r9.data = r6
        L_0x0075:
            java.lang.String r6 = "随便看看"
            r4.setText(r6)
            java.lang.String r4 = "热播榜单"
            r5.setText(r4)
            goto L_0x00d4
        L_0x0080:
            java.util.List<java.util.Map<java.lang.String, java.lang.Object>> r6 = r9.mDatas
            if (r6 == 0) goto L_0x00d4
            int r6 = r6.size()
            if (r6 < r11) goto L_0x00d4
            java.util.List<java.util.Map<java.lang.String, java.lang.Object>> r6 = r9.mDatas
            java.lang.Object r6 = r6.get(r11)
            java.util.Map r6 = (java.util.Map) r6
            java.lang.String r7 = "data"
            java.lang.Object r7 = r6.get(r7)
            java.util.List r7 = (java.util.List) r7
            r9.data = r7
            java.lang.String r7 = "title"
            java.lang.Object r7 = r6.get(r7)
            java.lang.String r7 = (java.lang.String) r7
            java.lang.String r8 = "index"
            java.lang.Object r6 = r6.get(r8)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            r4.setText(r7)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r8 = "更多"
            r4.append(r8)
            r4.append(r7)
            java.lang.String r4 = r4.toString()
            r5.setText(r4)
            r4 = 2131297364(0x7f090454, float:1.821267E38)
            android.view.View r4 = r0.findViewById(r4)
            android.widget.ImageView r4 = (android.widget.ImageView) r4
            r9.parseAd(r4, r6)
            goto L_0x00d6
        L_0x00d4:
            java.lang.String r7 = ""
        L_0x00d6:
            com.kantv.ui.adapter.SingleListAdatper r4 = new com.kantv.ui.adapter.SingleListAdatper
            java.util.List<com.kantv.ui.bean.MovieBean> r6 = r9.data
            android.content.Context r8 = r9.mContext
            r4.<init>(r6, r8)
            r9.adapter = r4
            java.lang.String r4 = "体育录像"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L_0x00fd
            androidx.recyclerview.widget.RecyclerView r1 = r10.mRecyclerView
            androidx.recyclerview.widget.GridLayoutManager r4 = new androidx.recyclerview.widget.GridLayoutManager
            android.content.Context r6 = r9.mContext
            r7 = 2
            r4.<init>(r6, r7)
            r1.setLayoutManager(r4)
            com.kantv.ui.adapter.SingleListAdatper r1 = r9.adapter
            r4 = 1
            r1.isSport(r4)
            goto L_0x0102
        L_0x00fd:
            com.kantv.ui.adapter.SingleListAdatper r4 = r9.adapter
            r4.isSport(r1)
        L_0x0102:
            com.kantv.ui.adapter.ContentSlideAdapter$1 r1 = new com.kantv.ui.adapter.ContentSlideAdapter$1
            r1.<init>(r11)
            r5.setOnClickListener(r1)
            com.kantv.ui.adapter.ContentSlideAdapter$2 r11 = new com.kantv.ui.adapter.ContentSlideAdapter$2
            r11.<init>(r10)
            r3.setOnClickListener(r11)
            com.kantv.ui.adapter.SingleListAdatper r11 = r9.adapter
            r11.addHeaderView(r0)
            boolean r11 = r9.random_look_flag
            if (r11 != 0) goto L_0x0120
            com.kantv.ui.adapter.SingleListAdatper r11 = r9.adapter
            r11.addFooterView(r2)
        L_0x0120:
            com.kantv.ui.adapter.SingleListAdatper r11 = r9.adapter
            boolean r0 = r9.random_look_flag
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r11.setRandomLookType(r0)
            androidx.recyclerview.widget.RecyclerView r10 = r10.mRecyclerView
            com.kantv.ui.adapter.SingleListAdatper r11 = r9.adapter
            r10.setAdapter(r11)
        L_0x0132:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.adapter.ContentSlideAdapter.onBindViewHolder(com.kantv.ui.adapter.ContentSliderVH, int):void");
    }

    public void parseAd(ImageView imageView, int i) {
        imageView.setVisibility(8);
        Map<Integer, AdBean> map = this.mAds;
        if (map != null) {
            final AdBean adBean = (AdBean) map.get(Integer.valueOf(i - 1));
            if (adBean != null) {
                try {
                    LayoutParams layoutParams = imageView.getLayoutParams();
                    layoutParams.height = (int) (((float) (ScreenUtils.getScreenWidth(this.mContext) - 20)) / (((float) adBean.getPhotoWidth()) / ((float) adBean.getPhotoHeight())));
                    imageView.setLayoutParams(layoutParams);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                imageView.setVisibility(0);
                String photo = adBean.getPhoto();
                int length = photo.length();
                if (length >= 3) {
                    if (photo.substring(length - 3, length).equals("gif")) {
                        Glide.with(Utils.getContext()).load(photo).asGif().diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView);
                    } else {
                        Glide.with(Utils.getContext()).load(photo).skipMemoryCache(false).placeholder((int) R.drawable.placeholder2).diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView);
                    }
                }
                imageView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        Bundle bundle = new Bundle();
                        long j = adBean.get_id();
                        String title = adBean.getTitle();
                        String url = adBean.getUrl();
                        CommonViewModel.adsClick(j);
                        if (adBean.getOpentype() == 0) {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(url));
                            intent.setFlags(C.ENCODING_PCM_MU_LAW);
                            Utils.getContext().startActivity(intent);
                            return;
                        }
                        bundle.putString("title", title);
                        bundle.putString("url", url);
                        Intent intent2 = new Intent(Utils.getContext(), WebViewActivity.class);
                        intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                        intent2.putExtras(bundle);
                        Utils.getContext().startActivity(intent2);
                    }
                });
                imageView.setVisibility(0);
            }
        }
    }

    public int getItemCount() {
        List<List<MovieBean>> list = this.IndexData;
        int size = (list == null || list.size() <= 0) ? 0 : this.IndexData.size();
        if (this.VIEW_FOOTER != null) {
            size++;
        }
        return this.VIEW_HEADER != null ? size + 1 : size;
    }

    public int getItemViewType(int i) {
        if (isHeaderView(i)) {
            return this.TYPE_HEADER;
        }
        if (isFooterView(i)) {
            return this.TYPE_FOOTER;
        }
        return this.TYPE_NORMAL;
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        try {
            if (this.mRecyclerView == null && this.mRecyclerView != recyclerView) {
                this.mRecyclerView = recyclerView;
            }
            ifGridLayoutManager();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private View getLayout(int i) {
        return LayoutInflater.from(this.mContext).inflate(i, null);
    }

    public void addHeaderView(View view) {
        if (!haveHeaderView()) {
            view.setLayoutParams(new LayoutParams(-1, -2));
            this.VIEW_HEADER = view;
            ifGridLayoutManager();
            notifyItemInserted(0);
            return;
        }
        throw new IllegalStateException("hearview has already exists!");
    }

    public void addFooterView(View view) {
        if (!haveFooterView()) {
            view.setLayoutParams(new LayoutParams(-1, -2));
            this.VIEW_FOOTER = view;
            ifGridLayoutManager();
            notifyItemInserted(getItemCount() - 1);
            return;
        }
        throw new IllegalStateException("footerView has already exists!");
    }

    private void ifGridLayoutManager() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            final LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                gridLayoutManager.getSpanSizeLookup();
                gridLayoutManager.setSpanSizeLookup(new SpanSizeLookup() {
                    public int getSpanSize(int i) {
                        if (ContentSlideAdapter.this.isHeaderView(i) || ContentSlideAdapter.this.isFooterView(i)) {
                            return ((GridLayoutManager) layoutManager).getSpanCount();
                        }
                        return 1;
                    }
                });
            }
        }
    }

    private boolean haveHeaderView() {
        return this.VIEW_HEADER != null;
    }

    public boolean haveFooterView() {
        return this.VIEW_FOOTER != null;
    }

    /* access modifiers changed from: private */
    public boolean isHeaderView(int i) {
        return haveHeaderView() && i == 0;
    }

    /* access modifiers changed from: private */
    public boolean isFooterView(int i) {
        return haveFooterView() && i == getItemCount() - 1;
    }

    public void setAdapterNull() {
        if (this.adapter != null) {
            this.adapter = null;
        }
        this.mRecyclerView = null;
    }
}
