.class Lcom/avos/avoscloud/im/v2/AVIMConversation$13;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->quit(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1073
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->deleteConversationData(Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFailure()V
    .locals 0

    return-void
.end method
