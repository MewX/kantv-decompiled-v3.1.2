.class Lcom/avos/avoscloud/im/v2/AVIMClient$2;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->getOnlineClients(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;)V
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

    .line 279
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 283
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    :cond_0
    const-string p2, "callbackOnlineClient"

    .line 286
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 287
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method
