.class Lcom/avos/avoscloud/AVConversationHolder$20;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onConversationReadAtEvent(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field final synthetic val$readAt:J


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;JLcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$20;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$20;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iput-wide p3, p0, Lcom/avos/avoscloud/AVConversationHolder$20;->val$readAt:J

    iput-object p5, p0, Lcom/avos/avoscloud/AVConversationHolder$20;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 1168
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$20;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iget-wide v1, p0, Lcom/avos/avoscloud/AVConversationHolder$20;->val$readAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$20;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const v3, 0xc35d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
