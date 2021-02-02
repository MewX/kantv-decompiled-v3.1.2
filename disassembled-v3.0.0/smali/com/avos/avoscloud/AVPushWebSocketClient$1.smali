.class Lcom/avos/avoscloud/AVPushWebSocketClient$1;
.super Ljava/lang/Object;
.source "AVPushWebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVPushWebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVPushWebSocketClient;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushWebSocketClient;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient$1;->this$0:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient$1;->this$0:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->reconnect()V

    return-void
.end method
