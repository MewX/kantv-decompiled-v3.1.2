.class public Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;
.super Ljava/lang/Object;
.source "SubscriptionControl.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/ISubscriptionControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kantv/ui/androidupnpdemo/control/ISubscriptionControl<",
        "Lorg/fourthline/cling/model/meta/Device;",
        ">;"
    }
.end annotation


# instance fields
.field private mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

.field private mRenderingControlSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->end()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mRenderingControlSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mRenderingControlSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;->end()V

    :cond_1
    return-void
.end method

.method public registerAVTransport(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/kantv/ui/androidupnpdemo/entity/IDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/androidupnpdemo/entity/IDevice<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->end()V

    .line 35
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 40
    :cond_1
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    invoke-interface {p1}, Lcom/kantv/ui/androidupnpdemo/entity/IDevice;->getDevice()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/Device;

    sget-object v2, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->AV_TRANSPORT_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    .line 41
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mAVTransportSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;)V

    return-void
.end method

.method public registerRenderingControl(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/kantv/ui/androidupnpdemo/entity/IDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/androidupnpdemo/entity/IDevice<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mRenderingControlSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mRenderingControlSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;->end()V

    .line 49
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/util/ClingUtils;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 53
    :cond_1
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;

    invoke-interface {p1}, Lcom/kantv/ui/androidupnpdemo/entity/IDevice;->getDevice()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/Device;

    sget-object v2, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->RENDERING_CONTROL_SERVICE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mRenderingControlSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;

    .line 55
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/SubscriptionControl;->mRenderingControlSubscriptionCallback:Lcom/kantv/ui/androidupnpdemo/service/callback/RenderingControlSubscriptionCallback;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;)V

    return-void
.end method
