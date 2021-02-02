.class Lcom/kantv/ui/utils/LocationUtils$1;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/utils/LocationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/utils/LocationUtils;


# direct methods
.method constructor <init>(Lcom/kantv/ui/utils/LocationUtils;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/kantv/ui/utils/LocationUtils$1;->this$0:Lcom/kantv/ui/utils/LocationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 208
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 209
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils$1;->this$0:Lcom/kantv/ui/utils/LocationUtils;

    invoke-static {v0, p1}, Lcom/kantv/ui/utils/LocationUtils;->access$000(Lcom/kantv/ui/utils/LocationUtils;Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
