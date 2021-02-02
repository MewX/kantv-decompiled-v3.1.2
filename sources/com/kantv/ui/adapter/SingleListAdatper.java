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
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.imkan.tv.R;
import com.kantv.common.utils.StringUtils;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.bean.MovieBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.GlideUtils;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;

public class SingleListAdatper extends Adapter<SingleListVH> {
    private int DISPLAY_NUM = 6;
    private boolean RANDOM_LOOK_FLAG = false;
    private int TYPE_FOOTER = 1002;
    private int TYPE_HEADER = 1001;
    private int TYPE_NORMAL = 1000;
    private View VIEW_FOOTER;
    private View VIEW_HEADER;
    private List<MovieBean> backupData = new ArrayList();
    /* access modifiers changed from: private */
    public List<MovieBean> data = new ArrayList();
    private boolean isSport;
    /* access modifiers changed from: private */
    public Context mContext;
    int mHeight;
    private RecyclerView mRecyclerView;
    int mWidth;

    public SingleListAdatper(List<MovieBean> list, Context context) {
        this.data = list;
        this.mContext = context;
        this.backupData = list;
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
            String score = ((MovieBean) this.data.get(i)).getScore();
            if (!StringUtils.isEmpty(score)) {
                if (score.length() == 3) {
                    singleListVH.mNumber2.setText(score.substring(2));
                    singleListVH.mNumber1.setText(score.substring(0, 2));
                } else if (score.length() == 1) {
                    singleListVH.mNumber2.setText(".0");
                    singleListVH.mNumber1.setText(score);
                }
            }
            singleListVH.mName.setText(((MovieBean) this.data.get(i)).getTitle());
            singleListVH.mDesc.setText(((MovieBean) this.data.get(i)).getDescript());
            singleListVH.mUpdate.setText(((MovieBean) this.data.get(i)).getMsg());
            GlideUtils.loadimage(((MovieBean) this.data.get(i)).getPhoto(), singleListVH.mIng);
            if (this.isSport) {
                this.DISPLAY_NUM = 4;
                singleListVH.mBj.setLayoutParams(new LayoutParams(-1, DensityUtil.dp2px(this.mContext, 97.0f)));
            } else {
                this.DISPLAY_NUM = 6;
                singleListVH.mBj.setLayoutParams(new LayoutParams(-1, DensityUtil.dp2px(this.mContext, 146.0f)));
            }
            singleListVH.mBj.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    String url = ((MovieBean) SingleListAdatper.this.data.get(i)).getUrl();
                    if (url.substring(0, 4).equals("http")) {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setData(Uri.parse(url));
                        SingleListAdatper.this.mContext.startActivity(intent);
                    } else {
                        Intent intent2 = new Intent(SingleListAdatper.this.mContext, VideoPlayActivity.class);
                        Bundle bundle = new Bundle();
                        bundle.putString("tid", url);
                        bundle.putString("seo", ((MovieBean) SingleListAdatper.this.data.get(i)).getSeo());
                        intent2.putExtras(bundle);
                        SingleListAdatper.this.mContext.startActivity(intent2);
                    }
                    KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE13).setAction(UserPreference.ACTION1).setLabel(((MovieBean) SingleListAdatper.this.data.get(i)).getTitle()).build());
                }
            });
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x000b, code lost:
        if (r0 >= r2) goto L_0x000f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int getItemCount() {
        /*
            r4 = this;
            java.util.List<com.kantv.ui.bean.MovieBean> r0 = r4.data
            r1 = 0
            if (r0 == 0) goto L_0x000e
            int r0 = r0.size()
            int r2 = r4.DISPLAY_NUM
            if (r0 < r2) goto L_0x000e
            goto L_0x000f
        L_0x000e:
            r2 = 0
        L_0x000f:
            java.util.List<com.kantv.ui.bean.MovieBean> r0 = r4.data
            if (r0 == 0) goto L_0x0021
            int r0 = r0.size()
            int r3 = r4.DISPLAY_NUM
            if (r0 >= r3) goto L_0x0021
            java.util.List<com.kantv.ui.bean.MovieBean> r0 = r4.data
            int r2 = r0.size()
        L_0x0021:
            android.view.View r0 = r4.VIEW_FOOTER
            if (r0 == 0) goto L_0x0027
            int r2 = r2 + 1
        L_0x0027:
            android.view.View r0 = r4.VIEW_HEADER
            if (r0 == 0) goto L_0x002d
            int r2 = r2 + 1
        L_0x002d:
            boolean r0 = r4.RANDOM_LOOK_FLAG
            if (r0 == 0) goto L_0x003e
            java.util.List<com.kantv.ui.bean.MovieBean> r0 = r4.data
            if (r0 != 0) goto L_0x0037
            r2 = 0
            goto L_0x003e
        L_0x0037:
            int r0 = r0.size()
            int r1 = r0 + 1
            r2 = r1
        L_0x003e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.adapter.SingleListAdatper.getItemCount():int");
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
                        if (SingleListAdatper.this.isHeaderView(i) || SingleListAdatper.this.isFooterView(i)) {
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

    public void setRandomLookType(Boolean bool) {
        if (bool.booleanValue()) {
            this.RANDOM_LOOK_FLAG = bool.booleanValue();
        }
    }

    public void switchRefresh() {
        if (this.data.size() > this.DISPLAY_NUM) {
            int size = this.data.size();
            int i = this.DISPLAY_NUM;
            if (size / i >= 1) {
                List<MovieBean> list = this.data;
                this.data = list.subList(i - 1, list.size() - 1);
                return;
            }
        }
        this.data = this.backupData;
    }

    public void setRecyclerViewNull() {
        this.mRecyclerView = null;
    }

    public void isSport(boolean z) {
        this.isSport = z;
    }
}
