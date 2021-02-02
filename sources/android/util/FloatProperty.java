package android.util;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class FloatProperty<T> extends Property<T, Float> {
    @NonNull
    public abstract Float get(@NonNull T t);

    public abstract void setValue(@NonNull T t, float f);

    public FloatProperty(@Nullable String str) {
        super(Float.class, str);
    }

    @SuppressLint({"NewApi"})
    public final void set(@NonNull T t, @NonNull Float f) {
        setValue(t, f.floatValue());
    }
}
