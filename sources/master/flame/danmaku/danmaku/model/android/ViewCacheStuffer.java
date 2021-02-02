package master.flame.danmaku.danmaku.model.android;

import android.graphics.Canvas;
import android.text.TextPaint;
import android.util.SparseArray;
import android.view.View;
import android.view.View.MeasureSpec;
import java.util.ArrayList;
import java.util.List;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.android.AndroidDisplayer.DisplayerConfig;
import master.flame.danmaku.danmaku.model.android.ViewCacheStuffer.ViewHolder;

public abstract class ViewCacheStuffer<VH extends ViewHolder> extends BaseCacheStuffer {
    public static final int CACHE_VIEW_TYPE = -3;
    public static final int DRAW_VIEW_TYPE = -3;
    public static final int INVALID_TYPE = -1;
    public static final int MEASURE_VIEW_TYPE = -2;
    private final int mMaximumHeightPixels = -1;
    private final int mMaximumWidthPixels = -1;
    private SparseArray<List<VH>> mViewHolderArray = new SparseArray<>();

    public static abstract class ViewHolder {
        protected final View itemView;

        public ViewHolder(View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        public void measure(int i, int i2) {
            this.itemView.measure(i, i2);
        }

        public int getMeasureWidth() {
            return this.itemView.getMeasuredWidth();
        }

        public int getMeasureHeight() {
            return this.itemView.getMeasuredHeight();
        }

        public void layout(int i, int i2, int i3, int i4) {
            this.itemView.layout(i, i2, i3, i4);
        }

        public void draw(Canvas canvas, DisplayerConfig displayerConfig) {
            this.itemView.draw(canvas);
        }
    }

    public void clearCaches() {
    }

    public int getItemViewType(int i, BaseDanmaku baseDanmaku) {
        return 0;
    }

    public abstract void onBindViewHolder(int i, VH vh, BaseDanmaku baseDanmaku, DisplayerConfig displayerConfig, TextPaint textPaint);

    public abstract VH onCreateViewHolder(int i);

    public void measure(BaseDanmaku baseDanmaku, TextPaint textPaint, boolean z) {
        int itemViewType = getItemViewType(baseDanmaku.index, baseDanmaku);
        List list = (List) this.mViewHolderArray.get(itemViewType);
        if (list == null) {
            list = new ArrayList();
            list.add(onCreateViewHolder(itemViewType));
            list.add(onCreateViewHolder(itemViewType));
            list.add(onCreateViewHolder(itemViewType));
            this.mViewHolderArray.put(itemViewType, list);
        }
        ViewHolder viewHolder = (ViewHolder) list.get(0);
        onBindViewHolder(itemViewType, viewHolder, baseDanmaku, null, textPaint);
        viewHolder.measure(MeasureSpec.makeMeasureSpec(this.mMaximumWidthPixels, Integer.MIN_VALUE), MeasureSpec.makeMeasureSpec(this.mMaximumHeightPixels, Integer.MIN_VALUE));
        viewHolder.layout(0, 0, viewHolder.getMeasureWidth(), viewHolder.getMeasureHeight());
        baseDanmaku.paintWidth = (float) viewHolder.getMeasureWidth();
        baseDanmaku.paintHeight = (float) viewHolder.getMeasureHeight();
    }

    public void releaseResource(BaseDanmaku baseDanmaku) {
        super.releaseResource(baseDanmaku);
        baseDanmaku.tag = null;
    }

    public void drawDanmaku(BaseDanmaku baseDanmaku, Canvas canvas, float f, float f2, boolean z, DisplayerConfig displayerConfig) {
        ViewHolder viewHolder;
        int itemViewType = getItemViewType(baseDanmaku.index, baseDanmaku);
        List list = (List) this.mViewHolderArray.get(itemViewType);
        boolean z2 = true;
        if (list != null) {
            viewHolder = (ViewHolder) list.get(z ? 1 : 2);
        } else {
            viewHolder = null;
        }
        if (viewHolder != null) {
            displayerConfig.definePaintParams(z);
            TextPaint paint = displayerConfig.getPaint(baseDanmaku, z);
            displayerConfig.applyPaintConfig(baseDanmaku, paint, false);
            onBindViewHolder(itemViewType, viewHolder, baseDanmaku, displayerConfig, paint);
            viewHolder.measure(MeasureSpec.makeMeasureSpec(Math.round(baseDanmaku.paintWidth), 1073741824), MeasureSpec.makeMeasureSpec(Math.round(baseDanmaku.paintHeight), 1073741824));
            if (!z) {
                canvas.save();
                canvas.translate(f, f2);
            } else {
                z2 = false;
            }
            if (baseDanmaku.underlineColor != 0) {
                float f3 = (baseDanmaku.paintHeight + f2) - ((float) displayerConfig.UNDERLINE_HEIGHT);
                canvas.drawLine(f, f3, f + baseDanmaku.paintWidth, f3, displayerConfig.getUnderlinePaint(baseDanmaku));
            }
            if (baseDanmaku.borderColor != 0) {
                canvas.drawRect(f, f2, f + baseDanmaku.paintWidth, f2 + baseDanmaku.paintHeight, displayerConfig.getBorderPaint(baseDanmaku));
            }
            viewHolder.layout(0, 0, (int) baseDanmaku.paintWidth, (int) baseDanmaku.paintHeight);
            viewHolder.draw(canvas, displayerConfig);
            if (z2) {
                canvas.restore();
            }
        }
    }
}
