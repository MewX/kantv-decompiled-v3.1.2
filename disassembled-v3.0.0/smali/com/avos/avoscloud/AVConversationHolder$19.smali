.class Lcom/avos/avoscloud/AVConversationHolder$19;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onUnreadMessagesEvent(Lcom/avos/avoscloud/im/v2/AVIMMessage;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field final synthetic val$msgCopy:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field final synthetic val$unreadInfo:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Lcom/avos/avoscloud/im/v2/AVIMMessage;Landroid/util/Pair;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iput-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->val$msgCopy:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->val$unreadInfo:Landroid/util/Pair;

    iput-object p5, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 1153
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->val$msgCopy:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->val$unreadInfo:Landroid/util/Pair;

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$19;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const v4, 0xc35c

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
