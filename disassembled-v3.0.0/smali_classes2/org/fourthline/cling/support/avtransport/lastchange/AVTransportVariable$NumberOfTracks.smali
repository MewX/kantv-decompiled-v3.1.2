.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$NumberOfTracks;
.super Lorg/fourthline/cling/support/lastchange/EventedValueUnsignedIntegerFourBytes;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberOfTracks"
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueUnsignedIntegerFourBytes;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueUnsignedIntegerFourBytes;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method
