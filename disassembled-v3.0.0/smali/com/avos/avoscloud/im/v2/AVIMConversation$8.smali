.class Lcom/avos/avoscloud/im/v2/AVIMConversation$8;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessage(Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$8;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$8;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .locals 2
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

    .line 655
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$8;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$8;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;

    invoke-static {v0, p1, p2, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$500(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V

    return-void
.end method
