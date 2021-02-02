.class Lcom/avos/avoscloud/AVSession$3;
.super Lcom/avos/avoscloud/SignatureCallback;
.source "AVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->openWithSignature(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;

.field final synthetic val$notifyListener:Z

.field final synthetic val$reconnectionFlag:Z

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;ZIZ)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AVSession$3;->val$notifyListener:Z

    iput p3, p0, Lcom/avos/avoscloud/AVSession$3;->val$requestId:I

    iput-boolean p4, p0, Lcom/avos/avoscloud/AVSession$3;->val$reconnectionFlag:Z

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

    .line 239
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getGlobalOptions()Lcom/avos/avoscloud/im/v2/AVIMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMOptions;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getUserSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    new-instance v0, Lcom/avos/avoscloud/AVUserSignatureFactory;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getUserSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVUserSignatureFactory;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 244
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 9

    if-eqz p2, :cond_1

    .line 219
    iget-boolean p1, p0, Lcom/avos/avoscloud/AVSession$3;->val$notifyListener:Z

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v0, p1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    const/16 v4, 0x2714

    iget v5, p0, Lcom/avos/avoscloud/AVSession$3;->val$requestId:I

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;II)V

    :cond_0
    const-string p1, "failed to generate signaure. cause:"

    .line 223
    invoke-static {p1, p2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object p2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object p2, p2, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 226
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/avos/avoscloud/AVSession$3;->val$requestId:I

    .line 225
    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 227
    iget-object p2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    .line 228
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    .line 230
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getLastNotifyTime()J

    move-result-wide v4

    iget-object p2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVSession;->getLastPatchTime()J

    move-result-wide v6

    iget p2, p0, Lcom/avos/avoscloud/AVSession$3;->val$requestId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v2, "open"

    move-object v3, p1

    .line 227
    invoke-static/range {v0 .. v8}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;JJLjava/lang/Integer;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object p1

    .line 231
    iget-object p2, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object p2, p2, Lcom/avos/avoscloud/AVSession;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/avos/avospush/session/SessionControlPacket;->setTag(Ljava/lang/String;)V

    .line 232
    iget-boolean p2, p0, Lcom/avos/avoscloud/AVSession$3;->val$reconnectionFlag:Z

    invoke-virtual {p1, p2}, Lcom/avos/avospush/session/SessionControlPacket;->setReconnectionRequest(Z)V

    .line 233
    invoke-static {p1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    :goto_0
    return-void
.end method
