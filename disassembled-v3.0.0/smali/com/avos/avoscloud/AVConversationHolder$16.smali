.class Lcom/avos/avoscloud/AVConversationHolder$16;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$client:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field final synthetic val$hasMore:Z

.field final synthetic val$isTransient:Z

.field final synthetic val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->val$client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iput-boolean p4, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->val$hasMore:Z

    iput-boolean p5, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->val$isTransient:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 1083
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget v1, v1, Lcom/avos/avoscloud/AVConversationHolder;->convType:I

    iget-object v2, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->val$client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-boolean v3, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->val$hasMore:Z

    iget-boolean v4, p0, Lcom/avos/avoscloud/AVConversationHolder$16;->val$isTransient:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V

    return-void
.end method
