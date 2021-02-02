package master.flame.danmaku.danmaku.model.android;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import java.lang.reflect.Array;
import tv.cjump.jni.NativeBitmapFactory;

public class DrawingCacheHolder {
    public Bitmap bitmap;
    public Bitmap[][] bitmapArray;
    public Canvas canvas;
    public boolean drawn;
    public Object extra;
    public int height;
    private int mDensity;
    public int width;

    public void buildCache(int i, int i2, int i3, boolean z, int i4) {
        boolean z2 = true;
        if (!z ? i > this.width || i2 > this.height : !(i == this.width && i2 == this.height)) {
            z2 = false;
        }
        if (z2) {
            Bitmap bitmap2 = this.bitmap;
            if (bitmap2 != null) {
                bitmap2.eraseColor(0);
                this.canvas.setBitmap(this.bitmap);
                recycleBitmapArray();
                return;
            }
        }
        if (this.bitmap != null) {
            recycle();
        }
        this.width = i;
        this.height = i2;
        Config config = Config.ARGB_4444;
        if (i4 == 32) {
            config = Config.ARGB_8888;
        }
        this.bitmap = NativeBitmapFactory.createBitmap(i, i2, config);
        if (i3 > 0) {
            this.mDensity = i3;
            this.bitmap.setDensity(i3);
        }
        Canvas canvas2 = this.canvas;
        if (canvas2 == null) {
            this.canvas = new Canvas(this.bitmap);
            this.canvas.setDensity(i3);
        } else {
            canvas2.setBitmap(this.bitmap);
        }
    }

    public void erase() {
        eraseBitmap(this.bitmap);
        eraseBitmapArray();
    }

    public synchronized void recycle() {
        Bitmap bitmap2 = this.bitmap;
        this.bitmap = null;
        this.height = 0;
        this.width = 0;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
        recycleBitmapArray();
        this.extra = null;
    }

    @SuppressLint({"NewApi"})
    public void splitWith(int i, int i2, int i3, int i4) {
        recycleBitmapArray();
        int i5 = this.width;
        if (i5 > 0) {
            int i6 = this.height;
            if (i6 > 0 && this.bitmap != null && (i5 > i3 || i6 > i4)) {
                int min = Math.min(i3, i);
                int min2 = Math.min(i4, i2);
                int i7 = this.width;
                int i8 = i7 / min;
                int i9 = i7 % min;
                int i10 = 1;
                int i11 = i8 + (i9 == 0 ? 0 : 1);
                int i12 = this.height;
                int i13 = i12 / min2;
                if (i12 % min2 == 0) {
                    i10 = 0;
                }
                int i14 = i13 + i10;
                int i15 = this.width / i11;
                int i16 = this.height / i14;
                Bitmap[][] bitmapArr = (Bitmap[][]) Array.newInstance(Bitmap.class, new int[]{i14, i11});
                if (this.canvas == null) {
                    this.canvas = new Canvas();
                    int i17 = this.mDensity;
                    if (i17 > 0) {
                        this.canvas.setDensity(i17);
                    }
                }
                Rect rect = new Rect();
                Rect rect2 = new Rect();
                for (int i18 = 0; i18 < i14; i18++) {
                    for (int i19 = 0; i19 < i11; i19++) {
                        Bitmap[] bitmapArr2 = bitmapArr[i18];
                        Bitmap createBitmap = NativeBitmapFactory.createBitmap(i15, i16, Config.ARGB_8888);
                        bitmapArr2[i19] = createBitmap;
                        int i20 = this.mDensity;
                        if (i20 > 0) {
                            createBitmap.setDensity(i20);
                        }
                        this.canvas.setBitmap(createBitmap);
                        int i21 = i19 * i15;
                        int i22 = i18 * i16;
                        rect.set(i21, i22, i21 + i15, i22 + i16);
                        rect2.set(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                        this.canvas.drawBitmap(this.bitmap, rect, rect2, null);
                    }
                }
                this.canvas.setBitmap(this.bitmap);
                this.bitmapArray = bitmapArr;
            }
        }
    }

    private void eraseBitmap(Bitmap bitmap2) {
        if (bitmap2 != null) {
            bitmap2.eraseColor(0);
        }
    }

    private void eraseBitmapArray() {
        if (this.bitmapArray != null) {
            for (int i = 0; i < this.bitmapArray.length; i++) {
                int i2 = 0;
                while (true) {
                    Bitmap[][] bitmapArr = this.bitmapArray;
                    if (i2 >= bitmapArr[i].length) {
                        break;
                    }
                    eraseBitmap(bitmapArr[i][i2]);
                    i2++;
                }
            }
        }
    }

    private void recycleBitmapArray() {
        Bitmap[][] bitmapArr = this.bitmapArray;
        this.bitmapArray = null;
        if (bitmapArr != null) {
            for (int i = 0; i < bitmapArr.length; i++) {
                for (int i2 = 0; i2 < bitmapArr[i].length; i2++) {
                    if (bitmapArr[i][i2] != null) {
                        bitmapArr[i][i2].recycle();
                        bitmapArr[i][i2] = null;
                    }
                }
            }
        }
    }

    public final synchronized boolean draw(Canvas canvas2, float f, float f2, Paint paint) {
        if (this.bitmapArray != null) {
            for (int i = 0; i < this.bitmapArray.length; i++) {
                for (int i2 = 0; i2 < this.bitmapArray[i].length; i2++) {
                    Bitmap bitmap2 = this.bitmapArray[i][i2];
                    if (bitmap2 != null) {
                        float width2 = ((float) (bitmap2.getWidth() * i2)) + f;
                        if (width2 <= ((float) canvas2.getWidth())) {
                            if (((float) bitmap2.getWidth()) + width2 >= 0.0f) {
                                float height2 = ((float) (bitmap2.getHeight() * i)) + f2;
                                if (height2 <= ((float) canvas2.getHeight())) {
                                    if (((float) bitmap2.getHeight()) + height2 >= 0.0f) {
                                        canvas2.drawBitmap(bitmap2, width2, height2, paint);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return true;
        } else if (this.bitmap == null) {
            return false;
        } else {
            canvas2.drawBitmap(this.bitmap, f, f2, paint);
            return true;
        }
    }
}
