package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;

public class ContentLengthFilter extends FilteredDataEmitter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    long contentLength;
    long totalRead;
    ByteBufferList transformed = new ByteBufferList();

    public ContentLengthFilter(long j) {
        this.contentLength = j;
    }

    /* access modifiers changed from: protected */
    public void report(Exception exc) {
        if (exc == null && this.totalRead != this.contentLength) {
            StringBuilder sb = new StringBuilder();
            sb.append("End of data reached before content length was read: ");
            sb.append(this.totalRead);
            sb.append("/");
            sb.append(this.contentLength);
            sb.append(" Paused: ");
            sb.append(isPaused());
            exc = new PrematureDataEndException(sb.toString());
        }
        super.report(exc);
    }

    public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        byteBufferList.get(this.transformed, (int) Math.min(this.contentLength - this.totalRead, (long) byteBufferList.remaining()));
        int remaining = this.transformed.remaining();
        super.onDataAvailable(dataEmitter, this.transformed);
        this.totalRead += (long) (remaining - this.transformed.remaining());
        this.transformed.get(byteBufferList);
        if (this.totalRead == this.contentLength) {
            report(null);
        }
    }
}
