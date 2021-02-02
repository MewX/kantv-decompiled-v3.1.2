package net.butterflytv.rtmp_client;

import java.io.IOException;

public class RtmpClient {
    public static final int OPEN_SUCCESS = 1;
    private long rtmpPointer = 0;

    public static class RtmpIOException extends IOException {
        public static final int OPEN_ALLOC = -1;
        public static final int OPEN_CONNECT = -3;
        public static final int OPEN_CONNECT_STREAM = -4;
        public static final int OPEN_SETUP_URL = -2;
        public final int errorCode;

        public RtmpIOException(int i) {
            this.errorCode = i;
        }
    }

    private native long nativeAlloc();

    private native void nativeClose(long j);

    private native boolean nativeIsConnected(long j);

    private native int nativeOpen(String str, boolean z, long j);

    private native boolean nativePause(boolean z, long j);

    private native int nativeRead(byte[] bArr, int i, int i2, long j) throws IOException;

    private native int nativeWrite(byte[] bArr, long j) throws IOException;

    static {
        System.loadLibrary("rtmp-jni");
    }

    public void open(String str, boolean z) throws RtmpIOException {
        this.rtmpPointer = nativeAlloc();
        int nativeOpen = nativeOpen(str, z, this.rtmpPointer);
        if (nativeOpen != 1) {
            this.rtmpPointer = 0;
            throw new RtmpIOException(nativeOpen);
        }
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        return nativeRead(bArr, i, i2, this.rtmpPointer);
    }

    public int write(byte[] bArr) throws IOException {
        return nativeWrite(bArr, this.rtmpPointer);
    }

    public boolean pause(boolean z) {
        return nativePause(z, this.rtmpPointer);
    }

    public boolean isConnected() {
        return nativeIsConnected(this.rtmpPointer);
    }

    public void close() {
        nativeClose(this.rtmpPointer);
    }
}
