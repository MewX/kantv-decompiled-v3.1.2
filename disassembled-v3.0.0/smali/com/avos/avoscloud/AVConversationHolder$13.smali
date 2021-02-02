.class Lcom/avos/avoscloud/AVConversationHolder$13;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onMembersJoined(Ljava/util/List;Ljava/lang/String;)V
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

.field final synthetic val$members:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iput-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->val$invitedBy:Ljava/lang/String;

    iput-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->val$members:Ljava/util/List;

    iput-object p5, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 1035
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->val$invitedBy:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->val$members:Ljava/util/List;

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$13;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const v4, 0xc355

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
