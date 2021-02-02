package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.Util;

public class ChunkedInputFilter extends FilteredDataEmitter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int mChunkLength = 0;
    private int mChunkLengthRemaining = 0;
    private State mState = State.CHUNK_LEN;
    ByteBufferList pending = new ByteBufferList();

    private enum State {
        CHUNK_LEN,
        CHUNK_LEN_CR,
        CHUNK_LEN_CRLF,
        CHUNK,
        CHUNK_CR,
        CHUNK_CRLF,
        COMPLETE
    }

    private boolean checkByte(char c, char c2) {
        if (c == c2) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(c2);
        sb.append(" was expected, got ");
        sb.append(c);
        report(new ChunkedDataException(sb.toString()));
        return false;
    }

    private boolean checkLF(char c) {
        return checkByte(c, 10);
    }

    private boolean checkCR(char c) {
        return checkByte(c, 13);
    }

    /* access modifiers changed from: protected */
    public void report(Exception exc) {
        if (exc == null && this.mState != State.COMPLETE) {
            exc = new ChunkedDataException("chunked input ended before final chunk");
        }
        super.report(exc);
    }

    public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        while (byteBufferList.remaining() > 0) {
            try {
                switch (this.mState) {
                    case CHUNK_LEN:
                        char byteChar = byteBufferList.getByteChar();
                        if (byteChar == 13) {
                            this.mState = State.CHUNK_LEN_CR;
                        } else {
                            this.mChunkLength *= 16;
                            if (byteChar >= 'a' && byteChar <= 'f') {
                                this.mChunkLength += (byteChar - 'a') + 10;
                            } else if (byteChar >= '0' && byteChar <= '9') {
                                this.mChunkLength += byteChar - '0';
                            } else if (byteChar < 'A' || byteChar > 'F') {
                                StringBuilder sb = new StringBuilder();
                                sb.append("invalid chunk length: ");
                                sb.append(byteChar);
                                report(new ChunkedDataException(sb.toString()));
                                return;
                            } else {
                                this.mChunkLength += (byteChar - 'A') + 10;
                            }
                        }
                        this.mChunkLengthRemaining = this.mChunkLength;
                        break;
                    case CHUNK_LEN_CR:
                        if (checkLF(byteBufferList.getByteChar())) {
                            this.mState = State.CHUNK;
                            break;
                        } else {
                            return;
                        }
                    case CHUNK:
                        int min = Math.min(this.mChunkLengthRemaining, byteBufferList.remaining());
                        this.mChunkLengthRemaining -= min;
                        if (this.mChunkLengthRemaining == 0) {
                            this.mState = State.CHUNK_CR;
                        }
                        if (min != 0) {
                            byteBufferList.get(this.pending, min);
                            Util.emitAllData(this, this.pending);
                            break;
                        } else {
                            break;
                        }
                    case CHUNK_CR:
                        if (checkCR(byteBufferList.getByteChar())) {
                            this.mState = State.CHUNK_CRLF;
                            break;
                        } else {
                            return;
                        }
                    case CHUNK_CRLF:
                        if (checkLF(byteBufferList.getByteChar())) {
                            if (this.mChunkLength > 0) {
                                this.mState = State.CHUNK_LEN;
                            } else {
                                this.mState = State.COMPLETE;
                                report(null);
                            }
                            this.mChunkLength = 0;
                            break;
                        } else {
                            return;
                        }
                    case COMPLETE:
                        return;
                }
            } catch (Exception e) {
                report(e);
            }
        }
    }
}
