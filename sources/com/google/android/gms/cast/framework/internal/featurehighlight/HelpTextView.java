package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.internal.cast.zzev;

@Keep
public class HelpTextView extends LinearLayout implements zzi {
    private TextView zzka;
    private TextView zzkb;

    @Keep
    public HelpTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Keep
    public View asView() {
        return this;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.zzka = (TextView) zzev.checkNotNull((TextView) findViewById(R.id.cast_featurehighlight_help_text_header_view));
        this.zzkb = (TextView) zzev.checkNotNull((TextView) findViewById(R.id.cast_featurehighlight_help_text_body_view));
    }

    @Keep
    public void setText(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        zza(this.zzka, charSequence);
        zza(this.zzkb, charSequence2);
    }

    private static void zza(TextView textView, @Nullable CharSequence charSequence) {
        textView.setText(charSequence);
        textView.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }
}
