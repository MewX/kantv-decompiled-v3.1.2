.class public Lcom/samsung/multiscreen/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static final COUNTRY_CODE_KEY:Ljava/lang/String; = "countryCode"

.field private static final DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field private static final DUID_KEY:Ljava/lang/String; = "duid"

.field private static final FIRMWARE_VERSION_KEY:Ljava/lang/String; = "firmwareVersion"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IP_KEY:Ljava/lang/String; = "ip"

.field private static final MODEL_KEY:Ljava/lang/String; = "model"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final NETWORK_TYPE_KEY:Ljava/lang/String; = "networkType"

.field private static final PLATFORM_KEY:Ljava/lang/String; = "OS"

.field private static final RESOLUTION_KEY:Ljava/lang/String; = "resolution"

.field private static final SSID_KEY:Ljava/lang/String; = "ssid"

.field private static final UDN_KEY:Ljava/lang/String; = "udn"

.field private static final WIFIMAC_KEY:Ljava/lang/String; = "wifiMac"


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final duid:Ljava/lang/String;

.field private final firmwareVersion:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final ip:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final platform:Ljava/lang/String;

.field private final resolution:Ljava/lang/String;

.field private final ssid:Ljava/lang/String;

.field private final udn:Ljava/lang/String;

.field private final wifiMac:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "duid"

    .line 133
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->duid:Ljava/lang/String;

    const-string v0, "model"

    .line 134
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->model:Ljava/lang/String;

    const-string v0, "description"

    .line 135
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->description:Ljava/lang/String;

    const-string v0, "networkType"

    .line 136
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->networkType:Ljava/lang/String;

    const-string v0, "ssid"

    .line 137
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->ssid:Ljava/lang/String;

    const-string v0, "ip"

    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->ip:Ljava/lang/String;

    const-string v0, "firmwareVersion"

    .line 139
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->firmwareVersion:Ljava/lang/String;

    const-string v0, "name"

    .line 140
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->name:Ljava/lang/String;

    const-string v0, "id"

    .line 141
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->id:Ljava/lang/String;

    const-string v0, "udn"

    .line 142
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->udn:Ljava/lang/String;

    const-string v0, "resolution"

    .line 143
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->resolution:Ljava/lang/String;

    const-string v0, "countryCode"

    .line 144
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->countryCode:Ljava/lang/String;

    const-string v0, "OS"

    .line 145
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/multiscreen/Device;->platform:Ljava/lang/String;

    const-string v0, "wifiMac"

    .line 146
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/multiscreen/Device;->wifiMac:Ljava/lang/String;

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static create(Ljava/util/Map;)Lcom/samsung/multiscreen/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Device;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/samsung/multiscreen/Device;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Device;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    instance-of p1, p1, Lcom/samsung/multiscreen/Device;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lcom/samsung/multiscreen/Device;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/multiscreen/Device;

    invoke-virtual {p1, p0}, Lcom/samsung/multiscreen/Device;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getDuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Device;->getDuid()Ljava/lang/String;

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

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuid()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdn()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->udn:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiMac()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/multiscreen/Device;->wifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getDuid()Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device(duid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getDuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firmwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", udn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getUdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wifiMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Device;->getWifiMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
