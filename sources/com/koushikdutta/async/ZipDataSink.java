package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ZipDataSink extends FilteredDataSink {
    ByteArrayOutputStream bout = new ByteArrayOutputStream();
    ZipOutputStream zop = new ZipOutputStream(this.bout);

    public ZipDataSink(DataSink dataSink) {
        super(dataSink);
    }

    public void putNextEntry(ZipEntry zipEntry) throws IOException {
        this.zop.putNextEntry(zipEntry);
    }

    public void closeEntry() throws IOException {
        this.zop.closeEntry();
    }

    /* access modifiers changed from: protected */
    public void report(Exception exc) {
        CompletedCallback closedCallback = getClosedCallback();
        if (closedCallback != null) {
            closedCallback.onCompleted(exc);
        }
    }

    public void end() {
        try {
            this.zop.close();
            setMaxBuffer(Integer.MAX_VALUE);
            write(new ByteBufferList());
            super.end();
        } catch (IOException e) {
            report(e);
        }
    }

    public ByteBufferList filter(ByteBufferList byteBufferList) {
        if (byteBufferList != null) {
            while (byteBufferList.size() > 0) {
                try {
                    ByteBuffer remove = byteBufferList.remove();
                    ByteBufferList.writeOutputStream(this.zop, remove);
                    ByteBufferList.reclaim(remove);
                } catch (IOException e) {
                    report(e);
                    if (byteBufferList != null) {
                        byteBufferList.recycle();
                    }
                    return null;
                } catch (Throwable th) {
                    if (byteBufferList != null) {
                        byteBufferList.recycle();
                    }
                    throw th;
                }
            }
        }
        ByteBufferList byteBufferList2 = new ByteBufferList(this.bout.toByteArray());
        this.bout.reset();
        if (byteBufferList != null) {
            byteBufferList.recycle();
        }
        return byteBufferList2;
    }
}
