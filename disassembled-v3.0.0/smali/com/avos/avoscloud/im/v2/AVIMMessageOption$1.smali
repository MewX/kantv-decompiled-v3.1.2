.class final Lcom/avos/avoscloud/im/v2/AVIMMessageOption$1;
.super Ljava/lang/Object;
.source "AVIMMessageOption.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessageOption;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/AVIMMessageOption;
    .locals 1

    .line 85
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$1;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/avos/avoscloud/im/v2/AVIMMessageOption;
    .locals 0

    .line 90
    new-array p1, p1, [Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$1;->newArray(I)[Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    move-result-object p1

    return-object p1
.end method
