package butterknife;

import androidx.annotation.FontRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo.Scope;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface BindFont {

    @RestrictTo({Scope.LIBRARY})
    public @interface TypefaceStyle {
    }

    @TypefaceStyle
    int style() default 0;

    @FontRes
    int value();
}
