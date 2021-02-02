.class Lcom/avos/avoscloud/PushService$2;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/avos/avospush/push/AVShutdownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushService;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushService;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$2;->this$0:Lcom/avos/avoscloud/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutdown(Landroid/content/Context;)V
    .locals 0

    .line 126
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    return-void
.end method
