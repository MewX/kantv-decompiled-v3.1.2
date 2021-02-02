.class Lcom/avos/avoscloud/im/v2/AVIMClient$7;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientStatus(Lcom/avos/avoscloud/im/v2/callback/AVIMClientStatusCallback;)V
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

    .line 872
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$7;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 2

    .line 876
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callbackClientStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->getClientStatus(I)Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 882
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$7;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
