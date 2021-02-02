package jp.wasabeef.glide.transformations.gpu;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import jp.co.cyberagent.android.gpuimage.GPUImageKuwaharaFilter;

public class KuwaharaFilterTransformation extends GPUFilterTransformation {
    private int mRadius;

    public KuwaharaFilterTransformation(Context context) {
        this(context, Glide.get(context).getBitmapPool());
    }

    public KuwaharaFilterTransformation(Context context, BitmapPool bitmapPool) {
        this(context, bitmapPool, 25);
    }

    public KuwaharaFilterTransformation(Context context, int i) {
        this(context, Glide.get(context).getBitmapPool(), i);
    }

    public KuwaharaFilterTransformation(Context context, BitmapPool bitmapPool, int i) {
        super(context, bitmapPool, new GPUImageKuwaharaFilter());
        this.mRadius = i;
        ((GPUImageKuwaharaFilter) getFilter()).setRadius(this.mRadius);
    }

    public String getId() {
        StringBuilder sb = new StringBuilder();
        sb.append("KuwaharaFilterTransformation(radius=");
        sb.append(this.mRadius);
        sb.append(")");
        return sb.toString();
    }
}