.class public abstract Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "AVIMClientEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onClientOffline(Lcom/avos/avoscloud/im/v2/AVIMClient;I)V
.end method

.method public abstract onConnectionPaused(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
.end method

.method public abstract onConnectionResume(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
.end method

.method protected final processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 57
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not supported operation:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_1
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p4, p1}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->onClientOffline(Lcom/avos/avoscloud/im/v2/AVIMClient;I)V

    .line 54
    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/AVIMClient;->close()V

    goto :goto_0

    .line 47
    :pswitch_2
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p4}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->onConnectionResume(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 50
    :pswitch_3
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p4}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->onConnectionPaused(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc356
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
