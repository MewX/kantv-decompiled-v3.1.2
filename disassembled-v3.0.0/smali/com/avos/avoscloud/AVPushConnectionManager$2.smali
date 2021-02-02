.class Lcom/avos/avoscloud/AVPushConnectionManager$2;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPushConnectionManager;->processConnectionStatus(Lcom/avos/avoscloud/AVException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

.field final synthetic val$e:Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iput-object p2, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->val$e:Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100(Lcom/avos/avoscloud/AVPushConnectionManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100(Lcom/avos/avoscloud/AVPushConnectionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100(Lcom/avos/avoscloud/AVPushConnectionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVCallback;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 330
    iget-object v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->val$e:Lcom/avos/avoscloud/AVException;

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 332
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
