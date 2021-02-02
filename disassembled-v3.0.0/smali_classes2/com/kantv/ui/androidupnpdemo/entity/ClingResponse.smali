.class public Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;
.super Ljava/lang/Object;
.source "ClingResponse.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/entity/IResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kantv/ui/androidupnpdemo/entity/IResponse<",
        "Lorg/fourthline/cling/model/action/ActionInvocation;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultMsg:Ljava/lang/String;

.field private mActionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

.field private operation:Lorg/fourthline/cling/model/message/UpnpResponse;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;->mActionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;->mActionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 36
    iput-object p2, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;->operation:Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 37
    iput-object p3, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;->defaultMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getResponse()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;->getResponse()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lorg/fourthline/cling/model/action/ActionInvocation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic setResponse(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;->setResponse(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    return-void
.end method

.method public setResponse(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;->mActionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-void
.end method
