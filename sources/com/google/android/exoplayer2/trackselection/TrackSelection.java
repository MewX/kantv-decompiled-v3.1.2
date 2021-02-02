package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.trackselection.TrackSelection.Factory;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import java.util.List;

public interface TrackSelection {

    /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelection$-CC reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$onDiscontinuity(TrackSelection trackSelection) {
        }

        @Deprecated
        public static void $default$updateSelectedTrack(TrackSelection _this, long j, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        public static void $default$updateSelectedTrack(TrackSelection _this, long j, long j2, long j3, List list, MediaChunkIterator[] mediaChunkIteratorArr) {
            _this.updateSelectedTrack(j, j2, j3);
        }
    }

    public static final class Definition {
        @Nullable
        public final Object data;
        public final TrackGroup group;
        public final int reason;
        public final int[] tracks;

        public Definition(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public Definition(TrackGroup trackGroup, int[] iArr, int i, @Nullable Object obj) {
            this.group = trackGroup;
            this.tracks = iArr;
            this.reason = i;
            this.data = obj;
        }
    }

    public interface Factory {

        /* renamed from: com.google.android.exoplayer2.trackselection.TrackSelection$Factory$-CC reason: invalid class name */
        public final /* synthetic */ class CC {
            @Deprecated
            public static TrackSelection $default$createTrackSelection(Factory _this, TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int... iArr) {
                throw new UnsupportedOperationException();
            }

            public static TrackSelection[] $default$createTrackSelections(Factory _this, Definition[] definitionArr, BandwidthMeter bandwidthMeter) {
                return TrackSelectionUtil.createTrackSelectionsForDefinitions(definitionArr, new AdaptiveTrackSelectionFactory(_this, bandwidthMeter) {
                    private final /* synthetic */ Factory f$0;
                    private final /* synthetic */ BandwidthMeter f$1;

                    public final 
/*
Method generation error in method: com.google.android.exoplayer2.trackselection.-$$Lambda$TrackSelection$Factory$9mnNWe-5kFFae0E_IiLXrOzpdtA.createAdaptiveTrackSelection(com.google.android.exoplayer2.trackselection.TrackSelection$Definition):null, dex: classes.dex
                    java.lang.NullPointerException
                    	at jadx.core.codegen.ClassGen.useType(ClassGen.java:442)
                    	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:109)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:311)
                    	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:661)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:595)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:773)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:713)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:303)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:213)
                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:210)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:203)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:316)
                    	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
                    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
                    	at jadx.core.codegen.ClassGen.addInnerClasses(ClassGen.java:237)
                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:224)
                    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
                    	at jadx.core.codegen.ClassGen.addInnerClasses(ClassGen.java:237)
                    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:224)
                    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
                    	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:76)
                    	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                    	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:32)
                    	at jadx.core.codegen.CodeGen.generate(CodeGen.java:20)
                    	at jadx.core.ProcessClass.process(ProcessClass.java:36)
                    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
                    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
                    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
                    
*/
                });
            }
        }

        @Deprecated
        TrackSelection createTrackSelection(TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int... iArr);

        TrackSelection[] createTrackSelections(Definition[] definitionArr, BandwidthMeter bandwidthMeter);
    }

    boolean blacklist(int i, long j);

    void disable();

    void enable();

    int evaluateQueueSize(long j, List<? extends MediaChunk> list);

    Format getFormat(int i);

    int getIndexInTrackGroup(int i);

    Format getSelectedFormat();

    int getSelectedIndex();

    int getSelectedIndexInTrackGroup();

    @Nullable
    Object getSelectionData();

    int getSelectionReason();

    TrackGroup getTrackGroup();

    int indexOf(int i);

    int indexOf(Format format);

    int length();

    void onDiscontinuity();

    void onPlaybackSpeed(float f);

    @Deprecated
    void updateSelectedTrack(long j, long j2, long j3);

    void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr);
}
