.class Lcom/avos/avoscloud/AVPushWebSocketClient$3;
.super Lcom/avos/avoscloud/HeartBeatPolicy;
.source "AVPushWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPushWebSocketClient;->initHeartBeatPolicy()V
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

    .line 70
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient$3;->this$0:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-direct {p0}, Lcom/avos/avoscloud/HeartBeatPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient$3;->this$0:Lcom/avos/avoscloud/AVPushWebSocketClient;

    const/16 v1, 0xbb8

    const-string v2, "No response for ping"

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVPushWebSocketClient;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public sendPing()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushWebSocketClient$3;->this$0:Lcom/avos/avoscloud/AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushWebSocketClient;->ping()V

    return-void
.end method
