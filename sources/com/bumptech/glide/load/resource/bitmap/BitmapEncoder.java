package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.util.Log;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.io.OutputStream;

public class BitmapEncoder implements ResourceEncoder<Bitmap> {
    private static final int DEFAULT_COMPRESSION_QUALITY = 90;
    private static final String TAG = "BitmapEncoder";
    private CompressFormat compressFormat;
    private int quality;

    public String getId() {
        return "BitmapEncoder.com.bumptech.glide.load.resource.bitmap";
    }

    public BitmapEncoder() {
        this(null, 90);
    }

    public BitmapEncoder(CompressFormat compressFormat2, int i) {
        this.compressFormat = compressFormat2;
        this.quality = i;
    }

    public boolean encode(Resource<Bitmap> resource, OutputStream outputStream) {
        Bitmap bitmap = (Bitmap) resource.get();
        long logTime = LogTime.getLogTime();
        CompressFormat format = getFormat(bitmap);
        bitmap.compress(format, this.quality, outputStream);
        String str = TAG;
        if (Log.isLoggable(str, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Compressed with type: ");
            sb.append(format);
            sb.append(" of size ");
            sb.append(Util.getBitmapByteSize(bitmap));
            sb.append(" in ");
            sb.append(LogTime.getElapsedMillis(logTime));
            Log.v(str, sb.toString());
        }
        return true;
    }

    private CompressFormat getFormat(Bitmap bitmap) {
        CompressFormat compressFormat2 = this.compressFormat;
        if (compressFormat2 != null) {
            return compressFormat2;
        }
        if (bitmap.hasAlpha()) {
            return CompressFormat.PNG;
        }
        return CompressFormat.JPEG;
    }
}
