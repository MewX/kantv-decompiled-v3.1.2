.class public Lcom/samsung/multiscreen/BLESearchProvider;
.super Lcom/samsung/multiscreen/SearchProvider;
.source "BLESearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;,
        Lcom/samsung/multiscreen/BLESearchProvider$DeviceType;
    }
.end annotation


# static fields
.field private static final BLE_NETWORK_TYPE:Ljava/lang/String; = "BLE"

.field private static final BLE_NOT_SUPPORTED:Ljava/lang/String; = "BLE is not supported"

.field private static final BLE_RSSI_MIMIMUM:I = -0x64

.field private static final BLUETOOTH_NOT_SUPPORTED:Ljava/lang/String; = "Bluetooth not supported"

.field private static final DEFAULT_TTL:J = 0x1388L

.field private static final SAMSUNG_DEVICE_STATUS:B = 0x14t

.field private static final SAMSUNG_MANUFACTURER_ID:Ljava/lang/String; = "0075"

.field private static final TAG:Ljava/lang/String; = "BLESearchProvider"


# instance fields
.field private final BT_devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final context:Landroid/content/Context;

.field private final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/samsung/multiscreen/SearchProvider;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->devices:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->BT_devices:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/BLESearchProvider$1;-><init>(Lcom/samsung/multiscreen/BLESearchProvider;)V

    iput-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 185
    iput-object p1, p0, Lcom/samsung/multiscreen/BLESearchProvider;->context:Landroid/content/Context;

    .line 187
    invoke-direct {p0}, Lcom/samsung/multiscreen/BLESearchProvider;->setupBluetoothAdapter()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V
    .locals 0

    .line 191
    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/SearchProvider;-><init>(Lcom/samsung/multiscreen/Search$SearchListener;)V

    .line 93
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/multiscreen/BLESearchProvider;->devices:Ljava/util/Map;

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/multiscreen/BLESearchProvider;->BT_devices:Ljava/util/ArrayList;

    .line 95
    new-instance p2, Lcom/samsung/multiscreen/BLESearchProvider$1;

    invoke-direct {p2, p0}, Lcom/samsung/multiscreen/BLESearchProvider$1;-><init>(Lcom/samsung/multiscreen/BLESearchProvider;)V

    iput-object p2, p0, Lcom/samsung/multiscreen/BLESearchProvider;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 193
    iput-object p1, p0, Lcom/samsung/multiscreen/BLESearchProvider;->context:Landroid/content/Context;

    .line 195
    invoke-direct {p0}, Lcom/samsung/multiscreen/BLESearchProvider;->setupBluetoothAdapter()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/multiscreen/BLESearchProvider;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->devices:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/BLESearchProvider;Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;J)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/multiscreen/BLESearchProvider;->updateAlive(Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/multiscreen/BLESearchProvider;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->BT_devices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/multiscreen/SearchProvider;
    .locals 1

    .line 256
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/BLESearchProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static create(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/SearchProvider;
    .locals 1

    .line 261
    new-instance v0, Lcom/samsung/multiscreen/BLESearchProvider;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/BLESearchProvider;-><init>(Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V

    return-object v0
.end method

.method private setupBluetoothAdapter()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->context:Landroid/content/Context;

    const-string v1, "bluetooth"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 209
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 212
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Bluetooth not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BLE is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAlive(Lcom/samsung/multiscreen/BLESearchProvider$BluetoothService;J)V
    .locals 2

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 178
    iget-object p2, p0, Lcom/samsung/multiscreen/BLESearchProvider;->devices:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    const-string v0, "BLESearchProvider"

    const-string v1, "Start BLE search"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-boolean v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->searching:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/samsung/multiscreen/BLESearchProvider;->stop()Z

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->BT_devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 228
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->TVListOnlyBle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    invoke-virtual {p0}, Lcom/samsung/multiscreen/BLESearchProvider;->clearServices()V

    .line 233
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/multiscreen/BLESearchProvider;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->searching:Z

    return-void
.end method

.method public stop()Z
    .locals 2

    const-string v0, "BLESearchProvider"

    const-string v1, "Stop BLE search"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->searching:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 243
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/multiscreen/BLESearchProvider;->searching:Z

    .line 244
    iget-object v0, p0, Lcom/samsung/multiscreen/BLESearchProvider;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/multiscreen/BLESearchProvider;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/4 v0, 0x1

    return v0
.end method
