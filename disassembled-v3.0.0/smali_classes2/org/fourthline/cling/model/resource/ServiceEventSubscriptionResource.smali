.class public Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;
.super Lorg/fourthline/cling/model/resource/Resource;
.source "ServiceEventSubscriptionResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/resource/Resource<",
        "Lorg/fourthline/cling/model/meta/LocalService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/resource/Resource;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    return-void
.end method
