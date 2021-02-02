package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.dash.DashSegmentIndex;
import com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase;
import com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase;
import java.util.Collections;
import java.util.List;

public abstract class Representation {
    public static final long REVISION_ID_DEFAULT = -1;
    public final String baseUrl;
    public final Format format;
    public final List<Descriptor> inbandEventStreams;
    private final RangedUri initializationUri;
    public final long presentationTimeOffsetUs;
    public final long revisionId;

    public static class MultiSegmentRepresentation extends Representation implements DashSegmentIndex {
        private final MultiSegmentBase segmentBase;

        public String getCacheKey() {
            return null;
        }

        public DashSegmentIndex getIndex() {
            return this;
        }

        public RangedUri getIndexUri() {
            return null;
        }

        public MultiSegmentRepresentation(long j, Format format, String str, MultiSegmentBase multiSegmentBase, List<Descriptor> list) {
            super(j, format, str, multiSegmentBase, list);
            this.segmentBase = multiSegmentBase;
        }

        public RangedUri getSegmentUrl(long j) {
            return this.segmentBase.getSegmentUrl(this, j);
        }

        public long getSegmentNum(long j, long j2) {
            return this.segmentBase.getSegmentNum(j, j2);
        }

        public long getTimeUs(long j) {
            return this.segmentBase.getSegmentTimeUs(j);
        }

        public long getDurationUs(long j, long j2) {
            return this.segmentBase.getSegmentDurationUs(j, j2);
        }

        public long getFirstSegmentNum() {
            return this.segmentBase.getFirstSegmentNum();
        }

        public int getSegmentCount(long j) {
            return this.segmentBase.getSegmentCount(j);
        }

        public boolean isExplicit() {
            return this.segmentBase.isExplicit();
        }
    }

    public static class SingleSegmentRepresentation extends Representation {
        private final String cacheKey;
        public final long contentLength;
        private final RangedUri indexUri;
        private final SingleSegmentIndex segmentIndex;
        public final Uri uri;

        public static SingleSegmentRepresentation newInstance(long j, Format format, String str, long j2, long j3, long j4, long j5, List<Descriptor> list, String str2, long j6) {
            RangedUri rangedUri = new RangedUri(null, j2, (j3 - j2) + 1);
            SingleSegmentBase singleSegmentBase = new SingleSegmentBase(rangedUri, 1, 0, j4, (j5 - j4) + 1);
            SingleSegmentRepresentation singleSegmentRepresentation = new SingleSegmentRepresentation(j, format, str, singleSegmentBase, list, str2, j6);
            return singleSegmentRepresentation;
        }

        public SingleSegmentRepresentation(long j, Format format, String str, SingleSegmentBase singleSegmentBase, List<Descriptor> list, String str2, long j2) {
            SingleSegmentIndex singleSegmentIndex;
            super(j, format, str, singleSegmentBase, list);
            this.uri = Uri.parse(str);
            this.indexUri = singleSegmentBase.getIndex();
            this.cacheKey = str2;
            this.contentLength = j2;
            if (this.indexUri != null) {
                singleSegmentIndex = null;
            } else {
                RangedUri rangedUri = new RangedUri(null, 0, j2);
                singleSegmentIndex = new SingleSegmentIndex(rangedUri);
            }
            this.segmentIndex = singleSegmentIndex;
        }

        public RangedUri getIndexUri() {
            return this.indexUri;
        }

        public DashSegmentIndex getIndex() {
            return this.segmentIndex;
        }

        public String getCacheKey() {
            return this.cacheKey;
        }
    }

    public abstract String getCacheKey();

    public abstract DashSegmentIndex getIndex();

    public abstract RangedUri getIndexUri();

    public static Representation newInstance(long j, Format format2, String str, SegmentBase segmentBase) {
        return newInstance(j, format2, str, segmentBase, null);
    }

    public static Representation newInstance(long j, Format format2, String str, SegmentBase segmentBase, List<Descriptor> list) {
        return newInstance(j, format2, str, segmentBase, list, null);
    }

    public static Representation newInstance(long j, Format format2, String str, SegmentBase segmentBase, List<Descriptor> list, String str2) {
        SegmentBase segmentBase2 = segmentBase;
        if (segmentBase2 instanceof SingleSegmentBase) {
            SingleSegmentRepresentation singleSegmentRepresentation = new SingleSegmentRepresentation(j, format2, str, (SingleSegmentBase) segmentBase2, list, str2, -1);
            return singleSegmentRepresentation;
        } else if (segmentBase2 instanceof MultiSegmentBase) {
            MultiSegmentRepresentation multiSegmentRepresentation = new MultiSegmentRepresentation(j, format2, str, (MultiSegmentBase) segmentBase2, list);
            return multiSegmentRepresentation;
        } else {
            throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
        }
    }

    private Representation(long j, Format format2, String str, SegmentBase segmentBase, List<Descriptor> list) {
        List<Descriptor> list2;
        this.revisionId = j;
        this.format = format2;
        this.baseUrl = str;
        if (list == null) {
            list2 = Collections.emptyList();
        } else {
            list2 = Collections.unmodifiableList(list);
        }
        this.inbandEventStreams = list2;
        this.initializationUri = segmentBase.getInitialization(this);
        this.presentationTimeOffsetUs = segmentBase.getPresentationTimeOffsetUs();
    }

    public RangedUri getInitializationUri() {
        return this.initializationUri;
    }
}