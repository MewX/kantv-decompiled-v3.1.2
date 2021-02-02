package com.koushikdutta.async.http.spdy;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.avos.avospush.push.AVPushRouter;
import com.avos.avospush.session.SessionControlPacket.SessionControlOp;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.ProfileType;
import com.kantv.ui.utils.StatusCode;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.http.spdy.BitArray.FixedCapacity;
import com.samsung.multiscreen.Message;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jetty.http.HttpTokens;

final class HpackDraft08 {
    /* access modifiers changed from: private */
    public static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX = nameToFirstIndex();
    private static final int PREFIX_4_BITS = 15;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    /* access modifiers changed from: private */
    public static final Header[] STATIC_HEADER_TABLE;

    static final class Reader {
        private final List<Header> emittedHeaders = new ArrayList();
        BitArray emittedReferencedHeaders = new FixedCapacity();
        int headerCount = 0;
        Header[] headerTable = new Header[8];
        int headerTableByteCount = 0;
        private int maxHeaderTableByteCount;
        private int maxHeaderTableByteCountSetting;
        int nextHeaderIndex = (this.headerTable.length - 1);
        BitArray referencedHeaders = new FixedCapacity();
        private final ByteBufferList source = new ByteBufferList();

        Reader(int i) {
            this.maxHeaderTableByteCountSetting = i;
            this.maxHeaderTableByteCount = i;
        }

        public void refill(ByteBufferList byteBufferList) {
            byteBufferList.get(this.source);
        }

        /* access modifiers changed from: 0000 */
        public int maxHeaderTableByteCount() {
            return this.maxHeaderTableByteCount;
        }

        /* access modifiers changed from: 0000 */
        public void maxHeaderTableByteCountSetting(int i) {
            this.maxHeaderTableByteCountSetting = i;
            this.maxHeaderTableByteCount = this.maxHeaderTableByteCountSetting;
            adjustHeaderTableByteCount();
        }

        private void adjustHeaderTableByteCount() {
            int i = this.maxHeaderTableByteCount;
            int i2 = this.headerTableByteCount;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                clearHeaderTable();
            } else {
                evictToRecoverBytes(i2 - i);
            }
        }

        private void clearHeaderTable() {
            clearReferenceSet();
            Arrays.fill(this.headerTable, null);
            this.nextHeaderIndex = this.headerTable.length - 1;
            this.headerCount = 0;
            this.headerTableByteCount = 0;
        }

        private int evictToRecoverBytes(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.headerTable.length;
                while (true) {
                    length--;
                    if (length < this.nextHeaderIndex || i <= 0) {
                        this.referencedHeaders.shiftLeft(i2);
                        this.emittedReferencedHeaders.shiftLeft(i2);
                        Header[] headerArr = this.headerTable;
                        int i3 = this.nextHeaderIndex;
                        System.arraycopy(headerArr, i3 + 1, headerArr, i3 + 1 + i2, this.headerCount);
                        this.nextHeaderIndex += i2;
                    } else {
                        i -= this.headerTable[length].hpackSize;
                        this.headerTableByteCount -= this.headerTable[length].hpackSize;
                        this.headerCount--;
                        i2++;
                    }
                }
                this.referencedHeaders.shiftLeft(i2);
                this.emittedReferencedHeaders.shiftLeft(i2);
                Header[] headerArr2 = this.headerTable;
                int i32 = this.nextHeaderIndex;
                System.arraycopy(headerArr2, i32 + 1, headerArr2, i32 + 1 + i2, this.headerCount);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        /* access modifiers changed from: 0000 */
        public void readHeaders() throws IOException {
            while (this.source.hasRemaining()) {
                byte b = this.source.get() & Draft_75.END_OF_FRAME;
                if (b == 128) {
                    throw new IOException("index == 0");
                } else if ((b & 128) == 128) {
                    readIndexedHeader(readInt(b, 127) - 1);
                } else if (b == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((b & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(b, 63) - 1);
                } else if ((b & HttpTokens.SPACE) == 32) {
                    if ((b & 16) != 16) {
                        this.maxHeaderTableByteCount = readInt(b, 15);
                        int i = this.maxHeaderTableByteCount;
                        if (i < 0 || i > this.maxHeaderTableByteCountSetting) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Invalid header table byte count ");
                            sb.append(this.maxHeaderTableByteCount);
                            throw new IOException(sb.toString());
                        }
                        adjustHeaderTableByteCount();
                    } else if ((b & 15) == 0) {
                        clearReferenceSet();
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid header table state change ");
                        sb2.append(b);
                        throw new IOException(sb2.toString());
                    }
                } else if (b == 16 || b == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(b, 15) - 1);
                }
            }
        }

        private void clearReferenceSet() {
            this.referencedHeaders.clear();
            this.emittedReferencedHeaders.clear();
        }

