.class Lcom/avos/avoscloud/AVConversationHolder$17;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$17;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-object p2, p0, Lcom/avos/avoscloud/AVConversationHolder$17;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$17;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v1, p0, Lcom/avos/avoscloud/AVConversationHolder$17;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iget-object v1, v1, Lcom/avos/avoscloud/AVConversationHolder;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-void
.end method
