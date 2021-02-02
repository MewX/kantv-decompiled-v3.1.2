.class Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;
.super Ljava/lang/Object;
.source "ClingPlayControl.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->playNew(Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

.field final synthetic val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iput-object p2, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->val$callback:Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;

    invoke-interface {v0, p1}, Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;->fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V

    :cond_0
    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->this$0:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;->val$url:Ljava/lang/String;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1$1;-><init>(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl$1;)V

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->access$000(Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method