        /* access modifiers changed from: 0000 */
        public void emitReferenceSet() {
            int length = this.headerTable.length;
            while (true) {
                length--;
                if (length == this.nextHeaderIndex) {
                    return;
                }
                if (this.referencedHeaders.get(length) && !this.emittedReferencedHeaders.get(length)) {
                    this.emittedHeaders.add(this.headerTable[length]);
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public List<Header> getAndReset() {
            ArrayList arrayList = new ArrayList(this.emittedHeaders);
            this.emittedHeaders.clear();
            this.emittedReferencedHeaders.clear();
            return arrayList;
        }

        private void readIndexedHeader(int i) throws IOException {
            if (isStaticHeader(i)) {
                int i2 = i - this.headerCount;
                if (i2 <= HpackDraft08.STATIC_HEADER_TABLE.length - 1) {
                    Header header = HpackDraft08.STATIC_HEADER_TABLE[i2];
                    if (this.maxHeaderTableByteCount == 0) {
                        this.emittedHeaders.add(header);
                    } else {
                        insertIntoHeaderTable(-1, header);
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Header index too large ");
                    sb.append(i2 + 1);
                    throw new IOException(sb.toString());
                }
            } else {
                int headerTableIndex = headerTableIndex(i);
                if (!this.referencedHeaders.get(headerTableIndex)) {
                    this.emittedHeaders.add(this.headerTable[headerTableIndex]);
                    this.emittedReferencedHeaders.set(headerTableIndex);
                }
                this.referencedHeaders.toggle(headerTableIndex);
            }
        }

        private int headerTableIndex(int i) {
            return this.nextHeaderIndex + 1 + i;
        }

        private void readLiteralHeaderWithoutIndexingIndexedName(int i) throws IOException {
            this.emittedHeaders.add(new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.emittedHeaders.add(new Header(HpackDraft08.checkLowercase(readByteString()), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingIndexedName(int i) throws IOException {
            insertIntoHeaderTable(-1, new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingNewName() throws IOException {
            insertIntoHeaderTable(-1, new Header(HpackDraft08.checkLowercase(readByteString()), readByteString()));
        }

        private ByteString getName(int i) {
            if (isStaticHeader(i)) {
                return HpackDraft08.STATIC_HEADER_TABLE[i - this.headerCount].name;
            }
            return this.headerTable[headerTableIndex(i)].name;
        }

        private boolean isStaticHeader(int i) {
            return i >= this.headerCount;
        }

        private void insertIntoHeaderTable(int i, Header header) {
            int i2 = header.hpackSize;
            if (i != -1) {
                i2 -= this.headerTable[headerTableIndex(i)].hpackSize;
            }
            int i3 = this.maxHeaderTableByteCount;
            if (i2 > i3) {
                clearHeaderTable();
                this.emittedHeaders.add(header);
                return;
            }
            int evictToRecoverBytes = evictToRecoverBytes((this.headerTableByteCount + i2) - i3);
            if (i == -1) {
                int i4 = this.headerCount + 1;
                Header[] headerArr = this.headerTable;
                if (i4 > headerArr.length) {
                    Header[] headerArr2 = new Header[(headerArr.length * 2)];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    if (headerArr2.length == 64) {
                        this.referencedHeaders = ((FixedCapacity) this.referencedHeaders).toVariableCapacity();
                        this.emittedReferencedHeaders = ((FixedCapacity) this.emittedReferencedHeaders).toVariableCapacity();
                    }
                    this.referencedHeaders.shiftLeft(this.headerTable.length);
                    this.emittedReferencedHeaders.shiftLeft(this.headerTable.length);
                    this.nextHeaderIndex = this.headerTable.length - 1;
                    this.headerTable = headerArr2;
                }
                int i5 = this.nextHeaderIndex;
                this.nextHeaderIndex = i5 - 1;
                this.referencedHeaders.set(i5);
                this.headerTable[i5] = header;
                this.headerCount++;
            } else {
                int headerTableIndex = i + headerTableIndex(i) + evictToRecoverBytes;
                this.referencedHeaders.set(headerTableIndex);
                this.headerTable[headerTableIndex] = header;
            }
            this.headerTableByteCount += i2;
        }

        private int readByte() throws IOException {
            return this.source.get() & Draft_75.END_OF_FRAME;
        }

        /* access modifiers changed from: 0000 */
        public int readInt(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int readByte = readByte();
                if ((readByte & 128) == 0) {
                    return i2 + (readByte << i4);
                }
                i2 += (readByte & 127) << i4;
                i4 += 7;
            }
        }

        /* access modifiers changed from: 0000 */
        public ByteString readByteString() throws IOException {
            int readByte = readByte();
            boolean z = (readByte & 128) == 128;
            int readInt = readInt(readByte, 127);
            if (z) {
                return ByteString.of(Huffman.get().decode(this.source.getBytes(readInt)));
            }
            return ByteString.of(this.source.getBytes(readInt));
        }
    }

    static final class Writer {
        Writer() {
        }

        /* access modifiers changed from: 0000 */
        public ByteBufferList writeHeaders(List<Header> list) throws IOException {
            ByteBufferList byteBufferList = new ByteBufferList();
            ByteBuffer obtain = ByteBufferList.obtain(8192);
            int size = list.size();
            ByteBuffer byteBuffer = obtain;
            for (int i = 0; i < size; i++) {
                if (byteBuffer.remaining() < byteBuffer.capacity() / 2) {
                    byteBuffer.flip();
                    byteBufferList.add(byteBuffer);
                    byteBuffer = ByteBufferList.obtain(byteBuffer.capacity() * 2);
                }
                ByteString asciiLowercase = ((Header) list.get(i)).name.toAsciiLowercase();
                Integer num = (Integer) HpackDraft08.NAME_TO_FIRST_INDEX.get(asciiLowercase);
                if (num != null) {
                    writeInt(byteBuffer, num.intValue() + 1, 15, 0);
                    writeByteString(byteBuffer, ((Header) list.get(i)).value);
                } else {
                    byteBuffer.put(0);
                    writeByteString(byteBuffer, asciiLowercase);
                    writeByteString(byteBuffer, ((Header) list.get(i)).value);
                }
            }
            byteBufferList.add(byteBuffer);
            return byteBufferList;
        }

        /* access modifiers changed from: 0000 */
        public void writeInt(ByteBuffer byteBuffer, int i, int i2, int i3) throws IOException {
            if (i < i2) {
                byteBuffer.put((byte) (i | i3));
                return;
            }
            byteBuffer.put((byte) (i3 | i2));
            int i4 = i - i2;
            while (i4 >= 128) {
                byteBuffer.put((byte) (128 | (i4 & 127)));
                i4 >>>= 7;
            }
            byteBuffer.put((byte) i4);
        }

        /* access modifiers changed from: 0000 */
        public void writeByteString(ByteBuffer byteBuffer, ByteString byteString) throws IOException {
            writeInt(byteBuffer, byteString.size(), 127, 0);
            byteBuffer.put(byteString.toByteArray());
        }
    }

    static {
        String str = "";
        STATIC_HEADER_TABLE = new Header[]{new Header(Header.TARGET_AUTHORITY, str), new Header(Header.TARGET_METHOD, "GET"), new Header(Header.TARGET_METHOD, "POST"), new Header(Header.TARGET_PATH, "/"), new Header(Header.TARGET_PATH, "/index.html"), new Header(Header.TARGET_SCHEME, "http"), new Header(Header.TARGET_SCHEME, "https"), new Header(Header.RESPONSE_STATUS, StatusCode.STATUS_OK), new Header(Header.RESPONSE_STATUS, "204"), new Header(Header.RESPONSE_STATUS, "206"), new Header(Header.RESPONSE_STATUS, "304"), new Header(Header.RESPONSE_STATUS, "400"), new Header(Header.RESPONSE_STATUS, StatusCode.STATUS_ERROR), new Header(Header.RESPONSE_STATUS, "500"), new Header("accept-charset", str), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", str), new Header("accept-ranges", str), new Header("accept", str), new Header("access-control-allow-origin", str), new Header("age", str), new Header("allow", str), new Header("authorization", str), new Header("cache-control", str), new Header("content-disposition", str), new Header("content-encoding", str), new Header("content-language", str), new Header("content-length", str), new Header("content-location", str), new Header("content-range", str), new Header("content-type", str), new Header("cookie", str), new Header("date", str), new Header("etag", str), new Header("expect", str), new Header("expires", str), new Header(ProfileType.FROM, str), new Header(Message.TARGET_HOST, str), new Header("if-match", str), new Header("if-modified-since", str), new Header("if-none-match", str), new Header("if-range", str), new Header("if-unmodified-since", str), new Header("last-modified", str), new Header("link", str), new Header(Param.LOCATION, str), new Header("max-forwards", str), new Header("proxy-authenticate", str), new Header("proxy-authorization", str), new Header("range", str), new Header("referer", str), new Header(SessionControlOp.RENEW_RTMTOKEN, str), new Header("retry-after", str), new Header(AVPushRouter.SERVER, str), new Header("set-cookie", str), new Header("strict-transport-security", str), new Header("transfer-encoding", str), new Header("user-agent", str), new Header("vary", str), new Header("via", str), new Header("www-authenticate", str)};
    }

    private HpackDraft08() {
    }

    private static Map<ByteString, Integer> nameToFirstIndex() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(STATIC_HEADER_TABLE.length);
        int i = 0;
        while (true) {
            Header[] headerArr = STATIC_HEADER_TABLE;
            if (i >= headerArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(headerArr[i].name)) {
                linkedHashMap.put(STATIC_HEADER_TABLE[i].name, Integer.valueOf(i));
            }
            i++;
        }
    }

    /* access modifiers changed from: private */
    public static ByteString checkLowercase(ByteString byteString) throws IOException {
        int size = byteString.size();
        int i = 0;
        while (i < size) {
            byte b = byteString.getByte(i);
            if (b < 65 || b > 90) {
                i++;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("PROTOCOL_ERROR response malformed: mixed case name: ");
                sb.append(byteString.utf8());
                throw new IOException(sb.toString());
            }
        }
        return byteString;
    }
}
