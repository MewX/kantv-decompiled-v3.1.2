.class Lcom/avos/avoscloud/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/avos/avospush/push/AVConnectivityListener;


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

    .line 104
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$1;->this$0:Lcom/avos/avoscloud/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobile(Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection()V

    return-void
.end method

.method public onNotConnected(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onWifi(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection()V

    return-void
.end method
