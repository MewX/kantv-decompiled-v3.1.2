.class public abstract Lcom/avos/avoscloud/AVLiveQueryEventHandler;
.super Ljava/lang/Object;
.source "AVLiveQueryEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVLiveQuery$EventType;Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVLiveQuery$EventType;",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/avos/avoscloud/AVLiveQueryEventHandler$1;->$SwitchMap$com$avos$avoscloud$AVLiveQuery$EventType:[I

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVLiveQuery$EventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 31
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVLiveQueryEventHandler;->onObjectCreated(Lcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 26
    :pswitch_1
    instance-of p1, p2, Lcom/avos/avoscloud/AVUser;

    if-eqz p1, :cond_0

    .line 27
    check-cast p2, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVLiveQueryEventHandler;->onUserLogin(Lcom/avos/avoscloud/AVUser;)V

    goto :goto_0

    .line 23
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/avos/avoscloud/AVLiveQueryEventHandler;->onObjectLeave(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V

    goto :goto_0

    .line 20
    :pswitch_3
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVLiveQueryEventHandler;->onObjectDeleted(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/avos/avoscloud/AVLiveQueryEventHandler;->onObjectUpdated(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V

    goto :goto_0

    .line 14
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/avos/avoscloud/AVLiveQueryEventHandler;->onObjectEnter(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onObjectCreated(Lcom/avos/avoscloud/AVObject;)V
    .locals 0

    return-void
.end method

.method public onObjectDeleted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onObjectEnter(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onObjectLeave(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onObjectUpdated(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserLogin(Lcom/avos/avoscloud/AVUser;)V
    .locals 0

    return-void
.end method
