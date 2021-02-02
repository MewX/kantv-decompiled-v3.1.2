.class Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;
.super Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
.source "SmoothStreamingManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmoothStreamMediaParser"
.end annotation


# static fields
.field private static final KEY_DURATION:Ljava/lang/String; = "Duration"

.field private static final KEY_DVR_WINDOW_LENGTH:Ljava/lang/String; = "DVRWindowLength"

.field private static final KEY_IS_LIVE:Ljava/lang/String; = "IsLive"

.field private static final KEY_LOOKAHEAD_COUNT:Ljava/lang/String; = "LookaheadCount"

.field private static final KEY_MAJOR_VERSION:Ljava/lang/String; = "MajorVersion"

.field private static final KEY_MINOR_VERSION:Ljava/lang/String; = "MinorVersion"

.field private static final KEY_TIME_SCALE:Ljava/lang/String; = "TimeScale"

.field public static final TAG:Ljava/lang/String; = "SmoothStreamingMedia"


# instance fields
.field private duration:J

.field private dvrWindowLength:J

.field private isLive:Z

.field private lookAheadCount:I

.field private majorVersion:I

.field private minorVersion:I

.field private protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

.field private streamElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;",
            ">;"
        }
    .end annotation
.end field

.field private timescale:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SmoothStreamingMedia"

    .line 342
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;-><init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 343
    iput p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->lookAheadCount:I

    const/4 p1, 0x0

    .line 344
    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    .line 345
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->streamElements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/Object;)V
    .locals 1

    .line 362
    instance-of v0, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->streamElements:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 364
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 366
    check-cast p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    :cond_2
    :goto_1
    return-void
.end method

.method public build()Ljava/lang/Object;
    .locals 14

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->streamElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v13, v0, [Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->streamElements:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 374
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->majorVersion:I

    iget v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->minorVersion:I

    iget-wide v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->timescale:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->duration:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->dvrWindowLength:J

    iget v10, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->lookAheadCount:I

    iget-boolean v11, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->isLive:Z

    iget-object v12, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;-><init>(IIJJJIZLcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;)V

    return-object v0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    const-string v0, "MajorVersion"

    .line 350
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->majorVersion:I

    const-string v0, "MinorVersion"

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->minorVersion:I

    const-string v0, "TimeScale"

    const-wide/32 v1, 0x989680

    .line 352
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->timescale:J

    const-string v1, "Duration"

    .line 353
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parseRequiredLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->duration:J

    const-string v1, "DVRWindowLength"

    const-wide/16 v2, 0x0

    .line 354
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->dvrWindowLength:J

    const-string v1, "LookaheadCount"

    const/4 v2, -0x1

    .line 355
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->lookAheadCount:I

    const-string v1, "IsLive"

    const/4 v2, 0x0

    .line 356
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parseBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->isLive:Z

    .line 357
    iget-wide v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->timescale:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->putNormalizedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
