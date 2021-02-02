.class Lcom/avos/avoscloud/im/v2/AVIMConversation$3;
.super Ljava/lang/Object;
.source "AVIMConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    .line 436
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 437
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
