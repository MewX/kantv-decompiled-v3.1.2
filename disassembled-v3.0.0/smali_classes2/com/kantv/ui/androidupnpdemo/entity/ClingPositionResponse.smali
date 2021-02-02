.class public Lcom/kantv/ui/androidupnpdemo/entity/ClingPositionResponse;
.super Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;
.source "ClingPositionResponse.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/entity/IResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse<",
        "Lorg/fourthline/cling/support/model/PositionInfo;",
        ">;",
        "Lcom/kantv/ui/androidupnpdemo/entity/IResponse<",
        "Lorg/fourthline/cling/support/model/PositionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V

    return-void
.end method
