package pl.droidsonroids.gif;

import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import pl.droidsonroids.gif.annotations.Beta;

@Beta
public class GifOptions {
    boolean inIsOpaque;
    char inSampleSize;

    public GifOptions() {
        reset();
    }

    private void reset() {
        this.inSampleSize = 1;
        this.inIsOpaque = false;
    }

    public void setInSampleSize(@IntRange(from = 1, to = 65535) int i) {
        if (i < 1 || i > 65535) {
            this.inSampleSize = 1;
        } else {
            this.inSampleSize = (char) i;
        }
    }

    public void setInIsOpaque(boolean z) {
        this.inIsOpaque = z;
    }

    /* access modifiers changed from: 0000 */
    public void setFrom(@Nullable GifOptions gifOptions) {
        if (gifOptions == null) {
            reset();
            return;
        }
        this.inIsOpaque = gifOptions.inIsOpaque;
        this.inSampleSize = gifOptions.inSampleSize;
    }
}
