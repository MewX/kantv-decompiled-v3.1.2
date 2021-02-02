package com.google.android.exoplayer2.source.hls;

import androidx.annotation.Nullable;
import java.io.IOException;

public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(@Nullable String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to bind a sample queue to TrackGroup with mime type ");
        sb.append(str);
        sb.append(".");
        super(sb.toString());
    }
}
