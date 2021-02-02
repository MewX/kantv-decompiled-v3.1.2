package com.transitionseverywhere.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.util.Property;
import androidx.annotation.NonNull;

@TargetApi(14)
public abstract class IntProperty<T> extends Property<T, Integer> {
    public abstract void setValue(@NonNull T t, int i);

    public IntProperty() {
        super(Integer.class, null);
    }

    public final void set(@NonNull T t, @NonNull Integer num) {
        setValue(t, num.intValue());
    }

    @NonNull
    public Integer get(T t) {
        return Integer.valueOf(0);
    }

    @SuppressLint({"NewApi"})
    @NonNull
    public Property<T, Integer> optimize() {
        return VERSION.SDK_INT > 18 ? new android.util.IntProperty<T>(null) {
            public void setValue(@NonNull T t, int i) {
                IntProperty.this.setValue(t, i);
            }

            @NonNull
            public Integer get(@NonNull T t) {
                return IntProperty.this.get(t);
            }
        } : this;
    }
}
