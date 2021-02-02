package android.util;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class IntProperty<T> extends Property<T, Integer> {
    @NonNull
    public abstract Integer get(@NonNull T t);

    public abstract void setValue(@NonNull T t, int i);

    public IntProperty(@Nullable String str) {
        super(Integer.class, str);
    }

    @SuppressLint({"NewApi"})
    public final void set(@NonNull T t, @NonNull Integer num) {
        setValue(t, num.intValue());
    }
}
