.class Lcom/avos/avoscloud/AppRouterManager$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AppRouterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AppRouterManager;->fetchRouter(ZLcom/avos/avoscloud/AVCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AppRouterManager;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AppRouterManager;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/avos/avoscloud/AppRouterManager$1;->this$0:Lcom/avos/avoscloud/AppRouterManager;

    iput-object p2, p0, Lcom/avos/avoscloud/AppRouterManager$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isRequestStatisticNeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 194
    new-instance p2, Lcom/avos/avoscloud/AVException;

    invoke-direct {p2, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "get router error "

    invoke-static {v0, p2}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 195
    iget-object p2, p0, Lcom/avos/avoscloud/AppRouterManager$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz p2, :cond_0

    .line 196
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    if-nez p2, :cond_1

    .line 179
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " fetchRouter :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AppRouterManager$1;->this$0:Lcom/avos/avoscloud/AppRouterManager;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AppRouterManager;->access$000(Lcom/avos/avoscloud/AppRouterManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "get router error "

    .line 185
    invoke-static {p1, p2}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/AppRouterManager$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_2
    return-void
.end method
