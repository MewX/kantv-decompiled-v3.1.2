.class Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;
.super Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
.source "SmoothStreamingManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackElementParser"
.end annotation


# static fields
.field private static final KEY_BITRATE:Ljava/lang/String; = "Bitrate"

.field private static final KEY_CHANNELS:Ljava/lang/String; = "Channels"

.field private static final KEY_CODEC_PRIVATE_DATA:Ljava/lang/String; = "CodecPrivateData"

.field private static final KEY_FOUR_CC:Ljava/lang/String; = "FourCC"

.field private static final KEY_INDEX:Ljava/lang/String; = "Index"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "MaxHeight"

.field private static final KEY_MAX_WIDTH:Ljava/lang/String; = "MaxWidth"

.field private static final KEY_SAMPLING_RATE:Ljava/lang/String; = "SamplingRate"

.field private static final KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final TAG:Ljava/lang/String; = "QualityLevel"


# instance fields
.field private bitrate:I

.field private channels:I

.field private final csd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private index:I

.field private language:Ljava/lang/String;

.field private maxHeight:I

.field private maxWidth:I

.field private mimeType:Ljava/lang/String;

.field private samplingRate:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    const-string v0, "QualityLevel"

    .line 613
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;-><init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    return-void
.end method

.method private static fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "H264"

    .line 673
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "X264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "AVC1"

    .line 674
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "DAVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "AAC"

    .line 676
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "AACL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "AACH"

    .line 677
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "AACP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "TTML"

    .line 679
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "application/ttml+xml"

    return-object p0

    :cond_2
    const-string v0, "ac-3"

    .line 681
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "ec-3"

    .line 683
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "dtsc"

    .line 685
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_5
    const-string v0, "dtsh"

    .line 687
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "dtse"

    .line 689
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "audio/vnd.dts.hd;profile=lbr"

    return-object p0

    :cond_7
    const-string v0, "opus"

    .line 691
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "audio/opus"

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0

    :cond_9
    :goto_0
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :cond_a
    :goto_1
    const-string p0, "audio/eac3"

    return-object p0

    :cond_b
    :goto_2
    const-string p0, "audio/ac3"

    return-object p0

    :cond_c
    :goto_3
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_d
    :goto_4
    const-string p0, "video/avc"

    return-object p0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    .line 663
    check-cast v0, [[B

    .line 664
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 666
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    move-object v6, v0

    .line 668
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    iget v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->index:I

    iget v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitrate:I

    iget-object v5, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    iget v8, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    iget v9, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    iget v10, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    iget-object v11, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->language:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;-><init>(IILjava/lang/String;[[BIIIILjava/lang/String;)V

    return-object v0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    const-string v0, "Type"

    .line 619
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "Index"

    .line 622
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->index:I

    const-string v2, "Bitrate"

    .line 623
    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitrate:I

    const-string v2, "Language"

    .line 624
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->language:Ljava/lang/String;

    const-string v2, "FourCC"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    const-string v3, "MaxHeight"

    .line 627
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    const-string v3, "MaxWidth"

    .line 628
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    .line 629
    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    goto :goto_1

    .line 631
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    .line 632
    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    .line 633
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 635
    invoke-static {v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v2, "audio/mp4a-latm"

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "SamplingRate"

    .line 640
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    const-string v0, "Channels"

    .line 641
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    goto :goto_2

    .line 643
    :cond_3
    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    .line 644
    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    :goto_2
    const-string v0, "CodecPrivateData"

    .line 647
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 648
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 649
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object p1

    .line 650
    invoke-static {p1}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->splitNalUnits([B)[[B

    move-result-object v0

    if-nez v0, :cond_4

    .line 652
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    .line 654
    :goto_3
    array-length v1, v0

    if-ge p1, v1, :cond_5

    .line 655
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    aget-object v2, v0, p1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method
