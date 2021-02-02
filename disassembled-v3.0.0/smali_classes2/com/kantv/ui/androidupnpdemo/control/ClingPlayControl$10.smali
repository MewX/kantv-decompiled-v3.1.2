.class Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;
.super Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;
.source "ClingPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getVolume(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V
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

    .line 367
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;->this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iput-object p3, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    invoke-direct {p0, p2}, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingVolumeResponse;

    invoke-direct {v1, p1, p2, p3}, Lcom/kantv/ui/androidupnpdemo/entity/ClingVolumeResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;->fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;I)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$10;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingVolumeResponse;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingVolumeResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;->receive(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method
