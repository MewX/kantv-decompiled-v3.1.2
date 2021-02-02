.class Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;
.super Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;
.source "ClingPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getPositionInfo(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

.field final synthetic val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;->this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iput-object p3, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    invoke-direct {p0, p2}, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingPositionResponse;

    invoke-direct {v1, p1, p2, p3}, Lcom/kantv/ui/androidupnpdemo/entity/ClingPositionResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;->fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingPositionResponse;

    invoke-direct {v1, p1, p2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingPositionResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V

    invoke-interface {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;->receive(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 2

    .line 339
    invoke-super {p0, p1}, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 340
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$9;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingPositionResponse;

    invoke-direct {v1, p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingPositionResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    invoke-interface {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;->success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method
