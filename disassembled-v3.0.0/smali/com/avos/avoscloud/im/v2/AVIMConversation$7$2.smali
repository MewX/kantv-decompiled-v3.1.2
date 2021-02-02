.class Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation$7;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-object v4, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$msgId:Ljava/lang/String;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-wide v5, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$timestamp:J

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget v7, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$limit:I

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-object v8, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$400(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method
