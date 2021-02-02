package com.koushikdutta.async.stream;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class InputStreamDataEmitter implements DataEmitter {
    DataCallback callback;
    CompletedCallback endCallback;
    InputStream inputStream;
    int mToAlloc = 0;
    boolean paused;
    ByteBufferList pending = new ByteBufferList();
    Runnable pumper = new Runnable() {
        public void run() {
            try {
                if (!InputStreamDataEmitter.this.pending.isEmpty()) {
                    InputStreamDataEmitter.this.getServer().run((Runnable) new Runnable() {
                        public void run() {
                            Util.emitAllData(InputStreamDataEmitter.this, InputStreamDataEmitter.this.pending);
                        }
                    });
                    if (!InputStreamDataEmitter.this.pending.isEmpty()) {
                        return;
                    }
                }
                do {
                    ByteBuffer obtain = ByteBufferList.obtain(Math.min(Math.max(InputStreamDataEmitter.this.mToAlloc, 4096), 262144));
                    int read = InputStreamDataEmitter.this.inputStream.read(obtain.array());
                    if (-1 != read) {
                        InputStreamDataEmitter.this.mToAlloc = read * 2;
                        obtain.limit(read);
                        InputStreamDataEmitter.this.pending.add(obtain);
                        InputStreamDataEmitter.this.getServer().run((Runnable) new Runnable() {
                            public void run() {
                                Util.emitAllData(InputStreamDataEmitter.this, InputStreamDataEmitter.this.pending);
                            }
                        });
                        if (InputStreamDataEmitter.this.pending.remaining() != 0) {
                            break;
                        }
                    } else {
                        InputStreamDataEmitter.this.report(null);
                        return;
                    }
                } while (!InputStreamDataEmitter.this.isPaused());
            } catch (Exception e) {
                InputStreamDataEmitter.this.report(e);
            }
        }
    };
    AsyncServer server;

    public String charset() {
        return null;
    }

    public boolean isChunked() {
        return false;
    }

    public InputStreamDataEmitter(AsyncServer asyncServer, InputStream inputStream2) {
        this.server = asyncServer;
        this.inputStream = inputStream2;
        doResume();
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

    /* access modifiers changed from: private */
    public void report(final Exception exc) {
        getServer().post(new Runnable() {
            public void run() {
                Exception e = exc;
                try {
                    InputStreamDataEmitter.this.inputStream.close();
                } catch (Exception e2) {
                    e = e2;
                }
                if (InputStreamDataEmitter.this.endCallback != null) {
                    InputStreamDataEmitter.this.endCallback.onCompleted(e);
                }
            }
        });
    }

    private void doResume() {
        new Thread(this.pumper).start();
    }

    public boolean isPaused() {
        return this.paused;
    }

    public void setEndCallback(CompletedCallback completedCallback) {
        this.endCallback = completedCallback;
    }

    public CompletedCallback getEndCallback() {
        return this.endCallback;
    }

    public AsyncServer getServer() {
        return this.server;
    }

    public void close() {
        report(null);
        try {
            this.inputStream.close();
        } catch (Exception unused) {
        }
    }
}
