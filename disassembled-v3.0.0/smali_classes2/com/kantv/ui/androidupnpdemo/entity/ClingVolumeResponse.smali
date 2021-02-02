.class public Lcom/kantv/ui/androidupnpdemo/entity/ClingVolumeResponse;
.super Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;
.source "ClingVolumeResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Integer;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void
.end method
