.class Lcom/kantv/ui/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/kantv/ui/utils/LocationUtils$ILocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->uploadLocation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/MainActivity;

.field final synthetic val$gps:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$11;->this$0:Lcom/kantv/ui/MainActivity;

    iput-object p2, p0, Lcom/kantv/ui/MainActivity$11;->val$gps:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Landroid/location/Location;)V
    .locals 3

    .line 660
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/kantv/ui/MainActivity$11;->val$gps:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/kantv/ui/viewmodel/CommonViewModel;->UploadLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
