.class Lcom/avos/avoscloud/im/v2/AVIMConversation$10;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->processStorageQueryResult(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

.field final synthetic val$continuousMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$continuousMessages:Ljava/util/List;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/AVIMException;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 722
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$continuousMessages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 723
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$continuousMessages:Ljava/util/List;

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 725
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 729
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 731
    :cond_2
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$continuousMessages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 732
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$continuousMessages:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    .line 733
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;->val$continuousMessages:Ljava/util/List;

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method
