package com.koushikdutta.async.http.filter;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.PushParser;
import com.koushikdutta.async.PushParser.ParseCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public class GZIPInputFilter extends InflaterInputFilter {
    private static final int FCOMMENT = 16;
    private static final int FEXTRA = 4;
    private static final int FHCRC = 2;
    private static final int FNAME = 8;
    protected CRC32 crc = new CRC32();
    boolean mNeedsHeader = true;

    public static int unsignedToBytes(byte b) {
        return b & Draft_75.END_OF_FRAME;
    }

    static short peekShort(byte[] bArr, int i, ByteOrder byteOrder) {
        int i2;
        byte b;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            i2 = bArr[i] << 8;
            b = bArr[i + 1];
        } else {
            i2 = bArr[i + 1] << 8;
            b = bArr[i];
        }
        return (short) ((b & Draft_75.END_OF_FRAME) | i2);
    }

    public GZIPInputFilter() {
        super(new Inflater(true));
    }

    public void onDataAvailable(final DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        if (this.mNeedsHeader) {
            final PushParser pushParser = new PushParser(dataEmitter);
            pushParser.readByteArray(10, new ParseCallback<byte[]>() {
                int flags;
                boolean hcrc;

                public void parsed(byte[] bArr) {
                    short peekShort = GZIPInputFilter.peekShort(bArr, 0, ByteOrder.LITTLE_ENDIAN);
                    boolean z = true;
                    if (peekShort != -29921) {
                        GZIPInputFilter.this.report(new IOException(String.format(Locale.ENGLISH, "unknown format (magic number %x)", new Object[]{Short.valueOf(peekShort)})));
                        dataEmitter.setDataCallback(new NullDataCallback());
                        return;
                    }
                    this.flags = bArr[3];
                    if ((this.flags & 2) == 0) {
                        z = false;
                    }
                    this.hcrc = z;
                    if (this.hcrc) {
                        GZIPInputFilter.this.crc.update(bArr, 0, bArr.length);
                    }
                    if ((this.flags & 4) != 0) {
                        pushParser.readByteArray(2, new ParseCallback<byte[]>() {
                            public void parsed(byte[] bArr) {
                                if (AnonymousClass1.this.hcrc) {
                                    GZIPInputFilter.this.crc.update(bArr, 0, 2);
                                }
                                pushParser.readByteArray(GZIPInputFilter.peekShort(bArr, 0, ByteOrder.LITTLE_ENDIAN) & 65535, new ParseCallback<byte[]>() {
                                    public void parsed(byte[] bArr) {
                                        if (AnonymousClass1.this.hcrc) {
                                            GZIPInputFilter.this.crc.update(bArr, 0, bArr.length);
                                        }
                                        AnonymousClass1.this.next();
                                    }
                                });
                            }
                        });
                    } else {
                        next();
                    }
                }

                /* access modifiers changed from: private */
                public void next() {
                    PushParser pushParser = new PushParser(dataEmitter);
                    AnonymousClass2 r1 = new DataCallback() {
                        public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                            if (AnonymousClass1.this.hcrc) {
                                while (byteBufferList.size() > 0) {
                                    ByteBuffer remove = byteBufferList.remove();
                                    GZIPInputFilter.this.crc.update(remove.array(), remove.arrayOffset() + remove.position(), remove.remaining());
                                    ByteBufferList.reclaim(remove);
                                }
                            }
                            byteBufferList.recycle();
                            AnonymousClass1.this.done();
                        }
                    };
                    int i = this.flags;
                    if ((i & 8) != 0) {
                        pushParser.until(0, r1);
                    } else if ((i & 16) != 0) {
                        pushParser.until(0, r1);
                    } else {
                        done();
                    }
                }

                /* access modifiers changed from: private */
                public void done() {
                    if (this.hcrc) {
                        pushParser.readByteArray(2, new ParseCallback<byte[]>() {
                            public void parsed(byte[] bArr) {
                                if (((short) ((int) GZIPInputFilter.this.crc.getValue())) != GZIPInputFilter.peekShort(bArr, 0, ByteOrder.LITTLE_ENDIAN)) {
                                    GZIPInputFilter.this.report(new IOException("CRC mismatch"));
                                    return;
                                }
                                GZIPInputFilter.this.crc.reset();
                                GZIPInputFilter.this.mNeedsHeader = false;
                                GZIPInputFilter.this.setDataEmitter(dataEmitter);
                            }
                        });
                        return;
                    }
                    GZIPInputFilter gZIPInputFilter = GZIPInputFilter.this;
                    gZIPInputFilter.mNeedsHeader = false;
                    gZIPInputFilter.setDataEmitter(dataEmitter);
                }
            });
            return;
        }
        super.onDataAvailable(dataEmitter, byteBufferList);
    }
}
