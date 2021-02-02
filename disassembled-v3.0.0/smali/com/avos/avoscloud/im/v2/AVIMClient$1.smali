.class Lcom/avos/avoscloud/im/v2/AVIMClient$1;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->open(Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 1

    .line 257
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$1;->callback:Lcom/avos/avoscloud/AVCallback;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
