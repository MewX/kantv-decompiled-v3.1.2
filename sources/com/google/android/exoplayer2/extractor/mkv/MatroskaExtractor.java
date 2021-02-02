package com.google.android.exoplayer2.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmInitData.SchemeData;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekMap.Unseekable;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.TrackOutput.CryptoData;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import org.eclipse.jetty.http.HttpTokens;

public class MatroskaExtractor implements Extractor {
    private static final int BLOCK_STATE_DATA = 2;
    private static final int BLOCK_STATE_HEADER = 1;
    private static final int BLOCK_STATE_START = 0;
    private static final String CODEC_ID_AAC = "A_AAC";
    private static final String CODEC_ID_AC3 = "A_AC3";
    private static final String CODEC_ID_ACM = "A_MS/ACM";
    private static final String CODEC_ID_ASS = "S_TEXT/ASS";
    private static final String CODEC_ID_AV1 = "V_AV1";
    private static final String CODEC_ID_DTS = "A_DTS";
    private static final String CODEC_ID_DTS_EXPRESS = "A_DTS/EXPRESS";
    private static final String CODEC_ID_DTS_LOSSLESS = "A_DTS/LOSSLESS";
    private static final String CODEC_ID_DVBSUB = "S_DVBSUB";
    private static final String CODEC_ID_E_AC3 = "A_EAC3";
    private static final String CODEC_ID_FLAC = "A_FLAC";
    private static final String CODEC_ID_FOURCC = "V_MS/VFW/FOURCC";
    private static final String CODEC_ID_H264 = "V_MPEG4/ISO/AVC";
    private static final String CODEC_ID_H265 = "V_MPEGH/ISO/HEVC";
    private static final String CODEC_ID_MP2 = "A_MPEG/L2";
    private static final String CODEC_ID_MP3 = "A_MPEG/L3";
    private static final String CODEC_ID_MPEG2 = "V_MPEG2";
    private static final String CODEC_ID_MPEG4_AP = "V_MPEG4/ISO/AP";
    private static final String CODEC_ID_MPEG4_ASP = "V_MPEG4/ISO/ASP";
    private static final String CODEC_ID_MPEG4_SP = "V_MPEG4/ISO/SP";
    private static final String CODEC_ID_OPUS = "A_OPUS";
    private static final String CODEC_ID_PCM_INT_LIT = "A_PCM/INT/LIT";
    private static final String CODEC_ID_PGS = "S_HDMV/PGS";
    private static final String CODEC_ID_SUBRIP = "S_TEXT/UTF8";
    private static final String CODEC_ID_THEORA = "V_THEORA";
    private static final String CODEC_ID_TRUEHD = "A_TRUEHD";
    private static final String CODEC_ID_VOBSUB = "S_VOBSUB";
    private static final String CODEC_ID_VORBIS = "A_VORBIS";
    private static final String CODEC_ID_VP8 = "V_VP8";
    private static final String CODEC_ID_VP9 = "V_VP9";
    private static final String DOC_TYPE_MATROSKA = "matroska";
    private static final String DOC_TYPE_WEBM = "webm";
    private static final int ENCRYPTION_IV_SIZE = 8;
    public static final ExtractorsFactory FACTORY = $$Lambda$MatroskaExtractor$jNXW0tyYIOPE6N2jicocV6rRvBs.INSTANCE;
    public static final int FLAG_DISABLE_SEEK_FOR_CUES = 1;
    private static final int FOURCC_COMPRESSION_DIVX = 1482049860;
    private static final int FOURCC_COMPRESSION_H263 = 859189832;
    private static final int FOURCC_COMPRESSION_VC1 = 826496599;
    private static final int ID_AUDIO = 225;
    private static final int ID_AUDIO_BIT_DEPTH = 25188;
    private static final int ID_BLOCK = 161;
    private static final int ID_BLOCK_DURATION = 155;
    private static final int ID_BLOCK_GROUP = 160;
    private static final int ID_CHANNELS = 159;
    private static final int ID_CLUSTER = 524531317;
    private static final int ID_CODEC_DELAY = 22186;
    private static final int ID_CODEC_ID = 134;
    private static final int ID_CODEC_PRIVATE = 25506;
    private static final int ID_COLOUR = 21936;
    private static final int ID_COLOUR_PRIMARIES = 21947;
    private static final int ID_COLOUR_RANGE = 21945;
    private static final int ID_COLOUR_TRANSFER = 21946;
    private static final int ID_CONTENT_COMPRESSION = 20532;
    private static final int ID_CONTENT_COMPRESSION_ALGORITHM = 16980;
    private static final int ID_CONTENT_COMPRESSION_SETTINGS = 16981;
    private static final int ID_CONTENT_ENCODING = 25152;
    private static final int ID_CONTENT_ENCODINGS = 28032;
    private static final int ID_CONTENT_ENCODING_ORDER = 20529;
    private static final int ID_CONTENT_ENCODING_SCOPE = 20530;
    private static final int ID_CONTENT_ENCRYPTION = 20533;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS = 18407;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE = 18408;
    private static final int ID_CONTENT_ENCRYPTION_ALGORITHM = 18401;
    private static final int ID_CONTENT_ENCRYPTION_KEY_ID = 18402;
    private static final int ID_CUES = 475249515;
    private static final int ID_CUE_CLUSTER_POSITION = 241;
    private static final int ID_CUE_POINT = 187;
    private static final int ID_CUE_TIME = 179;
    private static final int ID_CUE_TRACK_POSITIONS = 183;
    private static final int ID_DEFAULT_DURATION = 2352003;
    private static final int ID_DISPLAY_HEIGHT = 21690;
    private static final int ID_DISPLAY_UNIT = 21682;
    private static final int ID_DISPLAY_WIDTH = 21680;
    private static final int ID_DOC_TYPE = 17026;
    private static final int ID_DOC_TYPE_READ_VERSION = 17029;
    private static final int ID_DURATION = 17545;
    private static final int ID_EBML = 440786851;
    private static final int ID_EBML_READ_VERSION = 17143;
    private static final int ID_FLAG_DEFAULT = 136;
    private static final int ID_FLAG_FORCED = 21930;
    private static final int ID_INFO = 357149030;
    private static final int ID_LANGUAGE = 2274716;
    private static final int ID_LUMNINANCE_MAX = 21977;
    private static final int ID_LUMNINANCE_MIN = 21978;
    private static final int ID_MASTERING_METADATA = 21968;
    private static final int ID_MAX_CLL = 21948;
    private static final int ID_MAX_FALL = 21949;
    private static final int ID_NAME = 21358;
    private static final int ID_PIXEL_HEIGHT = 186;
    private static final int ID_PIXEL_WIDTH = 176;
    private static final int ID_PRIMARY_B_CHROMATICITY_X = 21973;
    private static final int ID_PRIMARY_B_CHROMATICITY_Y = 21974;
    private static final int ID_PRIMARY_G_CHROMATICITY_X = 21971;
    private static final int ID_PRIMARY_G_CHROMATICITY_Y = 21972;
    private static final int ID_PRIMARY_R_CHROMATICITY_X = 21969;
    private static final int ID_PRIMARY_R_CHROMATICITY_Y = 21970;
    private static final int ID_PROJECTION = 30320;
    private static final int ID_PROJECTION_POSE_PITCH = 30324;
    private static final int ID_PROJECTION_POSE_ROLL = 30325;
    private static final int ID_PROJECTION_POSE_YAW = 30323;
    private static final int ID_PROJECTION_PRIVATE = 30322;
    private static final int ID_PROJECTION_TYPE = 30321;
    private static final int ID_REFERENCE_BLOCK = 251;
    private static final int ID_SAMPLING_FREQUENCY = 181;
    private static final int ID_SEEK = 19899;
    private static final int ID_SEEK_HEAD = 290298740;
    private static final int ID_SEEK_ID = 21419;
    private static final int ID_SEEK_POSITION = 21420;
    private static final int ID_SEEK_PRE_ROLL = 22203;
    private static final int ID_SEGMENT = 408125543;
    private static final int ID_SEGMENT_INFO = 357149030;
    private static final int ID_SIMPLE_BLOCK = 163;
    private static final int ID_STEREO_MODE = 21432;
    private static final int ID_TIMECODE_SCALE = 2807729;
    private static final int ID_TIME_CODE = 231;
    private static final int ID_TRACKS = 374648427;
    private static final int ID_TRACK_ENTRY = 174;
    private static final int ID_TRACK_NUMBER = 215;
    private static final int ID_TRACK_TYPE = 131;
    private static final int ID_VIDEO = 224;
    private static final int ID_WHITE_POINT_CHROMATICITY_X = 21975;
    private static final int ID_WHITE_POINT_CHROMATICITY_Y = 21976;
    private static final int LACING_EBML = 3;
    private static final int LACING_FIXED_SIZE = 2;
    private static final int LACING_NONE = 0;
    private static final int LACING_XIPH = 1;
    private static final int OPUS_MAX_INPUT_SIZE = 5760;
    /* access modifiers changed from: private */
    public static final byte[] SSA_DIALOGUE_FORMAT = Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, 103, 117, 101, HttpTokens.COLON, HttpTokens.SPACE, 48, HttpTokens.COLON, 48, 48, HttpTokens.COLON, 48, 48, HttpTokens.COLON, 48, 48, 44, 48, HttpTokens.COLON, 48, 48, HttpTokens.COLON, 48, 48, HttpTokens.COLON, 48, 48, 44};
    private static final int SSA_PREFIX_END_TIMECODE_OFFSET = 21;
    private static final byte[] SSA_TIMECODE_EMPTY = {HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE};
    private static final String SSA_TIMECODE_FORMAT = "%01d:%02d:%02d:%02d";
    private static final long SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR = 10000;
    private static final byte[] SUBRIP_PREFIX = {49, 10, 48, 48, HttpTokens.COLON, 48, 48, HttpTokens.COLON, 48, 48, 44, 48, 48, 48, HttpTokens.SPACE, 45, 45, 62, HttpTokens.SPACE, 48, 48, HttpTokens.COLON, 48, 48, HttpTokens.COLON, 48, 48, 44, 48, 48, 48, 10};
    private static final int SUBRIP_PREFIX_END_TIMECODE_OFFSET = 19;
    private static final byte[] SUBRIP_TIMECODE_EMPTY = {HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE, HttpTokens.SPACE};
    private static final String SUBRIP_TIMECODE_FORMAT = "%02d:%02d:%02d,%03d";
    private static final long SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    private static final String TAG = "MatroskaExtractor";
    private static final int TRACK_TYPE_AUDIO = 2;
    private static final int UNSET_ENTRY_ID = -1;
    private static final int VORBIS_MAX_INPUT_SIZE = 8192;
    private static final int WAVE_FORMAT_EXTENSIBLE = 65534;
    private static final int WAVE_FORMAT_PCM = 1;
    private static final int WAVE_FORMAT_SIZE = 18;
    /* access modifiers changed from: private */
    public static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);
    private long blockDurationUs;
    private int blockFlags;
    private int blockLacingSampleCount;
    private int blockLacingSampleIndex;
    private int[] blockLacingSampleSizes;
    private int blockState;
    private long blockTimeUs;
    private int blockTrackNumber;
    private int blockTrackNumberLength;
    private long clusterTimecodeUs;
    private LongArray cueClusterPositions;
    private LongArray cueTimesUs;
    private long cuesContentPosition;
    private Track currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final ParsableByteArray encryptionInitializationVector;
    private final ParsableByteArray encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private ExtractorOutput extractorOutput;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private final EbmlReader reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private boolean sampleRead;
    private boolean sampleSeenReferenceBlock;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final ParsableByteArray sampleStrippedBytes;
    private final ParsableByteArray scratch;
    private int seekEntryId;
    private final ParsableByteArray seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private final boolean seekForCuesEnabled;
    private long seekPositionAfterBuildingCues;
    private boolean seenClusterPositionForCurrentCuePoint;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentSeekMap;
    private final ParsableByteArray subtitleSample;
    private long timecodeScale;
    private final SparseArray<Track> tracks;
    private final VarintReader varintReader;
    private final ParsableByteArray vorbisNumPageSamples;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    private final class InnerEbmlProcessor implements EbmlProcessor {
        private InnerEbmlProcessor() {
        }

        public int getElementType(int i) {
            return MatroskaExtractor.this.getElementType(i);
        }

        public boolean isLevel1Element(int i) {
            return MatroskaExtractor.this.isLevel1Element(i);
        }

        public void startMasterElement(int i, long j, long j2) throws ParserException {
            MatroskaExtractor.this.startMasterElement(i, j, j2);
        }

        public void endMasterElement(int i) throws ParserException {
            MatroskaExtractor.this.endMasterElement(i);
        }

        public void integerElement(int i, long j) throws ParserException {
            MatroskaExtractor.this.integerElement(i, j);
        }

        public void floatElement(int i, double d) throws ParserException {
            MatroskaExtractor.this.floatElement(i, d);
        }

        public void stringElement(int i, String str) throws ParserException {
            MatroskaExtractor.this.stringElement(i, str);
        }

        public void binaryElement(int i, int i2, ExtractorInput extractorInput) throws IOException, InterruptedException {
            MatroskaExtractor.this.binaryElement(i, i2, extractorInput);
        }
    }

    private static final class Track {
        private static final int DEFAULT_MAX_CLL = 1000;
        private static final int DEFAULT_MAX_FALL = 200;
        private static final int DISPLAY_UNIT_PIXELS = 0;
        private static final int MAX_CHROMATICITY = 50000;
        public int audioBitDepth;
        public int channelCount;
        public long codecDelayNs;
        public String codecId;
        public byte[] codecPrivate;
        public int colorRange;
        public int colorSpace;
        public int colorTransfer;
        public CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public int displayHeight;
        public int displayUnit;
        public int displayWidth;
        public DrmInitData drmInitData;
        public boolean flagDefault;
        public boolean flagForced;
        public boolean hasColorInfo;
        public boolean hasContentEncryption;
        public int height;
        /* access modifiers changed from: private */
        public String language;
        public int maxContentLuminance;
        public int maxFrameAverageLuminance;
        public float maxMasteringLuminance;
        public float minMasteringLuminance;
        public int nalUnitLengthFieldLength;
        public String name;
        public int number;
        public TrackOutput output;
        public float primaryBChromaticityX;
        public float primaryBChromaticityY;
        public float primaryGChromaticityX;
        public float primaryGChromaticityY;
        public float primaryRChromaticityX;
        public float primaryRChromaticityY;
        public byte[] projectionData;
        public float projectionPosePitch;
        public float projectionPoseRoll;
        public float projectionPoseYaw;
        public int projectionType;
        public int sampleRate;
        public byte[] sampleStrippedBytes;
        public long seekPreRollNs;
        public int stereoMode;
        @Nullable
        public TrueHdSampleRechunker trueHdSampleRechunker;
        public int type;
        public float whitePointChromaticityX;
        public float whitePointChromaticityY;
        public int width;

        private Track() {
            this.width = -1;
            this.height = -1;
            this.displayWidth = -1;
            this.displayHeight = -1;
            this.displayUnit = 0;
            this.projectionType = -1;
            this.projectionPoseYaw = 0.0f;
            this.projectionPosePitch = 0.0f;
            this.projectionPoseRoll = 0.0f;
            this.projectionData = null;
            this.stereoMode = -1;
            this.hasColorInfo = false;
            this.colorSpace = -1;
            this.colorTransfer = -1;
            this.colorRange = -1;
            this.maxContentLuminance = 1000;
            this.maxFrameAverageLuminance = 200;
            this.primaryRChromaticityX = -1.0f;
            this.primaryRChromaticityY = -1.0f;
            this.primaryGChromaticityX = -1.0f;
            this.primaryGChromaticityY = -1.0f;
            this.primaryBChromaticityX = -1.0f;
            this.primaryBChromaticityY = -1.0f;
            this.whitePointChromaticityX = -1.0f;
            this.whitePointChromaticityY = -1.0f;
            this.maxMasteringLuminance = -1.0f;
            this.minMasteringLuminance = -1.0f;
            this.channelCount = 1;
            this.audioBitDepth = -1;
            this.sampleRate = 8000;
            this.codecDelayNs = 0;
            this.seekPreRollNs = 0;
            this.flagDefault = true;
            this.language = "eng";
        }

        /* JADX WARNING: Code restructure failed: missing block: B:105:0x01de, code lost:
            r23 = r1;
            r1 = r11;
            r3 = null;
            r20 = -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:112:0x022e, code lost:
            r1 = r14;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:121:0x025b, code lost:
            r3 = null;
            r20 = 4096;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:127:0x02d4, code lost:
            r20 = -1;
            r23 = -1;
            r31 = r3;
            r3 = r1;
            r1 = r31;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:139:0x031e, code lost:
            r3 = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:140:0x031f, code lost:
            r20 = -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:141:0x0321, code lost:
            r23 = -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:142:0x0323, code lost:
            r11 = r0.flagDefault | false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:143:0x0328, code lost:
            if (r0.flagForced == false) goto L_0x032c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:144:0x032a, code lost:
            r12 = 2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:145:0x032c, code lost:
            r12 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:146:0x032d, code lost:
            r11 = r11 | r12;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:147:0x0332, code lost:
            if (com.google.android.exoplayer2.util.MimeTypes.isAudio(r1) == false) goto L_0x0359;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:148:0x0334, code lost:
            r1 = com.google.android.exoplayer2.Format.createAudioSampleFormat(java.lang.Integer.toString(r34), r1, null, -1, r20, r0.channelCount, r0.sampleRate, r23, r3, r0.drmInitData, r11 ? 1 : 0, r0.language);
            r7 = 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:150:0x035d, code lost:
            if (com.google.android.exoplayer2.util.MimeTypes.isVideo(r1) == false) goto L_0x0459;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:152:0x0361, code lost:
            if (r0.displayUnit != 0) goto L_0x0373;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:153:0x0363, code lost:
            r2 = r0.displayWidth;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:154:0x0365, code lost:
            if (r2 != -1) goto L_0x0369;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:155:0x0367, code lost:
            r2 = r0.width;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:156:0x0369, code lost:
            r0.displayWidth = r2;
            r2 = r0.displayHeight;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:157:0x036d, code lost:
            if (r2 != -1) goto L_0x0371;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:158:0x036f, code lost:
            r2 = r0.height;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:159:0x0371, code lost:
            r0.displayHeight = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:160:0x0373, code lost:
            r4 = r0.displayWidth;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:161:0x0377, code lost:
            if (r4 == -1) goto L_0x038b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:162:0x0379, code lost:
            r7 = r0.displayHeight;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:163:0x037b, code lost:
            if (r7 == -1) goto L_0x038b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:164:0x037d, code lost:
            r26 = ((float) (r0.height * r4)) / ((float) (r0.width * r7));
         */
        /* JADX WARNING: Code restructure failed: missing block: B:165:0x038b, code lost:
            r26 = -1.0f;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:167:0x038f, code lost:
            if (r0.hasColorInfo == false) goto L_0x03a0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:168:0x0391, code lost:
            r15 = new com.google.android.exoplayer2.video.ColorInfo(r0.colorSpace, r0.colorRange, r0.colorTransfer, getHdrStaticInfo());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:169:0x03a0, code lost:
            r29 = r15;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:170:0x03aa, code lost:
            if ("htc_video_rotA-000".equals(r0.name) == false) goto L_0x03ae;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:171:0x03ac, code lost:
            r2 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:173:0x03b6, code lost:
            if ("htc_video_rotA-090".equals(r0.name) == false) goto L_0x03bb;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:174:0x03b8, code lost:
            r2 = 90;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:176:0x03c3, code lost:
            if ("htc_video_rotA-180".equals(r0.name) == false) goto L_0x03c8;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:177:0x03c5, code lost:
            r2 = 180;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:179:0x03d0, code lost:
            if ("htc_video_rotA-270".equals(r0.name) == false) goto L_0x03d5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:180:0x03d2, code lost:
            r2 = com.tencent.openqq.protocol.imsdk.im_common.WPA_QZONE;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:181:0x03d5, code lost:
            r2 = -1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:183:0x03d8, code lost:
            if (r0.projectionType != 0) goto L_0x042e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:185:0x03e1, code lost:
            if (java.lang.Float.compare(r0.projectionPoseYaw, 0.0f) != 0) goto L_0x042e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:187:0x03e9, code lost:
            if (java.lang.Float.compare(r0.projectionPosePitch, 0.0f) != 0) goto L_0x042e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:189:0x03f1, code lost:
            if (java.lang.Float.compare(r0.projectionPoseRoll, 0.0f) != 0) goto L_0x03f6;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:190:0x03f3, code lost:
            r25 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:192:0x03fe, code lost:
            if (java.lang.Float.compare(r0.projectionPosePitch, 90.0f) != 0) goto L_0x0405;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:193:0x0400, code lost:
            r25 = 90;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:195:0x040d, code lost:
            if (java.lang.Float.compare(r0.projectionPosePitch, -180.0f) == 0) goto L_0x0429;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:197:0x0417, code lost:
            if (java.lang.Float.compare(r0.projectionPosePitch, 180.0f) != 0) goto L_0x041a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:199:0x0422, code lost:
            if (java.lang.Float.compare(r0.projectionPosePitch, -90.0f) != 0) goto L_0x042e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:200:0x0424, code lost:
            r25 = com.tencent.openqq.protocol.imsdk.im_common.WPA_QZONE;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:201:0x0429, code lost:
            r25 = 180;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:202:0x042e, code lost:
            r25 = r2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:203:0x0430, code lost:
            r1 = com.google.android.exoplayer2.Format.createVideoSampleFormat(java.lang.Integer.toString(r34), r1, null, -1, r20, r0.width, r0.height, -1.0f, r3, r25, r26, r0.projectionData, r0.stereoMode, r29, r0.drmInitData);
            r7 = 2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:205:0x045d, code lost:
            if (r10.equals(r1) == false) goto L_0x046d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:206:0x045f, code lost:
            r1 = com.google.android.exoplayer2.Format.createTextSampleFormat(java.lang.Integer.toString(r34), r1, r11 ? 1 : 0, r0.language, r0.drmInitData);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:208:0x0471, code lost:
            if (r9.equals(r1) == false) goto L_0x04a6;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:209:0x0473, code lost:
            r2 = new java.util.ArrayList(2);
            r2.add(com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.access$300());
            r2.add(r0.codecPrivate);
            r1 = com.google.android.exoplayer2.Format.createTextSampleFormat(java.lang.Integer.toString(r34), r1, null, -1, r11 ? 1 : 0, r0.language, -1, r0.drmInitData, Long.MAX_VALUE, r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:211:0x04aa, code lost:
            if (r2.equals(r1) != false) goto L_0x04c5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:213:0x04b2, code lost:
            if (com.google.android.exoplayer2.util.MimeTypes.APPLICATION_PGS.equals(r1) != false) goto L_0x04c5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:215:0x04ba, code lost:
            if (com.google.android.exoplayer2.util.MimeTypes.APPLICATION_DVBSUBS.equals(r1) == false) goto L_0x04bd;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:217:0x04c4, code lost:
            throw new com.google.android.exoplayer2.ParserException("Unexpected MIME type.");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:218:0x04c5, code lost:
            r1 = com.google.android.exoplayer2.Format.createImageSampleFormat(java.lang.Integer.toString(r34), r1, null, -1, r11 ? 1 : 0, r3, r0.language, r0.drmInitData);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:219:0x04df, code lost:
            r0.output = r33.track(r0.number, r7);
            r0.output.format(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:220:0x04ee, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void initializeOutput(com.google.android.exoplayer2.extractor.ExtractorOutput r33, int r34) throws com.google.android.exoplayer2.ParserException {
            /*
                r32 = this;
                r0 = r32
                java.lang.String r1 = r0.codecId
                int r2 = r1.hashCode()
                r3 = 8
                r4 = 1
                r5 = 2
                r6 = 0
                r7 = 3
                r8 = -1
                switch(r2) {
                    case -2095576542: goto L_0x0161;
                    case -2095575984: goto L_0x0157;
                    case -1985379776: goto L_0x014c;
                    case -1784763192: goto L_0x0141;
                    case -1730367663: goto L_0x0136;
                    case -1482641358: goto L_0x012b;
                    case -1482641357: goto L_0x0120;
                    case -1373388978: goto L_0x0115;
                    case -933872740: goto L_0x010a;
                    case -538363189: goto L_0x00ff;
                    case -538363109: goto L_0x00f4;
                    case -425012669: goto L_0x00e8;
                    case -356037306: goto L_0x00dc;
                    case 62923557: goto L_0x00d0;
                    case 62923603: goto L_0x00c4;
                    case 62927045: goto L_0x00b8;
                    case 82318131: goto L_0x00ad;
                    case 82338133: goto L_0x00a2;
                    case 82338134: goto L_0x0097;
                    case 99146302: goto L_0x008b;
                    case 444813526: goto L_0x007f;
                    case 542569478: goto L_0x0073;
                    case 725957860: goto L_0x0067;
                    case 738597099: goto L_0x005b;
                    case 855502857: goto L_0x004f;
                    case 1422270023: goto L_0x0043;
                    case 1809237540: goto L_0x0038;
                    case 1950749482: goto L_0x002c;
                    case 1950789798: goto L_0x0020;
                    case 1951062397: goto L_0x0014;
                    default: goto L_0x0012;
                }
            L_0x0012:
                goto L_0x016b
            L_0x0014:
                java.lang.String r2 = "A_OPUS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 12
                goto L_0x016c
            L_0x0020:
                java.lang.String r2 = "A_FLAC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 22
                goto L_0x016c
            L_0x002c:
                java.lang.String r2 = "A_EAC3"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 17
                goto L_0x016c
            L_0x0038:
                java.lang.String r2 = "V_MPEG2"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 3
                goto L_0x016c
            L_0x0043:
                java.lang.String r2 = "S_TEXT/UTF8"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 25
                goto L_0x016c
            L_0x004f:
                java.lang.String r2 = "V_MPEGH/ISO/HEVC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 8
                goto L_0x016c
            L_0x005b:
                java.lang.String r2 = "S_TEXT/ASS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 26
                goto L_0x016c
            L_0x0067:
                java.lang.String r2 = "A_PCM/INT/LIT"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 24
                goto L_0x016c
            L_0x0073:
                java.lang.String r2 = "A_DTS/EXPRESS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 20
                goto L_0x016c
            L_0x007f:
                java.lang.String r2 = "V_THEORA"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 10
                goto L_0x016c
            L_0x008b:
                java.lang.String r2 = "S_HDMV/PGS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 28
                goto L_0x016c
            L_0x0097:
                java.lang.String r2 = "V_VP9"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 1
                goto L_0x016c
            L_0x00a2:
                java.lang.String r2 = "V_VP8"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 0
                goto L_0x016c
            L_0x00ad:
                java.lang.String r2 = "V_AV1"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 2
                goto L_0x016c
            L_0x00b8:
                java.lang.String r2 = "A_DTS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 19
                goto L_0x016c
            L_0x00c4:
                java.lang.String r2 = "A_AC3"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 16
                goto L_0x016c
            L_0x00d0:
                java.lang.String r2 = "A_AAC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 13
                goto L_0x016c
            L_0x00dc:
                java.lang.String r2 = "A_DTS/LOSSLESS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 21
                goto L_0x016c
            L_0x00e8:
                java.lang.String r2 = "S_VOBSUB"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 27
                goto L_0x016c
            L_0x00f4:
                java.lang.String r2 = "V_MPEG4/ISO/AVC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 7
                goto L_0x016c
            L_0x00ff:
                java.lang.String r2 = "V_MPEG4/ISO/ASP"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 5
                goto L_0x016c
            L_0x010a:
                java.lang.String r2 = "S_DVBSUB"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 29
                goto L_0x016c
            L_0x0115:
                java.lang.String r2 = "V_MS/VFW/FOURCC"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 9
                goto L_0x016c
            L_0x0120:
                java.lang.String r2 = "A_MPEG/L3"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 15
                goto L_0x016c
            L_0x012b:
                java.lang.String r2 = "A_MPEG/L2"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 14
                goto L_0x016c
            L_0x0136:
                java.lang.String r2 = "A_VORBIS"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 11
                goto L_0x016c
            L_0x0141:
                java.lang.String r2 = "A_TRUEHD"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 18
                goto L_0x016c
            L_0x014c:
                java.lang.String r2 = "A_MS/ACM"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 23
                goto L_0x016c
            L_0x0157:
                java.lang.String r2 = "V_MPEG4/ISO/SP"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 4
                goto L_0x016c
            L_0x0161:
                java.lang.String r2 = "V_MPEG4/ISO/AP"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x016b
                r1 = 6
                goto L_0x016c
            L_0x016b:
                r1 = -1
            L_0x016c:
                java.lang.String r2 = "application/vobsub"
                java.lang.String r9 = "text/x-ssa"
                java.lang.String r10 = "application/x-subrip"
                java.lang.String r11 = "audio/raw"
                r12 = 4096(0x1000, float:5.74E-42)
                java.lang.String r13 = "MatroskaExtractor"
                java.lang.String r14 = "audio/x-unknown"
                r15 = 0
                switch(r1) {
                    case 0: goto L_0x031c;
                    case 1: goto L_0x0319;
                    case 2: goto L_0x0316;
                    case 3: goto L_0x0313;
                    case 4: goto L_0x0306;
                    case 5: goto L_0x0306;
                    case 6: goto L_0x0306;
                    case 7: goto L_0x02f2;
                    case 8: goto L_0x02de;
                    case 9: goto L_0x02c1;
                    case 10: goto L_0x02be;
                    case 11: goto L_0x02af;
                    case 12: goto L_0x0269;
                    case 13: goto L_0x0260;
                    case 14: goto L_0x0259;
                    case 15: goto L_0x0256;
                    case 16: goto L_0x0252;
                    case 17: goto L_0x024e;
                    case 18: goto L_0x0243;
                    case 19: goto L_0x023f;
                    case 20: goto L_0x023f;
                    case 21: goto L_0x023b;
                    case 22: goto L_0x0231;
                    case 23: goto L_0x01e6;
                    case 24: goto L_0x01b7;
                    case 25: goto L_0x01b4;
                    case 26: goto L_0x01b1;
                    case 27: goto L_0x01a7;
                    case 28: goto L_0x01a3;
                    case 29: goto L_0x0186;
                    default: goto L_0x017e;
                }
            L_0x017e:
                com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
                java.lang.String r2 = "Unrecognized codec identifier."
                r1.<init>(r2)
                throw r1
            L_0x0186:
                r1 = 4
                byte[] r1 = new byte[r1]
                byte[] r3 = r0.codecPrivate
                byte r11 = r3[r6]
                r1[r6] = r11
                byte r11 = r3[r4]
                r1[r4] = r11
                byte r11 = r3[r5]
                r1[r5] = r11
                byte r3 = r3[r7]
                r1[r7] = r3
                java.util.List r1 = java.util.Collections.singletonList(r1)
                java.lang.String r3 = "application/dvbsubs"
                goto L_0x02d4
            L_0x01a3:
                java.lang.String r1 = "application/pgs"
                goto L_0x031e
            L_0x01a7:
                byte[] r1 = r0.codecPrivate
                java.util.List r1 = java.util.Collections.singletonList(r1)
                r3 = r1
                r1 = r2
                goto L_0x031f
            L_0x01b1:
                r1 = r9
                goto L_0x031e
            L_0x01b4:
                r1 = r10
                goto L_0x031e
            L_0x01b7:
                int r1 = r0.audioBitDepth
                int r1 = com.google.android.exoplayer2.util.Util.getPcmEncoding(r1)
                if (r1 != 0) goto L_0x01de
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r3 = "Unsupported PCM bit depth: "
                r1.append(r3)
                int r3 = r0.audioBitDepth
                r1.append(r3)
                java.lang.String r3 = ". Setting mimeType to "
                r1.append(r3)
                r1.append(r14)
                java.lang.String r1 = r1.toString()
                com.google.android.exoplayer2.util.Log.w(r13, r1)
                goto L_0x022e
            L_0x01de:
                r23 = r1
                r1 = r11
                r3 = r15
                r20 = -1
                goto L_0x0323
            L_0x01e6:
                com.google.android.exoplayer2.util.ParsableByteArray r1 = new com.google.android.exoplayer2.util.ParsableByteArray
                byte[] r3 = r0.codecPrivate
                r1.<init>(r3)
                boolean r1 = parseMsAcmCodecPrivate(r1)
                if (r1 == 0) goto L_0x021a
                int r1 = r0.audioBitDepth
                int r1 = com.google.android.exoplayer2.util.Util.getPcmEncoding(r1)
                if (r1 != 0) goto L_0x01de
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r3 = "Unsupported PCM bit depth: "
                r1.append(r3)
                int r3 = r0.audioBitDepth
                r1.append(r3)
                java.lang.String r3 = ". Setting mimeType to "
                r1.append(r3)
                r1.append(r14)
                java.lang.String r1 = r1.toString()
                com.google.android.exoplayer2.util.Log.w(r13, r1)
                goto L_0x022e
            L_0x021a:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r3 = "Non-PCM MS/ACM is unsupported. Setting mimeType to "
                r1.append(r3)
                r1.append(r14)
                java.lang.String r1 = r1.toString()
                com.google.android.exoplayer2.util.Log.w(r13, r1)
            L_0x022e:
                r1 = r14
                goto L_0x031e
            L_0x0231:
                byte[] r1 = r0.codecPrivate
                java.util.List r1 = java.util.Collections.singletonList(r1)
                java.lang.String r3 = "audio/flac"
                goto L_0x02d4
            L_0x023b:
                java.lang.String r1 = "audio/vnd.dts.hd"
                goto L_0x031e
            L_0x023f:
                java.lang.String r1 = "audio/vnd.dts"
                goto L_0x031e
            L_0x0243:
                com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$TrueHdSampleRechunker r1 = new com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$TrueHdSampleRechunker
                r1.<init>()
                r0.trueHdSampleRechunker = r1
                java.lang.String r1 = "audio/true-hd"
                goto L_0x031e
            L_0x024e:
                java.lang.String r1 = "audio/eac3"
                goto L_0x031e
            L_0x0252:
                java.lang.String r1 = "audio/ac3"
                goto L_0x031e
            L_0x0256:
                java.lang.String r1 = "audio/mpeg"
                goto L_0x025b
            L_0x0259:
                java.lang.String r1 = "audio/mpeg-L2"
            L_0x025b:
                r3 = r15
                r20 = 4096(0x1000, float:5.74E-42)
                goto L_0x0321
            L_0x0260:
                byte[] r1 = r0.codecPrivate
                java.util.List r1 = java.util.Collections.singletonList(r1)
                java.lang.String r3 = "audio/mp4a-latm"
                goto L_0x02d4
            L_0x0269:
                r1 = 5760(0x1680, float:8.071E-42)
                java.util.ArrayList r11 = new java.util.ArrayList
                r11.<init>(r7)
                byte[] r12 = r0.codecPrivate
                r11.add(r12)
                java.nio.ByteBuffer r12 = java.nio.ByteBuffer.allocate(r3)
                java.nio.ByteOrder r13 = java.nio.ByteOrder.nativeOrder()
                java.nio.ByteBuffer r12 = r12.order(r13)
                long r13 = r0.codecDelayNs
                java.nio.ByteBuffer r12 = r12.putLong(r13)
                byte[] r12 = r12.array()
                r11.add(r12)
                java.nio.ByteBuffer r3 = java.nio.ByteBuffer.allocate(r3)
                java.nio.ByteOrder r12 = java.nio.ByteOrder.nativeOrder()
                java.nio.ByteBuffer r3 = r3.order(r12)
                long r12 = r0.seekPreRollNs
                java.nio.ByteBuffer r3 = r3.putLong(r12)
                byte[] r3 = r3.array()
                r11.add(r3)
                java.lang.String r3 = "audio/opus"
                r1 = r3
                r3 = r11
                r20 = 5760(0x1680, float:8.071E-42)
                goto L_0x0321
            L_0x02af:
                r1 = 8192(0x2000, float:1.14794E-41)
                byte[] r3 = r0.codecPrivate
                java.util.List r3 = parseVorbisCodecPrivate(r3)
                java.lang.String r11 = "audio/vorbis"
                r1 = r11
                r20 = 8192(0x2000, float:1.14794E-41)
                goto L_0x0321
            L_0x02be:
                java.lang.String r1 = "video/x-unknown"
                goto L_0x031e
            L_0x02c1:
                com.google.android.exoplayer2.util.ParsableByteArray r1 = new com.google.android.exoplayer2.util.ParsableByteArray
                byte[] r3 = r0.codecPrivate
                r1.<init>(r3)
                android.util.Pair r1 = parseFourCcPrivate(r1)
                java.lang.Object r3 = r1.first
                java.lang.String r3 = (java.lang.String) r3
                java.lang.Object r1 = r1.second
                java.util.List r1 = (java.util.List) r1
            L_0x02d4:
                r20 = -1
                r23 = -1
                r31 = r3
                r3 = r1
                r1 = r31
                goto L_0x0323
            L_0x02de:
                com.google.android.exoplayer2.util.ParsableByteArray r1 = new com.google.android.exoplayer2.util.ParsableByteArray
                byte[] r3 = r0.codecPrivate
                r1.<init>(r3)
                com.google.android.exoplayer2.video.HevcConfig r1 = com.google.android.exoplayer2.video.HevcConfig.parse(r1)
                java.util.List<byte[]> r3 = r1.initializationData
                int r1 = r1.nalUnitLengthFieldLength
                r0.nalUnitLengthFieldLength = r1
                java.lang.String r1 = "video/hevc"
                goto L_0x031f
            L_0x02f2:
                com.google.android.exoplayer2.util.ParsableByteArray r1 = new com.google.android.exoplayer2.util.ParsableByteArray
                byte[] r3 = r0.codecPrivate
                r1.<init>(r3)
                com.google.android.exoplayer2.video.AvcConfig r1 = com.google.android.exoplayer2.video.AvcConfig.parse(r1)
                java.util.List<byte[]> r3 = r1.initializationData
                int r1 = r1.nalUnitLengthFieldLength
                r0.nalUnitLengthFieldLength = r1
                java.lang.String r1 = "video/avc"
                goto L_0x031f
            L_0x0306:
                byte[] r1 = r0.codecPrivate
                if (r1 != 0) goto L_0x030c
                r1 = r15
                goto L_0x0310
            L_0x030c:
                java.util.List r1 = java.util.Collections.singletonList(r1)
            L_0x0310:
                java.lang.String r3 = "video/mp4v-es"
                goto L_0x02d4
            L_0x0313:
                java.lang.String r1 = "video/mpeg2"
                goto L_0x031e
            L_0x0316:
                java.lang.String r1 = "video/av01"
                goto L_0x031e
            L_0x0319:
                java.lang.String r1 = "video/x-vnd.on2.vp9"
                goto L_0x031e
            L_0x031c:
                java.lang.String r1 = "video/x-vnd.on2.vp8"
            L_0x031e:
                r3 = r15
            L_0x031f:
                r20 = -1
            L_0x0321:
                r23 = -1
            L_0x0323:
                boolean r11 = r0.flagDefault
                r11 = r11 | r6
                boolean r12 = r0.flagForced
                if (r12 == 0) goto L_0x032c
                r12 = 2
                goto L_0x032d
            L_0x032c:
                r12 = 0
            L_0x032d:
                r11 = r11 | r12
                boolean r12 = com.google.android.exoplayer2.util.MimeTypes.isAudio(r1)
                if (r12 == 0) goto L_0x0359
                java.lang.String r16 = java.lang.Integer.toString(r34)
                r18 = 0
                r19 = -1
                int r2 = r0.channelCount
                int r5 = r0.sampleRate
                com.google.android.exoplayer2.drm.DrmInitData r6 = r0.drmInitData
                java.lang.String r7 = r0.language
                r17 = r1
                r21 = r2
                r22 = r5
                r24 = r3
                r25 = r6
                r26 = r11
                r27 = r7
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createAudioSampleFormat(r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27)
                r7 = 1
                goto L_0x04df
            L_0x0359:
                boolean r4 = com.google.android.exoplayer2.util.MimeTypes.isVideo(r1)
                if (r4 == 0) goto L_0x0459
                int r2 = r0.displayUnit
                if (r2 != 0) goto L_0x0373
                int r2 = r0.displayWidth
                if (r2 != r8) goto L_0x0369
                int r2 = r0.width
            L_0x0369:
                r0.displayWidth = r2
                int r2 = r0.displayHeight
                if (r2 != r8) goto L_0x0371
                int r2 = r0.height
            L_0x0371:
                r0.displayHeight = r2
            L_0x0373:
                r2 = -1082130432(0xffffffffbf800000, float:-1.0)
                int r4 = r0.displayWidth
                if (r4 == r8) goto L_0x038b
                int r7 = r0.displayHeight
                if (r7 == r8) goto L_0x038b
                int r2 = r0.height
                int r2 = r2 * r4
                float r2 = (float) r2
                int r4 = r0.width
                int r4 = r4 * r7
                float r4 = (float) r4
                float r2 = r2 / r4
                r26 = r2
                goto L_0x038d
            L_0x038b:
                r26 = -1082130432(0xffffffffbf800000, float:-1.0)
            L_0x038d:
                boolean r2 = r0.hasColorInfo
                if (r2 == 0) goto L_0x03a0
                byte[] r2 = r32.getHdrStaticInfo()
                com.google.android.exoplayer2.video.ColorInfo r15 = new com.google.android.exoplayer2.video.ColorInfo
                int r4 = r0.colorSpace
                int r7 = r0.colorRange
                int r9 = r0.colorTransfer
                r15.<init>(r4, r7, r9, r2)
            L_0x03a0:
                r29 = r15
                java.lang.String r2 = r0.name
                java.lang.String r4 = "htc_video_rotA-000"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x03ae
                r2 = 0
                goto L_0x03d6
            L_0x03ae:
                java.lang.String r2 = r0.name
                java.lang.String r4 = "htc_video_rotA-090"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x03bb
                r2 = 90
                goto L_0x03d6
            L_0x03bb:
                java.lang.String r2 = r0.name
                java.lang.String r4 = "htc_video_rotA-180"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x03c8
                r2 = 180(0xb4, float:2.52E-43)
                goto L_0x03d6
            L_0x03c8:
                java.lang.String r2 = r0.name
                java.lang.String r4 = "htc_video_rotA-270"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x03d5
                r2 = 270(0x10e, float:3.78E-43)
                goto L_0x03d6
            L_0x03d5:
                r2 = -1
            L_0x03d6:
                int r4 = r0.projectionType
                if (r4 != 0) goto L_0x042e
                float r4 = r0.projectionPoseYaw
                r7 = 0
                int r4 = java.lang.Float.compare(r4, r7)
                if (r4 != 0) goto L_0x042e
                float r4 = r0.projectionPosePitch
                int r4 = java.lang.Float.compare(r4, r7)
                if (r4 != 0) goto L_0x042e
                float r4 = r0.projectionPoseRoll
                int r4 = java.lang.Float.compare(r4, r7)
                if (r4 != 0) goto L_0x03f6
                r25 = 0
                goto L_0x0430
            L_0x03f6:
                float r4 = r0.projectionPosePitch
                r6 = 1119092736(0x42b40000, float:90.0)
                int r4 = java.lang.Float.compare(r4, r6)
                if (r4 != 0) goto L_0x0405
                r6 = 90
                r25 = 90
                goto L_0x0430
            L_0x0405:
                float r4 = r0.projectionPosePitch
                r6 = -1020002304(0xffffffffc3340000, float:-180.0)
                int r4 = java.lang.Float.compare(r4, r6)
                if (r4 == 0) goto L_0x0429
                float r4 = r0.projectionPosePitch
                r6 = 1127481344(0x43340000, float:180.0)
                int r4 = java.lang.Float.compare(r4, r6)
                if (r4 != 0) goto L_0x041a
                goto L_0x0429
            L_0x041a:
                float r4 = r0.projectionPosePitch
                r6 = -1028390912(0xffffffffc2b40000, float:-90.0)
                int r4 = java.lang.Float.compare(r4, r6)
                if (r4 != 0) goto L_0x042e
                r6 = 270(0x10e, float:3.78E-43)
                r25 = 270(0x10e, float:3.78E-43)
                goto L_0x0430
            L_0x0429:
                r6 = 180(0xb4, float:2.52E-43)
                r25 = 180(0xb4, float:2.52E-43)
                goto L_0x0430
            L_0x042e:
                r25 = r2
            L_0x0430:
                java.lang.String r16 = java.lang.Integer.toString(r34)
                r18 = 0
                r19 = -1
                int r2 = r0.width
                int r4 = r0.height
                r23 = -1082130432(0xffffffffbf800000, float:-1.0)
                byte[] r6 = r0.projectionData
                int r7 = r0.stereoMode
                com.google.android.exoplayer2.drm.DrmInitData r8 = r0.drmInitData
                r17 = r1
                r21 = r2
                r22 = r4
                r24 = r3
                r27 = r6
                r28 = r7
                r30 = r8
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createVideoSampleFormat(r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30)
                r7 = 2
                goto L_0x04df
            L_0x0459:
                boolean r4 = r10.equals(r1)
                if (r4 == 0) goto L_0x046d
                java.lang.String r2 = java.lang.Integer.toString(r34)
                java.lang.String r3 = r0.language
                com.google.android.exoplayer2.drm.DrmInitData r4 = r0.drmInitData
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createTextSampleFormat(r2, r1, r11, r3, r4)
                goto L_0x04df
            L_0x046d:
                boolean r4 = r9.equals(r1)
                if (r4 == 0) goto L_0x04a6
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>(r5)
                byte[] r3 = com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.SSA_DIALOGUE_FORMAT
                r2.add(r3)
                byte[] r3 = r0.codecPrivate
                r2.add(r3)
                java.lang.String r16 = java.lang.Integer.toString(r34)
                r18 = 0
                r19 = -1
                java.lang.String r3 = r0.language
                r22 = -1
                com.google.android.exoplayer2.drm.DrmInitData r4 = r0.drmInitData
                r24 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r17 = r1
                r20 = r11
                r21 = r3
                r23 = r4
                r26 = r2
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createTextSampleFormat(r16, r17, r18, r19, r20, r21, r22, r23, r24, r26)
                goto L_0x04df
            L_0x04a6:
                boolean r2 = r2.equals(r1)
                if (r2 != 0) goto L_0x04c5
                java.lang.String r2 = "application/pgs"
                boolean r2 = r2.equals(r1)
                if (r2 != 0) goto L_0x04c5
                java.lang.String r2 = "application/dvbsubs"
                boolean r2 = r2.equals(r1)
                if (r2 == 0) goto L_0x04bd
                goto L_0x04c5
            L_0x04bd:
                com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
                java.lang.String r2 = "Unexpected MIME type."
                r1.<init>(r2)
                throw r1
            L_0x04c5:
                java.lang.String r16 = java.lang.Integer.toString(r34)
                r18 = 0
                r19 = -1
                java.lang.String r2 = r0.language
                com.google.android.exoplayer2.drm.DrmInitData r4 = r0.drmInitData
                r17 = r1
                r20 = r11
                r21 = r3
                r22 = r2
                r23 = r4
                com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createImageSampleFormat(r16, r17, r18, r19, r20, r21, r22, r23)
            L_0x04df:
                int r2 = r0.number
                r3 = r33
                com.google.android.exoplayer2.extractor.TrackOutput r2 = r3.track(r2, r7)
                r0.output = r2
                com.google.android.exoplayer2.extractor.TrackOutput r2 = r0.output
                r2.format(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track.initializeOutput(com.google.android.exoplayer2.extractor.ExtractorOutput, int):void");
        }

        public void outputPendingSampleMetadata() {
            TrueHdSampleRechunker trueHdSampleRechunker2 = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker2 != null) {
                trueHdSampleRechunker2.outputPendingSampleMetadata(this);
            }
        }

        public void reset() {
            TrueHdSampleRechunker trueHdSampleRechunker2 = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker2 != null) {
                trueHdSampleRechunker2.reset();
            }
        }

        private byte[] getHdrStaticInfo() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.put(0);
            wrap.putShort((short) ((int) ((this.primaryRChromaticityX * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.primaryRChromaticityY * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.primaryGChromaticityX * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.primaryGChromaticityY * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.primaryBChromaticityX * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.primaryBChromaticityY * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.whitePointChromaticityX * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) ((this.whitePointChromaticityY * 50000.0f) + 0.5f)));
            wrap.putShort((short) ((int) (this.maxMasteringLuminance + 0.5f)));
            wrap.putShort((short) ((int) (this.minMasteringLuminance + 0.5f)));
            wrap.putShort((short) this.maxContentLuminance);
            wrap.putShort((short) this.maxFrameAverageLuminance);
            return bArr;
        }

        private static Pair<String, List<byte[]>> parseFourCcPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                parsableByteArray.skipBytes(16);
                long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
                if (readLittleEndianUnsignedInt == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (readLittleEndianUnsignedInt == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (readLittleEndianUnsignedInt == 826496599) {
                    byte[] bArr = parsableByteArray.data;
                    for (int position = parsableByteArray.getPosition() + 20; position < bArr.length - 4; position++) {
                        if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                            return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length)));
                        }
                    }
                    throw new ParserException("Failed to find FourCC VC1 initialization data");
                }
                Log.w(MatroskaExtractor.TAG, "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing FourCC private data");
            }
        }

        private static List<byte[]> parseVorbisCodecPrivate(byte[] bArr) throws ParserException {
            String str = "Error parsing vorbis codec private";
            try {
                if (bArr[0] == 2) {
                    int i = 1;
                    int i2 = 0;
                    while (bArr[i] == -1) {
                        i2 += 255;
                        i++;
                    }
                    int i3 = i + 1;
                    int i4 = i2 + bArr[i];
                    int i5 = 0;
                    while (bArr[i3] == -1) {
                        i5 += 255;
                        i3++;
                    }
                    int i6 = i3 + 1;
                    int i7 = i5 + bArr[i3];
                    if (bArr[i6] == 1) {
                        byte[] bArr2 = new byte[i4];
                        System.arraycopy(bArr, i6, bArr2, 0, i4);
                        int i8 = i6 + i4;
                        if (bArr[i8] == 3) {
                            int i9 = i8 + i7;
                            if (bArr[i9] == 5) {
                                byte[] bArr3 = new byte[(bArr.length - i9)];
                                System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw new ParserException(str);
                        }
                        throw new ParserException(str);
                    }
                    throw new ParserException(str);
                }
                throw new ParserException(str);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException(str);
            }
        }

        private static boolean parseMsAcmCodecPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
                boolean z = true;
                if (readLittleEndianUnsignedShort == 1) {
                    return true;
                }
                if (readLittleEndianUnsignedShort != MatroskaExtractor.WAVE_FORMAT_EXTENSIBLE) {
                    return false;
                }
                parsableByteArray.setPosition(24);
                if (!(parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits() && parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits())) {
                    z = false;
                }
                return z;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }
    }

    private static final class TrueHdSampleRechunker {
        private int blockFlags;
        private int chunkSize;
        private boolean foundSyncframe;
        private int sampleCount;
        private final byte[] syncframePrefix = new byte[10];
        private long timeUs;

        public void reset() {
            this.foundSyncframe = false;
        }

        public void startSample(ExtractorInput extractorInput, int i, int i2) throws IOException, InterruptedException {
            if (!this.foundSyncframe) {
                extractorInput.peekFully(this.syncframePrefix, 0, 10);
                extractorInput.resetPeekPosition();
                if (Ac3Util.parseTrueHdSyncframeAudioSampleCount(this.syncframePrefix) != 0) {
                    this.foundSyncframe = true;
                    this.sampleCount = 0;
                } else {
                    return;
                }
            }
            if (this.sampleCount == 0) {
                this.blockFlags = i;
                this.chunkSize = 0;
            }
            this.chunkSize += i2;
        }

        public void sampleMetadata(Track track, long j) {
            if (this.foundSyncframe) {
                int i = this.sampleCount;
                this.sampleCount = i + 1;
                if (i == 0) {
                    this.timeUs = j;
                }
                if (this.sampleCount >= 16) {
                    track.output.sampleMetadata(this.timeUs, this.blockFlags, this.chunkSize, 0, track.cryptoData);
                    this.sampleCount = 0;
                }
            }
        }

        public void outputPendingSampleMetadata(Track track) {
            if (this.foundSyncframe && this.sampleCount > 0) {
                track.output.sampleMetadata(this.timeUs, this.blockFlags, this.chunkSize, 0, track.cryptoData);
                this.sampleCount = 0;
            }
        }
    }

    /* access modifiers changed from: protected */
    @CallSuper
    public int getElementType(int i) {
        switch (i) {
            case ID_TRACK_TYPE /*131*/:
            case ID_FLAG_DEFAULT /*136*/:
            case ID_BLOCK_DURATION /*155*/:
            case 159:
            case 176:
            case ID_CUE_TIME /*179*/:
            case 186:
            case 215:
            case ID_TIME_CODE /*231*/:
            case ID_CUE_CLUSTER_POSITION /*241*/:
            case 251:
            case ID_CONTENT_COMPRESSION_ALGORITHM /*16980*/:
            case ID_DOC_TYPE_READ_VERSION /*17029*/:
            case ID_EBML_READ_VERSION /*17143*/:
            case ID_CONTENT_ENCRYPTION_ALGORITHM /*18401*/:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /*18408*/:
            case ID_CONTENT_ENCODING_ORDER /*20529*/:
            case ID_CONTENT_ENCODING_SCOPE /*20530*/:
            case ID_SEEK_POSITION /*21420*/:
            case ID_STEREO_MODE /*21432*/:
            case ID_DISPLAY_WIDTH /*21680*/:
            case ID_DISPLAY_UNIT /*21682*/:
            case ID_DISPLAY_HEIGHT /*21690*/:
            case ID_FLAG_FORCED /*21930*/:
            case ID_COLOUR_RANGE /*21945*/:
            case ID_COLOUR_TRANSFER /*21946*/:
            case ID_COLOUR_PRIMARIES /*21947*/:
            case ID_MAX_CLL /*21948*/:
            case ID_MAX_FALL /*21949*/:
            case ID_CODEC_DELAY /*22186*/:
            case ID_SEEK_PRE_ROLL /*22203*/:
            case ID_AUDIO_BIT_DEPTH /*25188*/:
            case ID_PROJECTION_TYPE /*30321*/:
            case ID_DEFAULT_DURATION /*2352003*/:
            case ID_TIMECODE_SCALE /*2807729*/:
                return 2;
            case 134:
            case 17026:
            case ID_NAME /*21358*/:
            case ID_LANGUAGE /*2274716*/:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS /*18407*/:
            case ID_SEEK /*19899*/:
            case ID_CONTENT_COMPRESSION /*20532*/:
            case ID_CONTENT_ENCRYPTION /*20533*/:
            case ID_COLOUR /*21936*/:
            case ID_MASTERING_METADATA /*21968*/:
            case ID_CONTENT_ENCODING /*25152*/:
            case ID_CONTENT_ENCODINGS /*28032*/:
            case ID_PROJECTION /*30320*/:
            case ID_SEEK_HEAD /*290298740*/:
            case 357149030:
            case ID_TRACKS /*374648427*/:
            case ID_SEGMENT /*408125543*/:
            case ID_EBML /*440786851*/:
            case ID_CUES /*475249515*/:
            case ID_CLUSTER /*524531317*/:
                return 1;
            case 161:
            case 163:
            case ID_CONTENT_COMPRESSION_SETTINGS /*16981*/:
            case ID_CONTENT_ENCRYPTION_KEY_ID /*18402*/:
            case ID_SEEK_ID /*21419*/:
            case ID_CODEC_PRIVATE /*25506*/:
            case ID_PROJECTION_PRIVATE /*30322*/:
                return 4;
            case 181:
            case ID_DURATION /*17545*/:
            case ID_PRIMARY_R_CHROMATICITY_X /*21969*/:
            case ID_PRIMARY_R_CHROMATICITY_Y /*21970*/:
            case ID_PRIMARY_G_CHROMATICITY_X /*21971*/:
            case ID_PRIMARY_G_CHROMATICITY_Y /*21972*/:
            case ID_PRIMARY_B_CHROMATICITY_X /*21973*/:
            case ID_PRIMARY_B_CHROMATICITY_Y /*21974*/:
            case ID_WHITE_POINT_CHROMATICITY_X /*21975*/:
            case ID_WHITE_POINT_CHROMATICITY_Y /*21976*/:
            case ID_LUMNINANCE_MAX /*21977*/:
            case ID_LUMNINANCE_MIN /*21978*/:
            case ID_PROJECTION_POSE_YAW /*30323*/:
            case ID_PROJECTION_POSE_PITCH /*30324*/:
            case ID_PROJECTION_POSE_ROLL /*30325*/:
                return 5;
            default:
                return 0;
        }
    }

    /* access modifiers changed from: protected */
    @CallSuper
    public boolean isLevel1Element(int i) {
        return i == 357149030 || i == ID_CLUSTER || i == ID_CUES || i == ID_TRACKS;
    }

    public final void release() {
    }

    static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[]{new MatroskaExtractor()};
    }

    public MatroskaExtractor() {
        this(0);
    }

    public MatroskaExtractor(int i) {
        this(new DefaultEbmlReader(), i);
    }

    MatroskaExtractor(EbmlReader ebmlReader, int i) {
        this.segmentContentPosition = -1;
        this.timecodeScale = C.TIME_UNSET;
        this.durationTimecode = C.TIME_UNSET;
        this.durationUs = C.TIME_UNSET;
        this.cuesContentPosition = -1;
        this.seekPositionAfterBuildingCues = -1;
        this.clusterTimecodeUs = C.TIME_UNSET;
        this.reader = ebmlReader;
        this.reader.init(new InnerEbmlProcessor());
        boolean z = true;
        if ((i & 1) != 0) {
            z = false;
        }
        this.seekForCuesEnabled = z;
        this.varintReader = new VarintReader();
        this.tracks = new SparseArray<>();
        this.scratch = new ParsableByteArray(4);
        this.vorbisNumPageSamples = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new ParsableByteArray(4);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleStrippedBytes = new ParsableByteArray();
        this.subtitleSample = new ParsableByteArray();
        this.encryptionInitializationVector = new ParsableByteArray(8);
        this.encryptionSubsampleData = new ParsableByteArray();
    }

    public final boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return new Sniffer().sniff(extractorInput);
    }

    public final void init(ExtractorOutput extractorOutput2) {
        this.extractorOutput = extractorOutput2;
    }

    @CallSuper
    public void seek(long j, long j2) {
        this.clusterTimecodeUs = C.TIME_UNSET;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.reset();
        resetSample();
        for (int i = 0; i < this.tracks.size(); i++) {
            ((Track) this.tracks.valueAt(i)).reset();
        }
    }

    public final int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        this.sampleRead = false;
        boolean z = true;
        while (z && !this.sampleRead) {
            z = this.reader.read(extractorInput);
            if (z && maybeSeekForCues(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            ((Track) this.tracks.valueAt(i)).outputPendingSampleMetadata();
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    @CallSuper
    public void startMasterElement(int i, long j, long j2) throws ParserException {
        if (i == 160) {
            this.sampleSeenReferenceBlock = false;
        } else if (i == 174) {
            this.currentTrack = new Track();
        } else if (i == 187) {
            this.seenClusterPositionForCurrentCuePoint = false;
        } else if (i == ID_SEEK) {
            this.seekEntryId = -1;
            this.seekEntryPosition = -1;
        } else if (i == ID_CONTENT_ENCRYPTION) {
            this.currentTrack.hasContentEncryption = true;
        } else if (i == ID_MASTERING_METADATA) {
            this.currentTrack.hasColorInfo = true;
        } else if (i == ID_CONTENT_ENCODING) {
        } else {
            if (i == ID_SEGMENT) {
                long j3 = this.segmentContentPosition;
                if (j3 == -1 || j3 == j) {
                    this.segmentContentPosition = j;
                    this.segmentContentSize = j2;
                    return;
                }
                throw new ParserException("Multiple Segment elements not supported");
            } else if (i == ID_CUES) {
                this.cueTimesUs = new LongArray();
                this.cueClusterPositions = new LongArray();
            } else if (i != ID_CLUSTER || this.sentSeekMap) {
            } else {
                if (!this.seekForCuesEnabled || this.cuesContentPosition == -1) {
                    this.extractorOutput.seekMap(new Unseekable(this.durationUs));
                    this.sentSeekMap = true;
                    return;
                }
                this.seekForCues = true;
            }
        }
    }

    /* access modifiers changed from: protected */
    @CallSuper
    public void endMasterElement(int i) throws ParserException {
        if (i != 160) {
            if (i == 174) {
                if (isCodecSupported(this.currentTrack.codecId)) {
                    Track track = this.currentTrack;
                    track.initializeOutput(this.extractorOutput, track.number);
                    this.tracks.put(this.currentTrack.number, this.currentTrack);
                }
                this.currentTrack = null;
            } else if (i == ID_SEEK) {
                int i2 = this.seekEntryId;
                if (i2 != -1) {
                    long j = this.seekEntryPosition;
                    if (j != -1) {
                        if (i2 == ID_CUES) {
                            this.cuesContentPosition = j;
                        }
                    }
                }
                throw new ParserException("Mandatory element SeekID or SeekPosition not found");
            } else if (i != ID_CONTENT_ENCODING) {
                if (i != ID_CONTENT_ENCODINGS) {
                    if (i == 357149030) {
                        if (this.timecodeScale == C.TIME_UNSET) {
                            this.timecodeScale = 1000000;
                        }
                        long j2 = this.durationTimecode;
                        if (j2 != C.TIME_UNSET) {
                            this.durationUs = scaleTimecodeToUs(j2);
                        }
                    } else if (i != ID_TRACKS) {
                        if (i == ID_CUES && !this.sentSeekMap) {
                            this.extractorOutput.seekMap(buildSeekMap());
                            this.sentSeekMap = true;
                        }
                    } else if (this.tracks.size() != 0) {
                        this.extractorOutput.endTracks();
                    } else {
                        throw new ParserException("No valid tracks were found");
                    }
                } else if (this.currentTrack.hasContentEncryption && this.currentTrack.sampleStrippedBytes != null) {
                    throw new ParserException("Combining encryption and compression is not supported");
                }
            } else if (this.currentTrack.hasContentEncryption) {
                if (this.currentTrack.cryptoData != null) {
                    this.currentTrack.drmInitData = new DrmInitData(new SchemeData(C.UUID_NIL, MimeTypes.VIDEO_WEBM, this.currentTrack.cryptoData.encryptionKey));
                } else {
                    throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
                }
            }
        } else if (this.blockState == 2) {
            if (!this.sampleSeenReferenceBlock) {
                this.blockFlags |= 1;
            }
            commitSampleToOutput((Track) this.tracks.get(this.blockTrackNumber), this.blockTimeUs);
            this.blockState = 0;
        }
    }

    /* access modifiers changed from: protected */
    @CallSuper
    public void integerElement(int i, long j) throws ParserException {
        String str = " not supported";
        if (i != ID_CONTENT_ENCODING_ORDER) {
            if (i != ID_CONTENT_ENCODING_SCOPE) {
                boolean z = false;
                switch (i) {
                    case ID_TRACK_TYPE /*131*/:
                        this.currentTrack.type = (int) j;
                        return;
                    case ID_FLAG_DEFAULT /*136*/:
                        Track track = this.currentTrack;
                        if (j == 1) {
                            z = true;
                        }
                        track.flagDefault = z;
                        return;
                    case ID_BLOCK_DURATION /*155*/:
                        this.blockDurationUs = scaleTimecodeToUs(j);
                        return;
                    case 159:
                        this.currentTrack.channelCount = (int) j;
                        return;
                    case 176:
                        this.currentTrack.width = (int) j;
                        return;
                    case ID_CUE_TIME /*179*/:
                        this.cueTimesUs.add(scaleTimecodeToUs(j));
                        return;
                    case 186:
                        this.currentTrack.height = (int) j;
                        return;
                    case 215:
                        this.currentTrack.number = (int) j;
                        return;
                    case ID_TIME_CODE /*231*/:
                        this.clusterTimecodeUs = scaleTimecodeToUs(j);
                        return;
                    case ID_CUE_CLUSTER_POSITION /*241*/:
                        if (!this.seenClusterPositionForCurrentCuePoint) {
                            this.cueClusterPositions.add(j);
                            this.seenClusterPositionForCurrentCuePoint = true;
                            return;
                        }
                        return;
                    case 251:
                        this.sampleSeenReferenceBlock = true;
                        return;
                    case ID_CONTENT_COMPRESSION_ALGORITHM /*16980*/:
                        if (j != 3) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("ContentCompAlgo ");
                            sb.append(j);
                            sb.append(str);
                            throw new ParserException(sb.toString());
                        }
                        return;
                    case ID_DOC_TYPE_READ_VERSION /*17029*/:
                        if (j < 1 || j > 2) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("DocTypeReadVersion ");
                            sb2.append(j);
                            sb2.append(str);
                            throw new ParserException(sb2.toString());
                        }
                        return;
                    case ID_EBML_READ_VERSION /*17143*/:
                        if (j != 1) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("EBMLReadVersion ");
                            sb3.append(j);
                            sb3.append(str);
                            throw new ParserException(sb3.toString());
                        }
                        return;
                    case ID_CONTENT_ENCRYPTION_ALGORITHM /*18401*/:
                        if (j != 5) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("ContentEncAlgo ");
                            sb4.append(j);
                            sb4.append(str);
                            throw new ParserException(sb4.toString());
                        }
                        return;
                    case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /*18408*/:
                        if (j != 1) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("AESSettingsCipherMode ");
                            sb5.append(j);
                            sb5.append(str);
                            throw new ParserException(sb5.toString());
                        }
                        return;
                    case ID_SEEK_POSITION /*21420*/:
                        this.seekEntryPosition = j + this.segmentContentPosition;
                        return;
                    case ID_STEREO_MODE /*21432*/:
                        int i2 = (int) j;
                        if (i2 == 0) {
                            this.currentTrack.stereoMode = 0;
                            return;
                        } else if (i2 == 1) {
                            this.currentTrack.stereoMode = 2;
                            return;
                        } else if (i2 == 3) {
                            this.currentTrack.stereoMode = 1;
                            return;
                        } else if (i2 == 15) {
                            this.currentTrack.stereoMode = 3;
                            return;
                        } else {
                            return;
                        }
                    case ID_DISPLAY_WIDTH /*21680*/:
                        this.currentTrack.displayWidth = (int) j;
                        return;
                    case ID_DISPLAY_UNIT /*21682*/:
                        this.currentTrack.displayUnit = (int) j;
                        return;
                    case ID_DISPLAY_HEIGHT /*21690*/:
                        this.currentTrack.displayHeight = (int) j;
                        return;
                    case ID_FLAG_FORCED /*21930*/:
                        Track track2 = this.currentTrack;
                        if (j == 1) {
                            z = true;
                        }
                        track2.flagForced = z;
                        return;
                    case ID_CODEC_DELAY /*22186*/:
                        this.currentTrack.codecDelayNs = j;
                        return;
                    case ID_SEEK_PRE_ROLL /*22203*/:
                        this.currentTrack.seekPreRollNs = j;
                        return;
                    case ID_AUDIO_BIT_DEPTH /*25188*/:
                        this.currentTrack.audioBitDepth = (int) j;
                        return;
                    case ID_PROJECTION_TYPE /*30321*/:
                        int i3 = (int) j;
                        if (i3 == 0) {
                            this.currentTrack.projectionType = 0;
                            return;
                        } else if (i3 == 1) {
                            this.currentTrack.projectionType = 1;
                            return;
                        } else if (i3 == 2) {
                            this.currentTrack.projectionType = 2;
                            return;
                        } else if (i3 == 3) {
                            this.currentTrack.projectionType = 3;
                            return;
                        } else {
                            return;
                        }
                    case ID_DEFAULT_DURATION /*2352003*/:
                        this.currentTrack.defaultSampleDurationNs = (int) j;
                        return;
                    case ID_TIMECODE_SCALE /*2807729*/:
                        this.timecodeScale = j;
                        return;
                    default:
                        switch (i) {
                            case ID_COLOUR_RANGE /*21945*/:
                                int i4 = (int) j;
                                if (i4 == 1) {
                                    this.currentTrack.colorRange = 2;
                                    return;
                                } else if (i4 == 2) {
                                    this.currentTrack.colorRange = 1;
                                    return;
                                } else {
                                    return;
                                }
                            case ID_COLOUR_TRANSFER /*21946*/:
                                int i5 = (int) j;
                                if (i5 != 1) {
                                    if (i5 == 16) {
                                        this.currentTrack.colorTransfer = 6;
                                        return;
                                    } else if (i5 == 18) {
                                        this.currentTrack.colorTransfer = 7;
                                        return;
                                    } else if (!(i5 == 6 || i5 == 7)) {
                                        return;
                                    }
                                }
                                this.currentTrack.colorTransfer = 3;
                                return;
                            case ID_COLOUR_PRIMARIES /*21947*/:
                                Track track3 = this.currentTrack;
                                track3.hasColorInfo = true;
                                int i6 = (int) j;
                                if (i6 == 1) {
                                    track3.colorSpace = 1;
                                    return;
                                } else if (i6 == 9) {
                                    track3.colorSpace = 6;
                                    return;
                                } else if (i6 == 4 || i6 == 5 || i6 == 6 || i6 == 7) {
                                    this.currentTrack.colorSpace = 2;
                                    return;
                                } else {
                                    return;
                                }
                            case ID_MAX_CLL /*21948*/:
                                this.currentTrack.maxContentLuminance = (int) j;
                                return;
                            case ID_MAX_FALL /*21949*/:
                                this.currentTrack.maxFrameAverageLuminance = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j != 1) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append("ContentEncodingScope ");
                sb6.append(j);
                sb6.append(str);
                throw new ParserException(sb6.toString());
            }
        } else if (j != 0) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append("ContentEncodingOrder ");
            sb7.append(j);
            sb7.append(str);
            throw new ParserException(sb7.toString());
        }
    }

    /* access modifiers changed from: protected */
    @CallSuper
    public void floatElement(int i, double d) throws ParserException {
        if (i == 181) {
            this.currentTrack.sampleRate = (int) d;
        } else if (i != ID_DURATION) {
            switch (i) {
                case ID_PRIMARY_R_CHROMATICITY_X /*21969*/:
                    this.currentTrack.primaryRChromaticityX = (float) d;
                    return;
                case ID_PRIMARY_R_CHROMATICITY_Y /*21970*/:
                    this.currentTrack.primaryRChromaticityY = (float) d;
                    return;
                case ID_PRIMARY_G_CHROMATICITY_X /*21971*/:
                    this.currentTrack.primaryGChromaticityX = (float) d;
                    return;
                case ID_PRIMARY_G_CHROMATICITY_Y /*21972*/:
                    this.currentTrack.primaryGChromaticityY = (float) d;
                    return;
                case ID_PRIMARY_B_CHROMATICITY_X /*21973*/:
                    this.currentTrack.primaryBChromaticityX = (float) d;
                    return;
                case ID_PRIMARY_B_CHROMATICITY_Y /*21974*/:
                    this.currentTrack.primaryBChromaticityY = (float) d;
                    return;
                case ID_WHITE_POINT_CHROMATICITY_X /*21975*/:
                    this.currentTrack.whitePointChromaticityX = (float) d;
                    return;
                case ID_WHITE_POINT_CHROMATICITY_Y /*21976*/:
                    this.currentTrack.whitePointChromaticityY = (float) d;
                    return;
                case ID_LUMNINANCE_MAX /*21977*/:
                    this.currentTrack.maxMasteringLuminance = (float) d;
                    return;
                case ID_LUMNINANCE_MIN /*21978*/:
                    this.currentTrack.minMasteringLuminance = (float) d;
                    return;
                default:
                    switch (i) {
                        case ID_PROJECTION_POSE_YAW /*30323*/:
                            this.currentTrack.projectionPoseYaw = (float) d;
                            return;
                        case ID_PROJECTION_POSE_PITCH /*30324*/:
                            this.currentTrack.projectionPosePitch = (float) d;
                            return;
                        case ID_PROJECTION_POSE_ROLL /*30325*/:
                            this.currentTrack.projectionPoseRoll = (float) d;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            this.durationTimecode = (long) d;
        }
    }

    /* access modifiers changed from: protected */
    @CallSuper
    public void stringElement(int i, String str) throws ParserException {
        if (i == 134) {
            this.currentTrack.codecId = str;
        } else if (i != 17026) {
            if (i == ID_NAME) {
                this.currentTrack.name = str;
            } else if (i == ID_LANGUAGE) {
                this.currentTrack.language = str;
            }
        } else if (!DOC_TYPE_WEBM.equals(str) && !DOC_TYPE_MATROSKA.equals(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new ParserException(sb.toString());
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0201, code lost:
        throw new com.google.android.exoplayer2.ParserException("EBML lacing sample size out of range.");
     */
    @androidx.annotation.CallSuper
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void binaryElement(int r20, int r21, com.google.android.exoplayer2.extractor.ExtractorInput r22) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r2 = r21
            r3 = r22
            r4 = 161(0xa1, float:2.26E-43)
            r5 = 163(0xa3, float:2.28E-43)
            r6 = 4
            r7 = 0
            r8 = 1
            if (r1 == r4) goto L_0x0094
            if (r1 == r5) goto L_0x0094
            r4 = 16981(0x4255, float:2.3795E-41)
            if (r1 == r4) goto L_0x0087
            r4 = 18402(0x47e2, float:2.5787E-41)
            if (r1 == r4) goto L_0x0077
            r4 = 21419(0x53ab, float:3.0014E-41)
            if (r1 == r4) goto L_0x0058
            r4 = 25506(0x63a2, float:3.5742E-41)
            if (r1 == r4) goto L_0x004b
            r4 = 30322(0x7672, float:4.249E-41)
            if (r1 != r4) goto L_0x0034
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$Track r1 = r0.currentTrack
            byte[] r4 = new byte[r2]
            r1.projectionData = r4
            byte[] r1 = r1.projectionData
            r3.readFully(r1, r7, r2)
            goto L_0x02b9
        L_0x0034:
            com.google.android.exoplayer2.ParserException r2 = new com.google.android.exoplayer2.ParserException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Unexpected id: "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L_0x004b:
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$Track r1 = r0.currentTrack
            byte[] r4 = new byte[r2]
            r1.codecPrivate = r4
            byte[] r1 = r1.codecPrivate
            r3.readFully(r1, r7, r2)
            goto L_0x02b9
        L_0x0058:
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r0.seekEntryIdBytes
            byte[] r1 = r1.data
            java.util.Arrays.fill(r1, r7)
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r0.seekEntryIdBytes
            byte[] r1 = r1.data
            int r6 = r6 - r2
            r3.readFully(r1, r6, r2)
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r0.seekEntryIdBytes
            r1.setPosition(r7)
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r0.seekEntryIdBytes
            long r1 = r1.readUnsignedInt()
            int r2 = (int) r1
            r0.seekEntryId = r2
            goto L_0x02b9
        L_0x0077:
            byte[] r1 = new byte[r2]
            r3.readFully(r1, r7, r2)
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$Track r2 = r0.currentTrack
            com.google.android.exoplayer2.extractor.TrackOutput$CryptoData r3 = new com.google.android.exoplayer2.extractor.TrackOutput$CryptoData
            r3.<init>(r8, r1, r7, r7)
            r2.cryptoData = r3
            goto L_0x02b9
        L_0x0087:
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$Track r1 = r0.currentTrack
            byte[] r4 = new byte[r2]
            r1.sampleStrippedBytes = r4
            byte[] r1 = r1.sampleStrippedBytes
            r3.readFully(r1, r7, r2)
            goto L_0x02b9
        L_0x0094:
            int r4 = r0.blockState
            r9 = 8
            if (r4 != 0) goto L_0x00b9
            com.google.android.exoplayer2.extractor.mkv.VarintReader r4 = r0.varintReader
            long r10 = r4.readUnsignedVarint(r3, r7, r8, r9)
            int r4 = (int) r10
            r0.blockTrackNumber = r4
            com.google.android.exoplayer2.extractor.mkv.VarintReader r4 = r0.varintReader
            int r4 = r4.getLastLength()
            r0.blockTrackNumberLength = r4
            r10 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.blockDurationUs = r10
            r0.blockState = r8
            com.google.android.exoplayer2.util.ParsableByteArray r4 = r0.scratch
            r4.reset()
        L_0x00b9:
            android.util.SparseArray<com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$Track> r4 = r0.tracks
            int r10 = r0.blockTrackNumber
            java.lang.Object r4 = r4.get(r10)
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$Track r4 = (com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track) r4
            if (r4 != 0) goto L_0x00cf
            int r1 = r0.blockTrackNumberLength
            int r1 = r2 - r1
            r3.skipFully(r1)
            r0.blockState = r7
            return
        L_0x00cf:
            int r10 = r0.blockState
            if (r10 != r8) goto L_0x0286
            r10 = 3
            r0.readScratch(r3, r10)
            com.google.android.exoplayer2.util.ParsableByteArray r11 = r0.scratch
            byte[] r11 = r11.data
            r12 = 2
            byte r11 = r11[r12]
            r11 = r11 & 6
            int r11 = r11 >> r8
            r13 = 255(0xff, float:3.57E-43)
            if (r11 != 0) goto L_0x00f9
            r0.blockLacingSampleCount = r8
            int[] r6 = r0.blockLacingSampleSizes
            int[] r6 = ensureArrayCapacity(r6, r8)
            r0.blockLacingSampleSizes = r6
            int[] r6 = r0.blockLacingSampleSizes
            int r11 = r0.blockTrackNumberLength
            int r2 = r2 - r11
            int r2 = r2 - r10
            r6[r7] = r2
            goto L_0x0215
        L_0x00f9:
            if (r1 != r5) goto L_0x027e
            r0.readScratch(r3, r6)
            com.google.android.exoplayer2.util.ParsableByteArray r14 = r0.scratch
            byte[] r14 = r14.data
            byte r14 = r14[r10]
            r14 = r14 & r13
            int r14 = r14 + r8
            r0.blockLacingSampleCount = r14
            int[] r14 = r0.blockLacingSampleSizes
            int r15 = r0.blockLacingSampleCount
            int[] r14 = ensureArrayCapacity(r14, r15)
            r0.blockLacingSampleSizes = r14
            if (r11 != r12) goto L_0x0122
            int r10 = r0.blockTrackNumberLength
            int r2 = r2 - r10
            int r2 = r2 - r6
            int r6 = r0.blockLacingSampleCount
            int r2 = r2 / r6
            int[] r10 = r0.blockLacingSampleSizes
            java.util.Arrays.fill(r10, r7, r6, r2)
            goto L_0x0215
        L_0x0122:
            if (r11 != r8) goto L_0x015a
            r6 = 0
            r10 = 4
            r11 = 0
        L_0x0127:
            int r14 = r0.blockLacingSampleCount
            int r15 = r14 + -1
            if (r6 >= r15) goto L_0x014e
            int[] r14 = r0.blockLacingSampleSizes
            r14[r6] = r7
        L_0x0131:
            int r10 = r10 + r8
            r0.readScratch(r3, r10)
            com.google.android.exoplayer2.util.ParsableByteArray r14 = r0.scratch
            byte[] r14 = r14.data
            int r15 = r10 + -1
            byte r14 = r14[r15]
            r14 = r14 & r13
            int[] r15 = r0.blockLacingSampleSizes
            r16 = r15[r6]
            int r16 = r16 + r14
            r15[r6] = r16
            if (r14 == r13) goto L_0x0131
            r14 = r15[r6]
            int r11 = r11 + r14
            int r6 = r6 + 1
            goto L_0x0127
        L_0x014e:
            int[] r6 = r0.blockLacingSampleSizes
            int r14 = r14 - r8
            int r15 = r0.blockTrackNumberLength
            int r2 = r2 - r15
            int r2 = r2 - r10
            int r2 = r2 - r11
            r6[r14] = r2
            goto L_0x0215
        L_0x015a:
            if (r11 != r10) goto L_0x0267
            r6 = 0
            r10 = 4
            r11 = 0
        L_0x015f:
            int r14 = r0.blockLacingSampleCount
            int r15 = r14 + -1
            if (r6 >= r15) goto L_0x020a
            int[] r14 = r0.blockLacingSampleSizes
            r14[r6] = r7
            int r10 = r10 + 1
            r0.readScratch(r3, r10)
            com.google.android.exoplayer2.util.ParsableByteArray r14 = r0.scratch
            byte[] r14 = r14.data
            int r15 = r10 + -1
            byte r14 = r14[r15]
            if (r14 == 0) goto L_0x0202
            r16 = 0
            r14 = 0
        L_0x017b:
            if (r14 >= r9) goto L_0x01cd
            int r18 = 7 - r14
            int r18 = r8 << r18
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r0.scratch
            byte[] r5 = r5.data
            byte r5 = r5[r15]
            r5 = r5 & r18
            if (r5 == 0) goto L_0x01c3
            int r10 = r10 + r14
            r0.readScratch(r3, r10)
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r0.scratch
            byte[] r5 = r5.data
            int r16 = r15 + 1
            byte r5 = r5[r15]
            r5 = r5 & r13
            r15 = r18 ^ -1
            r5 = r5 & r15
            long r7 = (long) r5
            r5 = r16
        L_0x019e:
            r16 = r7
            if (r5 >= r10) goto L_0x01b5
            long r7 = r16 << r9
            com.google.android.exoplayer2.util.ParsableByteArray r15 = r0.scratch
            byte[] r15 = r15.data
            int r16 = r5 + 1
            byte r5 = r15[r5]
            r5 = r5 & r13
            long r12 = (long) r5
            long r7 = r7 | r12
            r5 = r16
            r12 = 2
            r13 = 255(0xff, float:3.57E-43)
            goto L_0x019e
        L_0x01b5:
            if (r6 <= 0) goto L_0x01cd
            int r14 = r14 * 7
            int r14 = r14 + 6
            r7 = 1
            long r12 = r7 << r14
            long r12 = r12 - r7
            long r16 = r16 - r12
            goto L_0x01cd
        L_0x01c3:
            int r14 = r14 + 1
            r5 = 163(0xa3, float:2.28E-43)
            r7 = 0
            r8 = 1
            r12 = 2
            r13 = 255(0xff, float:3.57E-43)
            goto L_0x017b
        L_0x01cd:
            r7 = r16
            r12 = -2147483648(0xffffffff80000000, double:NaN)
            int r5 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r5 < 0) goto L_0x01fa
            r12 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r5 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r5 > 0) goto L_0x01fa
            int r5 = (int) r7
            int[] r7 = r0.blockLacingSampleSizes
            if (r6 != 0) goto L_0x01e3
            goto L_0x01e8
        L_0x01e3:
            int r8 = r6 + -1
            r8 = r7[r8]
            int r5 = r5 + r8
        L_0x01e8:
            r7[r6] = r5
            int[] r5 = r0.blockLacingSampleSizes
            r5 = r5[r6]
            int r11 = r11 + r5
            int r6 = r6 + 1
            r5 = 163(0xa3, float:2.28E-43)
            r7 = 0
            r8 = 1
            r12 = 2
            r13 = 255(0xff, float:3.57E-43)
            goto L_0x015f
        L_0x01fa:
            com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
            java.lang.String r2 = "EBML lacing sample size out of range."
            r1.<init>(r2)
            throw r1
        L_0x0202:
            com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
            java.lang.String r2 = "No valid varint length mask found"
            r1.<init>(r2)
            throw r1
        L_0x020a:
            int[] r5 = r0.blockLacingSampleSizes
            r6 = 1
            int r14 = r14 - r6
            int r6 = r0.blockTrackNumberLength
            int r2 = r2 - r6
            int r2 = r2 - r10
            int r2 = r2 - r11
            r5[r14] = r2
        L_0x0215:
            com.google.android.exoplayer2.util.ParsableByteArray r2 = r0.scratch
            byte[] r2 = r2.data
            r5 = 0
            byte r2 = r2[r5]
            int r2 = r2 << r9
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r0.scratch
            byte[] r5 = r5.data
            r6 = 1
            byte r5 = r5[r6]
            r6 = 255(0xff, float:3.57E-43)
            r5 = r5 & r6
            r2 = r2 | r5
            long r5 = r0.clusterTimecodeUs
            long r7 = (long) r2
            long r7 = r0.scaleTimecodeToUs(r7)
            long r5 = r5 + r7
            r0.blockTimeUs = r5
            com.google.android.exoplayer2.util.ParsableByteArray r2 = r0.scratch
            byte[] r2 = r2.data
            r5 = 2
            byte r2 = r2[r5]
            r2 = r2 & r9
            if (r2 != r9) goto L_0x023e
            r2 = 1
            goto L_0x023f
        L_0x023e:
            r2 = 0
        L_0x023f:
            int r6 = r4.type
            if (r6 == r5) goto L_0x0255
            r6 = 163(0xa3, float:2.28E-43)
            if (r1 != r6) goto L_0x0253
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r0.scratch
            byte[] r6 = r6.data
            byte r6 = r6[r5]
            r5 = 128(0x80, float:1.794E-43)
            r6 = r6 & r5
            if (r6 != r5) goto L_0x0253
            goto L_0x0255
        L_0x0253:
            r5 = 0
            goto L_0x0256
        L_0x0255:
            r5 = 1
        L_0x0256:
            if (r2 == 0) goto L_0x025b
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L_0x025c
        L_0x025b:
            r7 = 0
        L_0x025c:
            r2 = r5 | r7
            r0.blockFlags = r2
            r2 = 2
            r0.blockState = r2
            r2 = 0
            r0.blockLacingSampleIndex = r2
            goto L_0x0286
        L_0x0267:
            com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unexpected lacing value: "
            r2.append(r3)
            r2.append(r11)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x027e:
            com.google.android.exoplayer2.ParserException r1 = new com.google.android.exoplayer2.ParserException
            java.lang.String r2 = "Lacing only supported in SimpleBlocks."
            r1.<init>(r2)
            throw r1
        L_0x0286:
            r2 = 163(0xa3, float:2.28E-43)
            if (r1 != r2) goto L_0x02b1
        L_0x028a:
            int r1 = r0.blockLacingSampleIndex
            int r2 = r0.blockLacingSampleCount
            if (r1 >= r2) goto L_0x02ad
            int[] r2 = r0.blockLacingSampleSizes
            r1 = r2[r1]
            r0.writeSampleData(r3, r4, r1)
            long r1 = r0.blockTimeUs
            int r5 = r0.blockLacingSampleIndex
            int r6 = r4.defaultSampleDurationNs
            int r5 = r5 * r6
            int r5 = r5 / 1000
            long r5 = (long) r5
            long r1 = r1 + r5
            r0.commitSampleToOutput(r4, r1)
            int r1 = r0.blockLacingSampleIndex
            r2 = 1
            int r1 = r1 + r2
            r0.blockLacingSampleIndex = r1
            goto L_0x028a
        L_0x02ad:
            r1 = 0
            r0.blockState = r1
            goto L_0x02b9
        L_0x02b1:
            r1 = 0
            int[] r2 = r0.blockLacingSampleSizes
            r1 = r2[r1]
            r0.writeSampleData(r3, r4, r1)
        L_0x02b9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.binaryElement(int, int, com.google.android.exoplayer2.extractor.ExtractorInput):void");
    }

    private void commitSampleToOutput(Track track, long j) {
        Track track2 = track;
        if (track2.trueHdSampleRechunker != null) {
            track2.trueHdSampleRechunker.sampleMetadata(track2, j);
        } else {
            long j2 = j;
            if (CODEC_ID_SUBRIP.equals(track2.codecId)) {
                Track track3 = track;
                commitSubtitleSample(track3, SUBRIP_TIMECODE_FORMAT, 19, 1000, SUBRIP_TIMECODE_EMPTY);
            } else {
                if (CODEC_ID_ASS.equals(track2.codecId)) {
                    Track track4 = track;
                    commitSubtitleSample(track4, SSA_TIMECODE_FORMAT, 21, 10000, SSA_TIMECODE_EMPTY);
                }
            }
            track2.output.sampleMetadata(j, this.blockFlags, this.sampleBytesWritten, 0, track2.cryptoData);
        }
        this.sampleRead = true;
        resetSample();
    }

    private void resetSample() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.reset();
    }

    private void readScratch(ExtractorInput extractorInput, int i) throws IOException, InterruptedException {
        if (this.scratch.limit() < i) {
            if (this.scratch.capacity() < i) {
                ParsableByteArray parsableByteArray = this.scratch;
                parsableByteArray.reset(Arrays.copyOf(parsableByteArray.data, Math.max(this.scratch.data.length * 2, i)), this.scratch.limit());
            }
            extractorInput.readFully(this.scratch.data, this.scratch.limit(), i - this.scratch.limit());
            this.scratch.setLimit(i);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:82:0x01fe  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void writeSampleData(com.google.android.exoplayer2.extractor.ExtractorInput r11, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track r12, int r13) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r10 = this;
            java.lang.String r0 = r12.codecId
            java.lang.String r1 = "S_TEXT/UTF8"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x0010
            byte[] r12 = SUBRIP_PREFIX
            r10.writeSubtitleSampleData(r11, r12, r13)
            return
        L_0x0010:
            java.lang.String r0 = r12.codecId
            java.lang.String r1 = "S_TEXT/ASS"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x0020
            byte[] r12 = SSA_PREFIX
            r10.writeSubtitleSampleData(r11, r12, r13)
            return
        L_0x0020:
            com.google.android.exoplayer2.extractor.TrackOutput r0 = r12.output
            boolean r1 = r10.sampleEncodingHandled
            r2 = 4
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 != 0) goto L_0x0176
            boolean r1 = r12.hasContentEncryption
            if (r1 == 0) goto L_0x0166
            int r1 = r10.blockFlags
            r6 = -1073741825(0xffffffffbfffffff, float:-1.9999999)
            r1 = r1 & r6
            r10.blockFlags = r1
            boolean r1 = r10.sampleSignalByteRead
            r6 = 128(0x80, float:1.794E-43)
            if (r1 != 0) goto L_0x0064
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.scratch
            byte[] r1 = r1.data
            r11.readFully(r1, r5, r4)
            int r1 = r10.sampleBytesRead
            int r1 = r1 + r4
            r10.sampleBytesRead = r1
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.scratch
            byte[] r1 = r1.data
            byte r1 = r1[r5]
            r1 = r1 & r6
            if (r1 == r6) goto L_0x005c
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.scratch
            byte[] r1 = r1.data
            byte r1 = r1[r5]
            r10.sampleSignalByte = r1
            r10.sampleSignalByteRead = r4
            goto L_0x0064
        L_0x005c:
            com.google.android.exoplayer2.ParserException r11 = new com.google.android.exoplayer2.ParserException
            java.lang.String r12 = "Extension bit is set in signal byte"
            r11.<init>(r12)
            throw r11
        L_0x0064:
            byte r1 = r10.sampleSignalByte
            r1 = r1 & r4
            if (r1 != r4) goto L_0x006b
            r1 = 1
            goto L_0x006c
        L_0x006b:
            r1 = 0
        L_0x006c:
            if (r1 == 0) goto L_0x0174
            byte r1 = r10.sampleSignalByte
            r1 = r1 & r3
            if (r1 != r3) goto L_0x0075
            r1 = 1
            goto L_0x0076
        L_0x0075:
            r1 = 0
        L_0x0076:
            int r7 = r10.blockFlags
            r8 = 1073741824(0x40000000, float:2.0)
            r7 = r7 | r8
            r10.blockFlags = r7
            boolean r7 = r10.sampleInitializationVectorRead
            if (r7 != 0) goto L_0x00bb
            com.google.android.exoplayer2.util.ParsableByteArray r7 = r10.encryptionInitializationVector
            byte[] r7 = r7.data
            r8 = 8
            r11.readFully(r7, r5, r8)
            int r7 = r10.sampleBytesRead
            int r7 = r7 + r8
            r10.sampleBytesRead = r7
            r10.sampleInitializationVectorRead = r4
            com.google.android.exoplayer2.util.ParsableByteArray r7 = r10.scratch
            byte[] r7 = r7.data
            if (r1 == 0) goto L_0x0098
            goto L_0x0099
        L_0x0098:
            r6 = 0
        L_0x0099:
            r6 = r6 | r8
            byte r6 = (byte) r6
            r7[r5] = r6
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.scratch
            r6.setPosition(r5)
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.scratch
            r0.sampleData(r6, r4)
            int r6 = r10.sampleBytesWritten
            int r6 = r6 + r4
            r10.sampleBytesWritten = r6
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.encryptionInitializationVector
            r6.setPosition(r5)
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.encryptionInitializationVector
            r0.sampleData(r6, r8)
            int r6 = r10.sampleBytesWritten
            int r6 = r6 + r8
            r10.sampleBytesWritten = r6
        L_0x00bb:
            if (r1 == 0) goto L_0x0174
            boolean r1 = r10.samplePartitionCountRead
            if (r1 != 0) goto L_0x00dc
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.scratch
            byte[] r1 = r1.data
            r11.readFully(r1, r5, r4)
            int r1 = r10.sampleBytesRead
            int r1 = r1 + r4
            r10.sampleBytesRead = r1
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.scratch
            r1.setPosition(r5)
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.scratch
            int r1 = r1.readUnsignedByte()
            r10.samplePartitionCount = r1
            r10.samplePartitionCountRead = r4
        L_0x00dc:
            int r1 = r10.samplePartitionCount
            int r1 = r1 * 4
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.scratch
            r6.reset(r1)
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.scratch
            byte[] r6 = r6.data
            r11.readFully(r6, r5, r1)
            int r6 = r10.sampleBytesRead
            int r6 = r6 + r1
            r10.sampleBytesRead = r6
            int r1 = r10.samplePartitionCount
            int r1 = r1 / r3
            int r1 = r1 + r4
            short r1 = (short) r1
            int r6 = r1 * 6
            int r6 = r6 + r3
            java.nio.ByteBuffer r7 = r10.encryptionSubsampleDataBuffer
            if (r7 == 0) goto L_0x0103
            int r7 = r7.capacity()
            if (r7 >= r6) goto L_0x0109
        L_0x0103:
            java.nio.ByteBuffer r7 = java.nio.ByteBuffer.allocate(r6)
            r10.encryptionSubsampleDataBuffer = r7
        L_0x0109:
            java.nio.ByteBuffer r7 = r10.encryptionSubsampleDataBuffer
            r7.position(r5)
            java.nio.ByteBuffer r7 = r10.encryptionSubsampleDataBuffer
            r7.putShort(r1)
            r1 = 0
            r7 = 0
        L_0x0115:
            int r8 = r10.samplePartitionCount
            if (r1 >= r8) goto L_0x0137
            com.google.android.exoplayer2.util.ParsableByteArray r8 = r10.scratch
            int r8 = r8.readUnsignedIntToInt()
            int r9 = r1 % 2
            if (r9 != 0) goto L_0x012c
            java.nio.ByteBuffer r9 = r10.encryptionSubsampleDataBuffer
            int r7 = r8 - r7
            short r7 = (short) r7
            r9.putShort(r7)
            goto L_0x0133
        L_0x012c:
            java.nio.ByteBuffer r9 = r10.encryptionSubsampleDataBuffer
            int r7 = r8 - r7
            r9.putInt(r7)
        L_0x0133:
            int r1 = r1 + 1
            r7 = r8
            goto L_0x0115
        L_0x0137:
            int r1 = r10.sampleBytesRead
            int r1 = r13 - r1
            int r1 = r1 - r7
            int r8 = r8 % r3
            if (r8 != r4) goto L_0x0145
            java.nio.ByteBuffer r7 = r10.encryptionSubsampleDataBuffer
            r7.putInt(r1)
            goto L_0x0150
        L_0x0145:
            java.nio.ByteBuffer r7 = r10.encryptionSubsampleDataBuffer
            short r1 = (short) r1
            r7.putShort(r1)
            java.nio.ByteBuffer r1 = r10.encryptionSubsampleDataBuffer
            r1.putInt(r5)
        L_0x0150:
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.encryptionSubsampleData
            java.nio.ByteBuffer r7 = r10.encryptionSubsampleDataBuffer
            byte[] r7 = r7.array()
            r1.reset(r7, r6)
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.encryptionSubsampleData
            r0.sampleData(r1, r6)
            int r1 = r10.sampleBytesWritten
            int r1 = r1 + r6
            r10.sampleBytesWritten = r1
            goto L_0x0174
        L_0x0166:
            byte[] r1 = r12.sampleStrippedBytes
            if (r1 == 0) goto L_0x0174
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.sampleStrippedBytes
            byte[] r6 = r12.sampleStrippedBytes
            byte[] r7 = r12.sampleStrippedBytes
            int r7 = r7.length
            r1.reset(r6, r7)
        L_0x0174:
            r10.sampleEncodingHandled = r4
        L_0x0176:
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.sampleStrippedBytes
            int r1 = r1.limit()
            int r13 = r13 + r1
            java.lang.String r1 = r12.codecId
            java.lang.String r6 = "V_MPEG4/ISO/AVC"
            boolean r1 = r6.equals(r1)
            if (r1 != 0) goto L_0x01b4
            java.lang.String r1 = r12.codecId
            java.lang.String r6 = "V_MPEGH/ISO/HEVC"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L_0x0192
            goto L_0x01b4
        L_0x0192:
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$TrueHdSampleRechunker r1 = r12.trueHdSampleRechunker
            if (r1 == 0) goto L_0x01aa
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.sampleStrippedBytes
            int r1 = r1.limit()
            if (r1 != 0) goto L_0x019f
            goto L_0x01a0
        L_0x019f:
            r4 = 0
        L_0x01a0:
            com.google.android.exoplayer2.util.Assertions.checkState(r4)
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$TrueHdSampleRechunker r1 = r12.trueHdSampleRechunker
            int r3 = r10.blockFlags
            r1.startSample(r11, r3, r13)
        L_0x01aa:
            int r1 = r10.sampleBytesRead
            if (r1 >= r13) goto L_0x01f4
            int r1 = r13 - r1
            r10.readToOutput(r11, r0, r1)
            goto L_0x01aa
        L_0x01b4:
            com.google.android.exoplayer2.util.ParsableByteArray r1 = r10.nalLength
            byte[] r1 = r1.data
            r1[r5] = r5
            r1[r4] = r5
            r1[r3] = r5
            int r3 = r12.nalUnitLengthFieldLength
            int r4 = r12.nalUnitLengthFieldLength
            int r4 = 4 - r4
        L_0x01c4:
            int r6 = r10.sampleBytesRead
            if (r6 >= r13) goto L_0x01f4
            int r6 = r10.sampleCurrentNalBytesRemaining
            if (r6 != 0) goto L_0x01ec
            r10.readToTarget(r11, r1, r4, r3)
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.nalLength
            r6.setPosition(r5)
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.nalLength
            int r6 = r6.readUnsignedIntToInt()
            r10.sampleCurrentNalBytesRemaining = r6
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.nalStartCode
            r6.setPosition(r5)
            com.google.android.exoplayer2.util.ParsableByteArray r6 = r10.nalStartCode
            r0.sampleData(r6, r2)
            int r6 = r10.sampleBytesWritten
            int r6 = r6 + r2
            r10.sampleBytesWritten = r6
            goto L_0x01c4
        L_0x01ec:
            int r7 = r10.readToOutput(r11, r0, r6)
            int r6 = r6 - r7
            r10.sampleCurrentNalBytesRemaining = r6
            goto L_0x01c4
        L_0x01f4:
            java.lang.String r11 = r12.codecId
            java.lang.String r12 = "A_VORBIS"
            boolean r11 = r12.equals(r11)
            if (r11 == 0) goto L_0x020d
            com.google.android.exoplayer2.util.ParsableByteArray r11 = r10.vorbisNumPageSamples
            r11.setPosition(r5)
            com.google.android.exoplayer2.util.ParsableByteArray r11 = r10.vorbisNumPageSamples
            r0.sampleData(r11, r2)
            int r11 = r10.sampleBytesWritten
            int r11 = r11 + r2
            r10.sampleBytesWritten = r11
        L_0x020d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.writeSampleData(com.google.android.exoplayer2.extractor.ExtractorInput, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$Track, int):void");
    }

    private void writeSubtitleSampleData(ExtractorInput extractorInput, byte[] bArr, int i) throws IOException, InterruptedException {
        int length = bArr.length + i;
        if (this.subtitleSample.capacity() < length) {
            this.subtitleSample.data = Arrays.copyOf(bArr, length + i);
        } else {
            System.arraycopy(bArr, 0, this.subtitleSample.data, 0, bArr.length);
        }
        extractorInput.readFully(this.subtitleSample.data, bArr.length, i);
        this.subtitleSample.reset(length);
    }

    private void commitSubtitleSample(Track track, String str, int i, long j, byte[] bArr) {
        setSampleDuration(this.subtitleSample.data, this.blockDurationUs, str, i, j, bArr);
        TrackOutput trackOutput = track.output;
        ParsableByteArray parsableByteArray = this.subtitleSample;
        trackOutput.sampleData(parsableByteArray, parsableByteArray.limit());
        this.sampleBytesWritten += this.subtitleSample.limit();
    }

    private static void setSampleDuration(byte[] bArr, long j, String str, int i, long j2, byte[] bArr2) {
        byte[] bArr3;
        byte[] bArr4;
        if (j == C.TIME_UNSET) {
            bArr4 = bArr2;
            bArr3 = bArr4;
        } else {
            int i2 = (int) (j / 3600000000L);
            long j3 = j - (((long) (i2 * 3600)) * 1000000);
            int i3 = (int) (j3 / 60000000);
            long j4 = j3 - (((long) (i3 * 60)) * 1000000);
            int i4 = (int) (j4 / 1000000);
            int i5 = (int) ((j4 - (((long) i4) * 1000000)) / j2);
            Object[] objArr = {Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)};
            String str2 = str;
            bArr3 = Util.getUtf8Bytes(String.format(Locale.US, str, objArr));
            bArr4 = bArr2;
        }
        byte[] bArr5 = bArr;
        int i6 = i;
        System.arraycopy(bArr3, 0, bArr, i, bArr4.length);
    }

    private void readToTarget(ExtractorInput extractorInput, byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int min = Math.min(i2, this.sampleStrippedBytes.bytesLeft());
        extractorInput.readFully(bArr, i + min, i2 - min);
        if (min > 0) {
            this.sampleStrippedBytes.readBytes(bArr, i, min);
        }
        this.sampleBytesRead += i2;
    }

    private int readToOutput(ExtractorInput extractorInput, TrackOutput trackOutput, int i) throws IOException, InterruptedException {
        int i2;
        int bytesLeft = this.sampleStrippedBytes.bytesLeft();
        if (bytesLeft > 0) {
            i2 = Math.min(i, bytesLeft);
            trackOutput.sampleData(this.sampleStrippedBytes, i2);
        } else {
            i2 = trackOutput.sampleData(extractorInput, i, false);
        }
        this.sampleBytesRead += i2;
        this.sampleBytesWritten += i2;
        return i2;
    }

    private SeekMap buildSeekMap() {
        if (!(this.segmentContentPosition == -1 || this.durationUs == C.TIME_UNSET)) {
            LongArray longArray = this.cueTimesUs;
            if (!(longArray == null || longArray.size() == 0)) {
                LongArray longArray2 = this.cueClusterPositions;
                if (longArray2 != null && longArray2.size() == this.cueTimesUs.size()) {
                    int size = this.cueTimesUs.size();
                    int[] iArr = new int[size];
                    long[] jArr = new long[size];
                    long[] jArr2 = new long[size];
                    long[] jArr3 = new long[size];
                    int i = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        jArr3[i2] = this.cueTimesUs.get(i2);
                        jArr[i2] = this.segmentContentPosition + this.cueClusterPositions.get(i2);
                    }
                    while (true) {
                        int i3 = size - 1;
                        if (i < i3) {
                            int i4 = i + 1;
                            iArr[i] = (int) (jArr[i4] - jArr[i]);
                            jArr2[i] = jArr3[i4] - jArr3[i];
                            i = i4;
                        } else {
                            iArr[i3] = (int) ((this.segmentContentPosition + this.segmentContentSize) - jArr[i3]);
                            jArr2[i3] = this.durationUs - jArr3[i3];
                            this.cueTimesUs = null;
                            this.cueClusterPositions = null;
                            return new ChunkIndex(iArr, jArr, jArr2, jArr3);
                        }
                    }
                }
            }
        }
        this.cueTimesUs = null;
        this.cueClusterPositions = null;
        return new Unseekable(this.durationUs);
    }

    private boolean maybeSeekForCues(PositionHolder positionHolder, long j) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j;
            positionHolder.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (this.sentSeekMap) {
            long j2 = this.seekPositionAfterBuildingCues;
            if (j2 != -1) {
                positionHolder.position = j2;
                this.seekPositionAfterBuildingCues = -1;
                return true;
            }
        }
        return false;
    }

    private long scaleTimecodeToUs(long j) throws ParserException {
        long j2 = this.timecodeScale;
        if (j2 != C.TIME_UNSET) {
            return Util.scaleLargeTimestamp(j, j2, 1000);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    private static boolean isCodecSupported(String str) {
        return CODEC_ID_VP8.equals(str) || CODEC_ID_VP9.equals(str) || CODEC_ID_AV1.equals(str) || CODEC_ID_MPEG2.equals(str) || CODEC_ID_MPEG4_SP.equals(str) || CODEC_ID_MPEG4_ASP.equals(str) || CODEC_ID_MPEG4_AP.equals(str) || CODEC_ID_H264.equals(str) || CODEC_ID_H265.equals(str) || CODEC_ID_FOURCC.equals(str) || CODEC_ID_THEORA.equals(str) || CODEC_ID_OPUS.equals(str) || CODEC_ID_VORBIS.equals(str) || CODEC_ID_AAC.equals(str) || CODEC_ID_MP2.equals(str) || CODEC_ID_MP3.equals(str) || CODEC_ID_AC3.equals(str) || CODEC_ID_E_AC3.equals(str) || CODEC_ID_TRUEHD.equals(str) || CODEC_ID_DTS.equals(str) || CODEC_ID_DTS_EXPRESS.equals(str) || CODEC_ID_DTS_LOSSLESS.equals(str) || CODEC_ID_FLAC.equals(str) || CODEC_ID_ACM.equals(str) || CODEC_ID_PCM_INT_LIT.equals(str) || CODEC_ID_SUBRIP.equals(str) || CODEC_ID_ASS.equals(str) || CODEC_ID_VOBSUB.equals(str) || CODEC_ID_PGS.equals(str) || CODEC_ID_DVBSUB.equals(str);
    }

    private static int[] ensureArrayCapacity(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        if (iArr.length >= i) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i)];
    }
}
