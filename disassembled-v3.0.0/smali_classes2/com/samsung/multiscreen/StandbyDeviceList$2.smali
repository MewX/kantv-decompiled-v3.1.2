.class Lcom/samsung/multiscreen/StandbyDeviceList$2;
.super Ljava/lang/Object;
.source "StandbyDeviceList.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/StandbyDeviceList;->update(Lcom/samsung/multiscreen/Service;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Lcom/samsung/multiscreen/Device;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

.field final synthetic val$isActive:Ljava/lang/Boolean;

.field final synthetic val$service:Lcom/samsung/multiscreen/Service;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/StandbyDeviceList;Lcom/samsung/multiscreen/Service;Ljava/lang/Boolean;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    iput-object p2, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->val$service:Lcom/samsung/multiscreen/Service;

    iput-object p3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->val$isActive:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v1, v1, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->isActive:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Device;)V
    .locals 10

    .line 270
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$700(Lcom/samsung/multiscreen/StandbyDeviceList;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 272
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 275
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 281
    new-instance v0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;

    iget-object v3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->val$service:Lcom/samsung/multiscreen/Service;

    .line 282
    invoke-virtual {v1}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    .line 283
    invoke-static {v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$800(Lcom/samsung/multiscreen/StandbyDeviceList;)Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v5

    .line 284
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Device;->getWifiMac()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->val$service:Lcom/samsung/multiscreen/Service;

    .line 285
    invoke-virtual {v1}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Device;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->val$isActive:Ljava/lang/Boolean;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;-><init>(Lcom/samsung/multiscreen/StandbyDeviceList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 288
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$900(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$2;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$1000(Lcom/samsung/multiscreen/StandbyDeviceList;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 267
    check-cast p1, Lcom/samsung/multiscreen/Device;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/StandbyDeviceList$2;->onSuccess(Lcom/samsung/multiscreen/Device;)V

    return-void
.end method
