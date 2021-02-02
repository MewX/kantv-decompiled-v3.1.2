.class Lcom/samsung/multiscreen/StandbyDeviceList$3;
.super Ljava/lang/Object;
.source "StandbyDeviceList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/StandbyDeviceList;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/StandbyDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/StandbyDeviceList;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 330
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "id"

    .line 332
    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v3}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v3, v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssid"

    .line 333
    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v3}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v3, v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mac"

    .line 334
    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v3}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v3, v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uri"

    .line 335
    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v3}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v3, v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    .line 336
    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v3}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v3, v3, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v2}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$000(Lcom/samsung/multiscreen/StandbyDeviceList;)Lcom/samsung/multiscreen/Search$SearchListener;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/multiscreen/Service;->create(Lorg/json/JSONObject;)Lcom/samsung/multiscreen/Service;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/samsung/multiscreen/Search$SearchListener;->onLost(Lcom/samsung/multiscreen/Service;)V

    .line 342
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear() Unsuccessful: error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StndbyDLHndlr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$3;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$1000(Lcom/samsung/multiscreen/StandbyDeviceList;)V

    :cond_1
    return-void
.end method
