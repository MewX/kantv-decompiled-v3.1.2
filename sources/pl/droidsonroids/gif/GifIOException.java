package pl.droidsonroids.gif;

import androidx.annotation.NonNull;
import java.io.IOException;

public class GifIOException extends IOException {
    private static final long serialVersionUID = 13038402904505L;
    private final String mErrnoMessage;
    @NonNull
    public final GifError reason;

    public String getMessage() {
        if (this.mErrnoMessage == null) {
            return this.reason.getFormattedDescription();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.reason.getFormattedDescription());
        sb.append(": ");
        sb.append(this.mErrnoMessage);
        return sb.toString();
    }

    private GifIOException(int i, String str) {
        this.reason = GifError.fromCode(i);
        this.mErrnoMessage = str;
    }

    static GifIOException fromCode(int i) {
        if (i == GifError.NO_ERROR.errorCode) {
            return null;
        }
        return new GifIOException(i, null);
    }
}
