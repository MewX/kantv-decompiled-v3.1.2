.class Lcom/avos/avoscloud/AVConversationHolder$18;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->refreshConversationThenNotify(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;

.field final synthetic val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$18;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder$18;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder$18;->val$callback:Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1123
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$18;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "callbackData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processQueryResult(Ljava/io/Serializable;)Ljava/lang/Exception;

    .line 1124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updated conversation info. id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$18;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 1126
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$18;->val$callback:Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;->done()V

    return-void
.end method
