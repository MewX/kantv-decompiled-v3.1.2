.class Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1$1;
.super Ljava/lang/Object;
.source "ClingPlayControl.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1$1;->this$1:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1$1;->this$1:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1$1;->this$1:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-interface {v0, p1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;->fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1$1;->this$1:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;

    iget-object p1, p1, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1$1;->this$1:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->play(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method
