.class Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;
.super Ljava/lang/Object;
.source "BLESearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/BLESearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothService"
.end annotation


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private id:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/multiscreen/BLESearchProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/multiscreen/BLESearchProvider;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->this$0:Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 85
    instance-of p1, p1, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;

    invoke-virtual {p1, p0}, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BLESearchProvider.BluetoothService(device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
