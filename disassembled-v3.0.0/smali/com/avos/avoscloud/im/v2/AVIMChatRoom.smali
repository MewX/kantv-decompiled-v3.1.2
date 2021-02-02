.class public Lcom/avos/avoscloud/im/v2/AVIMChatRoom;
.super Lcom/avos/avoscloud/im/v2/AVIMConversation;
.source "AVIMChatRoom.java"


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMChatRoom;->setTransientForInit(Z)V

    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V

    return-void
.end method
