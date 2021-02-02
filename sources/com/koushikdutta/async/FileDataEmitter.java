package com.koushikdutta.async;

import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.util.StreamUtility;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class FileDataEmitter extends DataEmitterBase {
    DataCallback callback;
    FileChannel channel;
    File file;
    boolean paused;
    ByteBufferList pending = new ByteBufferList();
    Runnable pumper = new Runnable() {
        public void run() {
            try {
                if (FileDataEmitter.this.channel == null) {
                    FileDataEmitter.this.channel = new FileInputStream(FileDataEmitter.this.file).getChannel();
                }
                if (!FileDataEmitter.this.pending.isEmpty()) {
                    Util.emitAllData(FileDataEmitter.this, FileDataEmitter.this.pending);
                    if (!FileDataEmitter.this.pending.isEmpty()) {
                        return;
                    }
                }
                do {
                    ByteBuffer obtain = ByteBufferList.obtain(8192);
                    if (-1 != FileDataEmitter.this.channel.read(obtain)) {
                        obtain.flip();
                        FileDataEmitter.this.pending.add(obtain);
                        Util.emitAllData(FileDataEmitter.this, FileDataEmitter.this.pending);
                        if (FileDataEmitter.this.pending.remaining() != 0) {
                            break;
                        }
                    } else {
                        FileDataEmitter.this.report(null);
                        return;
                    }
                } while (!FileDataEmitter.this.isPaused());
            } catch (Exception e) {
                FileDataEmitter.this.report(e);
            }
        }
    };
    AsyncServer server;

    public boolean isChunked() {
        return false;
    }

    public FileDataEmitter(AsyncServer asyncServer, File file2) {
        this.server = asyncServer;
        this.file = file2;
        this.paused = !asyncServer.isAffinityThread();
        if (!this.paused) {
            doResume();
        }
    }

    public void setDataCallback(DataCallback dataCallback) {
        this.callback = dataCallback;
    }

    public DataCallback getDataCallback() {
        return this.callback;
    }

    public void pause() {
        this.paused = true;
    }

    public void resume() {
        this.paused = false;
        doResume();
    }

    /* access modifiers changed from: protected */
    public void report(Exception exc) {
        StreamUtility.closeQuietly(this.channel);
        super.report(exc);
    }

    private void doResume() {
        this.server.post(this.pumper);
    }

    public boolean isPaused() {
        return this.paused;
    }

    public AsyncServer getServer() {
        return this.server;
    }

    public void close() {
        try {
            this.channel.close();
        } catch (Exception unused) {
        }
    }
}
