.class Lcom/avos/avoscloud/AVSession$5;
.super Lcom/avos/avoscloud/SignatureCallback;
.source "AVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->createConversation(Ljava/util/List;Ljava/util/Map;ZZZIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$isSystem:Z

.field final synthetic val$isTemp:Z

.field final synthetic val$isTransient:Z

.field final synthetic val$isUnique:Z

.field final synthetic val$members:Ljava/util/List;

.field final synthetic val$requestId:I

.field final synthetic val$tempTTL:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;ILjava/util/List;Ljava/util/Map;ZZZIZ)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$5;->this$0:Lcom/avos/avoscloud/AVSession;

    iput p2, p0, Lcom/avos/avoscloud/AVSession$5;->val$requestId:I

    iput-object p3, p0, Lcom/avos/avoscloud/AVSession$5;->val$members:Ljava/util/List;

    iput-object p4, p0, Lcom/avos/avoscloud/AVSession$5;->val$attributes:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/avos/avoscloud/AVSession$5;->val$isTransient:Z

    iput-boolean p6, p0, Lcom/avos/avoscloud/AVSession$5;->val$isUnique:Z

    iput-boolean p7, p0, Lcom/avos/avoscloud/AVSession$5;->val$isTemp:Z

    iput p8, p0, Lcom/avos/avoscloud/AVSession$5;->val$tempTTL:I

    iput-boolean p9, p0, Lcom/avos/avoscloud/AVSession$5;->val$isSystem:Z

    invoke-direct {p0}, Lcom/avos/avoscloud/SignatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .line 407
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getGlobalOptions()Lcom/avos/avoscloud/im/v2/AVIMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$5;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$5;->val$members:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 394
    iget-object p2, p0, Lcom/avos/avoscloud/AVSession$5;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object p2, p2, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 395
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$5;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/avos/avoscloud/AVSession$5;->val$requestId:I

    .line 394
    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 396
    iget-object p2, p0, Lcom/avos/avoscloud/AVSession$5;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-static {p2}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$5;->val$members:Ljava/util/List;

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$5;->val$attributes:Ljava/util/Map;

    iget-boolean v6, p0, Lcom/avos/avoscloud/AVSession$5;->val$isTransient:Z

    iget-boolean v7, p0, Lcom/avos/avoscloud/AVSession$5;->val$isUnique:Z

    iget-boolean v8, p0, Lcom/avos/avoscloud/AVSession$5;->val$isTemp:Z

    iget v9, p0, Lcom/avos/avoscloud/AVSession$5;->val$tempTTL:I

    iget-boolean v10, p0, Lcom/avos/avoscloud/AVSession$5;->val$isSystem:Z

    iget v11, p0, Lcom/avos/avoscloud/AVSession$5;->val$requestId:I

    const-string v3, "start"

    move-object v5, p1

    invoke-static/range {v0 .. v11}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZZZIZI)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVSession$5;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/avos/avoscloud/AVSession$5;->val$requestId:I

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :goto_0
    return-void
.end method
