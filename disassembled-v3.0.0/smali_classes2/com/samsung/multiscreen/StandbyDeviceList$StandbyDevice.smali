.class Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;
.super Ljava/lang/Object;
.source "StandbyDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/StandbyDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StandbyDevice"
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field duid:Ljava/lang/String;

.field ip:Ljava/lang/String;

.field isActive:Ljava/lang/Boolean;

.field mac:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/multiscreen/StandbyDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/StandbyDeviceList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->duid:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->bssid:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->mac:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->ip:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->name:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/samsung/multiscreen/StandbyDeviceList$StandbyDevice;->isActive:Ljava/lang/Boolean;

    return-void
.end method
