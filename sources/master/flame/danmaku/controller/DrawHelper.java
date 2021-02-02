package master.flame.danmaku.controller;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.core.internal.view.SupportMenu;

public class DrawHelper {
    public static Paint PAINT = new Paint();
    public static Paint PAINT_FPS = null;
    public static RectF RECT = new RectF();
    private static boolean USE_DRAWCOLOR_MODE_CLEAR = true;
    private static boolean USE_DRAWCOLOR_TO_CLEAR_CANVAS = true;

    static {
        PAINT.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
        PAINT.setColor(0);
    }

    public static void useDrawColorToClearCanvas(boolean z, boolean z2) {
        USE_DRAWCOLOR_TO_CLEAR_CANVAS = z;
        USE_DRAWCOLOR_MODE_CLEAR = z2;
    }

    public static void drawFPS(Canvas canvas, String str) {
        if (PAINT_FPS == null) {
            PAINT_FPS = new Paint();
            PAINT_FPS.setColor(SupportMenu.CATEGORY_MASK);
            PAINT_FPS.setTextSize(30.0f);
        }
        int height = canvas.getHeight() - 50;
        clearCanvas(canvas, 10.0f, (float) (height - 50), (float) ((int) (PAINT_FPS.measureText(str) + 20.0f)), (float) canvas.getHeight());
        canvas.drawText(str, 10.0f, (float) height, PAINT_FPS);
    }

    public static void clearCanvas(Canvas canvas) {
        if (!USE_DRAWCOLOR_TO_CLEAR_CANVAS) {
            RECT.set(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight());
            clearCanvas(canvas, RECT);
        } else if (USE_DRAWCOLOR_MODE_CLEAR) {
            canvas.drawColor(0, Mode.CLEAR);
        } else {
            canvas.drawColor(0);
        }
    }

    public static void fillTransparent(Canvas canvas) {
        canvas.drawColor(0, Mode.CLEAR);
    }

    public static void clearCanvas(Canvas canvas, float f, float f2, float f3, float f4) {
        RECT.set(f, f2, f3, f4);
        clearCanvas(canvas, RECT);
    }

    private static void clearCanvas(Canvas canvas, RectF rectF) {
        if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
            canvas.drawRect(rectF, PAINT);
        }
    }
}
