.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$ColorTemperature;
.super Lorg/fourthline/cling/support/lastchange/EventedValueUnsignedIntegerTwoBytes;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorTemperature"
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueUnsignedIntegerTwoBytes;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;)V

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

    .line 159
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValueUnsignedIntegerTwoBytes;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method
