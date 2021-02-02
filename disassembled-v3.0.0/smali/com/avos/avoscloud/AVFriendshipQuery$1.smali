.class Lcom/avos/avoscloud/AVFriendshipQuery$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVFriendshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFriendshipQuery;Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 86
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 9

    .line 39
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 p1, 0x65

    const-string v0, "Object is not found."

    invoke-direct {p2, p1, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 44
    :cond_0
    :try_start_0
    new-instance v0, Lcom/avos/avoscloud/AVFriendship;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVFriendship;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :try_start_1
    const-class v2, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;

    .line 46
    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;

    .line 47
    iget-object v3, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v3, v3, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 48
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFriendship;->getFollowers()Ljava/util/List;

    move-result-object v3

    .line 49
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFriendship;->getFollowees()Ljava/util/List;

    move-result-object v4

    .line 50
    iget-object v5, v2, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;->followers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 51
    iget-object v7, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v7, v7, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    invoke-static {v7, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v7

    const-string v8, "follower"

    .line 53
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 52
    invoke-static {v8, v7}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 54
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFriendship;->getUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v7

    if-nez v7, :cond_1

    .line 56
    iget-object v7, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v7, v7, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    invoke-static {v7, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v7

    const-string v8, "user"

    .line 58
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 57
    invoke-static {v6, v7}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 59
    invoke-virtual {v0, v7}, Lcom/avos/avoscloud/AVFriendship;->setUser(Lcom/avos/avoscloud/AVUser;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/AVFriendship;->setFollowers(Ljava/util/List;)V

    .line 63
    iget-object v2, v2, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;->followees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 64
    iget-object v5, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v5, v5, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    invoke-static {v5, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v5

    const-string v6, "followee"

    .line 66
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 65
    invoke-static {v3, v5}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 67
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v0, v4}, Lcom/avos/avoscloud/AVFriendship;->setFollowees(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v0, v1

    .line 73
    :goto_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz v3, :cond_4

    .line 74
    invoke-static {v2, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 78
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz p1, :cond_5

    .line 79
    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_5
    return-void
.end method
