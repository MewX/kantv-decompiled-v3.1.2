.class Lcom/avos/avoscloud/AVConversationHolder$5;
.super Lcom/avos/avoscloud/SignatureCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->join(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;I)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput p2, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->val$requestId:I

    invoke-direct {p0}, Lcom/avos/avoscloud/SignatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .line 252
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getGlobalOptions()Lcom/avos/avoscloud/im/v2/AVIMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v1, v1, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v2, v2, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 256
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v5, v5, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "invite"

    .line 255
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/SignatureFactory;->createConversationSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 7

    if-nez p2, :cond_0

    .line 238
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object p2, p2, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    iget-object p2, p2, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 239
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v1, v1, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v2, v2, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    iget v3, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->val$requestId:I

    .line 238
    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 241
    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object p2, p2, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    .line 242
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v1, p2, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v3, v3, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    iget v6, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->val$requestId:I

    const-string v3, "add"

    move-object v5, p1

    .line 241
    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object p1, p1, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v0, v0, Lcom/avos/avoscloud/AVConversationHolder;->conversationId:Ljava/lang/String;

    iget v1, p0, Lcom/avos/avoscloud/AVConversationHolder$5;->val$requestId:I

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :goto_0
    return-void
.end method
