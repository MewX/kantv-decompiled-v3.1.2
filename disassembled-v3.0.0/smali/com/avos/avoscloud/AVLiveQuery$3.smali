.class Lcom/avos/avoscloud/AVLiveQuery$3;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVLiveQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVLiveQuery;->unsubscribeInBackground(Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVLiveQuery;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVLiveQuery;Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery$3;->this$0:Lcom/avos/avoscloud/AVLiveQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVLiveQuery$3;->val$callback:Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object p2, p0, Lcom/avos/avoscloud/AVLiveQuery$3;->val$callback:Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;

    if-eqz p2, :cond_0

    .line 190
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    if-nez p2, :cond_0

    .line 177
    invoke-static {}, Lcom/avos/avoscloud/AVLiveQuery;->access$100()Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/avos/avoscloud/AVLiveQuery$3;->this$0:Lcom/avos/avoscloud/AVLiveQuery;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery$3;->this$0:Lcom/avos/avoscloud/AVLiveQuery;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVLiveQuery;->access$002(Lcom/avos/avoscloud/AVLiveQuery;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery$3;->val$callback:Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 180
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVLiveQuery$3;->val$callback:Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVLiveQuerySubscribeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    :goto_0
    return-void
.end method
