.class Lcom/samsung/multiscreen/BLESearchProvider$1;
.super Ljava/lang/Object;
.source "BLESearchProvider.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/BLESearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/BLESearchProvider;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/BLESearchProvider;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTV([B)Z
    .locals 8

    .line 99
    invoke-static {p1}, Lcom/samsung/multiscreen/ble/adparser/AdParser;->parseAdData([B)Ljava/util/ArrayList;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 101
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 102
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/multiscreen/ble/adparser/AdElement;

    if-lez v2, :cond_0

    const-string v5, " ; "

    .line 104
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    invoke-virtual {v4}, Lcom/samsung/multiscreen/ble/adparser/AdElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    instance-of v5, v4, Lcom/samsung/multiscreen/ble/adparser/TypeManufacturerData;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 108
    check-cast v4, Lcom/samsung/multiscreen/ble/adparser/TypeManufacturerData;

    .line 110
    invoke-virtual {v4}, Lcom/samsung/multiscreen/ble/adparser/TypeManufacturerData;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    const-string v7, "0075"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {v4}, Lcom/samsung/multiscreen/ble/adparser/TypeManufacturerData;->getBytes()[B

    move-result-object v4

    .line 113
    aget-byte v5, v4, v1

    .line 114
    aget-byte v5, v4, v6

    const/4 v5, 0x2

    .line 115
    aget-byte v5, v4, v5

    .line 117
    sget-object v7, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->TV:Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;

    invoke-virtual {v7}, Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;->getValue()I

    move-result v7

    if-ne v7, v5, :cond_1

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    if-ne v4, v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private reapServices()V
    .locals 7

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 163
    iget-object v2, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-static {v2}, Lcom/samsung/multiscreen/BLESearchProvider;->access$000(Lcom/samsung/multiscreen/BLESearchProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;

    .line 164
    iget-object v4, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-static {v4}, Lcom/samsung/multiscreen/BLESearchProvider;->access$000(Lcom/samsung/multiscreen/BLESearchProvider;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 166
    iget-object v4, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/multiscreen/BLESearchProvider;->getServiceById(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;

    move-result-object v4

    .line 167
    iget-object v5, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-static {v5}, Lcom/samsung/multiscreen/BLESearchProvider;->access$000(Lcom/samsung/multiscreen/BLESearchProvider;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v3, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-virtual {v3, v4}, Lcom/samsung/multiscreen/BLESearchProvider;->removeServiceAndNotify(Lcom/samsung/multiscreen/Service;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p3, v3

    const/4 v5, 0x1

    .line 135
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;

    iget-object v1, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-direct {v0, v1, p1}, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;-><init>(Lcom/samsung/multiscreen/BLESearchProvider;Landroid/bluetooth/BluetoothDevice;)V

    .line 140
    iget-object v1, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-static {v1}, Lcom/samsung/multiscreen/BLESearchProvider;->access$000(Lcom/samsung/multiscreen/BLESearchProvider;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1388

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/multiscreen/BLESearchProvider;->access$100(Lcom/samsung/multiscreen/BLESearchProvider;Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;J)V

    .line 143
    invoke-direct {p0, p3}, Lcom/samsung/multiscreen/BLESearchProvider$1;->isTV([B)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 144
    iget-object p3, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-static {p3}, Lcom/samsung/multiscreen/BLESearchProvider;->access$200(Lcom/samsung/multiscreen/BLESearchProvider;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 146
    iget-object p3, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-static {p3}, Lcom/samsung/multiscreen/BLESearchProvider;->access$200(Lcom/samsung/multiscreen/BLESearchProvider;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p3, -0x64

    if-lt p2, p3, :cond_2

    .line 148
    iget-object p2, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/multiscreen/BLESearchProvider;->addTVOnlyBle(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/samsung/multiscreen/BLESearchProvider$1;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-static {p1, v0, v2, v3}, Lcom/samsung/multiscreen/BLESearchProvider;->access$100(Lcom/samsung/multiscreen/BLESearchProvider;Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;J)V

    .line 156
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/multiscreen/BLESearchProvider$1;->reapServices()V

    return-void
.end method
