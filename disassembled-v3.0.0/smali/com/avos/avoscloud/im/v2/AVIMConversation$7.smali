.class Lcom/avos/avoscloud/im/v2/AVIMConversation$7;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

.field final synthetic val$limit:I

.field final synthetic val$msgId:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$msgId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$timestamp:J

    iput p5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$limit:I

    iput-object p6, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v2, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v3, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$msgId:Ljava/lang/String;

    iget-wide v4, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$timestamp:J

    iget v6, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$limit:I

    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v7, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;

    invoke-direct {v8, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation$7;)V

    invoke-virtual/range {v2 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getMessages(Ljava/lang/String;JILjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V

    goto :goto_1

    .line 567
    :cond_1
    :goto_0
    iget-object v10, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$msgId:Ljava/lang/String;

    .line 568
    iget-wide v11, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$timestamp:J

    .line 569
    iget v13, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$limit:I

    .line 570
    iget-object v9, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;

    invoke-direct {v2, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation$7;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    move-object/from16 v17, v2

    invoke-static/range {v9 .. v17}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$300(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    :goto_1
    return-void
.end method
