.class Lcom/avos/avoscloud/AVUser$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->isAuthenticated(Lcom/avos/avoscloud/AVCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$1;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 316
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 310
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
