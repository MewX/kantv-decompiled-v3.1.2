.class final Lcom/avos/avoscloud/AVCloud$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVCloud;->rpcFunctionInBackground(Ljava/lang/String;Ljava/lang/Object;ZLcom/avos/avoscloud/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/FunctionCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/FunctionCallback;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/avos/avoscloud/AVCloud$4;->val$callback:Lcom/avos/avoscloud/FunctionCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/avos/avoscloud/AVCloud$4;->val$callback:Lcom/avos/avoscloud/FunctionCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/avos/avoscloud/FunctionCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/avos/avoscloud/AVCloud$4;->val$callback:Lcom/avos/avoscloud/FunctionCallback;

    invoke-static {p1}, Lcom/avos/avoscloud/AVCloud;->convertCloudResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/FunctionCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
