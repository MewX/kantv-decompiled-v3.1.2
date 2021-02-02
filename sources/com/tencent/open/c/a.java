package com.tencent.open.c;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View.MeasureSpec;
import android.widget.RelativeLayout;

/* compiled from: ProGuard */
public class a extends RelativeLayout {
    private static final String a = "com.tencent.open.c.a";
    private Rect b = null;
    private boolean c = false;
    private C0011a d = null;

    /* renamed from: com.tencent.open.c.a$a reason: collision with other inner class name */
    /* compiled from: ProGuard */
    public interface C0011a {
        void a();

        void a(int i);
    }

    public a(Context context) {
        super(context);
        if (this.b == null) {
            this.b = new Rect();
        }
    }

    public void a(C0011a aVar) {
        this.d = aVar;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i2);
        Activity activity = (Activity) getContext();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(this.b);
        int height = (activity.getWindowManager().getDefaultDisplay().getHeight() - this.b.top) - size;
        C0011a aVar = this.d;
        if (!(aVar == null || size == 0)) {
            if (height > 100) {
                aVar.a((Math.abs(this.b.height()) - getPaddingBottom()) - getPaddingTop());
            } else {
                aVar.a();
            }
        }
        super.onMeasure(i, i2);
    }
}
