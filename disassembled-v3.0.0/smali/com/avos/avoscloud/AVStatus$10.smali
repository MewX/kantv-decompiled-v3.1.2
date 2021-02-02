.class final Lcom/avos/avoscloud/AVStatus$10;
.super Ljava/lang/Object;
.source "AVStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVStatus;
    .locals 1

    .line 1568
    new-instance v0, Lcom/avos/avoscloud/AVStatus;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1564
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus$10;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/avos/avoscloud/AVStatus;
    .locals 0

    .line 1573
    new-array p1, p1, [Lcom/avos/avoscloud/AVStatus;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1564
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVStatus$10;->newArray(I)[Lcom/avos/avoscloud/AVStatus;

    move-result-object p1

    return-object p1
.end method
