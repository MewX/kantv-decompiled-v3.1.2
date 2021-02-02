package com.kantv.ui.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.LayoutManager;
import com.google.gson.Gson;
import com.imkan.tv.R;
import com.kantv.common.utils.StringUtils;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.bean.HotClassBean;
import com.kantv.ui.bean.MovieBean;
import com.kantv.ui.utils.GlideUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

public class VideoClassAdapter extends Adapter<SingleListVH> {
    private int DISPLAY_NUM = 6;
    private int TYPE_FOOTER = 1002;
    private int TYPE_HEADER = 1001;
    private int TYPE_NORMAL = 1000;
    private View VIEW_FOOTER;
    private View VIEW_HEADER;
    private List<MovieBean> backupData = new ArrayList();
    private final String biaoqian;
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public List<MovieBean> mData = new ArrayList();
    private RecyclerView mRecyclerView;

    public VideoClassAdapter(List<HotClassBean> list, Context context, String str) {
        this.biaoqian = str;
        if (str.equals("体育录像")) {
            this.DISPLAY_NUM = 4;
        } else {
            this.DISPLAY_NUM = 6;
        }
        this.mContext = context;
        JSONArray jsonArray = StringUtils.toJsonArray(((HotClassBean) list.get(0)).getType());
        Gson gson = new Gson();
        if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
            for (int i = 0; i < jsonArray.length(); i++) {
                this.mData.add((MovieBean) gson.fromJson(StringUtils.getJSONobject(jsonArray, i).toString(), MovieBean.class));
            }
            this.backupData = this.mData;
        }
    }

    public SingleListVH onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == this.TYPE_FOOTER) {
            return new SingleListVH(this.VIEW_FOOTER);
        }
        if (i == this.TYPE_HEADER) {
            return new SingleListVH(this.VIEW_HEADER);
        }
        return new SingleListVH(getLayout(R.layout.item_tv_card));
    }

    public void onBindViewHolder(SingleListVH singleListVH, final int i) {
        if (!isHeaderView(i) && !isFooterView(i)) {
            if (haveHeaderView()) {
                i--;
            }
            if (this.biaoqian.equals("体育录像")) {
                singleListVH.item_card_img_rl.setLayoutParams(new LayoutParams(-1, DensityUtil.dp2px(this.mContext, 97.0f)));
            } else {
                singleListVH.item_card_img_rl.setLayoutParams(new LayoutParams(-1, DensityUtil.dp2px(this.mContext, 146.0f)));
            }
            singleListVH.mName.setText(((MovieBean) this.mData.get(i)).getTitle());
            singleListVH.mDesc.setText(((MovieBean) this.mData.get(i)).getDescript());
            singleListVH.mUpdate.setText(((MovieBean) this.mData.get(i)).getMsg());
            String score = ((MovieBean) this.mData.get(i)).getScore();
            if (!StringUtils.isEmpty(score)) {
                if (score.length() == 3) {
                    singleListVH.mNumber2.setText(score.substring(2));
                    singleListVH.mNumber1.setText(score.substring(0, 2));
                } else if (score.length() == 1) {
                    singleListVH.mNumber2.setText(".0");
                    singleListVH.mNumber1.setText(score);
                }
            }
            GlideUtils.loadimage(((MovieBean) this.mData.get(i)).getPhoto(), singleListVH.mIng);
            singleListVH.mBj.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    String url = ((MovieBean) VideoClassAdapter.this.mData.get(i)).getUrl();
                    if (url.substring(0, 4).equals("http")) {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setData(Uri.parse(url));
                        VideoClassAdapter.this.mContext.startActivity(intent);
                        return;
                    }
                    Intent intent2 = new Intent(VideoClassAdapter.this.mContext, VideoPlayActivity.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("tid", ((MovieBean) VideoClassAdapter.this.mData.get(i)).getUrl());
                    bundle.putString("seo", ((MovieBean) VideoClassAdapter.this.mData.get(i)).getSeo());
                    intent2.putExtras(bundle);
                    VideoClassAdapter.this.mContext.startActivity(intent2);
                }
            });
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x000a, code lost:
        if (r0 >= r1) goto L_0x000e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int getItemCount() {
        /*
            r3 = this;
            java.util.List<com.kantv.ui.bean.MovieBean> r0 = r3.mData
            if (r0 == 0) goto L_0x000d
            int r0 = r0.size()
            int r1 = r3.DISPLAY_NUM
            if (r0 < r1) goto L_0x000d
            goto L_0x000e
        L_0x000d:
            r1 = 0
        L_0x000e:
            java.util.List<com.kantv.ui.bean.MovieBean> r0 = r3.mData
            if (r0 == 0) goto L_0x0020
            int r0 = r0.size()
            int r2 = r3.DISPLAY_NUM
            if (r0 >= r2) goto L_0x0020
            java.util.List<com.kantv.ui.bean.MovieBean> r0 = r3.mData
            int r1 = r0.size()
        L_0x0020:
            android.view.View r0 = r3.VIEW_FOOTER
            if (r0 == 0) goto L_0x0026
            int r1 = r1 + 1
        L_0x0026:
            android.view.View r0 = r3.VIEW_HEADER
            if (r0 == 0) goto L_0x002c
            int r1 = r1 + 1
        L_0x002c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.adapter.VideoClassAdapter.getItemCount():int");
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
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            this.VIEW_HEADER = view;
            ifGridLayoutManager();
            notifyItemInserted(0);
            return;
        }
        throw new IllegalStateException("hearview has already exists!");
    }

    public void addFooterView(View view) {
        if (!haveFooterView()) {
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
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
                        if (VideoClassAdapter.this.isHeaderView(i) || VideoClassAdapter.this.isFooterView(i)) {
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

    public void switchRefresh() {
        if (this.mData.size() > this.DISPLAY_NUM) {
            int size = this.mData.size();
            int i = this.DISPLAY_NUM;
            if (size / i >= 1) {
                List<MovieBean> list = this.mData;
                this.mData = list.subList(i - 1, list.size() - 1);
                return;
            }
        }
        this.mData = this.backupData;
    }
}
