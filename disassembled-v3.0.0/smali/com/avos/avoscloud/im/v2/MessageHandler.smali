.class public abstract Lcom/avos/avoscloud/im/v2/MessageHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">",
        "Lcom/avos/avoscloud/AVIMEventHandler;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method

.method private processMessage(ILjava/lang/Object;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    check-cast p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object p1, p3, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p2, p3, p1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 33
    :pswitch_1
    check-cast p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object p1, p3, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p2, p3, p1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc350
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation
.end method

.method protected final processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 26
    invoke-direct {p0, p1, p3, p4}, Lcom/avos/avoscloud/im/v2/MessageHandler;->processMessage(ILjava/lang/Object;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    return-void
.end method
