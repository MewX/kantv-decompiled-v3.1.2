package io.flutter.plugins.videoplayer;

import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.LongSparseArray;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player.EventListener;
import com.google.android.exoplayer2.Player.EventListener.CC;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.audio.AudioAttributes.Builder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.PluginRegistry.ViewDestroyListener;
import io.flutter.view.FlutterNativeView;
import io.flutter.view.TextureRegistry;
import io.flutter.view.TextureRegistry.SurfaceTextureEntry;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

public class VideoPlayerPlugin implements MethodCallHandler {
    private final Registrar registrar;
    private final LongSparseArray<VideoPlayer> videoPlayers = new LongSparseArray<>();

    private static class VideoPlayer {
        private static final String FORMAT_DASH = "dash";
        private static final String FORMAT_HLS = "hls";
        private static final String FORMAT_OTHER = "other";
        private static final String FORMAT_SS = "ss";
        private final EventChannel eventChannel;
        /* access modifiers changed from: private */
        public QueuingEventSink eventSink = new QueuingEventSink();
        private SimpleExoPlayer exoPlayer;
        /* access modifiers changed from: private */
        public boolean isInitialized = false;
        private Surface surface;
        private final SurfaceTextureEntry textureEntry;

        /* JADX WARNING: type inference failed for: r0v6, types: [com.google.android.exoplayer2.upstream.DefaultDataSourceFactory] */
        /* JADX WARNING: Multi-variable type inference failed */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        VideoPlayer(android.content.Context r8, io.flutter.plugin.common.EventChannel r9, io.flutter.view.TextureRegistry.SurfaceTextureEntry r10, java.lang.String r11, io.flutter.plugin.common.MethodChannel.Result r12, java.lang.String r13) {
            /*
                r7 = this;
                r7.<init>()
                io.flutter.plugins.videoplayer.QueuingEventSink r0 = new io.flutter.plugins.videoplayer.QueuingEventSink
                r0.<init>()
                r7.eventSink = r0
                r0 = 0
                r7.isInitialized = r0
                r7.eventChannel = r9
                r7.textureEntry = r10
                com.google.android.exoplayer2.trackselection.DefaultTrackSelector r0 = new com.google.android.exoplayer2.trackselection.DefaultTrackSelector
                r0.<init>()
                com.google.android.exoplayer2.SimpleExoPlayer r0 = com.google.android.exoplayer2.ExoPlayerFactory.newSimpleInstance(r8, r0)
                r7.exoPlayer = r0
                android.net.Uri r11 = android.net.Uri.parse(r11)
                boolean r0 = isHTTP(r11)
                if (r0 == 0) goto L_0x0035
                com.google.android.exoplayer2.upstream.DefaultHttpDataSourceFactory r0 = new com.google.android.exoplayer2.upstream.DefaultHttpDataSourceFactory
                r3 = 0
                r4 = 8000(0x1f40, float:1.121E-41)
                r5 = 8000(0x1f40, float:1.121E-41)
                r6 = 1
                java.lang.String r2 = "ExoPlayer"
                r1 = r0
                r1.<init>(r2, r3, r4, r5, r6)
                goto L_0x003c
            L_0x0035:
                com.google.android.exoplayer2.upstream.DefaultDataSourceFactory r0 = new com.google.android.exoplayer2.upstream.DefaultDataSourceFactory
                java.lang.String r1 = "ExoPlayer"
                r0.<init>(r8, r1)
            L_0x003c:
                com.google.android.exoplayer2.source.MediaSource r8 = r7.buildMediaSource(r11, r0, r13, r8)
                com.google.android.exoplayer2.SimpleExoPlayer r11 = r7.exoPlayer
                r11.prepare(r8)
                r7.setupVideoPlayer(r9, r10, r12)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.videoplayer.VideoPlayerPlugin.VideoPlayer.<init>(android.content.Context, io.flutter.plugin.common.EventChannel, io.flutter.view.TextureRegistry$SurfaceTextureEntry, java.lang.String, io.flutter.plugin.common.MethodChannel$Result, java.lang.String):void");
        }

        private static boolean isHTTP(Uri uri) {
            if (uri == null || uri.getScheme() == null) {
                return false;
            }
            String scheme = uri.getScheme();
            if (scheme.equals("http") || scheme.equals("https")) {
                return true;
            }
            return false;
        }

        /* JADX WARNING: Removed duplicated region for block: B:25:0x0053  */
        /* JADX WARNING: Removed duplicated region for block: B:31:0x005f  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private com.google.android.exoplayer2.source.MediaSource buildMediaSource(android.net.Uri r8, com.google.android.exoplayer2.upstream.DataSource.Factory r9, java.lang.String r10, android.content.Context r11) {
            /*
                r7 = this;
                r0 = 0
                r1 = -1
                r2 = 3
                r3 = 2
                r4 = 1
                if (r10 != 0) goto L_0x0010
                java.lang.String r10 = r8.getLastPathSegment()
                int r0 = com.google.android.exoplayer2.util.Util.inferContentType(r10)
                goto L_0x0060
            L_0x0010:
                int r5 = r10.hashCode()
                r6 = 3680(0xe60, float:5.157E-42)
                if (r5 == r6) goto L_0x0046
                r6 = 103407(0x193ef, float:1.44904E-40)
                if (r5 == r6) goto L_0x003c
                r6 = 3075986(0x2eef92, float:4.310374E-39)
                if (r5 == r6) goto L_0x0032
                r6 = 106069776(0x6527f10, float:3.958996E-35)
                if (r5 == r6) goto L_0x0028
                goto L_0x0050
            L_0x0028:
                java.lang.String r5 = "other"
                boolean r10 = r10.equals(r5)
                if (r10 == 0) goto L_0x0050
                r10 = 3
                goto L_0x0051
            L_0x0032:
                java.lang.String r5 = "dash"
                boolean r10 = r10.equals(r5)
                if (r10 == 0) goto L_0x0050
                r10 = 1
                goto L_0x0051
            L_0x003c:
                java.lang.String r5 = "hls"
                boolean r10 = r10.equals(r5)
                if (r10 == 0) goto L_0x0050
                r10 = 2
                goto L_0x0051
            L_0x0046:
                java.lang.String r5 = "ss"
                boolean r10 = r10.equals(r5)
                if (r10 == 0) goto L_0x0050
                r10 = 0
                goto L_0x0051
            L_0x0050:
                r10 = -1
            L_0x0051:
                if (r10 == 0) goto L_0x005f
                if (r10 == r4) goto L_0x0060
                if (r10 == r3) goto L_0x005d
                if (r10 == r2) goto L_0x005b
                r0 = -1
                goto L_0x0060
            L_0x005b:
                r0 = 3
                goto L_0x0060
            L_0x005d:
                r0 = 2
                goto L_0x0060
            L_0x005f:
                r0 = 1
            L_0x0060:
                r10 = 0
                if (r0 == 0) goto L_0x00b1
                if (r0 == r4) goto L_0x009d
                if (r0 == r3) goto L_0x0093
                if (r0 != r2) goto L_0x007c
                com.google.android.exoplayer2.source.ExtractorMediaSource$Factory r10 = new com.google.android.exoplayer2.source.ExtractorMediaSource$Factory
                r10.<init>(r9)
                com.google.android.exoplayer2.extractor.DefaultExtractorsFactory r9 = new com.google.android.exoplayer2.extractor.DefaultExtractorsFactory
                r9.<init>()
                com.google.android.exoplayer2.source.ExtractorMediaSource$Factory r9 = r10.setExtractorsFactory(r9)
                com.google.android.exoplayer2.source.ExtractorMediaSource r8 = r9.createMediaSource(r8)
                return r8
            L_0x007c:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.StringBuilder r9 = new java.lang.StringBuilder
                r9.<init>()
                java.lang.String r10 = "Unsupported type: "
                r9.append(r10)
                r9.append(r0)
                java.lang.String r9 = r9.toString()
                r8.<init>(r9)
                throw r8
            L_0x0093:
                com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory r10 = new com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory
                r10.<init>(r9)
                com.google.android.exoplayer2.source.hls.HlsMediaSource r8 = r10.createMediaSource(r8)
                return r8
            L_0x009d:
                com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory r0 = new com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory
                com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource$Factory r1 = new com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource$Factory
                r1.<init>(r9)
                com.google.android.exoplayer2.upstream.DefaultDataSourceFactory r2 = new com.google.android.exoplayer2.upstream.DefaultDataSourceFactory
                r2.<init>(r11, r10, r9)
                r0.<init>(r1, r2)
                com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource r8 = r0.createMediaSource(r8)
                return r8
            L_0x00b1:
                com.google.android.exoplayer2.source.dash.DashMediaSource$Factory r0 = new com.google.android.exoplayer2.source.dash.DashMediaSource$Factory
                com.google.android.exoplayer2.source.dash.DefaultDashChunkSource$Factory r1 = new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource$Factory
                r1.<init>(r9)
                com.google.android.exoplayer2.upstream.DefaultDataSourceFactory r2 = new com.google.android.exoplayer2.upstream.DefaultDataSourceFactory
                r2.<init>(r11, r10, r9)
                r0.<init>(r1, r2)
                com.google.android.exoplayer2.source.dash.DashMediaSource r8 = r0.createMediaSource(r8)
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.videoplayer.VideoPlayerPlugin.VideoPlayer.buildMediaSource(android.net.Uri, com.google.android.exoplayer2.upstream.DataSource$Factory, java.lang.String, android.content.Context):com.google.android.exoplayer2.source.MediaSource");
        }

        private void setupVideoPlayer(EventChannel eventChannel2, SurfaceTextureEntry surfaceTextureEntry, Result result) {
            eventChannel2.setStreamHandler(new StreamHandler() {
                public void onListen(Object obj, EventSink eventSink) {
                    VideoPlayer.this.eventSink.setDelegate(eventSink);
                }

                public void onCancel(Object obj) {
                    VideoPlayer.this.eventSink.setDelegate(null);
                }
            });
            this.surface = new Surface(surfaceTextureEntry.surfaceTexture());
            this.exoPlayer.setVideoSurface(this.surface);
            setAudioAttributes(this.exoPlayer);
            this.exoPlayer.addListener(new EventListener() {
                public /* synthetic */ void onLoadingChanged(boolean z) {
                    CC.$default$onLoadingChanged(this, z);
                }

                public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                    CC.$default$onPlaybackParametersChanged(this, playbackParameters);
                }

