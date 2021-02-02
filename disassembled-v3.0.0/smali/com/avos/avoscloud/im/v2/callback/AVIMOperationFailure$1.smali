.class final Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure$1;
.super Ljava/lang/Object;
.source "AVIMOperationFailure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;
    .locals 3

    .line 101
    new-instance v0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->setCode(I)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->setReason(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 108
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->setMemberIds(Ljava/util/List;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure$1;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;
    .locals 0

    .line 115
    new-array p1, p1, [Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure$1;->newArray(I)[Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;

    move-result-object p1

    return-object p1
.end method
