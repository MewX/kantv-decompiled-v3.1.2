package com.kantv.lib.recyclerview;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.AdapterDataObserver;
import androidx.recyclerview.widget.RecyclerView.LayoutManager;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.kantv.ui.fragment.NewsCollectFragment;

public class XRecyclerView extends RecyclerView {
    private static final float DRAG_RATE = 1.75f;
    private boolean isLoadingData;
    private boolean isOther;
    public boolean isnomore;
    private boolean loadingMoreEnabled;
    private Context mContext;
    private final AdapterDataObserver mDataObserver;
    private SparseArray<View> mFootViews;
    private SparseArray<View> mHeaderViews;
    private float mLastY;
    /* access modifiers changed from: private */
    public LoadingListener mLoadingListener;
    private YunRefreshHeader mRefreshHeader;
    /* access modifiers changed from: private */
    public WrapAdapter mWrapAdapter;
    public int previousTotal;
    private boolean pullRefreshEnabled;

    public interface LoadingListener {
        void onLoadMore();

        void onRefresh();
    }

    public XRecyclerView(Context context) {
        this(context, null);
    }

    public XRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public XRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHeaderViews = new SparseArray<>();
        this.mFootViews = new SparseArray<>();
        this.pullRefreshEnabled = true;
        this.loadingMoreEnabled = true;
        this.mLastY = -1.0f;
        this.isOther = false;
        this.mDataObserver = new AdapterDataObserver() {
            public void onChanged() {
                if (XRecyclerView.this.mWrapAdapter != null) {
                    XRecyclerView.this.mWrapAdapter.notifyDataSetChanged();
                }
            }

            public void onItemRangeInserted(int i, int i2) {
                XRecyclerView.this.mWrapAdapter.notifyItemRangeInserted(i, i2);
            }

            public void onItemRangeChanged(int i, int i2) {
                XRecyclerView.this.mWrapAdapter.notifyItemRangeChanged(i, i2);
            }

            public void onItemRangeChanged(int i, int i2, Object obj) {
                XRecyclerView.this.mWrapAdapter.notifyItemRangeChanged(i, i2, obj);
            }

            public void onItemRangeRemoved(int i, int i2) {
                XRecyclerView.this.mWrapAdapter.notifyItemRangeRemoved(i, i2);
            }

            public void onItemRangeMoved(int i, int i2, int i3) {
                XRecyclerView.this.mWrapAdapter.notifyItemMoved(i, i2);
            }
        };
        this.mContext = context;
        init(context);
    }

    private void init(Context context) {
        if (this.pullRefreshEnabled) {
            YunRefreshHeader yunRefreshHeader = new YunRefreshHeader(context);
            this.mHeaderViews.put(0, yunRefreshHeader);
            this.mRefreshHeader = yunRefreshHeader;
        }
        addFootView(new LoadingMoreFooter(context), false);
        ((View) this.mFootViews.get(0)).setVisibility(8);
    }

    public void addFootView(View view, boolean z) {
        this.mFootViews.clear();
        this.mFootViews.put(0, view);
        this.isOther = z;
    }

    public void clearHeader() {
        this.mHeaderViews.clear();
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        float f = displayMetrics.density;
        LayoutParams layoutParams = new LayoutParams(displayMetrics.widthPixels, 0);
        View view = new View(getContext());
        view.setLayoutParams(layoutParams);
        this.mHeaderViews.put(0, view);
    }

    public void addHeaderView(View view) {
        if (this.pullRefreshEnabled && !(this.mHeaderViews.get(0) instanceof YunRefreshHeader)) {
            YunRefreshHeader yunRefreshHeader = new YunRefreshHeader(getContext());
            this.mHeaderViews.put(0, yunRefreshHeader);
            this.mRefreshHeader = yunRefreshHeader;
        }
        view.setLayoutParams(new LayoutParams(getContext().getResources().getDisplayMetrics().widthPixels, -2));
        StringBuilder sb = new StringBuilder();
        sb.append("addHeaderView:");
        sb.append(this.mHeaderViews.size());
        Log.e("addHeaderView", sb.toString());
        SparseArray<View> sparseArray = this.mHeaderViews;
        sparseArray.put(sparseArray.size(), view);
    }

    public void loadMoreComplete() {
        this.isLoadingData = false;
        View view = (View) this.mFootViews.get(0);
        if (this.previousTotal > getLayoutManager().getItemCount()) {
            if (view instanceof LoadingMoreFooter) {
                ((LoadingMoreFooter) view).setState(2);
            } else {
                view.setVisibility(0);
            }
            this.isnomore = true;
        } else if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).setState(1);
        } else {
            view.setVisibility(0);
        }
        this.previousTotal = getLayoutManager().getItemCount();
    }

    public void noMoreLoading() {
        this.isLoadingData = false;
        View view = (View) this.mFootViews.get(0);
        this.isnomore = true;
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).setState(2);
        } else {
            view.setVisibility(8);
        }
        if (this.isOther) {
            view.setVisibility(0);
        }
    }

    public void refreshComplete() {
        if (this.isLoadingData) {
            loadMoreComplete();
        } else {
            this.mRefreshHeader.refreshComplate();
        }
    }

    public void setAdapter(Adapter adapter) {
        this.mWrapAdapter = new WrapAdapter(this.mHeaderViews, this.mFootViews, adapter);
        super.setAdapter(this.mWrapAdapter);
        adapter.registerAdapterDataObserver(this.mDataObserver);
    }

    public void onScrollStateChanged(int i) {
        int i2;
        super.onScrollStateChanged(i);
        if (i == 0 && this.mLoadingListener != null && !this.isLoadingData && this.loadingMoreEnabled) {
            LayoutManager layoutManager = getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                i2 = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
                int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
                staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
                i2 = findMax(iArr);
            } else {
                i2 = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
            }
            StringBuilder sb = new StringBuilder();
            String str = ",";
            sb.append(str);
            sb.append(layoutManager.getChildCount() > 0);
            sb.append(", ");
            sb.append(i2 >= layoutManager.getItemCount() + -10);
            sb.append(str);
            sb.append(layoutManager.getItemCount() > layoutManager.getChildCount());
            sb.append(",!isnomore:");
            sb.append(!this.isnomore);
            sb.append(str);
            sb.append(this.mRefreshHeader.getState() < 2);
            String sb2 = sb.toString();
            String str2 = NewsCollectFragment.TAG;
            Log.d(str2, sb2);
            if (layoutManager.getChildCount() > 0 && i2 >= layoutManager.getItemCount() - 10 && layoutManager.getItemCount() > layoutManager.getChildCount() && !this.isnomore && this.mRefreshHeader.getState() != 2) {
                Log.d(str2, "loadMore");
                View view = (View) this.mFootViews.get(0);
                if (view != null) {
                    this.isLoadingData = true;
                    if (view instanceof LoadingMoreFooter) {
                        ((LoadingMoreFooter) view).setState(0);
                    } else {
                        view.setVisibility(0);
                    }
                    if (isNetWorkConnected(getContext())) {
                        this.mLoadingListener.onLoadMore();
                    } else {
                        postDelayed(new Runnable() {
                            public void run() {
                                XRecyclerView.this.mLoadingListener.onLoadMore();
                            }
                        }, 1000);
                    }
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mLastY == -1.0f) {
            this.mLastY = motionEvent.getRawY();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mLastY = motionEvent.getRawY();
        } else if (action != 2) {
            this.mLastY = -1.0f;
            if (isOnTop() && this.pullRefreshEnabled && this.mRefreshHeader.releaseAction()) {
                LoadingListener loadingListener = this.mLoadingListener;
                if (loadingListener != null) {
                    loadingListener.onRefresh();
                    this.isnomore = false;
                    this.previousTotal = 0;
                    View view = (View) this.mFootViews.get(0);
                    if ((view instanceof LoadingMoreFooter) && view.getVisibility() != 8) {
                        view.setVisibility(8);
                    }
                }
            }
        } else {
            float rawY = motionEvent.getRawY() - this.mLastY;
            this.mLastY = motionEvent.getRawY();
            if (isOnTop() && this.pullRefreshEnabled) {
                this.mRefreshHeader.onMove(rawY / DRAG_RATE);
                if (this.mRefreshHeader.getVisiableHeight() > 0 && this.mRefreshHeader.getState() < 2) {
                    return false;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setHeaderRefresh(int i, String str) {
        this.mRefreshHeader.setTodayUpdate(i, str);
        this.isLoadingData = false;
        this.mRefreshHeader.onMove(130.0f);
        this.mRefreshHeader.setState(1);
    }

    private int findMax(int[] iArr) {
        int i = iArr[0];
        for (int i2 : iArr) {
            if (i2 > i) {
                i = i2;
            }
        }
        return i;
    }

    private int findMin(int[] iArr) {
        int i = iArr[0];
        for (int i2 : iArr) {
            if (i2 < i) {
                i = i2;
            }
        }
        return i;
    }

    public boolean isOnTop() {
        SparseArray<View> sparseArray = this.mHeaderViews;
        if (sparseArray == null || sparseArray.size() == 0 || ((View) this.mHeaderViews.get(0)).getParent() == null) {
            return false;
        }
        return true;
    }

    public void setLoadingListener(LoadingListener loadingListener) {
        this.mLoadingListener = loadingListener;
    }

    public void setPullRefreshEnabled(boolean z) {
        this.pullRefreshEnabled = z;
    }

    public void setLoadingMoreEnabled(boolean z) {
        this.loadingMoreEnabled = z;
        if (!z) {
            SparseArray<View> sparseArray = this.mFootViews;
            if (sparseArray != null) {
                sparseArray.remove(0);
            }
        } else if (this.mFootViews != null) {
            addFootView(new LoadingMoreFooter(getContext()), false);
        }
    }

    public void setLoadMoreGone() {
        SparseArray<View> sparseArray = this.mFootViews;
        if (sparseArray != null) {
            View view = (View) sparseArray.get(0);
            if (view != null && (view instanceof LoadingMoreFooter)) {
                this.mFootViews.remove(0);
            }
        }
    }

    public void setloadMoreVisible(boolean z) {
        SparseArray<View> sparseArray = this.mFootViews;
        if (sparseArray != null) {
            View view = (View) sparseArray.get(0);
            if (view != null && (view instanceof LoadingMoreFooter)) {
                if (z) {
                    view.setVisibility(0);
                } else {
                    view.setVisibility(8);
                }
            }
        }
    }

    public static boolean isNetWorkConnected(Context context) {
        if (context != null) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
        }
        return false;
    }

    public void reset() {
        this.isnomore = false;
        this.previousTotal = 0;
        View view = (View) this.mFootViews.get(0);
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).reSet();
        }
    }
}
