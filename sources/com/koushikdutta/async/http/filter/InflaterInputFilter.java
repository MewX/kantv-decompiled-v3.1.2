package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.Util;
import java.nio.ByteBuffer;
import java.util.zip.Inflater;

public class InflaterInputFilter extends FilteredDataEmitter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Inflater mInflater;
    ByteBufferList transformed;

    /* access modifiers changed from: protected */
    public void report(Exception exc) {
        this.mInflater.end();
        if (exc != null && this.mInflater.getRemaining() > 0) {
            exc = new DataRemainingException("data still remaining in inflater", exc);
        }
        super.report(exc);
    }

    public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        try {
            ByteBuffer obtain = ByteBufferList.obtain(byteBufferList.remaining() * 2);
            while (byteBufferList.size() > 0) {
                ByteBuffer remove = byteBufferList.remove();
                if (remove.hasRemaining()) {
                    remove.remaining();
                    this.mInflater.setInput(remove.array(), remove.arrayOffset() + remove.position(), remove.remaining());
                    do {
                        obtain.position(obtain.position() + this.mInflater.inflate(obtain.array(), obtain.arrayOffset() + obtain.position(), obtain.remaining()));
                        if (!obtain.hasRemaining()) {
                            obtain.flip();
                            this.transformed.add(obtain);
                            obtain = ByteBufferList.obtain(obtain.capacity() * 2);
                        }
                        if (this.mInflater.needsInput()) {
                            break;
                        }
                    } while (!this.mInflater.finished());
                }
                ByteBufferList.reclaim(remove);
            }
            obtain.flip();
            this.transformed.add(obtain);
            Util.emitAllData(this, this.transformed);
        } catch (Exception e) {
            report(e);
        }
    }

    public InflaterInputFilter() {
        this(new Inflater());
    }

    public InflaterInputFilter(Inflater inflater) {
        this.transformed = new ByteBufferList();
        this.mInflater = inflater;
    }
}
