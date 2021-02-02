.class Lcom/avos/avoscloud/AVPushWebSocketClient$2;
.super Ljava/util/HashMap;
.source "AVPushWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPushWebSocketClient;-><init>(Ljava/net/URI;Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$subProtocol:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient$2;->val$subProtocol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object p1, p0, Lcom/avos/avoscloud/AVPushWebSocketClient$2;->val$subProtocol:Ljava/lang/String;

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVPushWebSocketClient$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
