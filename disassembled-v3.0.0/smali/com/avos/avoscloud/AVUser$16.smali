.class Lcom/avos/avoscloud/AVUser$16;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/UpdatePasswordCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$16;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$16;->val$callback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$16;->val$callback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$16;->this$0:Lcom/avos/avoscloud/AVUser;

    const-string v1, "sessionToken"

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->access$102(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/lang/String;

    .line 1169
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$16;->val$callback:Lcom/avos/avoscloud/UpdatePasswordCallback;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
