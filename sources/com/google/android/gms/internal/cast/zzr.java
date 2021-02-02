package com.google.android.gms.internal.cast;

import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.IntroductoryOverlay.Builder;
import com.google.android.gms.cast.framework.IntroductoryOverlay.OnOverlayDismissedListener;
import com.google.android.gms.cast.framework.IntroductoryOverlay.zza;
import com.google.android.gms.cast.framework.R;

public final class zzr extends RelativeLayout implements IntroductoryOverlay {
    private Activity zzhy;
    private OnOverlayDismissedListener zzic;
    private final boolean zzit;
    private boolean zziv;
    private int zziy;
    private final zzu zziz;

    public zzr(Builder builder) {
        this(builder, null, R.attr.castIntroOverlayStyle);
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    private zzr(Builder builder, AttributeSet attributeSet, int i) {
        super(builder.getActivity(), null, i);
        this.zzhy = builder.getActivity();
        this.zzit = builder.zzaf();
        this.zzic = builder.zzad();
        TypedArray obtainStyledAttributes = this.zzhy.getTheme().obtainStyledAttributes(null, R.styleable.CastIntroOverlay, i, R.style.CastIntroOverlay);
        if (builder.zzac() != null) {
            Rect rect = new Rect();
            builder.zzac().getGlobalVisibleRect(rect);
            this.zziz = new zzu(null);
            this.zziz.x = rect.centerX();
            this.zziz.y = rect.centerY();
            zzu zzu = this.zziz;
            PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(Mode.MULTIPLY);
            Paint paint = new Paint();
            paint.setColor(-1);
            paint.setAlpha(0);
            paint.setXfermode(porterDuffXfermode);
            paint.setAntiAlias(true);
            zzu.zzjc = paint;
            this.zziz.zzjd = builder.zzai();
            if (this.zziz.zzjd == 0.0f) {
                this.zziz.zzjd = obtainStyledAttributes.getDimension(R.styleable.CastIntroOverlay_castFocusRadius, 0.0f);
            }
        } else {
            this.zziz = null;
        }
        LayoutInflater.from(this.zzhy).inflate(R.layout.cast_intro_overlay, this);
        this.zziy = builder.zzae();
        if (this.zziy == 0) {
            this.zziy = obtainStyledAttributes.getColor(R.styleable.CastIntroOverlay_castBackgroundColor, Color.argb(0, 0, 0, 0));
        }
        TextView textView = (TextView) findViewById(R.id.textTitle);
        if (!TextUtils.isEmpty(builder.zzag())) {
            textView.setText(builder.zzag());
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastIntroOverlay_castTitleTextAppearance, 0);
            if (resourceId != 0) {
                textView.setTextAppearance(this.zzhy, resourceId);
            }
        }
        String zzah = builder.zzah();
        if (TextUtils.isEmpty(zzah)) {
            zzah = obtainStyledAttributes.getString(R.styleable.CastIntroOverlay_castButtonText);
        }
        int color = obtainStyledAttributes.getColor(R.styleable.CastIntroOverlay_castButtonBackgroundColor, Color.argb(0, 0, 0, 0));
        Button button = (Button) findViewById(R.id.button);
        button.setText(zzah);
        button.getBackground().setColorFilter(color, Mode.MULTIPLY);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.CastIntroOverlay_castButtonTextAppearance, 0);
        if (resourceId2 != 0) {
            button.setTextAppearance(this.zzhy, resourceId2);
        }
        button.setOnClickListener(new zzs(this));
        obtainStyledAttributes.recycle();
        setFitsSystemWindows(true);
    }

    public final void show() {
        Activity activity = this.zzhy;
        if (activity == null || zzn.zzg(activity)) {
            return;
        }
        if (!this.zzit || !zza.zze(this.zzhy)) {
            if (!this.zziv) {
                this.zziv = true;
                ((ViewGroup) this.zzhy.getWindow().getDecorView()).addView(this);
            }
            return;
        }
        this.zzhy = null;
        this.zzic = null;
    }

    public final void remove() {
        Activity activity = this.zzhy;
        if (activity != null) {
            ((ViewGroup) activity.getWindow().getDecorView()).removeView(this);
            this.zzhy = null;
        }
        this.zzic = null;
    }

    /* access modifiers changed from: protected */
    public final void dispatchDraw(Canvas canvas) {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        canvas2.drawColor(this.zziy);
        zzu zzu = this.zziz;
        if (zzu != null) {
            canvas2.drawCircle((float) zzu.x, (float) this.zziz.y, this.zziz.zzjd, this.zziz.zzjc);
        }
        canvas.drawBitmap(createBitmap, 0.0f, 0.0f, null);
        createBitmap.recycle();
        super.dispatchDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public final void onDetachedFromWindow() {
        if (this.zzhy != null) {
            this.zzhy = null;
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: private */
    public final void zzap() {
        zza.zzd(this.zzhy);
        OnOverlayDismissedListener onOverlayDismissedListener = this.zzic;
        if (onOverlayDismissedListener != null) {
            onOverlayDismissedListener.onOverlayDismissed();
            this.zzic = null;
        }
        remove();
    }
}
