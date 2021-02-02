.class Lcom/avos/avoscloud/im/v2/AVIMConversation$14;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
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

    .line 1348
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1352
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1353
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1354
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1355
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1356
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertConversations(Ljava/util/List;)V

    return-void
.end method

.method public onFailure()V
    .locals 0

    return-void
.end method
