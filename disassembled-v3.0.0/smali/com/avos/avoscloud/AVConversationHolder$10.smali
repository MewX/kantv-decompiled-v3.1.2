.class Lcom/avos/avoscloud/AVConversationHolder$10;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onMemberShutupedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$copyMembers:Ljava/util/List;

.field final synthetic val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field final synthetic val$isMuted:Z

.field final synthetic val$operator:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;ZLcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$isMuted:Z

    iput-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iput-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$operator:Ljava/lang/String;

    iput-object p5, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$copyMembers:Ljava/util/List;

    iput-object p6, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 965
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$isMuted:Z

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    const v1, 0xc364

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$operator:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$copyMembers:Ljava/util/List;

    iget-object v4, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    const v1, 0xc365

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$operator:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$copyMembers:Ljava/util/List;

    iget-object v4, p0, Lcom/avos/avoscloud/AVConversationHolder$10;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
