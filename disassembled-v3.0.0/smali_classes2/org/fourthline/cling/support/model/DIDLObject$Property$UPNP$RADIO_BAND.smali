.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RADIO_BAND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "radioBand"

    .line 491
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
