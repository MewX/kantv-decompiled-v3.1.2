package com.google.android.exoplayer2.ext.rtmp;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSource.Factory;
import com.google.android.exoplayer2.upstream.TransferListener;

public final class RtmpDataSourceFactory implements Factory {
    @Nullable
    private final TransferListener listener;

    public RtmpDataSourceFactory() {
        this(null);
    }

    public RtmpDataSourceFactory(@Nullable TransferListener transferListener) {
        this.listener = transferListener;
    }

    public DataSource createDataSource() {
        RtmpDataSource rtmpDataSource = new RtmpDataSource();
        TransferListener transferListener = this.listener;
        if (transferListener != null) {
            rtmpDataSource.addTransferListener(transferListener);
        }
        return rtmpDataSource;
    }
}
