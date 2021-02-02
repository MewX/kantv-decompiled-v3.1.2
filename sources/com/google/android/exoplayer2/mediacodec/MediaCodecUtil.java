package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecInfo.CodecProfileLevel;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

@SuppressLint({"InlinedApi"})
public final class MediaCodecUtil {
    private static final SparseIntArray AVC_LEVEL_NUMBER_TO_CONST = new SparseIntArray();
    private static final SparseIntArray AVC_PROFILE_NUMBER_TO_CONST = new SparseIntArray();
    private static final String CODEC_ID_AVC1 = "avc1";
    private static final String CODEC_ID_AVC2 = "avc2";
    private static final String CODEC_ID_DVH1 = "dvh1";
    private static final String CODEC_ID_DVHE = "dvhe";
    private static final String CODEC_ID_HEV1 = "hev1";
    private static final String CODEC_ID_HVC1 = "hvc1";
    private static final String CODEC_ID_MP4A = "mp4a";
    private static final Map<String, Integer> DOLBY_VISION_STRING_TO_LEVEL = new HashMap();
    private static final Map<String, Integer> DOLBY_VISION_STRING_TO_PROFILE = new HashMap();
    private static final Map<String, Integer> HEVC_CODEC_STRING_TO_PROFILE_LEVEL = new HashMap();
    private static final SparseIntArray MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE = new SparseIntArray();
    private static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");
    private static final String TAG = "MediaCodecUtil";
    private static final HashMap<CodecKey, List<MediaCodecInfo>> decoderInfosCache = new HashMap<>();
    private static int maxH264DecodableFrameSize = -1;

    private static final class CodecKey {
        public final String mimeType;
        public final boolean secure;
        public final boolean tunneling;

        public CodecKey(String str, boolean z, boolean z2) {
            this.mimeType = str;
            this.secure = z;
            this.tunneling = z2;
        }

        public int hashCode() {
            String str = this.mimeType;
            int i = 1231;
            int hashCode = ((((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.secure ? 1231 : 1237)) * 31;
            if (!this.tunneling) {
                i = 1237;
            }
            return hashCode + i;
        }

        public boolean equals(@Nullable Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != CodecKey.class) {
                return false;
            }
            CodecKey codecKey = (CodecKey) obj;
            if (!(TextUtils.equals(this.mimeType, codecKey.mimeType) && this.secure == codecKey.secure && this.tunneling == codecKey.tunneling)) {
                z = false;
            }
            return z;
        }
    }

    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private interface MediaCodecListCompat {
        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i);

        boolean isFeatureRequired(String str, String str2, CodecCapabilities codecCapabilities);

        boolean isFeatureSupported(String str, String str2, CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    private static final class MediaCodecListCompatV16 implements MediaCodecListCompat {
        public boolean isFeatureRequired(String str, String str2, CodecCapabilities codecCapabilities) {
            return false;
        }

        public boolean secureDecodersExplicit() {
            return false;
        }

        private MediaCodecListCompatV16() {
        }

        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        public MediaCodecInfo getCodecInfoAt(int i) {
            return MediaCodecList.getCodecInfoAt(i);
        }

        public boolean isFeatureSupported(String str, String str2, CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && MimeTypes.VIDEO_H264.equals(str2);
        }
    }

    @TargetApi(21)
    private static final class MediaCodecListCompatV21 implements MediaCodecListCompat {
        private final int codecKind;
        private MediaCodecInfo[] mediaCodecInfos;

        public boolean secureDecodersExplicit() {
            return true;
        }

        public MediaCodecListCompatV21(boolean z, boolean z2) {
            this.codecKind = (z || z2) ? 1 : 0;
        }

        public int getCodecCount() {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos.length;
        }

        public MediaCodecInfo getCodecInfoAt(int i) {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos[i];
        }

        public boolean isFeatureSupported(String str, String str2, CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        public boolean isFeatureRequired(String str, String str2, CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        private void ensureMediaCodecInfosInitialized() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
            }
        }
    }

    private static final class PreferOmxGoogleCodecComparator implements Comparator<MediaCodecInfo> {
        private PreferOmxGoogleCodecComparator() {
        }

        public int compare(MediaCodecInfo mediaCodecInfo, MediaCodecInfo mediaCodecInfo2) {
            return scoreMediaCodecInfo(mediaCodecInfo) - scoreMediaCodecInfo(mediaCodecInfo2);
        }

        private static int scoreMediaCodecInfo(MediaCodecInfo mediaCodecInfo) {
            return mediaCodecInfo.name.startsWith("OMX.google") ? -1 : 0;
        }
    }

    private static final class RawAudioCodecComparator implements Comparator<MediaCodecInfo> {
        private RawAudioCodecComparator() {
        }

        public int compare(MediaCodecInfo mediaCodecInfo, MediaCodecInfo mediaCodecInfo2) {
            return scoreMediaCodecInfo(mediaCodecInfo) - scoreMediaCodecInfo(mediaCodecInfo2);
        }

        private static int scoreMediaCodecInfo(MediaCodecInfo mediaCodecInfo) {
            String str = mediaCodecInfo.name;
            if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
                return -1;
            }
            return (Util.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : 1;
        }
    }

    private static int avcLevelToMaxFrameSize(int i) {
        if (i == 1 || i == 2) {
            return 25344;
        }
        switch (i) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            default:
                return -1;
        }
    }

