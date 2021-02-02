.class Lcom/avos/avoscloud/AVUser$9;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->refreshSessionToken(ZLcom/avos/avoscloud/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/LogInCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$9;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$9;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$9;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 759
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3

    .line 743
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->access$000()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->access$000()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 744
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 746
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    const/4 p1, 0x1

    .line 747
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    goto :goto_1

    .line 749
    :cond_1
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x65

    const-string v1, "User is not found."

    invoke-direct {p2, p1, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 751
    :goto_1
    iget-object p1, p0, Lcom/avos/avoscloud/AVUser$9;->val$callback:Lcom/avos/avoscloud/LogInCallback;

    if-eqz p1, :cond_2

    .line 752
    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_2
    return-void
.end method
