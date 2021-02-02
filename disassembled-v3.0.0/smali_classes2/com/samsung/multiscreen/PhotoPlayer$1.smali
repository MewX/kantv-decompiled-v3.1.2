.class Lcom/samsung/multiscreen/PhotoPlayer$1;
.super Ljava/lang/Object;
.source "PhotoPlayer.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/PhotoPlayer;->addToList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Lcom/samsung/multiscreen/Player$DMPStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/PhotoPlayer;

.field final synthetic val$photoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/PhotoPlayer;Ljava/util/List;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$1;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    iput-object p2, p0, Lcom/samsung/multiscreen/PhotoPlayer$1;->val$photoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer$1;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enQueue() Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V
    .locals 7

    const-string v0, "PhotoPlayer"

    if-nez p1, :cond_0

    const-string p1, "Error : Something went wrong with Node server!"

    .line 230
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_0
    iget-object v1, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mDMPRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/samsung/multiscreen/PhotoPlayer$1;->val$photoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    const/4 v1, 0x0

    .line 242
    iget-object v2, p0, Lcom/samsung/multiscreen/PhotoPlayer$1;->val$photoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "uri"

    .line 244
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 252
    sget-object v5, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->title:Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    invoke-virtual {v5}, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    sget-object v1, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->title:Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "subEvent"

    .line 258
    sget-object v6, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v6}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "playerType"

    .line 259
    sget-object v6, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v6}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    sget-object v3, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->title:Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enQueue(): Error in parsing JSON object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_1
    sget-object v1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v3, "playerQueueEvent"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$1;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "enQueue(): ContentUrl can not be Optional."

    .line 248
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 268
    :cond_4
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$1;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "enQueue() Error: DMP Un-Initialized!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 226
    check-cast p1, Lcom/samsung/multiscreen/Player$DMPStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/PhotoPlayer$1;->onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V

    return-void
.end method
