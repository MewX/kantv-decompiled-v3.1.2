package jp.wasabeef.glide.transformations.gpu;

import android.content.Context;
import android.graphics.PointF;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.util.Arrays;
import jp.co.cyberagent.android.gpuimage.GPUImageVignetteFilter;

public class VignetteFilterTransformation extends GPUFilterTransformation {
    private PointF mCenter;
    private float[] mVignetteColor;
    private float mVignetteEnd;
    private float mVignetteStart;

    public VignetteFilterTransformation(Context context) {
        this(context, Glide.get(context).getBitmapPool());
    }

    public VignetteFilterTransformation(Context context, BitmapPool bitmapPool) {
        this(context, bitmapPool, new PointF(0.5f, 0.5f), new float[]{0.0f, 0.0f, 0.0f}, 0.0f, 0.75f);
    }

    public VignetteFilterTransformation(Context context, PointF pointF, float[] fArr, float f, float f2) {
        this(context, Glide.get(context).getBitmapPool(), pointF, fArr, f, f2);
    }

    public VignetteFilterTransformation(Context context, BitmapPool bitmapPool, PointF pointF, float[] fArr, float f, float f2) {
        super(context, bitmapPool, new GPUImageVignetteFilter());
        this.mCenter = pointF;
        this.mVignetteColor = fArr;
        this.mVignetteStart = f;
        this.mVignetteEnd = f2;
        GPUImageVignetteFilter gPUImageVignetteFilter = (GPUImageVignetteFilter) getFilter();
        gPUImageVignetteFilter.setVignetteCenter(this.mCenter);
        gPUImageVignetteFilter.setVignetteColor(this.mVignetteColor);
        gPUImageVignetteFilter.setVignetteStart(this.mVignetteStart);
        gPUImageVignetteFilter.setVignetteEnd(this.mVignetteEnd);
    }

    public String getId() {
        StringBuilder sb = new StringBuilder();
        sb.append("VignetteFilterTransformation(center=");
        sb.append(this.mCenter.toString());
        sb.append(",color=");
        sb.append(Arrays.toString(this.mVignetteColor));
        sb.append(",start=");
        sb.append(this.mVignetteStart);
        sb.append(",end=");
        sb.append(this.mVignetteEnd);
        sb.append(")");
        return sb.toString();
    }
}