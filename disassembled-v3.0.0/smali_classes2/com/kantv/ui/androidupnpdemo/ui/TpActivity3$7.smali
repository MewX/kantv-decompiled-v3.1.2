.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$7;
.super Ljava/lang/Object;
.source "TpActivity3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastState()I

    move-result v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "88state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    :goto_0
    return-void
.end method
