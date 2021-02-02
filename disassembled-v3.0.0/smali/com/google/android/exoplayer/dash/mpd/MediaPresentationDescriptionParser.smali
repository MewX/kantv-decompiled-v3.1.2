.class public Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MediaPresentationDescriptionParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MediaPresentationDescriptionParser"


# instance fields
.field private final contentId:Ljava/lang/String;

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->contentId:Ljava/lang/String;

    .line 79
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static checkContentTypeConsistency(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 660
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    return p0
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 638
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    return-object p0
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 705
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/exoplayer/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 694
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 698
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 684
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 688
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 667
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 669
    sget-object v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 670
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 671
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 672
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 673
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 674
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 709
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 713
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 714
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 718
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 722
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 727
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;"
        }
    .end annotation

    .line 279
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildContentProtection(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .locals 1

    .line 344
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V

    return-object v0
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/chunk/Format;
    .locals 12

    .line 411
    new-instance v11, Lcom/google/android/exoplayer/chunk/Format;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method protected buildMediaPresentationDescription(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJ",
            "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .line 173
    new-instance v15, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-object v0, v15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    return-object v15
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/Period;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/Period;"
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method protected buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 8

    .line 600
    new-instance v7, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v7
.end method

.method protected buildRepresentation(Ljava/lang/String;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 2

    int-to-long v0, p2

    .line 417
    invoke-static {p1, v0, v1, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/Representation;->newInstance(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object p1

    return-object p1
.end method

.method protected buildSegmentList(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;"
        }
    .end annotation

    .line 496
    new-instance v11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object v0, v11

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v11
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .line 538
    new-instance v13, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object v0, v13

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)V

    return-object v13
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;
    .locals 1

    .line 562
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .locals 12

    .line 452
    new-instance v11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object v0, v11

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V

    return-object v11
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .locals 1

    .line 184
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getContentType(Lcom/google/android/exoplayer/dash/mpd/Representation;)I
    .locals 4

    .line 292
    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    .line 295
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 297
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 299
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_6

    const-string v1, "application/ttml+xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "application/mp4"

    .line 301
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    iget-object p1, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    const-string v0, "stpp"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "wvtt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return v3

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v3
.end method

.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string p2, "MPD"

    .line 94
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer/ParserException;

    const-string p2, "inputStream does not contain a valid media presentation description"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 102
    new-instance p2, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 100
    new-instance p2, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object p1

    return-object p1
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const/4 v0, -0x1

    const-string v1, "id"

    .line 224
    invoke-static {v14, v1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 225
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v12, 0x0

    const-string v2, "mimeType"

    .line 227
    invoke-interface {v14, v12, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "codecs"

    .line 228
    invoke-interface {v14, v12, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "width"

    .line 229
    invoke-static {v14, v2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v18

    const-string v2, "height"

    .line 230
    invoke-static {v14, v2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    const/high16 v2, -0x40800000    # -1.0f

    .line 231
    invoke-static {v14, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v20

    const-string v2, "audioSamplingRate"

    .line 233
    invoke-static {v14, v2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    const-string v11, "lang"

    .line 234
    invoke-interface {v14, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v10, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;

    invoke-direct {v10}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;-><init>()V

    .line 237
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v8, p2

    move-object/from16 v24, p3

    move v6, v1

    move-object v7, v2

    const/16 v22, 0x0

    const/16 v23, -0x1

    .line 240
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    .line 241
    invoke-static {v14, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v22, :cond_0

    .line 243
    invoke-static {v14, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move-object v8, v0

    move-object v2, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object v1, v14

    move/from16 v25, v15

    const/16 v22, 0x1

    goto/16 :goto_4

    :cond_0
    :goto_1
    move-object/from16 v26, v7

    move-object v3, v8

    move-object v2, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object v1, v14

    move/from16 v25, v15

    move v15, v6

    goto/16 :goto_3

    :cond_1
    const-string v0, "ContentProtection"

    .line 246
    invoke-static {v14, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->addAdaptationSetProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    goto :goto_1

    :cond_2
    const-string v0, "ContentComponent"

    .line 251
    invoke-static {v14, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    invoke-interface {v14, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkContentTypeConsistency(II)I

    move-result v0

    move v6, v0

    move-object v2, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object v1, v14

    move/from16 v25, v15

    goto/16 :goto_4

    :cond_3
    const-string v0, "Representation"

    .line 254
    invoke-static {v14, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v25, v15

    move v15, v6

    move/from16 v6, v19

    move-object/from16 v26, v7

    move/from16 v7, v20

    move-object/from16 v27, v8

    move/from16 v8, v23

    move-object v14, v9

    move/from16 v9, v21

    move-object/from16 v28, v10

    move-object/from16 v10, v26

    move-object/from16 v29, v11

    move-object/from16 v11, v24

    move-object/from16 v30, v12

    move-object/from16 v12, v28

    .line 255
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v0

    .line 258
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->endRepresentation()V

    .line 259
    invoke-virtual {v13, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->getContentType(Lcom/google/android/exoplayer/dash/mpd/Representation;)I

    move-result v1

    invoke-static {v15, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkContentTypeConsistency(II)I

    move-result v1

    .line 260
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v1

    move-object v2, v14

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v1, p1

    goto/16 :goto_4

    :cond_4
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object v14, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move/from16 v25, v15

    move v15, v6

    const-string v0, "AudioChannelConfiguration"

    move-object/from16 v1, p1

    move-object v2, v14

    .line 261
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v23

    move v6, v15

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    goto :goto_4

    :cond_5
    const-string v0, "SegmentBase"

    .line 263
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    move-object/from16 v0, v24

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object/from16 v3, v27

    invoke-virtual {v13, v1, v3, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v0

    :goto_2
    move-object/from16 v24, v0

    goto :goto_3

    :cond_6
    move-object/from16 v3, v27

    const-string v0, "SegmentList"

    .line 265
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    move-object/from16 v0, v24

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    invoke-virtual {v13, v1, v3, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v0, "SegmentTemplate"

    .line 267
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    move-object/from16 v0, v24

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    invoke-virtual {v13, v1, v3, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v0

    goto :goto_2

    .line 269
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 270
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_9
    :goto_3
    move-object v8, v3

    move v6, v15

    move-object/from16 v7, v26

    :goto_4
    const-string v0, "AdaptationSet"

    .line 272
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->build()Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v3, v25

    invoke-virtual {v13, v3, v6, v2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v0

    return-object v0

    :cond_a
    move-object v14, v1

    move-object v9, v2

    move/from16 v15, v25

    move-object/from16 v10, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_0
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 608
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 609
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "value"

    .line 610
    invoke-static {p1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 615
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "AudioChannelConfiguration"

    .line 616
    invoke-static {p1, v1}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 321
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v0

    move-object v5, v4

    const/4 v3, 0x0

    .line 326
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v6, "cenc:pssh"

    .line 328
    invoke-static {p1, v6}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    const/4 v3, 0x1

    .line 330
    new-instance v4, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .line 331
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    const-string v6, "video/mp4"

    invoke-direct {v4, v6, v5}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    .line 332
    iget-object v5, v4, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v5}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :cond_1
    const-string v6, "ContentProtection"

    .line 334
    invoke-static {p1, v6}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    const-string p1, "MediaPresentationDescriptionParser"

    const-string v1, "Skipped unsupported ContentProtection element"

    .line 336
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 339
    :cond_2
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildContentProtection(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object p1

    return-object p1
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 283
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "video"

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "text"

    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    :goto_0
    return v1
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 2

    const-string v0, "sourceURL"

    const-string v1, "range"

    .line 575
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide/16 v1, -0x1

    const-string v3, "availabilityStartTime"

    .line 108
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    const-string v3, "mediaPresentationDuration"

    .line 109
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v7, "minBufferTime"

    .line 110
    invoke-static {v0, v7, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v7, 0x0

    const-string v8, "type"

    .line 111
    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    const-string v12, "dynamic"

    .line 112
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v12, v8

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    const-string v8, "minimumUpdatePeriod"

    .line 113
    invoke-static {v0, v8, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    goto :goto_1

    :cond_1
    move-wide v13, v1

    :goto_1
    if-eqz v12, :cond_2

    const-string v8, "timeShiftBufferDepth"

    .line 114
    invoke-static {v0, v8, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    goto :goto_2

    :cond_2
    move-wide v15, v1

    .line 118
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_3

    move-wide/from16 v17, v1

    goto :goto_3

    :cond_3
    const-wide/16 v17, 0x0

    :goto_3
    move-object/from16 v20, v7

    move-object/from16 v21, v20

    move-wide/from16 v1, v17

    const/16 v17, 0x0

    move-object/from16 v7, p2

    .line 123
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-wide/from16 v22, v15

    const-string v15, "BaseURL"

    .line 124
    invoke-static {v0, v15}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_5

    if-nez v11, :cond_4

    .line 126
    invoke-static {v0, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p0

    move-wide/from16 v28, v9

    move-wide/from16 v26, v13

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_4
    move-object/from16 v15, p0

    move-wide/from16 v24, v1

    move-wide/from16 v28, v9

    move/from16 p2, v11

    move-wide/from16 v26, v13

    goto/16 :goto_7

    :cond_5
    const-string v15, "UTCTiming"

    .line 129
    invoke-static {v0, v15}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 130
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v15

    move-wide/from16 v28, v9

    move-wide/from16 v26, v13

    move-object/from16 v20, v15

    :goto_5
    move-object/from16 v15, p0

    goto/16 :goto_8

    :cond_6
    const-string v15, "Location"

    .line 131
    invoke-static {v0, v15}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 132
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v28, v9

    move-wide/from16 v26, v13

    move-object/from16 v21, v15

    goto :goto_5

    :cond_7
    const-string v15, "Period"

    .line 133
    invoke-static {v0, v15}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-nez v17, :cond_4

    move-object/from16 v15, p0

    move/from16 p2, v11

    .line 134
    invoke-virtual {v15, v0, v7, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v11

    move-wide/from16 v24, v1

    .line 135
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/Period;

    move-wide/from16 v26, v13

    .line 136
    iget-wide v13, v1, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    const-wide/16 v18, -0x1

    cmp-long v2, v13, v18

    if-nez v2, :cond_9

    if-eqz v12, :cond_8

    move/from16 v11, p2

    move-wide/from16 v28, v9

    move-wide/from16 v1, v24

    const/16 v17, 0x1

    goto :goto_8

    .line 142
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine start of period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_9
    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v18, -0x1

    cmp-long v2, v13, v18

    if-nez v2, :cond_a

    move-wide/from16 v28, v9

    const-wide/16 v9, -0x1

    goto :goto_6

    :cond_a
    move-wide/from16 v28, v9

    .line 146
    iget-wide v9, v1, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    add-long/2addr v9, v13

    .line 147
    :goto_6
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v11, p2

    move-wide v1, v9

    goto :goto_8

    :goto_7
    move/from16 v11, p2

    move-wide/from16 v1, v24

    :goto_8
    const-string v9, "MPD"

    .line 150
    invoke-static {v0, v9}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-wide/16 v9, -0x1

    cmp-long v0, v3, v9

    if-nez v0, :cond_d

    cmp-long v0, v1, v9

    if-eqz v0, :cond_b

    goto :goto_a

    :cond_b
    if-eqz v12, :cond_c

    goto :goto_9

    .line 157
    :cond_c
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Unable to determine duration of static manifest."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_9
    move-wide v1, v3

    .line 161
    :goto_a
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move-object/from16 v4, p0

    move-object/from16 v18, v8

    move-wide v7, v1

    move-wide/from16 v9, v28

    move v11, v12

    move-wide/from16 v12, v26

    move-wide/from16 v14, v22

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    .line 165
    invoke-virtual/range {v4 .. v18}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildMediaPresentationDescription(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    return-object v0

    .line 162
    :cond_e
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "No periods found."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-wide/from16 v15, v22

    move-wide/from16 v13, v26

    move-wide/from16 v9, v28

    goto/16 :goto_4
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "id"

    .line 189
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    .line 190
    invoke-static {p1, v2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide p3

    const-string v2, "duration"

    const-wide/16 v3, -0x1

    .line 191
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move-object v6, v0

    .line 196
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "BaseURL"

    .line 197
    invoke-static {p1, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v5, :cond_5

    .line 199
    invoke-static {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "AdaptationSet"

    .line 202
    invoke-static {p1, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v7, "SegmentBase"

    .line 204
    invoke-static {p1, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 205
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v7, "SegmentList"

    .line 206
    invoke-static {p1, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 207
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v6

    goto :goto_0

    :cond_4
    const-string v7, "SegmentTemplate"

    .line 208
    invoke-static {p1, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 209
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v6

    :cond_5
    :goto_0
    const-string v7, "Period"

    .line 211
    invoke-static {p1, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 213
    invoke-virtual {p0, v1, p3, p4, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 8

    const/4 v0, 0x0

    .line 584
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-interface {p1, v0, p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 p3, -0x1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 589
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 590
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 591
    array-length v2, p1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 p3, 0x1

    .line 592
    aget-object p1, p1, p3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    sub-long/2addr p3, v0

    const-wide/16 v4, 0x1

    add-long/2addr p3, v4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    :goto_0
    move-wide v6, p3

    move-wide v4, v0

    move-object v1, p0

    move-object v2, p2

    .line 595
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "id"

    .line 367
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bandwidth"

    .line 368
    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    const-string v2, "mimeType"

    move-object/from16 v3, p3

    .line 370
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "codecs"

    move-object/from16 v4, p4

    .line 371
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "width"

    move/from16 v4, p5

    .line 372
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "height"

    move/from16 v5, p6

    .line 373
    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    move/from16 v5, p7

    .line 374
    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v5

    const-string v6, "audioSamplingRate"

    move/from16 v7, p9

    .line 376
    invoke-static {v0, v6, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v9, p2

    move/from16 v13, p8

    move-object/from16 v12, p11

    .line 381
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v14, "BaseURL"

    .line 382
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-nez v6, :cond_1

    .line 384
    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v15, p12

    move v9, v13

    move-object v13, v12

    move-object v12, v6

    const/4 v6, 0x1

    goto :goto_3

    :cond_0
    const-string v14, "AudioChannelConfiguration"

    .line 387
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 388
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v13

    :cond_1
    :goto_1
    move-object/from16 v15, p12

    goto :goto_2

    :cond_2
    const-string v14, "SegmentBase"

    .line 389
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 390
    check-cast v12, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    invoke-virtual {v11, v0, v9, v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v12

    goto :goto_1

    :cond_3
    const-string v14, "SegmentList"

    .line 391
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 392
    check-cast v12, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    invoke-virtual {v11, v0, v9, v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v12

    goto :goto_1

    :cond_4
    const-string v14, "SegmentTemplate"

    .line 393
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 394
    check-cast v12, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    invoke-virtual {v11, v0, v9, v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v12

    goto :goto_1

    :cond_5
    const-string v14, "ContentProtection"

    .line 395
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 396
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v15, p12

    .line 398
    invoke-virtual {v15, v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->addAdaptationSetProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    :goto_2
    move-object/from16 v16, v12

    move-object v12, v9

    move v9, v13

    move-object/from16 v13, v16

    :goto_3
    const-string v14, "Representation"

    .line 401
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    move v6, v9

    move-object/from16 v9, p10

    .line 403
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v0

    .line 405
    iget-object v1, v11, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->contentId:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v13, :cond_6

    goto :goto_4

    :cond_6
    new-instance v13, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    invoke-direct {v13, v12}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v11, v1, v2, v0, v13}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRepresentation(Ljava/lang/String;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v16, v13

    move v13, v9

    move-object v9, v12

    move-object/from16 v12, v16

    goto/16 :goto_0
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 425
    iget-wide v4, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 426
    iget-wide v6, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 429
    iget-wide v4, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    :cond_2
    if-eqz v1, :cond_3

    .line 430
    iget-wide v6, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    goto :goto_2

    :cond_3
    const-wide/16 v6, -0x1

    :goto_2
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 431
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 433
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 434
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 435
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide/from16 v16, v13

    move-wide v14, v5

    goto :goto_3

    :cond_4
    move-wide v14, v4

    move-wide/from16 v16, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 438
    iget-object v8, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 440
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 441
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 442
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v1

    move-object v8, v1

    :cond_6
    const-string v1, "SegmentBase"

    .line 444
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v7, p0

    move-object/from16 v13, p2

    .line 446
    invoke-virtual/range {v7 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSingleSegmentBase(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v0

    return-object v0
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eqz v1, :cond_0

    .line 459
    iget-wide v2, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->timescale:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    const-string v4, "timescale"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v1, :cond_1

    .line 460
    iget-wide v2, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v1, :cond_2

    .line 462
    iget-wide v2, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->duration:J

    goto :goto_2

    :cond_2
    const-wide/16 v2, -0x1

    :goto_2
    const-string v4, "duration"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v1, :cond_3

    .line 463
    iget v2, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->startNumber:I

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    :goto_3
    const-string v3, "startNumber"

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 470
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "Initialization"

    .line 471
    invoke-static {v0, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 472
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    goto :goto_4

    :cond_5
    const-string v5, "SegmentTimeline"

    .line 473
    invoke-static {v0, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 474
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_6
    const-string v5, "SegmentURL"

    .line 475
    invoke-static {v0, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v2, :cond_7

    .line 477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 479
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    const-string v5, "SegmentList"

    .line 481
    invoke-static {v0, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_c

    if-eqz v3, :cond_9

    goto :goto_5

    .line 484
    :cond_9
    iget-object v3, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    :goto_5
    if-eqz v4, :cond_a

    goto :goto_6

    .line 485
    :cond_a
    iget-object v4, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    :goto_6
    if-eqz v2, :cond_b

    goto :goto_7

    .line 486
    :cond_b
    iget-object v2, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    :cond_c
    :goto_7
    move-object v15, v2

    move-object v6, v3

    move-object v14, v4

    move-object/from16 v5, p0

    .line 489
    invoke-virtual/range {v5 .. v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentList(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v0

    return-object v0
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eqz v1, :cond_0

    .line 503
    iget-wide v2, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->timescale:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    const-string v4, "timescale"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz v1, :cond_1

    .line 504
    iget-wide v4, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    const-string v6, "presentationTimeOffset"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz v1, :cond_2

    .line 506
    iget-wide v6, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    goto :goto_2

    :cond_2
    const-wide/16 v6, -0x1

    :goto_2
    const-string v8, "duration"

    invoke-static {v0, v8, v6, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v1, :cond_3

    .line 507
    iget v6, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    goto :goto_3

    :cond_3
    const/4 v6, 0x1

    :goto_3
    const-string v9, "startNumber"

    invoke-static {v0, v9, v6}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    const/4 v9, 0x0

    if-eqz v1, :cond_4

    .line 508
    iget-object v10, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    goto :goto_4

    :cond_4
    move-object v10, v9

    :goto_4
    const-string v11, "media"

    invoke-virtual {p0, v0, v11, v10}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v11

    if-eqz v1, :cond_5

    .line 510
    iget-object v10, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    goto :goto_5

    :cond_5
    move-object v10, v9

    :goto_5
    const-string v12, "initialization"

    invoke-virtual {p0, v0, v12, v10}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v10

    move-object v12, v9

    .line 517
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v14, "Initialization"

    .line 518
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 519
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v9

    goto :goto_6

    :cond_7
    const-string v14, "SegmentTimeline"

    .line 520
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 521
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v12

    :cond_8
    :goto_6
    const-string v14, "SegmentTemplate"

    .line 523
    invoke-static {v0, v14}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v1, :cond_b

    if-eqz v9, :cond_9

    goto :goto_7

    .line 526
    :cond_9
    iget-object v9, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    :goto_7
    if-eqz v12, :cond_a

    goto :goto_8

    .line 527
    :cond_a
    iget-object v12, v1, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    :cond_b
    :goto_8
    move-object v1, v9

    move-object v9, v12

    move-object v0, p0

    move-object/from16 v12, p2

    .line 530
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTemplate(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v0

    return-object v0
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    .line 547
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "S"

    .line 548
    invoke-static {p1, v3}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "t"

    .line 549
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "d"

    .line 550
    invoke-static {p1, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x0

    const-string v6, "r"

    .line 551
    invoke-static {p1, v6, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :goto_0
    if-ge v5, v6, :cond_1

    .line 553
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "SegmentTimeline"

    .line 557
    invoke-static {p1, v3}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 2

    const-string v0, "media"

    const-string v1, "mediaRange"

    .line 579
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .locals 1

    const/4 v0, 0x0

    .line 567
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 569
    invoke-static {p1}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 178
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    .line 179
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object p1

    return-object p1
.end method
