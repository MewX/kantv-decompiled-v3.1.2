package com.google.android.exoplayer2.extractor.wav;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.WavUtil;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;

final class WavHeaderReader {
    private static final String TAG = "WavHeaderReader";

    private static final class ChunkHeader {
        public static final int SIZE_IN_BYTES = 8;
        public final int id;
        public final long size;

        private ChunkHeader(int i, long j) {
            this.id = i;
            this.size = j;
        }

        public static ChunkHeader peek(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws IOException, InterruptedException {
            extractorInput.peekFully(parsableByteArray.data, 0, 8);
            parsableByteArray.setPosition(0);
            return new ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
        }
    }

    public static WavHeader peek(ExtractorInput extractorInput) throws IOException, InterruptedException {
        Assertions.checkNotNull(extractorInput);
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        if (ChunkHeader.peek(extractorInput, parsableByteArray).id != WavUtil.RIFF_FOURCC) {
            return null;
        }
        extractorInput.peekFully(parsableByteArray.data, 0, 4);
        parsableByteArray.setPosition(0);
        int readInt = parsableByteArray.readInt();
        int i = WavUtil.WAVE_FOURCC;
        String str = TAG;
        if (readInt != i) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unsupported RIFF format: ");
            sb.append(readInt);
            Log.e(str, sb.toString());
            return null;
        }
        ChunkHeader peek = ChunkHeader.peek(extractorInput, parsableByteArray);
        while (peek.id != WavUtil.FMT_FOURCC) {
            extractorInput.advancePeekPosition((int) peek.size);
            peek = ChunkHeader.peek(extractorInput, parsableByteArray);
        }
        Assertions.checkState(peek.size >= 16);
        extractorInput.peekFully(parsableByteArray.data, 0, 16);
        parsableByteArray.setPosition(0);
        int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readLittleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readLittleEndianUnsignedShort3 = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedShort4 = parsableByteArray.readLittleEndianUnsignedShort();
        int i2 = (readLittleEndianUnsignedShort2 * readLittleEndianUnsignedShort4) / 8;
        if (readLittleEndianUnsignedShort3 == i2) {
            int encodingForType = WavUtil.getEncodingForType(readLittleEndianUnsignedShort, readLittleEndianUnsignedShort4);
            if (encodingForType == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unsupported WAV format: ");
                sb2.append(readLittleEndianUnsignedShort4);
                sb2.append(" bit/sample, type ");
                sb2.append(readLittleEndianUnsignedShort);
                Log.e(str, sb2.toString());
                return null;
            }
            extractorInput.advancePeekPosition(((int) peek.size) - 16);
            WavHeader wavHeader = new WavHeader(readLittleEndianUnsignedShort2, readLittleEndianUnsignedIntToInt, readLittleEndianUnsignedIntToInt2, readLittleEndianUnsignedShort3, readLittleEndianUnsignedShort4, encodingForType);
            return wavHeader;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Expected block alignment: ");
        sb3.append(i2);
        sb3.append("; got: ");
        sb3.append(readLittleEndianUnsignedShort3);
        throw new ParserException(sb3.toString());
    }

    public static void skipToData(ExtractorInput extractorInput, WavHeader wavHeader) throws IOException, InterruptedException {
        Assertions.checkNotNull(extractorInput);
        Assertions.checkNotNull(wavHeader);
        extractorInput.resetPeekPosition();
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        ChunkHeader peek = ChunkHeader.peek(extractorInput, parsableByteArray);
        while (true) {
            int i = peek.id;
            int i2 = WavUtil.DATA_FOURCC;
            String str = TAG;
            if (i != i2) {
                if (!(peek.id == WavUtil.RIFF_FOURCC || peek.id == WavUtil.FMT_FOURCC)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Ignoring unknown WAV chunk: ");
                    sb.append(peek.id);
                    Log.w(str, sb.toString());
                }
                long j = peek.size + 8;
                if (peek.id == WavUtil.RIFF_FOURCC) {
                    j = 12;
                }
                if (j <= 2147483647L) {
                    extractorInput.skipFully((int) j);
                    peek = ChunkHeader.peek(extractorInput, parsableByteArray);
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Chunk is too large (~2GB+) to skip; id: ");
                    sb2.append(peek.id);
                    throw new ParserException(sb2.toString());
                }
            } else {
                extractorInput.skipFully(8);
                int position = (int) extractorInput.getPosition();
                long j2 = ((long) position) + peek.size;
                long length = extractorInput.getLength();
                if (length != -1 && j2 > length) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Data exceeds input length: ");
                    sb3.append(j2);
                    sb3.append(", ");
                    sb3.append(length);
                    Log.w(str, sb3.toString());
                    j2 = length;
                }
                wavHeader.setDataBounds(position, j2);
                return;
            }
        }
    }

    private WavHeaderReader() {
    }
}
