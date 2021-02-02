package com.kantv.kt_player.ExoPlayer.exo2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.HttpDataSource.BaseFactory;
import com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties;
import com.google.android.exoplayer2.upstream.TransferListener;

public final class GSYExoHttpDataSourceFactory extends BaseFactory {
    private final boolean allowCrossProtocolRedirects;
    private final int connectTimeoutMillis;
    @Nullable
    private final TransferListener listener;
    private final int readTimeoutMillis;
    private final String userAgent;

    public GSYExoHttpDataSourceFactory(String str) {
        this(str, null);
    }

    public GSYExoHttpDataSourceFactory(String str, @Nullable TransferListener transferListener) {
        this(str, transferListener, 8000, 8000, false);
    }

    public GSYExoHttpDataSourceFactory(String str, int i, int i2, boolean z) {
        this(str, null, i, i2, z);
    }

    public GSYExoHttpDataSourceFactory(String str, @Nullable TransferListener transferListener, int i, int i2, boolean z) {
        this.userAgent = str;
        this.listener = transferListener;
        this.connectTimeoutMillis = i;
        this.readTimeoutMillis = i2;
        this.allowCrossProtocolRedirects = z;
    }

    /* access modifiers changed from: protected */
    public GSYExoHttpDataSource createDataSourceInternal(RequestProperties requestProperties) {
        GSYExoHttpDataSource gSYExoHttpDataSource = new GSYExoHttpDataSource(this.userAgent, null, this.connectTimeoutMillis, this.readTimeoutMillis, this.allowCrossProtocolRedirects, requestProperties);
        TransferListener transferListener = this.listener;
        if (transferListener != null) {
            gSYExoHttpDataSource.addTransferListener(transferListener);
        }
        return gSYExoHttpDataSource;
    }
}
