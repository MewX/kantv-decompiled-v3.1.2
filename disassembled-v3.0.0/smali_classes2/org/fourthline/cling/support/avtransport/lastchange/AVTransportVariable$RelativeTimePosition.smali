.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;
.super Lorg/fourthline/cling/support/lastchange/EventedValueString;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeTimePosition"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 348
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueString;-><init>(Ljava/lang/String;)V

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

    .line 352
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueString;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method
