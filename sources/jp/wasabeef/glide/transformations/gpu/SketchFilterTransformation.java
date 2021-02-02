package jp.wasabeef.glide.transformations.gpu;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import jp.co.cyberagent.android.gpuimage.GPUImageSketchFilter;

public class SketchFilterTransformation extends GPUFilterTransformation {
    public String getId() {
        return "SketchFilterTransformation()";
    }

    public SketchFilterTransformation(Context context) {
        this(context, Glide.get(context).getBitmapPool());
    }

    public SketchFilterTransformation(Context context, BitmapPool bitmapPool) {
        super(context, bitmapPool, new GPUImageSketchFilter());
    }
}
