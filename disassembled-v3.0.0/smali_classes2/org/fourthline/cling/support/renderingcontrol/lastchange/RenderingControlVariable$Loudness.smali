.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Loudness;
.super Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelLoudness;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loudness"
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelLoudness;-><init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;)V

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

    .line 219
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelLoudness;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method