    static {
        SparseIntArray sparseIntArray = AVC_PROFILE_NUMBER_TO_CONST;
        Integer valueOf = Integer.valueOf(1);
        sparseIntArray.put(66, 1);
        SparseIntArray sparseIntArray2 = AVC_PROFILE_NUMBER_TO_CONST;
        Integer valueOf2 = Integer.valueOf(2);
        sparseIntArray2.put(77, 2);
        SparseIntArray sparseIntArray3 = AVC_PROFILE_NUMBER_TO_CONST;
        Integer valueOf3 = Integer.valueOf(4);
        sparseIntArray3.put(88, 4);
        SparseIntArray sparseIntArray4 = AVC_PROFILE_NUMBER_TO_CONST;
        Integer valueOf4 = Integer.valueOf(8);
        sparseIntArray4.put(100, 8);
        SparseIntArray sparseIntArray5 = AVC_PROFILE_NUMBER_TO_CONST;
        Integer valueOf5 = Integer.valueOf(16);
        sparseIntArray5.put(110, 16);
        AVC_PROFILE_NUMBER_TO_CONST.put(122, 32);
        SparseIntArray sparseIntArray6 = AVC_PROFILE_NUMBER_TO_CONST;
        Integer valueOf6 = Integer.valueOf(64);
        sparseIntArray6.put(IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, 64);
        AVC_LEVEL_NUMBER_TO_CONST.put(10, 1);
        AVC_LEVEL_NUMBER_TO_CONST.put(11, 4);
        AVC_LEVEL_NUMBER_TO_CONST.put(12, 8);
        AVC_LEVEL_NUMBER_TO_CONST.put(13, 16);
        AVC_LEVEL_NUMBER_TO_CONST.put(20, 32);
        AVC_LEVEL_NUMBER_TO_CONST.put(21, 64);
        AVC_LEVEL_NUMBER_TO_CONST.put(22, 128);
        SparseIntArray sparseIntArray7 = AVC_LEVEL_NUMBER_TO_CONST;
        Integer valueOf7 = Integer.valueOf(256);
        sparseIntArray7.put(30, 256);
        AVC_LEVEL_NUMBER_TO_CONST.put(31, 512);
        AVC_LEVEL_NUMBER_TO_CONST.put(32, 1024);
        AVC_LEVEL_NUMBER_TO_CONST.put(40, 2048);
        AVC_LEVEL_NUMBER_TO_CONST.put(41, 4096);
        AVC_LEVEL_NUMBER_TO_CONST.put(42, 8192);
        AVC_LEVEL_NUMBER_TO_CONST.put(50, 16384);
        AVC_LEVEL_NUMBER_TO_CONST.put(51, 32768);
        AVC_LEVEL_NUMBER_TO_CONST.put(52, 65536);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L30", valueOf);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L60", valueOf3);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L63", valueOf5);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L90", valueOf6);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L93", valueOf7);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L120", Integer.valueOf(1024));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L123", Integer.valueOf(4096));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L150", Integer.valueOf(16384));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L153", Integer.valueOf(65536));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L156", Integer.valueOf(262144));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L180", Integer.valueOf(1048576));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L183", Integer.valueOf(4194304));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("L186", Integer.valueOf(16777216));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H30", valueOf2);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H60", valueOf4);
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H63", Integer.valueOf(32));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H90", Integer.valueOf(128));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H93", Integer.valueOf(512));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H120", Integer.valueOf(2048));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H123", Integer.valueOf(8192));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H150", Integer.valueOf(32768));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H153", Integer.valueOf(131072));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H156", Integer.valueOf(524288));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H180", Integer.valueOf(2097152));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H183", Integer.valueOf(8388608));
        HEVC_CODEC_STRING_TO_PROFILE_LEVEL.put("H186", Integer.valueOf(33554432));
        DOLBY_VISION_STRING_TO_PROFILE.put("00", valueOf);
        DOLBY_VISION_STRING_TO_PROFILE.put("01", valueOf2);
        DOLBY_VISION_STRING_TO_PROFILE.put("02", valueOf3);
        DOLBY_VISION_STRING_TO_PROFILE.put("03", valueOf4);
        DOLBY_VISION_STRING_TO_PROFILE.put("04", valueOf5);
        DOLBY_VISION_STRING_TO_PROFILE.put("05", Integer.valueOf(32));
        DOLBY_VISION_STRING_TO_PROFILE.put("06", valueOf6);
        DOLBY_VISION_STRING_TO_PROFILE.put("07", Integer.valueOf(128));
        DOLBY_VISION_STRING_TO_PROFILE.put("08", valueOf7);
        DOLBY_VISION_STRING_TO_PROFILE.put("09", Integer.valueOf(512));
        DOLBY_VISION_STRING_TO_LEVEL.put("01", valueOf);
        DOLBY_VISION_STRING_TO_LEVEL.put("02", valueOf2);
        DOLBY_VISION_STRING_TO_LEVEL.put("03", valueOf3);
        DOLBY_VISION_STRING_TO_LEVEL.put("04", valueOf4);
        DOLBY_VISION_STRING_TO_LEVEL.put("05", valueOf5);
        DOLBY_VISION_STRING_TO_LEVEL.put("06", Integer.valueOf(32));
        DOLBY_VISION_STRING_TO_LEVEL.put("07", valueOf6);
        DOLBY_VISION_STRING_TO_LEVEL.put("08", Integer.valueOf(128));
        DOLBY_VISION_STRING_TO_LEVEL.put("09", valueOf7);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(1, 1);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(2, 2);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(3, 3);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(4, 4);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(5, 5);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(6, 6);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(17, 17);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(20, 20);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(23, 23);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(29, 29);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(39, 39);
        MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.put(42, 42);
    }

    private MediaCodecUtil() {
    }

    public static void warmDecoderInfoCache(String str, boolean z, boolean z2) {
        try {
            getDecoderInfos(str, z, z2);
        } catch (DecoderQueryException e) {
            Log.e(TAG, "Codec warming failed", e);
        }
    }

    @Nullable
    public static MediaCodecInfo getPassthroughDecoderInfo() throws DecoderQueryException {
        MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.AUDIO_RAW, false, false);
        if (decoderInfo == null) {
            return null;
        }
        return MediaCodecInfo.newPassthroughInstance(decoderInfo.name);
    }

    @Nullable
    public static MediaCodecInfo getDecoderInfo(String str, boolean z, boolean z2) throws DecoderQueryException {
        List decoderInfos = getDecoderInfos(str, z, z2);
        if (decoderInfos.isEmpty()) {
            return null;
        }
        return (MediaCodecInfo) decoderInfos.get(0);
    }

    public static synchronized List<MediaCodecInfo> getDecoderInfos(String str, boolean z, boolean z2) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            CodecKey codecKey = new CodecKey(str, z, z2);
            List<MediaCodecInfo> list = (List) decoderInfosCache.get(codecKey);
            if (list != null) {
                return list;
            }
            ArrayList decoderInfosInternal = getDecoderInfosInternal(codecKey, Util.SDK_INT >= 21 ? new MediaCodecListCompatV21(z, z2) : new MediaCodecListCompatV16());
            if (z && decoderInfosInternal.isEmpty() && 21 <= Util.SDK_INT && Util.SDK_INT <= 23) {
                decoderInfosInternal = getDecoderInfosInternal(codecKey, new MediaCodecListCompatV16());
                if (!decoderInfosInternal.isEmpty()) {
                    String str2 = TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                    sb.append(str);
                    sb.append(". Assuming: ");
                    sb.append(((MediaCodecInfo) decoderInfosInternal.get(0)).name);
                    Log.w(str2, sb.toString());
                }
            }
            applyWorkarounds(str, decoderInfosInternal);
            List<MediaCodecInfo> unmodifiableList = Collections.unmodifiableList(decoderInfosInternal);
            decoderInfosCache.put(codecKey, unmodifiableList);
            return unmodifiableList;
        }
    }

    public static int maxH264DecodableFrameSize() throws DecoderQueryException {
        if (maxH264DecodableFrameSize == -1) {
            int i = 0;
            MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.VIDEO_H264, false, false);
            if (decoderInfo != null) {
                CodecProfileLevel[] profileLevels = decoderInfo.getProfileLevels();
                int length = profileLevels.length;
                int i2 = 0;
                while (i < length) {
                    i2 = Math.max(avcLevelToMaxFrameSize(profileLevels[i].level), i2);
                    i++;
                }
                i = Math.max(i2, Util.SDK_INT >= 21 ? 345600 : 172800);
            }
            maxH264DecodableFrameSize = i;
        }
        return maxH264DecodableFrameSize;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0058, code lost:
        if (r3.equals(CODEC_ID_AVC1) != false) goto L_0x005c;
     */
    @androidx.annotation.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getCodecProfileAndLevel(@androidx.annotation.Nullable java.lang.String r6) {
        /*
            r0 = 0
            if (r6 != 0) goto L_0x0004
            return r0
        L_0x0004:
            java.lang.String r1 = "\\."
            java.lang.String[] r1 = r6.split(r1)
            r2 = 0
            r3 = r1[r2]
            r4 = -1
            int r5 = r3.hashCode()
            switch(r5) {
                case 3006243: goto L_0x0052;
                case 3006244: goto L_0x0048;
                case 3095771: goto L_0x003e;
                case 3095823: goto L_0x0034;
                case 3199032: goto L_0x002a;
                case 3214780: goto L_0x0020;
                case 3356560: goto L_0x0016;
                default: goto L_0x0015;
            }
        L_0x0015:
            goto L_0x005b
        L_0x0016:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 6
            goto L_0x005c
        L_0x0020:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 3
            goto L_0x005c
        L_0x002a:
            java.lang.String r2 = "hev1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 2
            goto L_0x005c
        L_0x0034:
            java.lang.String r2 = "dvhe"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 4
            goto L_0x005c
        L_0x003e:
            java.lang.String r2 = "dvh1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 5
            goto L_0x005c
        L_0x0048:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x005b
            r2 = 1
            goto L_0x005c
        L_0x0052:
            java.lang.String r5 = "avc1"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L_0x005b
            goto L_0x005c
        L_0x005b:
            r2 = -1
        L_0x005c:
            switch(r2) {
                case 0: goto L_0x006f;
                case 1: goto L_0x006f;
                case 2: goto L_0x006a;
                case 3: goto L_0x006a;
                case 4: goto L_0x0065;
                case 5: goto L_0x0065;
                case 6: goto L_0x0060;
                default: goto L_0x005f;
            }
        L_0x005f:
            return r0
        L_0x0060:
            android.util.Pair r6 = getAacCodecProfileAndLevel(r6, r1)
            return r6
        L_0x0065:
            android.util.Pair r6 = getDolbyVisionProfileAndLevel(r6, r1)
            return r6
        L_0x006a:
            android.util.Pair r6 = getHevcProfileAndLevel(r6, r1)
            return r6
        L_0x006f:
            android.util.Pair r6 = getAvcProfileAndLevel(r6, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(java.lang.String):android.util.Pair");
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x00b1 A[SYNTHETIC, Splitter:B:44:0x00b1] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00d6 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.util.ArrayList<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfosInternal(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey r18, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat r19) throws com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            r1 = r18
            r2 = r19
            java.lang.String r3 = "secure-playback"
            java.lang.String r4 = "tunneled-playback"
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch:{ Exception -> 0x00fb }
            r5.<init>()     // Catch:{ Exception -> 0x00fb }
            java.lang.String r12 = r1.mimeType     // Catch:{ Exception -> 0x00fb }
            int r13 = r19.getCodecCount()     // Catch:{ Exception -> 0x00fb }
            boolean r14 = r19.secureDecodersExplicit()     // Catch:{ Exception -> 0x00fb }
            r0 = 0
            r15 = 0
        L_0x0019:
            if (r15 >= r13) goto L_0x00fa
            android.media.MediaCodecInfo r0 = r2.getCodecInfoAt(r15)     // Catch:{ Exception -> 0x00fb }
            java.lang.String r11 = r0.getName()     // Catch:{ Exception -> 0x00fb }
            java.lang.String r10 = getCodecMimeType(r0, r11, r14, r12)     // Catch:{ Exception -> 0x00fb }
            if (r10 != 0) goto L_0x002b
            goto L_0x00d0
        L_0x002b:
            android.media.MediaCodecInfo$CodecCapabilities r9 = r0.getCapabilitiesForType(r10)     // Catch:{ Exception -> 0x00a5 }
            boolean r0 = r2.isFeatureSupported(r4, r10, r9)     // Catch:{ Exception -> 0x00a5 }
            boolean r6 = r2.isFeatureRequired(r4, r10, r9)     // Catch:{ Exception -> 0x00a5 }
            boolean r7 = r1.tunneling     // Catch:{ Exception -> 0x00a5 }
            if (r7 != 0) goto L_0x003d
            if (r6 != 0) goto L_0x00d0
        L_0x003d:
            boolean r6 = r1.tunneling     // Catch:{ Exception -> 0x00a5 }
            if (r6 == 0) goto L_0x0045
            if (r0 != 0) goto L_0x0045
            goto L_0x00d0
        L_0x0045:
            boolean r0 = r2.isFeatureSupported(r3, r10, r9)     // Catch:{ Exception -> 0x00a5 }
            boolean r6 = r2.isFeatureRequired(r3, r10, r9)     // Catch:{ Exception -> 0x00a5 }
            boolean r7 = r1.secure     // Catch:{ Exception -> 0x00a5 }
            if (r7 != 0) goto L_0x0053
            if (r6 != 0) goto L_0x00d0
        L_0x0053:
            boolean r6 = r1.secure     // Catch:{ Exception -> 0x00a5 }
            if (r6 == 0) goto L_0x005b
            if (r0 != 0) goto L_0x005b
            goto L_0x00d0
        L_0x005b:
            boolean r16 = codecNeedsDisableAdaptationWorkaround(r11)     // Catch:{ Exception -> 0x00a5 }
            if (r14 == 0) goto L_0x0065
            boolean r6 = r1.secure     // Catch:{ Exception -> 0x00a5 }
            if (r6 == r0) goto L_0x006b
        L_0x0065:
            if (r14 != 0) goto L_0x007f
            boolean r6 = r1.secure     // Catch:{ Exception -> 0x00a5 }
            if (r6 != 0) goto L_0x007f
        L_0x006b:
            r0 = 0
            r6 = r11
            r7 = r12
            r8 = r10
            r17 = r10
            r10 = r16
            r1 = r11
            r11 = r0
            com.google.android.exoplayer2.mediacodec.MediaCodecInfo r0 = com.google.android.exoplayer2.mediacodec.MediaCodecInfo.newInstance(r6, r7, r8, r9, r10, r11)     // Catch:{ Exception -> 0x007d }
            r5.add(r0)     // Catch:{ Exception -> 0x007d }
            goto L_0x00d0
        L_0x007d:
            r0 = move-exception
            goto L_0x00a9
        L_0x007f:
            r17 = r10
            r1 = r11
            if (r14 != 0) goto L_0x00d0
            if (r0 == 0) goto L_0x00d0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x007d }
            r0.<init>()     // Catch:{ Exception -> 0x007d }
            r0.append(r1)     // Catch:{ Exception -> 0x007d }
            java.lang.String r6 = ".secure"
            r0.append(r6)     // Catch:{ Exception -> 0x007d }
            java.lang.String r6 = r0.toString()     // Catch:{ Exception -> 0x007d }
            r11 = 1
            r7 = r12
            r8 = r17
            r10 = r16
            com.google.android.exoplayer2.mediacodec.MediaCodecInfo r0 = com.google.android.exoplayer2.mediacodec.MediaCodecInfo.newInstance(r6, r7, r8, r9, r10, r11)     // Catch:{ Exception -> 0x007d }
            r5.add(r0)     // Catch:{ Exception -> 0x007d }
            return r5
        L_0x00a5:
            r0 = move-exception
            r17 = r10
            r1 = r11
        L_0x00a9:
            int r6 = com.google.android.exoplayer2.util.Util.SDK_INT     // Catch:{ Exception -> 0x00fb }
            r7 = 23
            java.lang.String r8 = "MediaCodecUtil"
            if (r6 > r7) goto L_0x00d6
            boolean r6 = r5.isEmpty()     // Catch:{ Exception -> 0x00fb }
            if (r6 != 0) goto L_0x00d6
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00fb }
            r0.<init>()     // Catch:{ Exception -> 0x00fb }
            java.lang.String r6 = "Skipping codec "
            r0.append(r6)     // Catch:{ Exception -> 0x00fb }
            r0.append(r1)     // Catch:{ Exception -> 0x00fb }
            java.lang.String r1 = " (failed to query capabilities)"
            r0.append(r1)     // Catch:{ Exception -> 0x00fb }
            java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x00fb }
            com.google.android.exoplayer2.util.Log.e(r8, r0)     // Catch:{ Exception -> 0x00fb }
        L_0x00d0:
            int r15 = r15 + 1
            r1 = r18
            goto L_0x0019
        L_0x00d6:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00fb }
            r2.<init>()     // Catch:{ Exception -> 0x00fb }
            java.lang.String r3 = "Failed to query codec "
            r2.append(r3)     // Catch:{ Exception -> 0x00fb }
            r2.append(r1)     // Catch:{ Exception -> 0x00fb }
            java.lang.String r1 = " ("
            r2.append(r1)     // Catch:{ Exception -> 0x00fb }
            r1 = r17
            r2.append(r1)     // Catch:{ Exception -> 0x00fb }
            java.lang.String r1 = ")"
            r2.append(r1)     // Catch:{ Exception -> 0x00fb }
            java.lang.String r1 = r2.toString()     // Catch:{ Exception -> 0x00fb }
            com.google.android.exoplayer2.util.Log.e(r8, r1)     // Catch:{ Exception -> 0x00fb }
            throw r0     // Catch:{ Exception -> 0x00fb }
        L_0x00fa:
            return r5
        L_0x00fb:
            r0 = move-exception
            com.google.android.exoplayer2.mediacodec.MediaCodecUtil$DecoderQueryException r1 = new com.google.android.exoplayer2.mediacodec.MediaCodecUtil$DecoderQueryException
            r2 = 0
            r1.<init>(r0)
            goto L_0x0104
        L_0x0103:
            throw r1
        L_0x0104:
            goto L_0x0103
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getDecoderInfosInternal(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$CodecKey, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$MediaCodecListCompat):java.util.ArrayList");
    }

    @Nullable
    private static String getCodecMimeType(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (!isCodecUsableDecoder(mediaCodecInfo, str, z, str2)) {
            return null;
        }
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals(MimeTypes.VIDEO_DOLBY_VISION)) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
        } else if (str2.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (str2.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
                return "audio/x-lg-flac";
            }
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0074, code lost:
        if (com.google.android.exoplayer2.util.Util.DEVICE.startsWith("HM") != false) goto L_0x0076;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00fb, code lost:
        if ("SO-02E".equals(com.google.android.exoplayer2.util.Util.DEVICE) != false) goto L_0x00fd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0130, code lost:
        if ("C1605".equals(com.google.android.exoplayer2.util.Util.DEVICE) != false) goto L_0x0132;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x01a1, code lost:
        if ("SCV31".equals(com.google.android.exoplayer2.util.Util.DEVICE) != false) goto L_0x01a3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean isCodecUsableDecoder(android.media.MediaCodecInfo r3, java.lang.String r4, boolean r5, java.lang.String r6) {
        /*
            boolean r3 = r3.isEncoder()
            r0 = 0
            if (r3 != 0) goto L_0x0215
            if (r5 != 0) goto L_0x0013
            java.lang.String r3 = ".secure"
            boolean r3 = r4.endsWith(r3)
            if (r3 == 0) goto L_0x0013
            goto L_0x0215
        L_0x0013:
            int r3 = com.google.android.exoplayer2.util.Util.SDK_INT
            r5 = 21
            if (r3 >= r5) goto L_0x004a
            java.lang.String r3 = "CIPAACDecoder"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x0049
            java.lang.String r3 = "CIPMP3Decoder"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x0049
            java.lang.String r3 = "CIPVorbisDecoder"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x0049
            java.lang.String r3 = "CIPAMRNBDecoder"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x0049
            java.lang.String r3 = "AACDecoder"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x0049
            java.lang.String r3 = "MP3Decoder"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x004a
        L_0x0049:
            return r0
        L_0x004a:
            int r3 = com.google.android.exoplayer2.util.Util.SDK_INT
            r5 = 18
            if (r3 >= r5) goto L_0x0077
            java.lang.String r3 = "OMX.MTK.AUDIO.DECODER.AAC"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x0077
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "a70"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L_0x0076
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.MANUFACTURER
            java.lang.String r5 = "Xiaomi"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L_0x0077
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "HM"
            boolean r3 = r3.startsWith(r5)
            if (r3 == 0) goto L_0x0077
        L_0x0076:
            return r0
        L_0x0077:
            int r3 = com.google.android.exoplayer2.util.Util.SDK_INT
            r5 = 16
            if (r3 != r5) goto L_0x00fe
            java.lang.String r3 = "OMX.qcom.audio.decoder.mp3"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x00fe
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "dlxu"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "protou"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "ville"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "villeplus"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "villec2"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "gee"
            boolean r3 = r3.startsWith(r1)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "C6602"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "C6603"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "C6606"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "C6616"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "L36h"
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x00fd
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "SO-02E"
            boolean r3 = r1.equals(r3)
            if (r3 == 0) goto L_0x00fe
        L_0x00fd:
            return r0
        L_0x00fe:
            int r3 = com.google.android.exoplayer2.util.Util.SDK_INT
            if (r3 != r5) goto L_0x0133
            java.lang.String r3 = "OMX.qcom.audio.decoder.aac"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x0133
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "C1504"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L_0x0132
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "C1505"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L_0x0132
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "C1604"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L_0x0132
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "C1605"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L_0x0133
        L_0x0132:
            return r0
        L_0x0133:
            int r3 = com.google.android.exoplayer2.util.Util.SDK_INT
            r5 = 24
            java.lang.String r1 = "samsung"
            if (r3 >= r5) goto L_0x01a4
            java.lang.String r3 = "OMX.SEC.aac.dec"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x014b
            java.lang.String r3 = "OMX.Exynos.AAC.Decoder"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x01a4
        L_0x014b:
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.MANUFACTURER
            boolean r3 = r1.equals(r3)
            if (r3 == 0) goto L_0x01a4
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "zeroflte"
            boolean r3 = r3.startsWith(r5)
            if (r3 != 0) goto L_0x01a3
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "zerolte"
            boolean r3 = r3.startsWith(r5)
            if (r3 != 0) goto L_0x01a3
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "zenlte"
            boolean r3 = r3.startsWith(r5)
            if (r3 != 0) goto L_0x01a3
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "SC-05G"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L_0x01a3
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "marinelteatt"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L_0x01a3
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "404SC"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L_0x01a3
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "SC-04G"
            boolean r3 = r5.equals(r3)
            if (r3 != 0) goto L_0x01a3
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r5 = "SCV31"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L_0x01a4
        L_0x01a3:
            return r0
        L_0x01a4:
            int r3 = com.google.android.exoplayer2.util.Util.SDK_INT
            java.lang.String r5 = "jflte"
            r2 = 19
            if (r3 > r2) goto L_0x01ed
            java.lang.String r3 = "OMX.SEC.vp8.dec"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x01ed
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.MANUFACTURER
            boolean r3 = r1.equals(r3)
            if (r3 == 0) goto L_0x01ed
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "d2"
            boolean r3 = r3.startsWith(r1)
            if (r3 != 0) goto L_0x01ec
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "serrano"
            boolean r3 = r3.startsWith(r1)
            if (r3 != 0) goto L_0x01ec
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            boolean r3 = r3.startsWith(r5)
            if (r3 != 0) goto L_0x01ec
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "santos"
            boolean r3 = r3.startsWith(r1)
            if (r3 != 0) goto L_0x01ec
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            java.lang.String r1 = "t0"
            boolean r3 = r3.startsWith(r1)
            if (r3 == 0) goto L_0x01ed
        L_0x01ec:
            return r0
        L_0x01ed:
            int r3 = com.google.android.exoplayer2.util.Util.SDK_INT
            if (r3 > r2) goto L_0x0202
            java.lang.String r3 = com.google.android.exoplayer2.util.Util.DEVICE
            boolean r3 = r3.startsWith(r5)
            if (r3 == 0) goto L_0x0202
            java.lang.String r3 = "OMX.qcom.video.decoder.vp8"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x0202
            return r0
        L_0x0202:
            java.lang.String r3 = "audio/eac3-joc"
            boolean r3 = r3.equals(r6)
            if (r3 == 0) goto L_0x0213
            java.lang.String r3 = "OMX.MTK.AUDIO.DECODER.DSPAC3"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x0213
            return r0
        L_0x0213:
            r3 = 1
            return r3
        L_0x0215:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.isCodecUsableDecoder(android.media.MediaCodecInfo, java.lang.String, boolean, java.lang.String):boolean");
    }

    private static void applyWorkarounds(String str, List<MediaCodecInfo> list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            Collections.sort(list, new RawAudioCodecComparator());
        } else if (Util.SDK_INT < 21 && list.size() > 1) {
            String str2 = ((MediaCodecInfo) list.get(0)).name;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                Collections.sort(list, new PreferOmxGoogleCodecComparator());
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0018, code lost:
        if ("Nexus 10".equals(com.google.android.exoplayer2.util.Util.MODEL) != false) goto L_0x001a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean codecNeedsDisableAdaptationWorkaround(java.lang.String r2) {
        /*
            int r0 = com.google.android.exoplayer2.util.Util.SDK_INT
            r1 = 22
            if (r0 > r1) goto L_0x002c
            java.lang.String r0 = com.google.android.exoplayer2.util.Util.MODEL
            java.lang.String r1 = "ODROID-XU3"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L_0x001a
            java.lang.String r0 = com.google.android.exoplayer2.util.Util.MODEL
            java.lang.String r1 = "Nexus 10"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x002c
        L_0x001a:
            java.lang.String r0 = "OMX.Exynos.AVC.Decoder"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L_0x002a
            java.lang.String r0 = "OMX.Exynos.AVC.Decoder.secure"
            boolean r2 = r0.equals(r2)
            if (r2 == 0) goto L_0x002c
        L_0x002a:
            r2 = 1
            goto L_0x002d
        L_0x002c:
            r2 = 0
        L_0x002d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.codecNeedsDisableAdaptationWorkaround(java.lang.String):boolean");
    }

    private static Pair<Integer, Integer> getDolbyVisionProfileAndLevel(String str, String[] strArr) {
        int length = strArr.length;
        String str2 = "Ignoring malformed Dolby Vision codec string: ";
        String str3 = TAG;
        if (length < 3) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(str);
            Log.w(str3, sb.toString());
            return null;
        }
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(str);
            Log.w(str3, sb2.toString());
            return null;
        }
        String group = matcher.group(1);
        Integer num = (Integer) DOLBY_VISION_STRING_TO_PROFILE.get(group);
        if (num == null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unknown Dolby Vision profile string: ");
            sb3.append(group);
            Log.w(str3, sb3.toString());
            return null;
        }
        String str4 = strArr[2];
        Integer num2 = (Integer) DOLBY_VISION_STRING_TO_LEVEL.get(str4);
        if (num2 != null) {
            return new Pair<>(num, num2);
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Unknown Dolby Vision level string: ");
        sb4.append(str4);
        Log.w(str3, sb4.toString());
        return null;
    }

    private static Pair<Integer, Integer> getHevcProfileAndLevel(String str, String[] strArr) {
        int length = strArr.length;
        String str2 = "Ignoring malformed HEVC codec string: ";
        String str3 = TAG;
        if (length < 4) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(str);
            Log.w(str3, sb.toString());
            return null;
        }
        int i = 1;
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(str);
            Log.w(str3, sb2.toString());
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if ("2".equals(group)) {
                i = 2;
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Unknown HEVC profile string: ");
                sb3.append(group);
                Log.w(str3, sb3.toString());
                return null;
            }
        }
        String str4 = strArr[3];
        Integer num = (Integer) HEVC_CODEC_STRING_TO_PROFILE_LEVEL.get(str4);
        if (num != null) {
            return new Pair<>(Integer.valueOf(i), num);
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Unknown HEVC level string: ");
        sb4.append(str4);
        Log.w(str3, sb4.toString());
        return null;
    }

    private static Pair<Integer, Integer> getAvcProfileAndLevel(String str, String[] strArr) {
        int i;
        int i2;
        int length = strArr.length;
        String str2 = "Ignoring malformed AVC codec string: ";
        String str3 = TAG;
        if (length < 2) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(str);
            Log.w(str3, sb.toString());
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                int parseInt = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = Integer.parseInt(strArr[1].substring(4), 16);
                i2 = parseInt;
            } else if (strArr.length >= 3) {
                i2 = Integer.parseInt(strArr[1]);
                i = Integer.parseInt(strArr[2]);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(str);
                Log.w(str3, sb2.toString());
                return null;
            }
            int i3 = AVC_PROFILE_NUMBER_TO_CONST.get(i2, -1);
            if (i3 == -1) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Unknown AVC profile: ");
                sb3.append(i2);
                Log.w(str3, sb3.toString());
                return null;
            }
            int i4 = AVC_LEVEL_NUMBER_TO_CONST.get(i, -1);
            if (i4 != -1) {
                return new Pair<>(Integer.valueOf(i3), Integer.valueOf(i4));
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Unknown AVC level: ");
            sb4.append(i);
            Log.w(str3, sb4.toString());
            return null;
        } catch (NumberFormatException unused) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(str2);
            sb5.append(str);
            Log.w(str3, sb5.toString());
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> getAacCodecProfileAndLevel(String str, String[] strArr) {
        int length = strArr.length;
        String str2 = "Ignoring malformed MP4A codec string: ";
        String str3 = TAG;
        if (length != 3) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(str);
            Log.w(str3, sb.toString());
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(MimeTypes.getMimeTypeFromMp4ObjectType(Integer.parseInt(strArr[1], 16)))) {
                int i = MP4A_AUDIO_OBJECT_TYPE_TO_PROFILE.get(Integer.parseInt(strArr[2]), -1);
                if (i != -1) {
                    return new Pair<>(Integer.valueOf(i), Integer.valueOf(0));
                }
            }
        } catch (NumberFormatException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(str);
            Log.w(str3, sb2.toString());
        }
        return null;
    }
}