                public /* synthetic */ void onPositionDiscontinuity(int i) {
                    CC.$default$onPositionDiscontinuity(this, i);
                }

                public /* synthetic */ void onRepeatModeChanged(int i) {
                    CC.$default$onRepeatModeChanged(this, i);
                }

                public /* synthetic */ void onSeekProcessed() {
                    CC.$default$onSeekProcessed(this);
                }

                public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
                    CC.$default$onShuffleModeEnabledChanged(this, z);
                }

                public /* synthetic */ void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i) {
                    CC.$default$onTimelineChanged(this, timeline, obj, i);
                }

                public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
                    CC.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
                }

                public void onPlayerStateChanged(boolean z, int i) {
                    if (i == 2) {
                        VideoPlayer.this.sendBufferingUpdate();
                    } else if (i == 3) {
                        if (!VideoPlayer.this.isInitialized) {
                            VideoPlayer.this.isInitialized = true;
                            VideoPlayer.this.sendInitialized();
                        }
                    } else if (i == 4) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("event", "completed");
                        VideoPlayer.this.eventSink.success(hashMap);
                    }
                }

                public void onPlayerError(ExoPlaybackException exoPlaybackException) {
                    if (VideoPlayer.this.eventSink != null) {
                        QueuingEventSink access$000 = VideoPlayer.this.eventSink;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Video player had error ");
                        sb.append(exoPlaybackException);
                        access$000.error("VideoError", sb.toString(), null);
                    }
                }
            });
            HashMap hashMap = new HashMap();
            hashMap.put("textureId", Long.valueOf(surfaceTextureEntry.id()));
            result.success(hashMap);
        }

        /* access modifiers changed from: private */
        public void sendBufferingUpdate() {
            HashMap hashMap = new HashMap();
            hashMap.put("event", "bufferingUpdate");
            String str = "values";
            hashMap.put(str, Collections.singletonList(Arrays.asList(new Number[]{Integer.valueOf(0), Long.valueOf(this.exoPlayer.getBufferedPosition())})));
            this.eventSink.success(hashMap);
        }

        private static void setAudioAttributes(SimpleExoPlayer simpleExoPlayer) {
            if (VERSION.SDK_INT >= 21) {
                simpleExoPlayer.setAudioAttributes(new Builder().setContentType(3).build());
            } else {
                simpleExoPlayer.setAudioStreamType(3);
            }
        }

        /* access modifiers changed from: 0000 */
        public void play() {
            this.exoPlayer.setPlayWhenReady(true);
        }

        /* access modifiers changed from: 0000 */
        public void pause() {
            this.exoPlayer.setPlayWhenReady(false);
        }

        /* access modifiers changed from: 0000 */
        public void setLooping(boolean z) {
            this.exoPlayer.setRepeatMode(z ? 2 : 0);
        }

        /* access modifiers changed from: 0000 */
        public void setVolume(double d) {
            this.exoPlayer.setVolume((float) Math.max(0.0d, Math.min(1.0d, d)));
        }

        /* access modifiers changed from: 0000 */
        public void seekTo(int i) {
            this.exoPlayer.seekTo((long) i);
        }

        /* access modifiers changed from: 0000 */
        public long getPosition() {
            return this.exoPlayer.getCurrentPosition();
        }

        /* access modifiers changed from: private */
        public void sendInitialized() {
            if (this.isInitialized) {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "initialized");
                hashMap.put("duration", Long.valueOf(this.exoPlayer.getDuration()));
                if (this.exoPlayer.getVideoFormat() != null) {
                    Format videoFormat = this.exoPlayer.getVideoFormat();
                    int i = videoFormat.width;
                    int i2 = videoFormat.height;
                    int i3 = videoFormat.rotationDegrees;
                    if (i3 == 90 || i3 == 270) {
                        i = this.exoPlayer.getVideoFormat().height;
                        i2 = this.exoPlayer.getVideoFormat().width;
                    }
                    hashMap.put("width", Integer.valueOf(i));
                    hashMap.put("height", Integer.valueOf(i2));
                }
                this.eventSink.success(hashMap);
            }
        }

        /* access modifiers changed from: 0000 */
        public void dispose() {
            if (this.isInitialized) {
                this.exoPlayer.stop();
            }
            this.textureEntry.release();
            this.eventChannel.setStreamHandler(null);
            Surface surface2 = this.surface;
            if (surface2 != null) {
                surface2.release();
            }
            SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.release();
            }
        }
    }

    public static void registerWith(Registrar registrar2) {
        VideoPlayerPlugin videoPlayerPlugin = new VideoPlayerPlugin(registrar2);
        new MethodChannel(registrar2.messenger(), "flutter.io/videoPlayer").setMethodCallHandler(videoPlayerPlugin);
        registrar2.addViewDestroyListener(new ViewDestroyListener(videoPlayerPlugin) {
            final /* synthetic */ VideoPlayerPlugin val$plugin;

            {
                this.val$plugin = r1;
            }

            public boolean onViewDestroy(FlutterNativeView flutterNativeView) {
                this.val$plugin.onDestroy();
                return false;
            }
        });
    }

    private VideoPlayerPlugin(Registrar registrar2) {
        this.registrar = registrar2;
    }

    private void disposeAllPlayers() {
        for (int i = 0; i < this.videoPlayers.size(); i++) {
            ((VideoPlayer) this.videoPlayers.valueAt(i)).dispose();
        }
        this.videoPlayers.clear();
    }

    /* access modifiers changed from: private */
    public void onDestroy() {
        disposeAllPlayers();
    }

    public void onMethodCall(MethodCall methodCall, Result result) {
        String str;
        TextureRegistry textures = this.registrar.textures();
        if (textures == null) {
            result.error("no_activity", "video_player plugin requires a foreground activity", null);
            return;
        }
        String str2 = methodCall.method;
        char c = 65535;
        int hashCode = str2.hashCode();
        if (hashCode != -1352294148) {
            if (hashCode == 3237136 && str2.equals("init")) {
                c = 0;
            }
        } else if (str2.equals("create")) {
            c = 1;
        }
        if (c == 0) {
            disposeAllPlayers();
        } else if (c != 1) {
            long longValue = ((Number) methodCall.argument("textureId")).longValue();
            VideoPlayer videoPlayer = (VideoPlayer) this.videoPlayers.get(longValue);
            if (videoPlayer == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("No video player associated with texture id ");
                sb.append(longValue);
                result.error("Unknown textureId", sb.toString(), null);
                return;
            }
            onMethodCall(methodCall, result, longValue, videoPlayer);
        } else {
            SurfaceTextureEntry createSurfaceTexture = textures.createSurfaceTexture();
            BinaryMessenger messenger = this.registrar.messenger();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("flutter.io/videoPlayer/videoEvents");
            sb2.append(createSurfaceTexture.id());
            EventChannel eventChannel = new EventChannel(messenger, sb2.toString());
            String str3 = "asset";
            if (methodCall.argument(str3) != null) {
                String str4 = "package";
                if (methodCall.argument(str4) != null) {
                    str = this.registrar.lookupKeyForAsset((String) methodCall.argument(str3), (String) methodCall.argument(str4));
                } else {
                    str = this.registrar.lookupKeyForAsset((String) methodCall.argument(str3));
                }
                Context context = this.registrar.context();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("asset:///");
                sb3.append(str);
                VideoPlayer videoPlayer2 = new VideoPlayer(context, eventChannel, createSurfaceTexture, sb3.toString(), result, null);
                this.videoPlayers.put(createSurfaceTexture.id(), videoPlayer2);
            } else {
                VideoPlayer videoPlayer3 = new VideoPlayer(this.registrar.context(), eventChannel, createSurfaceTexture, (String) methodCall.argument("uri"), result, (String) methodCall.argument("formatHint"));
                this.videoPlayers.put(createSurfaceTexture.id(), videoPlayer3);
            }
        }
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void onMethodCall(io.flutter.plugin.common.MethodCall r3, io.flutter.plugin.common.MethodChannel.Result r4, long r5, io.flutter.plugins.videoplayer.VideoPlayerPlugin.VideoPlayer r7) {
        /*
            r2 = this;
            java.lang.String r0 = r3.method
            int r1 = r0.hashCode()
            switch(r1) {
                case -971364356: goto L_0x0046;
                case -906224877: goto L_0x003c;
                case 3443508: goto L_0x0032;
                case 106440182: goto L_0x0028;
                case 670514716: goto L_0x001e;
                case 747804969: goto L_0x0014;
                case 1671767583: goto L_0x000a;
                default: goto L_0x0009;
            }
        L_0x0009:
            goto L_0x0050
        L_0x000a:
            java.lang.String r1 = "dispose"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
            r0 = 6
            goto L_0x0051
        L_0x0014:
            java.lang.String r1 = "position"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
            r0 = 5
            goto L_0x0051
        L_0x001e:
            java.lang.String r1 = "setVolume"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
            r0 = 1
            goto L_0x0051
        L_0x0028:
            java.lang.String r1 = "pause"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
            r0 = 3
            goto L_0x0051
        L_0x0032:
            java.lang.String r1 = "play"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
            r0 = 2
            goto L_0x0051
        L_0x003c:
            java.lang.String r1 = "seekTo"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
            r0 = 4
            goto L_0x0051
        L_0x0046:
            java.lang.String r1 = "setLooping"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0050
            r0 = 0
            goto L_0x0051
        L_0x0050:
            r0 = -1
        L_0x0051:
            r1 = 0
            switch(r0) {
                case 0: goto L_0x00a8;
                case 1: goto L_0x0095;
                case 2: goto L_0x008e;
                case 3: goto L_0x0087;
                case 4: goto L_0x0074;
                case 5: goto L_0x0065;
                case 6: goto L_0x0059;
                default: goto L_0x0055;
            }
        L_0x0055:
            r4.notImplemented()
            goto L_0x00ba
        L_0x0059:
            r7.dispose()
            android.util.LongSparseArray<io.flutter.plugins.videoplayer.VideoPlayerPlugin$VideoPlayer> r3 = r2.videoPlayers
            r3.remove(r5)
            r4.success(r1)
            goto L_0x00ba
        L_0x0065:
            long r5 = r7.getPosition()
            java.lang.Long r3 = java.lang.Long.valueOf(r5)
            r4.success(r3)
            r7.sendBufferingUpdate()
            goto L_0x00ba
        L_0x0074:
            java.lang.String r5 = "location"
            java.lang.Object r3 = r3.argument(r5)
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            r7.seekTo(r3)
            r4.success(r1)
            goto L_0x00ba
        L_0x0087:
            r7.pause()
            r4.success(r1)
            goto L_0x00ba
        L_0x008e:
            r7.play()
            r4.success(r1)
            goto L_0x00ba
        L_0x0095:
            java.lang.String r5 = "volume"
            java.lang.Object r3 = r3.argument(r5)
            java.lang.Double r3 = (java.lang.Double) r3
            double r5 = r3.doubleValue()
            r7.setVolume(r5)
            r4.success(r1)
            goto L_0x00ba
        L_0x00a8:
            java.lang.String r5 = "looping"
            java.lang.Object r3 = r3.argument(r5)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            r7.setLooping(r3)
            r4.success(r1)
        L_0x00ba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.videoplayer.VideoPlayerPlugin.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result, long, io.flutter.plugins.videoplayer.VideoPlayerPlugin$VideoPlayer):void");
    }
}
