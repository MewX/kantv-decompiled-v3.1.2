package com.koushikdutta.async.stream;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.WritableCallback;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class OutputStreamDataSink implements DataSink {
    Exception closeException;
    boolean closeReported;
    CompletedCallback mClosedCallback;
    OutputStream mStream;
    WritableCallback mWritable;
    WritableCallback outputStreamCallback;
    AsyncServer server;

    public OutputStreamDataSink(AsyncServer asyncServer) {
        this(asyncServer, null);
    }

    public void end() {
        try {
            if (this.mStream != null) {
                this.mStream.close();
            }
            reportClose(null);
        } catch (IOException e) {
            reportClose(e);
        }
    }

    public OutputStreamDataSink(AsyncServer asyncServer, OutputStream outputStream) {
        this.server = asyncServer;
        setOutputStream(outputStream);
    }

    public void setOutputStream(OutputStream outputStream) {
        this.mStream = outputStream;
    }

    public OutputStream getOutputStream() throws IOException {
        return this.mStream;
    }

    public void write(ByteBufferList byteBufferList) {
        while (byteBufferList.size() > 0) {
            try {
                ByteBuffer remove = byteBufferList.remove();
                getOutputStream().write(remove.array(), remove.arrayOffset() + remove.position(), remove.remaining());
                ByteBufferList.reclaim(remove);
            } catch (IOException e) {
                reportClose(e);
            } catch (Throwable th) {
                byteBufferList.recycle();
                throw th;
            }
        }
        byteBufferList.recycle();
    }

    public void setWriteableCallback(WritableCallback writableCallback) {
        this.mWritable = writableCallback;
    }

    public WritableCallback getWriteableCallback() {
        return this.mWritable;
    }

    public boolean isOpen() {
        return this.closeReported;
    }

    public void reportClose(Exception exc) {
        if (!this.closeReported) {
            this.closeReported = true;
            this.closeException = exc;
            CompletedCallback completedCallback = this.mClosedCallback;
            if (completedCallback != null) {
                completedCallback.onCompleted(this.closeException);
            }
        }
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        this.mClosedCallback = completedCallback;
    }

    public CompletedCallback getClosedCallback() {
        return this.mClosedCallback;
    }

    public AsyncServer getServer() {
        return this.server;
    }

    public void setOutputStreamWritableCallback(WritableCallback writableCallback) {
        this.outputStreamCallback = writableCallback;
    }
}
