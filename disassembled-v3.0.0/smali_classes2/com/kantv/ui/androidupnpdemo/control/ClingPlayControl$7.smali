.class Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;
.super Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;
.source "ClingPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setMute(ZLcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

.field final synthetic val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Lorg/fourthline/cling/model/meta/Service;ZLcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;->this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iput-object p4, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;-><init>(Lorg/fourthline/cling/model/meta/Service;Z)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;

    invoke-direct {v1, p1, p2, p3}, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;->fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$7;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;

    invoke-direct {v1, p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingResponse;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    invoke-interface {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;->success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method
