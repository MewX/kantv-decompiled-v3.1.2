.class Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$1;
.super Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$CacheConversationQueryCallback;
.source "AVIMConversationsQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->findInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

.field final synthetic val$queryParamsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    iput-object p5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$1;->val$queryParamsString:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$CacheConversationQueryCallback;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 482
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;

    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$1;->callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery$1;->val$queryParamsString:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;->access$000(Lcom/avos/avoscloud/im/v2/AVIMConversationsQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    return-void
.end method
