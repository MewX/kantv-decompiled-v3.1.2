.class Lcom/avos/avoscloud/AVConversationHolder$8;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onKickedFromConversation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field final synthetic val$invitedBy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$8;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$8;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iput-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder$8;->val$invitedBy:Ljava/lang/String;

    iput-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder$8;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 923
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$8;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder$8;->val$invitedBy:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$8;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const v3, 0xc359

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
