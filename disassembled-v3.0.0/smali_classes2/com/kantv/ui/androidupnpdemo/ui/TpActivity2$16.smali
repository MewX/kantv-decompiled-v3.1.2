.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$16;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$16;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 676
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "play fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$16;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .locals 1

    .line 671
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "play success"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
