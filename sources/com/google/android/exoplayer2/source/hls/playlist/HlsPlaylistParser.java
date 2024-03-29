package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmInitData.SchemeData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment;
import com.google.android.exoplayer2.upstream.ParsingLoadable.Parser;
import com.google.android.exoplayer2.util.Util;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class HlsPlaylistParser implements Parser<HlsPlaylist> {
    private static final String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    private static final String BOOLEAN_FALSE = "NO";
    private static final String BOOLEAN_TRUE = "YES";
    private static final String KEYFORMAT_IDENTITY = "identity";
    private static final String KEYFORMAT_PLAYREADY = "com.microsoft.playready";
    private static final String KEYFORMAT_WIDEVINE_PSSH_BINARY = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    private static final String KEYFORMAT_WIDEVINE_PSSH_JSON = "com.widevine";
    private static final String METHOD_AES_128 = "AES-128";
    private static final String METHOD_NONE = "NONE";
    private static final String METHOD_SAMPLE_AES = "SAMPLE-AES";
    private static final String METHOD_SAMPLE_AES_CENC = "SAMPLE-AES-CENC";
    private static final String METHOD_SAMPLE_AES_CTR = "SAMPLE-AES-CTR";
    private static final String PLAYLIST_HEADER = "#EXTM3U";
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"(.+?)\"");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"(.+?)\"");
    private static final String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    private static final String TAG_DEFINE = "#EXT-X-DEFINE";
    private static final String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    private static final String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String TAG_ENDLIST = "#EXT-X-ENDLIST";
    private static final String TAG_GAP = "#EXT-X-GAP";
    private static final String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    private static final String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    private static final String TAG_KEY = "#EXT-X-KEY";
    private static final String TAG_MEDIA = "#EXT-X-MEDIA";
    private static final String TAG_MEDIA_DURATION = "#EXTINF";
    private static final String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    private static final String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    private static final String TAG_PREFIX = "#EXT";
    private static final String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    private static final String TAG_SESSION_KEY = "#EXT-X-SESSION-KEY";
    private static final String TAG_START = "#EXT-X-START";
    private static final String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    private static final String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    private static final String TAG_VERSION = "#EXT-X-VERSION";
    private static final String TYPE_AUDIO = "AUDIO";
    private static final String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    private static final String TYPE_SUBTITLES = "SUBTITLES";
    private static final String TYPE_VIDEO = "VIDEO";
    private final HlsMasterPlaylist masterPlaylist;

    private static class LineIterator {
        private final Queue<String> extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public boolean hasNext() throws IOException {
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = (String) this.extraLines.poll();
                return true;
            }
            do {
                String readLine = this.reader.readLine();
                this.next = readLine;
                if (readLine == null) {
                    return false;
                }
                this.next = this.next.trim();
            } while (this.next.isEmpty());
            return true;
        }

        public String next() throws IOException {
            if (!hasNext()) {
                return null;
            }
            String str = this.next;
            this.next = null;
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(HlsMasterPlaylist.EMPTY);
    }

    public HlsPlaylistParser(HlsMasterPlaylist hlsMasterPlaylist) {
        this.masterPlaylist = hlsMasterPlaylist;
    }

    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (checkPlaylistHeader(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (!trim.startsWith(TAG_STREAM_INF)) {
                                if (trim.startsWith(TAG_TARGET_DURATION) || trim.startsWith(TAG_MEDIA_SEQUENCE) || trim.startsWith(TAG_MEDIA_DURATION) || trim.startsWith(TAG_KEY) || trim.startsWith(TAG_BYTERANGE) || trim.equals(TAG_DISCONTINUITY) || trim.equals(TAG_DISCONTINUITY_SEQUENCE)) {
                                    break;
                                } else if (trim.equals(TAG_ENDLIST)) {
                                    break;
                                } else {
                                    arrayDeque.add(trim);
                                }
                            } else {
                                arrayDeque.add(trim);
                                HlsMasterPlaylist parseMasterPlaylist = parseMasterPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                                Util.closeQuietly((Closeable) bufferedReader);
                                return parseMasterPlaylist;
                            }
                        }
                    } else {
                        Util.closeQuietly((Closeable) bufferedReader);
                        throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                    }
                }
                arrayDeque.add(trim);
                return parseMediaPlaylist(this.masterPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
            }
            throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
        } finally {
            Util.closeQuietly((Closeable) bufferedReader);
        }
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            read = bufferedReader.read();
        }
        int skipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, read);
        for (int i = 0; i < 7; i++) {
            if (skipIgnorableWhitespace != PLAYLIST_HEADER.charAt(i)) {
                return false;
            }
            skipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, skipIgnorableWhitespace));
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist parseMasterPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.LineIterator r38, java.lang.String r39) throws java.io.IOException {
        /*
            r1 = r39
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.HashMap r11 = new java.util.HashMap
            r11.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            r13 = 0
            r14 = 0
        L_0x0036:
            boolean r15 = r38.hasNext()
            r16 = -1082130432(0xffffffffbf800000, float:-1.0)
            r17 = -1
            if (r15 == 0) goto L_0x01c1
            java.lang.String r15 = r38.next()
            java.lang.String r9 = "#EXT"
            boolean r9 = r15.startsWith(r9)
            if (r9 == 0) goto L_0x004f
            r8.add(r15)
        L_0x004f:
            java.lang.String r9 = "#EXT-X-DEFINE"
            boolean r9 = r15.startsWith(r9)
            if (r9 == 0) goto L_0x0070
            java.util.regex.Pattern r9 = REGEX_NAME
            java.lang.String r9 = parseStringAttr(r15, r9, r11)
            java.util.regex.Pattern r10 = REGEX_VALUE
            java.lang.String r10 = parseStringAttr(r15, r10, r11)
            r11.put(r9, r10)
        L_0x0066:
            r19 = r7
            r21 = r8
            r20 = r12
            r18 = r14
            goto L_0x01b7
        L_0x0070:
            java.lang.String r9 = "#EXT-X-INDEPENDENT-SEGMENTS"
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto L_0x007a
            r14 = 1
            goto L_0x0036
        L_0x007a:
            java.lang.String r9 = "#EXT-X-MEDIA"
            boolean r9 = r15.startsWith(r9)
            if (r9 == 0) goto L_0x0086
            r3.add(r15)
            goto L_0x0066
        L_0x0086:
            java.lang.String r9 = "#EXT-X-SESSION-KEY"
            boolean r9 = r15.startsWith(r9)
            if (r9 == 0) goto L_0x00c0
            java.util.regex.Pattern r9 = REGEX_KEYFORMAT
            java.lang.String r10 = "identity"
            java.lang.String r9 = parseOptionalStringAttr(r15, r9, r10, r11)
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData r9 = parseDrmSchemeData(r15, r9, r11)
            if (r9 == 0) goto L_0x00ba
            java.util.regex.Pattern r10 = REGEX_METHOD
            java.lang.String r10 = parseStringAttr(r15, r10, r11)
            java.lang.String r10 = parseEncryptionScheme(r10)
            com.google.android.exoplayer2.drm.DrmInitData r15 = new com.google.android.exoplayer2.drm.DrmInitData
            r19 = r7
            r18 = r14
            r14 = 1
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData[] r7 = new com.google.android.exoplayer2.drm.DrmInitData.SchemeData[r14]
            r14 = 0
            r7[r14] = r9
            r15.<init>(r10, r7)
            r12.add(r15)
            goto L_0x01b3
        L_0x00ba:
            r19 = r7
            r18 = r14
            goto L_0x01b3
        L_0x00c0:
            r19 = r7
            r18 = r14
            java.lang.String r7 = "#EXT-X-STREAM-INF"
            boolean r7 = r15.startsWith(r7)
            if (r7 == 0) goto L_0x01b3
            java.lang.String r7 = "CLOSED-CAPTIONS=NONE"
            boolean r7 = r15.contains(r7)
            r13 = r13 | r7
            java.util.regex.Pattern r7 = REGEX_BANDWIDTH
            int r7 = parseIntAttr(r15, r7)
            java.util.regex.Pattern r9 = REGEX_AVERAGE_BANDWIDTH
            java.lang.String r9 = parseOptionalStringAttr(r15, r9, r11)
            if (r9 == 0) goto L_0x00e5
            int r7 = java.lang.Integer.parseInt(r9)
        L_0x00e5:
            java.util.regex.Pattern r9 = REGEX_CODECS
            java.lang.String r24 = parseOptionalStringAttr(r15, r9, r11)
            java.util.regex.Pattern r9 = REGEX_RESOLUTION
            java.lang.String r9 = parseOptionalStringAttr(r15, r9, r11)
            if (r9 == 0) goto L_0x0115
            java.lang.String r10 = "x"
            java.lang.String[] r9 = r9.split(r10)
            r10 = 0
            r14 = r9[r10]
            int r10 = java.lang.Integer.parseInt(r14)
            r14 = 1
            r9 = r9[r14]
            int r9 = java.lang.Integer.parseInt(r9)
            if (r10 <= 0) goto L_0x010f
            if (r9 > 0) goto L_0x010c
            goto L_0x010f
        L_0x010c:
            r17 = r9
            goto L_0x0110
        L_0x010f:
            r10 = -1
        L_0x0110:
            r26 = r10
            r27 = r17
            goto L_0x0119
        L_0x0115:
            r26 = -1
            r27 = -1
        L_0x0119:
            java.util.regex.Pattern r9 = REGEX_FRAME_RATE
            java.lang.String r9 = parseOptionalStringAttr(r15, r9, r11)
            if (r9 == 0) goto L_0x0128
            float r16 = java.lang.Float.parseFloat(r9)
            r28 = r16
            goto L_0x012a
        L_0x0128:
            r28 = -1082130432(0xffffffffbf800000, float:-1.0)
        L_0x012a:
            java.util.regex.Pattern r9 = REGEX_VIDEO
            java.lang.String r9 = parseOptionalStringAttr(r15, r9, r11)
            java.util.regex.Pattern r10 = REGEX_AUDIO
            java.lang.String r10 = parseOptionalStringAttr(r15, r10, r11)
            java.util.regex.Pattern r14 = REGEX_SUBTITLES
            java.lang.String r14 = parseOptionalStringAttr(r15, r14, r11)
            r36 = r13
            java.util.regex.Pattern r13 = REGEX_CLOSED_CAPTIONS
            java.lang.String r13 = parseOptionalStringAttr(r15, r13, r11)
            java.lang.String r15 = r38.next()
            java.lang.String r15 = replaceVariableReferences(r15, r11)
            android.net.Uri r15 = com.google.android.exoplayer2.util.UriUtil.resolveToUri(r1, r15)
            int r16 = r2.size()
            java.lang.String r20 = java.lang.Integer.toString(r16)
            r21 = 0
            r23 = 0
            r29 = 0
            r30 = 0
            r31 = 0
            java.lang.String r22 = "application/x-mpegURL"
            r25 = r7
            com.google.android.exoplayer2.Format r31 = com.google.android.exoplayer2.Format.createVideoContainerFormat(r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31)
            r20 = r12
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Variant r12 = new com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Variant
            r29 = r12
            r30 = r15
            r32 = r9
            r33 = r10
            r34 = r14
            r35 = r13
            r29.<init>(r30, r31, r32, r33, r34, r35)
            r2.add(r12)
            java.lang.Object r12 = r0.get(r15)
            java.util.ArrayList r12 = (java.util.ArrayList) r12
            if (r12 != 0) goto L_0x0190
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            r0.put(r15, r12)
        L_0x0190:
            com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$VariantInfo r15 = new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$VariantInfo
            r21 = r8
            long r7 = (long) r7
            r29 = r15
            r30 = r7
            r32 = r9
            r33 = r10
            r34 = r14
            r35 = r13
            r29.<init>(r30, r32, r33, r34, r35)
            r12.add(r15)
            r14 = r18
            r7 = r19
            r12 = r20
            r8 = r21
            r13 = r36
            goto L_0x0036
        L_0x01b3:
            r21 = r8
            r20 = r12
        L_0x01b7:
            r14 = r18
            r7 = r19
            r12 = r20
            r8 = r21
            goto L_0x0036
        L_0x01c1:
            r19 = r7
            r21 = r8
            r20 = r12
            r18 = r14
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.HashSet r8 = new java.util.HashSet
            r8.<init>()
            r9 = 0
        L_0x01d4:
            int r10 = r2.size()
            r12 = 0
            if (r9 >= r10) goto L_0x022a
            java.lang.Object r10 = r2.get(r9)
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Variant r10 = (com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant) r10
            android.net.Uri r14 = r10.url
            boolean r14 = r8.add(r14)
            if (r14 == 0) goto L_0x021f
            com.google.android.exoplayer2.Format r14 = r10.format
            com.google.android.exoplayer2.metadata.Metadata r14 = r14.metadata
            if (r14 != 0) goto L_0x01f1
            r14 = 1
            goto L_0x01f2
        L_0x01f1:
            r14 = 0
        L_0x01f2:
            com.google.android.exoplayer2.util.Assertions.checkState(r14)
            com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry r14 = new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry
            android.net.Uri r15 = r10.url
            java.lang.Object r15 = r0.get(r15)
            java.util.List r15 = (java.util.List) r15
            r14.<init>(r12, r12, r15)
            com.google.android.exoplayer2.Format r12 = r10.format
            com.google.android.exoplayer2.metadata.Metadata r15 = new com.google.android.exoplayer2.metadata.Metadata
            r22 = r0
            r38 = r8
            r0 = 1
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r8 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r0]
            r0 = 0
            r8[r0] = r14
            r15.<init>(r8)
            com.google.android.exoplayer2.Format r0 = r12.copyWithMetadata(r15)
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Variant r0 = r10.copyWithFormat(r0)
            r7.add(r0)
            goto L_0x0223
        L_0x021f:
            r22 = r0
            r38 = r8
        L_0x0223:
            int r9 = r9 + 1
            r8 = r38
            r0 = r22
            goto L_0x01d4
        L_0x022a:
            r8 = r12
            r9 = r8
            r0 = 0
        L_0x022d:
            int r10 = r3.size()
            if (r0 >= r10) goto L_0x03e1
            java.lang.Object r10 = r3.get(r0)
            java.lang.String r10 = (java.lang.String) r10
            java.util.regex.Pattern r14 = REGEX_GROUP_ID
            java.lang.String r14 = parseStringAttr(r10, r14, r11)
            java.util.regex.Pattern r15 = REGEX_NAME
            java.lang.String r15 = parseStringAttr(r10, r15, r11)
            java.util.regex.Pattern r12 = REGEX_URI
            java.lang.String r12 = parseOptionalStringAttr(r10, r12, r11)
            if (r12 != 0) goto L_0x024f
            r12 = 0
            goto L_0x0253
        L_0x024f:
            android.net.Uri r12 = com.google.android.exoplayer2.util.UriUtil.resolveToUri(r1, r12)
        L_0x0253:
            java.util.regex.Pattern r1 = REGEX_LANGUAGE
            java.lang.String r33 = parseOptionalStringAttr(r10, r1, r11)
            int r32 = parseSelectionFlags(r10)
            int r1 = parseRoleFlags(r10, r11)
            r34 = r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r14)
            r35 = r8
            java.lang.String r8 = ":"
            r3.append(r8)
            r3.append(r15)
            java.lang.String r22 = r3.toString()
            com.google.android.exoplayer2.metadata.Metadata r3 = new com.google.android.exoplayer2.metadata.Metadata
            r36 = r7
            r8 = 1
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r7 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r8]
            com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry r8 = new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry
            r37 = r13
            java.util.List r13 = java.util.Collections.emptyList()
            r8.<init>(r14, r15, r13)
            r13 = 0
            r7[r13] = r8
            r3.<init>(r7)
            java.util.regex.Pattern r7 = REGEX_TYPE
            java.lang.String r7 = parseStringAttr(r10, r7, r11)
            int r8 = r7.hashCode()
            r13 = 2
            switch(r8) {
                case -959297733: goto L_0x02be;
                case -333210994: goto L_0x02b4;
                case 62628790: goto L_0x02aa;
                case 81665115: goto L_0x02a0;
                default: goto L_0x029f;
            }
        L_0x029f:
            goto L_0x02c8
        L_0x02a0:
            java.lang.String r8 = "VIDEO"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x02c8
            r7 = 0
            goto L_0x02c9
        L_0x02aa:
            java.lang.String r8 = "AUDIO"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x02c8
            r7 = 1
            goto L_0x02c9
        L_0x02b4:
            java.lang.String r8 = "CLOSED-CAPTIONS"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x02c8
            r7 = 3
            goto L_0x02c9
        L_0x02be:
            java.lang.String r8 = "SUBTITLES"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x02c8
            r7 = 2
            goto L_0x02c9
        L_0x02c8:
            r7 = -1
        L_0x02c9:
            if (r7 == 0) goto L_0x0384
            r8 = 1
            if (r7 == r8) goto L_0x033d
            if (r7 == r13) goto L_0x031b
            r8 = 3
            if (r7 == r8) goto L_0x02d5
            goto L_0x03d2
        L_0x02d5:
            java.util.regex.Pattern r3 = REGEX_INSTREAM_ID
            java.lang.String r3 = parseStringAttr(r10, r3, r11)
            java.lang.String r7 = "CC"
            boolean r7 = r3.startsWith(r7)
            if (r7 == 0) goto L_0x02ee
            java.lang.String r3 = r3.substring(r13)
            int r3 = java.lang.Integer.parseInt(r3)
            java.lang.String r7 = "application/cea-608"
            goto L_0x02f9
        L_0x02ee:
            r7 = 7
            java.lang.String r3 = r3.substring(r7)
            int r3 = java.lang.Integer.parseInt(r3)
            java.lang.String r7 = "application/cea-708"
        L_0x02f9:
            r31 = r3
            r25 = r7
            if (r9 != 0) goto L_0x0304
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
        L_0x0304:
            r24 = 0
            r26 = 0
            r27 = -1
            r23 = r15
            r28 = r32
            r29 = r1
            r30 = r33
            com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createTextContainerFormat(r22, r23, r24, r25, r26, r27, r28, r29, r30, r31)
            r9.add(r1)
            goto L_0x03d2
        L_0x031b:
            r26 = 0
            r27 = -1
            java.lang.String r24 = "application/x-mpegURL"
            java.lang.String r25 = "text/vtt"
            r23 = r15
            r28 = r32
            r29 = r1
            r30 = r33
            com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createTextContainerFormat(r22, r23, r24, r25, r26, r27, r28, r29, r30)
            com.google.android.exoplayer2.Format r1 = r1.copyWithMetadata(r3)
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Rendition r3 = new com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Rendition
            r3.<init>(r12, r1, r14, r15)
            r6.add(r3)
            goto L_0x03d2
        L_0x033d:
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Variant r7 = getVariantWithAudioGroup(r2, r14)
            if (r7 == 0) goto L_0x034f
            com.google.android.exoplayer2.Format r7 = r7.format
            java.lang.String r7 = r7.codecs
            r8 = 1
            java.lang.String r7 = com.google.android.exoplayer2.util.Util.getCodecsOfType(r7, r8)
            r26 = r7
            goto L_0x0352
        L_0x034f:
            r8 = 1
            r26 = 0
        L_0x0352:
            if (r26 == 0) goto L_0x035b
            java.lang.String r7 = com.google.android.exoplayer2.util.MimeTypes.getMediaMimeType(r26)
            r25 = r7
            goto L_0x035d
        L_0x035b:
            r25 = 0
        L_0x035d:
            int r28 = parseChannelsAttribute(r10, r11)
            r27 = -1
            r29 = -1
            r30 = 0
            java.lang.String r24 = "application/x-mpegURL"
            r23 = r15
            r31 = r32
            r32 = r1
            com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createAudioContainerFormat(r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33)
            if (r12 != 0) goto L_0x0377
            r8 = r1
            goto L_0x03d4
        L_0x0377:
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Rendition r7 = new com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Rendition
            com.google.android.exoplayer2.Format r1 = r1.copyWithMetadata(r3)
            r7.<init>(r12, r1, r14, r15)
            r5.add(r7)
            goto L_0x03d2
        L_0x0384:
            r8 = 1
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Variant r7 = getVariantWithVideoGroup(r2, r14)
            if (r7 == 0) goto L_0x03a2
            com.google.android.exoplayer2.Format r7 = r7.format
            java.lang.String r10 = r7.codecs
            java.lang.String r10 = com.google.android.exoplayer2.util.Util.getCodecsOfType(r10, r13)
            int r13 = r7.width
            int r8 = r7.height
            float r7 = r7.frameRate
            r30 = r7
            r29 = r8
            r26 = r10
            r28 = r13
            goto L_0x03aa
        L_0x03a2:
            r26 = 0
            r28 = -1
            r29 = -1
            r30 = -1082130432(0xffffffffbf800000, float:-1.0)
        L_0x03aa:
            if (r26 == 0) goto L_0x03b3
            java.lang.String r7 = com.google.android.exoplayer2.util.MimeTypes.getMediaMimeType(r26)
            r25 = r7
            goto L_0x03b5
        L_0x03b3:
            r25 = 0
        L_0x03b5:
            r27 = -1
            r31 = 0
            java.lang.String r24 = "application/x-mpegURL"
            r23 = r15
            r33 = r1
            com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.createVideoContainerFormat(r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33)
            com.google.android.exoplayer2.Format r1 = r1.copyWithMetadata(r3)
            if (r12 != 0) goto L_0x03ca
            goto L_0x03d2
        L_0x03ca:
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Rendition r3 = new com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$Rendition
            r3.<init>(r12, r1, r14, r15)
            r4.add(r3)
        L_0x03d2:
            r8 = r35
        L_0x03d4:
            int r0 = r0 + 1
            r1 = r39
            r3 = r34
            r7 = r36
            r13 = r37
            r12 = 0
            goto L_0x022d
        L_0x03e1:
            r36 = r7
            r35 = r8
            r37 = r13
            if (r37 == 0) goto L_0x03ee
            java.util.List r0 = java.util.Collections.emptyList()
            r9 = r0
        L_0x03ee:
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist r13 = new com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist
            r0 = r13
            r1 = r39
            r2 = r21
            r3 = r36
            r7 = r19
            r8 = r35
            r10 = r18
            r12 = r20
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.parseMasterPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser$LineIterator, java.lang.String):com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist");
    }

    private static Variant getVariantWithAudioGroup(ArrayList<Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            Variant variant = (Variant) arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static Variant getVariantWithVideoGroup(ArrayList<Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            Variant variant = (Variant) arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMediaPlaylist parseMediaPlaylist(HlsMasterPlaylist hlsMasterPlaylist, LineIterator lineIterator, String str) throws IOException {
        String str2;
        TreeMap treeMap;
        DrmInitData drmInitData;
        long j;
        long j2;
        HlsMasterPlaylist hlsMasterPlaylist2 = hlsMasterPlaylist;
        boolean z = hlsMasterPlaylist2.hasIndependentSegments;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TreeMap treeMap2 = new TreeMap();
        String str3 = "";
        char c = 0;
        int i = 1;
        boolean z2 = z;
        long j3 = -9223372036854775807L;
        long j4 = -9223372036854775807L;
        String str4 = str3;
        boolean z3 = false;
        int i2 = 0;
        String str5 = null;
        String str6 = null;
        long j5 = 0;
        int i3 = 0;
        long j6 = 0;
        int i4 = 1;
        boolean z4 = false;
        DrmInitData drmInitData2 = null;
        long j7 = 0;
        long j8 = 0;
        DrmInitData drmInitData3 = null;
        boolean z5 = false;
        String str7 = null;
        long j9 = -1;
        int i5 = 0;
        long j10 = 0;
        Segment segment = null;
        while (true) {
            long j11 = 0;
            while (lineIterator.hasNext()) {
                String next = lineIterator.next();
                if (next.startsWith(TAG_PREFIX)) {
                    arrayList2.add(next);
                }
                if (next.startsWith(TAG_PLAYLIST_TYPE)) {
                    String parseStringAttr = parseStringAttr(next, REGEX_PLAYLIST_TYPE, hashMap);
                    if ("VOD".equals(parseStringAttr)) {
                        i2 = 1;
                    } else if ("EVENT".equals(parseStringAttr)) {
                        i2 = 2;
                    }
                } else if (next.startsWith(TAG_START)) {
                    j3 = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
                } else {
                    String str8 = "@";
                    if (next.startsWith(TAG_INIT_SEGMENT)) {
                        String parseStringAttr2 = parseStringAttr(next, REGEX_URI, hashMap);
                        String parseOptionalStringAttr = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, hashMap);
                        if (parseOptionalStringAttr != null) {
                            String[] split = parseOptionalStringAttr.split(str8);
                            long parseLong = Long.parseLong(split[c]);
                            if (split.length > i) {
                                j7 = Long.parseLong(split[i]);
                            }
                            j = parseLong;
                            j2 = j7;
                        } else {
                            j2 = j7;
                            j = j9;
                        }
                        if (str5 == null || str7 != null) {
                            segment = new Segment(parseStringAttr2, j2, j, str5, str7);
                            c = 0;
                            j7 = 0;
                            j9 = -1;
                        } else {
                            throw new ParserException("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.");
                        }
                    } else {
                        if (next.startsWith(TAG_TARGET_DURATION)) {
                            j4 = ((long) parseIntAttr(next, REGEX_TARGET_DURATION)) * 1000000;
                        } else if (next.startsWith(TAG_MEDIA_SEQUENCE)) {
                            j8 = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                            j6 = j8;
                        } else if (next.startsWith(TAG_VERSION)) {
                            i4 = parseIntAttr(next, REGEX_VERSION);
                        } else {
                            if (next.startsWith(TAG_DEFINE)) {
                                String parseOptionalStringAttr2 = parseOptionalStringAttr(next, REGEX_IMPORT, hashMap);
                                if (parseOptionalStringAttr2 != null) {
                                    String str9 = (String) hlsMasterPlaylist2.variableDefinitions.get(parseOptionalStringAttr2);
                                    if (str9 != null) {
                                        hashMap.put(parseOptionalStringAttr2, str9);
                                    }
                                } else {
                                    hashMap.put(parseStringAttr(next, REGEX_NAME, hashMap), parseStringAttr(next, REGEX_VALUE, hashMap));
                                }
                            } else if (next.startsWith(TAG_MEDIA_DURATION)) {
                                long parseDoubleAttr = (long) (parseDoubleAttr(next, REGEX_MEDIA_DURATION) * 1000000.0d);
                                str4 = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, str3, hashMap);
                                j11 = parseDoubleAttr;
                            } else if (next.startsWith(TAG_KEY)) {
                                String parseStringAttr3 = parseStringAttr(next, REGEX_METHOD, hashMap);
                                String str10 = "identity";
                                String parseOptionalStringAttr3 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, str10, hashMap);
                                if ("NONE".equals(parseStringAttr3)) {
                                    treeMap2.clear();
                                    str5 = null;
                                    drmInitData3 = null;
                                    str7 = null;
                                } else {
                                    String parseOptionalStringAttr4 = parseOptionalStringAttr(next, REGEX_IV, hashMap);
                                    if (!str10.equals(parseOptionalStringAttr3)) {
                                        if (str6 == null) {
                                            str6 = parseEncryptionScheme(parseStringAttr3);
                                        }
                                        SchemeData parseDrmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr3, hashMap);
                                        if (parseDrmSchemeData != null) {
                                            treeMap2.put(parseOptionalStringAttr3, parseDrmSchemeData);
                                            str7 = parseOptionalStringAttr4;
                                            str5 = null;
                                            drmInitData3 = null;
                                        }
                                    } else if (METHOD_AES_128.equals(parseStringAttr3)) {
                                        str5 = parseStringAttr(next, REGEX_URI, hashMap);
                                        str7 = parseOptionalStringAttr4;
                                    }
                                    str7 = parseOptionalStringAttr4;
                                    str5 = null;
                                }
                            } else if (next.startsWith(TAG_BYTERANGE)) {
                                String[] split2 = parseStringAttr(next, REGEX_BYTERANGE, hashMap).split(str8);
                                j9 = Long.parseLong(split2[0]);
                                if (split2.length > i) {
                                    j7 = Long.parseLong(split2[i]);
                                }
                            } else if (next.startsWith(TAG_DISCONTINUITY_SEQUENCE)) {
                                i3 = Integer.parseInt(next.substring(next.indexOf(58) + i));
                                z3 = true;
                            } else if (next.equals(TAG_DISCONTINUITY)) {
                                i5++;
                            } else if (next.startsWith(TAG_PROGRAM_DATE_TIME)) {
                                if (j5 == 0) {
                                    j5 = C.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + i))) - j10;
                                }
                            } else if (next.equals(TAG_GAP)) {
                                c = 0;
                                z5 = true;
                            } else if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                                c = 0;
                                z2 = true;
                            } else if (next.equals(TAG_ENDLIST)) {
                                c = 0;
                                z4 = true;
                            } else if (!next.startsWith("#")) {
                                String str11 = str5 == null ? null : str7 != null ? str7 : Long.toHexString(j8);
                                long j12 = j8 + 1;
                                long j13 = j9 == -1 ? 0 : j7;
                                if (drmInitData3 != null || treeMap2.isEmpty()) {
                                    treeMap = treeMap2;
                                    str2 = str3;
                                    drmInitData = drmInitData3;
                                } else {
                                    SchemeData[] schemeDataArr = (SchemeData[]) treeMap2.values().toArray(new SchemeData[0]);
                                    drmInitData = new DrmInitData(str6, schemeDataArr);
                                    if (drmInitData2 == null) {
                                        SchemeData[] schemeDataArr2 = new SchemeData[schemeDataArr.length];
                                        treeMap = treeMap2;
                                        str2 = str3;
                                        int i6 = 0;
                                        while (i6 < schemeDataArr.length) {
                                            SchemeData[] schemeDataArr3 = schemeDataArr;
                                            schemeDataArr2[i6] = schemeDataArr[i6].copyWithData(null);
                                            i6++;
                                            schemeDataArr = schemeDataArr3;
                                        }
                                        drmInitData2 = new DrmInitData(str6, schemeDataArr2);
                                    } else {
                                        treeMap = treeMap2;
                                        str2 = str3;
                                    }
                                }
                                Segment segment2 = new Segment(replaceVariableReferences(next, hashMap), segment, str4, j11, i5, j10, drmInitData, str5, str11, j13, j9, z5);
                                arrayList.add(segment2);
                                j10 += j11;
                                if (j9 != -1) {
                                    j13 += j9;
                                }
                                j7 = j13;
                                hlsMasterPlaylist2 = hlsMasterPlaylist;
                                j9 = -1;
                                j8 = j12;
                                drmInitData3 = drmInitData;
                                treeMap2 = treeMap;
                                str3 = str2;
                                str4 = str3;
                                c = 0;
                                i = 1;
                                z5 = false;
                            }
                            hlsMasterPlaylist2 = hlsMasterPlaylist;
                            treeMap2 = treeMap2;
                            str3 = str3;
                            c = 0;
                            i = 1;
                        }
                        c = 0;
                    }
                }
            }
            HlsMediaPlaylist hlsMediaPlaylist = new HlsMediaPlaylist(i2, str, arrayList2, j3, j5, z3, i3, j6, i4, j4, z2, z4, j5 != 0, drmInitData2, arrayList);
            return hlsMediaPlaylist;
        }
    }

    private static int parseSelectionFlags(String str) {
        int i = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false) ? 1 : 0;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            i |= 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false) ? i | 4 : i;
    }

    private static int parseRoleFlags(String str, Map<String, String> map) {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map);
        int i = 0;
        if (TextUtils.isEmpty(parseOptionalStringAttr)) {
            return 0;
        }
        String[] split = Util.split(parseOptionalStringAttr, ",");
        if (Util.contains(split, "public.accessibility.describes-video")) {
            i = 512;
        }
        if (Util.contains(split, "public.accessibility.transcribes-spoken-dialog")) {
            i |= 4096;
        }
        if (Util.contains(split, "public.accessibility.describes-music-and-sound")) {
            i |= 1024;
        }
        if (Util.contains(split, "public.easy-to-read")) {
            i |= 8192;
        }
        return i;
    }

    private static int parseChannelsAttribute(String str, Map<String, String> map) {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_CHANNELS, map);
        if (parseOptionalStringAttr != null) {
            return Integer.parseInt(Util.splitAtFirst(parseOptionalStringAttr, "/")[0]);
        }
        return -1;
    }

    @Nullable
    private static SchemeData parseDrmSchemeData(String str, String str2, Map<String, String> map) throws ParserException {
        String str3 = "1";
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, str3, map);
        String str4 = "video/mp4";
        if (KEYFORMAT_WIDEVINE_PSSH_BINARY.equals(str2)) {
            String parseStringAttr = parseStringAttr(str, REGEX_URI, map);
            return new SchemeData(C.WIDEVINE_UUID, str4, Base64.decode(parseStringAttr.substring(parseStringAttr.indexOf(44)), 0));
        } else if (KEYFORMAT_WIDEVINE_PSSH_JSON.equals(str2)) {
            return new SchemeData(C.WIDEVINE_UUID, DownloadRequest.TYPE_HLS, Util.getUtf8Bytes(str));
        } else if (!KEYFORMAT_PLAYREADY.equals(str2) || !str3.equals(parseOptionalStringAttr)) {
            return null;
        } else {
            String parseStringAttr2 = parseStringAttr(str, REGEX_URI, map);
            return new SchemeData(C.PLAYREADY_UUID, str4, PsshAtomUtil.buildPsshAtom(C.PLAYREADY_UUID, Base64.decode(parseStringAttr2.substring(parseStringAttr2.indexOf(44)), 0)));
        }
    }

    private static String parseEncryptionScheme(String str) {
        return (METHOD_SAMPLE_AES_CENC.equals(str) || METHOD_SAMPLE_AES_CTR.equals(str)) ? C.CENC_TYPE_cenc : C.CENC_TYPE_cbcs;
    }

    private static int parseIntAttr(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static long parseLongAttr(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static double parseDoubleAttr(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static String parseStringAttr(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (parseOptionalStringAttr != null) {
            return parseOptionalStringAttr;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Couldn't match ");
        sb.append(pattern.pattern());
        sb.append(" in ");
        sb.append(str);
        throw new ParserException(sb.toString());
    }

    @Nullable
    private static String parseOptionalStringAttr(String str, Pattern pattern, Map<String, String> map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map);
    }

    private static String replaceVariableReferences(String str, Map<String, String> map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement((String) map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals(BOOLEAN_TRUE) : z;
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("=(");
        sb.append(BOOLEAN_FALSE);
        sb.append("|");
        sb.append(BOOLEAN_TRUE);
        sb.append(")");
        return Pattern.compile(sb.toString());
    }
}
