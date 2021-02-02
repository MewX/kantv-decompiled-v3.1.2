.class public Lcom/avos/avoscloud/AVGeoPoint;
.super Ljava/lang/Object;
.source "AVGeoPoint.java"


# static fields
.field static EARTH_MEAN_RADIUS_KM:D = 6378.14

.field static ONE_KM_TO_MILES:D = 1.609344


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    .line 34
    iput-wide v0, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    .line 79
    iput-wide p3, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    return-void
.end method


# virtual methods
.method public distanceInKilometersTo(Lcom/avos/avoscloud/AVGeoPoint;)D
    .locals 5

    .line 43
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 44
    iget-wide v2, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 45
    iget-wide v2, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 46
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 47
    iget-wide v3, p1, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 48
    iget-wide v3, p1, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    return-wide v0
.end method

.method public distanceInMilesTo(Lcom/avos/avoscloud/AVGeoPoint;)D
    .locals 4

    .line 58
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVGeoPoint;->distanceInKilometersTo(Lcom/avos/avoscloud/AVGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/avos/avoscloud/AVGeoPoint;->ONE_KM_TO_MILES:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInRadiansTo(Lcom/avos/avoscloud/AVGeoPoint;)D
    .locals 4

    .line 68
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVGeoPoint;->distanceInKilometersTo(Lcom/avos/avoscloud/AVGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/avos/avoscloud/AVGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    return-void
.end method
