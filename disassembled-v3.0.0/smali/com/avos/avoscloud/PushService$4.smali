.class final Lcom/avos/avoscloud/PushService$4;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Context;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cls:Ljava/lang/Class;

.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$4;->val$finalContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/avos/avoscloud/PushService$4;->val$cls:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 284
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start service"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avos/avoscloud/PushService$4;->val$finalContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AV_APPLICATION_ID"

    .line 287
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/avos/avoscloud/PushService$4;->val$cls:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v1, "AV_DEFAULT_CALLBACK"

    .line 289
    iget-object v2, p0, Lcom/avos/avoscloud/PushService$4;->val$cls:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/PushService$4;->val$finalContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to start PushService. cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
