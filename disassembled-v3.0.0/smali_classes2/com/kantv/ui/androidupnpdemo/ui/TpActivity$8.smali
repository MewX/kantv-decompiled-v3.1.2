.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$8;
.super Ljava/lang/Object;
.source "TpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastState()I

    move-result v0

    .line 340
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
