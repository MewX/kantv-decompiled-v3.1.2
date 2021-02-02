.class public Lorg/fourthline/cling/support/shared/CoreLogCategories;
.super Ljava/util/ArrayList;
.source "CoreLogCategories.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/seamless/swing/logging/LogCategory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 14

    const/16 v0, 0xa

    .line 29
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    new-instance v0, Lorg/seamless/swing/logging/LogCategory;

    const/4 v1, 0x6

    new-array v2, v1, [Lorg/seamless/swing/logging/LogCategory$Group;

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/fourthline/cling/transport/spi/DatagramIO;

    .line 36
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v8, Lorg/fourthline/cling/transport/spi/MulticastReceiver;

    .line 37
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v8, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "UDP communication"

    invoke-direct {v3, v6, v5}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v7

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v5, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v9, Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 44
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v9, v10}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v7

    const-string v6, "UDP datagram processing and content"

    invoke-direct {v3, v6, v5}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v8

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    const/4 v5, 0x3

    new-array v6, v5, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v10, Lorg/fourthline/cling/transport/spi/UpnpStream;

    .line 51
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v9, v10, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v6, v7

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v10, Lorg/fourthline/cling/transport/spi/StreamServer;

    .line 52
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v9, v10, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v6, v8

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v10, Lorg/fourthline/cling/transport/spi/StreamClient;

    .line 53
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v9, v10, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v6, v4

    const-string v9, "TCP communication"

    invoke-direct {v3, v9, v6}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v4

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v6, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v10, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    .line 60
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v9, v10, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v6, v7

    const-string v9, "SOAP action message processing and content"

    invoke-direct {v3, v9, v6}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v6, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v10, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    .line 67
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v9, v10, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v6, v7

    const-string v9, "GENA event message processing and content"

    invoke-direct {v3, v9, v6}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    const/4 v6, 0x4

    aput-object v3, v2, v6

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v9, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v10, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v11, Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 74
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v10, v11, v12}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v10, v9, v7

    const-string v10, "HTTP header processing"

    invoke-direct {v3, v10, v9}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-string v3, "Network"

    invoke-direct {v0, v3, v2}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 31
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/shared/CoreLogCategories;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lorg/seamless/swing/logging/LogCategory;

    new-array v2, v6, [Lorg/seamless/swing/logging/LogCategory$Group;

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v10, v4, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 85
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v7

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    sget-object v12, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v13, "org.fourthline.cling.protocol.async"

    invoke-direct {v11, v13, v12}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v8

    const-string v11, "Discovery (Notification & Search)"

    invoke-direct {v3, v11, v10}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v7

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v10, v9, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 93
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v7

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;

    .line 94
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v8

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;

    .line 95
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v4

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    .line 96
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v5

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    .line 97
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v6

    const-string v11, "Description"

    invoke-direct {v3, v11, v10}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v8

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v10, v5, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 104
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v7

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/sync/ReceivingAction;

    .line 105
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v8

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/sync/SendingAction;

    .line 106
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v4

    const-string v11, "Control"

    invoke-direct {v3, v11, v10}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v4

    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    const/16 v10, 0x9

    new-array v10, v10, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    sget-object v12, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v13, "org.fourthline.cling.model.gena"

    invoke-direct {v11, v13, v12}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v7

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 114
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v8

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    .line 115
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v4

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    .line 116
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v5

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;

    .line 117
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v6

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/sync/SendingEvent;

    .line 118
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v9

    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v12, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    .line 119
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v11, v12, v13}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v11, v10, v1

    new-instance v1, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v11, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    .line 120
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v1, v11, v12}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/4 v11, 0x7

    aput-object v1, v10, v11

    new-instance v1, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v11, Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    .line 121
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v1, v11, v12}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    const/16 v11, 0x8

    aput-object v1, v10, v11

    const-string v1, "GENA "

    invoke-direct {v3, v1, v10}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v5

    const-string v1, "UPnP Protocol"

    invoke-direct {v0, v1, v2}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 80
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/shared/CoreLogCategories;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lorg/seamless/swing/logging/LogCategory;

    new-array v1, v6, [Lorg/seamless/swing/logging/LogCategory$Group;

    new-instance v2, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v3, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v10, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v11, Lorg/fourthline/cling/transport/Router;

    .line 131
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v10, v11, v12}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v10, v3, v7

    const-string v10, "Router"

    invoke-direct {v2, v10, v3}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v3, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v10, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v11, Lorg/fourthline/cling/registry/Registry;

    .line 138
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v10, v11, v12}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v10, v3, v7

    const-string v10, "Registry"

    invoke-direct {v2, v10, v3}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v2, v1, v8

    new-instance v2, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v3, v9, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v11, "org.fourthline.cling.binding.annotations"

    invoke-direct {v9, v11, v10}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v3, v7

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v10, Lorg/fourthline/cling/model/meta/LocalService;

    .line 146
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v9, v10, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v3, v8

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v11, "org.fourthline.cling.model.action"

    invoke-direct {v9, v11, v10}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v3, v4

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v11, "org.fourthline.cling.model.state"

    invoke-direct {v9, v11, v10}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v3, v5

    new-instance v9, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    const-class v10, Lorg/fourthline/cling/model/DefaultServiceManager;

    .line 149
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v9, v10, v11}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v9, v3, v6

    const-string v6, "Local service binding & invocation"

    invoke-direct {v2, v6, v3}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/seamless/swing/logging/LogCategory$Group;

    new-array v3, v8, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    new-instance v4, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v8, "org.fourthline.cling.controlpoint"

    invoke-direct {v4, v8, v6}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v4, v3, v7

    const-string v4, "Control Point interaction"

    invoke-direct {v2, v4, v3}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    aput-object v2, v1, v5

    const-string v2, "Core"

    invoke-direct {v0, v2, v1}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 126
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/shared/CoreLogCategories;->add(Ljava/lang/Object;)Z

    return-void
.end method
