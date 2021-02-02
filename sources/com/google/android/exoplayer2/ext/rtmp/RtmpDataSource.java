package com.google.android.exoplayer2.ext.rtmp;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.upstream.BaseDataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import java.io.IOException;
import net.butterflytv.rtmp_client.RtmpClient;
import net.butterflytv.rtmp_client.RtmpClient.RtmpIOException;

public final class RtmpDataSource extends BaseDataSource {
    private RtmpClient rtmpClient;
    private Uri uri;

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.rtmp");
    }

    public RtmpDataSource() {
        super(true);
    }

    @Deprecated
    public RtmpDataSource(@Nullable TransferListener transferListener) {
        this();
        if (transferListener != null) {
            addTransferListener(transferListener);
        }
    }

    public long open(DataSpec dataSpec) throws RtmpIOException {
        transferInitializing(dataSpec);
        this.rtmpClient = new RtmpClient();
        this.rtmpClient.open(dataSpec.uri.toString(), false);
        this.uri = dataSpec.uri;
        transferStarted(dataSpec);
        return -1;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.rtmpClient.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        bytesTransferred(read);
        return read;
    }

    public void close() {
        if (this.uri != null) {
            this.uri = null;
            transferEnded();
        }
        RtmpClient rtmpClient2 = this.rtmpClient;
        if (rtmpClient2 != null) {
            rtmpClient2.close();
            this.rtmpClient = null;
        }
    }

    public Uri getUri() {
        return this.uri;
    }
}
