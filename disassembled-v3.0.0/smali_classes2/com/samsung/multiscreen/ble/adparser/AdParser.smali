.class public Lcom/samsung/multiscreen/ble/adparser/AdParser;
.super Ljava/lang/Object;
.source "AdParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAdData([B)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/multiscreen/ble/adparser/AdElement;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v1, :cond_3

    .line 33
    aget-byte v4, p0, v2

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/2addr v2, v4

    if-le v2, v1, :cond_1

    goto :goto_2

    .line 39
    :cond_1
    aget-byte v6, p0, v3

    and-int/2addr v6, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    if-eq v6, v5, :cond_2

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    .line 107
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;

    invoke-direct {v5, v6, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/TypeUnknown;-><init>(I[BII)V

    goto :goto_1

    .line 99
    :pswitch_0
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;

    invoke-direct {v5, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/TypeServiceData;-><init>([BII)V

    goto :goto_1

    .line 94
    :pswitch_1
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;

    invoke-direct {v5, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/TypeSlaveConnectionIntervalRange;-><init>([BII)V

    goto :goto_1

    .line 89
    :pswitch_2
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;

    invoke-direct {v5, p0, v3}, Lcom/samsung/multiscreen/ble/adparser/TypeSecOOBFlags;-><init>([BI)V

    goto :goto_1

    .line 84
    :pswitch_3
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;

    invoke-direct {v5, v6, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/TypeByteDump;-><init>(I[BII)V

    goto :goto_1

    .line 76
    :pswitch_4
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeTXPowerLevel;

    invoke-direct {v5, p0, v3}, Lcom/samsung/multiscreen/ble/adparser/TypeTXPowerLevel;-><init>([BI)V

    goto :goto_1

    .line 71
    :pswitch_5
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeString;

    invoke-direct {v5, v6, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/TypeString;-><init>(I[BII)V

    goto :goto_1

    .line 65
    :pswitch_6
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;

    invoke-direct {v5, v6, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/Type128BitUUIDs;-><init>(I[BII)V

    goto :goto_1

    .line 58
    :pswitch_7
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;

    invoke-direct {v5, v6, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/Type32BitUUIDs;-><init>(I[BII)V

    goto :goto_1

    .line 53
    :pswitch_8
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/Type16BitUUIDs;

    invoke-direct {v5, v6, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/Type16BitUUIDs;-><init>(I[BII)V

    goto :goto_1

    .line 46
    :pswitch_9
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;

    invoke-direct {v5, p0, v3}, Lcom/samsung/multiscreen/ble/adparser/TypeFlags;-><init>([BI)V

    goto :goto_1

    .line 103
    :cond_2
    new-instance v5, Lcom/samsung/multiscreen/ble/adparser/TypeManufacturerData;

    invoke-direct {v5, p0, v3, v4}, Lcom/samsung/multiscreen/ble/adparser/TypeManufacturerData;-><init>([BII)V

    .line 110
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_8
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
