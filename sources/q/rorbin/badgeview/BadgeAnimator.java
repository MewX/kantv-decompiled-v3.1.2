package q.rorbin.badgeview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.util.Random;

public class BadgeAnimator extends ValueAnimator {
    private BitmapFragment[][] mFragments;
    /* access modifiers changed from: private */
    public WeakReference<QBadgeView> mWeakBadge;

    private class BitmapFragment {
        int color;
        int maxSize;
        Paint paint = new Paint();
        Random random;
        float size;
        float x;
        float y;

        public BitmapFragment() {
            this.paint.setAntiAlias(true);
            this.paint.setStyle(Style.FILL);
            this.random = new Random();
        }

        public void updata(float f, Canvas canvas) {
            this.paint.setColor(this.color);
            this.x += ((float) this.random.nextInt(this.maxSize)) * 0.1f * (this.random.nextFloat() - 0.5f);
            this.y += ((float) this.random.nextInt(this.maxSize)) * 0.1f * (this.random.nextFloat() - 0.5f);
            float f2 = this.x;
            float f3 = this.y;
            float f4 = this.size;
            canvas.drawCircle(f2, f3, f4 - (f * f4), this.paint);
        }
    }

    public BadgeAnimator(Bitmap bitmap, PointF pointF, QBadgeView qBadgeView) {
        this.mWeakBadge = new WeakReference<>(qBadgeView);
        setFloatValues(new float[]{0.0f, 1.0f});
        setDuration(500);
        this.mFragments = getFragments(bitmap, pointF);
        addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                QBadgeView qBadgeView = (QBadgeView) BadgeAnimator.this.mWeakBadge.get();
                if (qBadgeView == null || !qBadgeView.isShown()) {
                    BadgeAnimator.this.cancel();
                } else {
                    qBadgeView.invalidate();
                }
            }
        });
        addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                QBadgeView qBadgeView = (QBadgeView) BadgeAnimator.this.mWeakBadge.get();
                if (qBadgeView != null) {
                    qBadgeView.reset();
                }
            }
        });
    }

    public void draw(Canvas canvas) {
        for (int i = 0; i < this.mFragments.length; i++) {
            int i2 = 0;
            while (true) {
                BitmapFragment[][] bitmapFragmentArr = this.mFragments;
                if (i2 >= bitmapFragmentArr[i].length) {
                    break;
                }
                bitmapFragmentArr[i][i2].updata(Float.parseFloat(getAnimatedValue().toString()), canvas);
                i2++;
            }
        }
    }

    private BitmapFragment[][] getFragments(Bitmap bitmap, PointF pointF) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float min = ((float) Math.min(width, height)) / 6.0f;
        float width2 = pointF.x - (((float) bitmap.getWidth()) / 2.0f);
        float height2 = pointF.y - (((float) bitmap.getHeight()) / 2.0f);
        BitmapFragment[][] bitmapFragmentArr = (BitmapFragment[][]) Array.newInstance(BitmapFragment.class, new int[]{(int) (((float) height) / min), (int) (((float) width) / min)});
        for (int i = 0; i < bitmapFragmentArr.length; i++) {
            for (int i2 = 0; i2 < bitmapFragmentArr[i].length; i2++) {
                BitmapFragment bitmapFragment = new BitmapFragment();
                float f = ((float) i2) * min;
                float f2 = ((float) i) * min;
                bitmapFragment.color = bitmap.getPixel((int) f, (int) f2);
                bitmapFragment.x = f + width2;
                bitmapFragment.y = f2 + height2;
                bitmapFragment.size = min;
                bitmapFragment.maxSize = Math.max(width, height);
                bitmapFragmentArr[i][i2] = bitmapFragment;
            }
        }
        bitmap.recycle();
        return bitmapFragmentArr;
    }
}
