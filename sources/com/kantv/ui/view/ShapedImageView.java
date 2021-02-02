package com.kantv.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.kantv.ui.R;
import java.util.Arrays;

public class ShapedImageView extends ImageView {
    private static final int SHAPE_MODE_CIRCLE = 2;
    private static final int SHAPE_MODE_ROUND_RECT = 1;
    private Paint mPaint;
    private float mRadius = 0.0f;
    private Shape mShape;
    private int mShapeMode = 0;

    public ShapedImageView(Context context) {
        super(context);
        init(null);
    }

    public ShapedImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet);
    }

    public ShapedImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        if (VERSION.SDK_INT >= 11) {
            setLayerType(2, null);
        }
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ShapedImageView);
            this.mShapeMode = obtainStyledAttributes.getInt(1, 0);
            this.mRadius = obtainStyledAttributes.getDimension(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setFilterBitmap(true);
        this.mPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mPaint.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            int i5 = this.mShapeMode;
            if (i5 != 1 && i5 == 2) {
                this.mRadius = ((float) Math.min(getWidth(), getHeight())) / 2.0f;
            }
            if (this.mShape == null) {
                float[] fArr = new float[8];
                Arrays.fill(fArr, this.mRadius);
                this.mShape = new RoundRectShape(fArr, null, null);
            }
            this.mShape.resize((float) getWidth(), (float) getHeight());
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int saveCount = canvas.getSaveCount();
        canvas.save();
        super.onDraw(canvas);
        int i = this.mShapeMode;
        if (i == 1 || i == 2) {
            Shape shape = this.mShape;
            if (shape != null) {
                shape.draw(canvas, this.mPaint);
            }
        }
        canvas.restoreToCount(saveCount);
    }
}
