.class Lcom/avos/avoscloud/AVLiveQuery$2;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVLiveQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVLiveQuery;->loginLiveQuery(Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVLiveQuery;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVLiveQuery;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery$2;->this$0:Lcom/avos/avoscloud/AVLiveQuery;

    iput-object p3, p0, Lcom/avos/avoscloud/AVLiveQuery$2;->val$callback:Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery$2;->val$callback:Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method
