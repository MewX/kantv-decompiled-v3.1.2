.class public Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;
.super Ljava/lang/Object;
.source "AVIMOperationFailure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field code:I

.field memberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->reason:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->code:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->memberIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->code:I

    return v0
.end method

.method public getMemberIdCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->memberIds:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMemberIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->memberIds:Ljava/util/List;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->code:I

    return-void
.end method

.method public setMemberIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->memberIds:Ljava/util/List;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->reason:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->getMemberIdCount()I

    move-result p2

    .line 86
    iget v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_0

    .line 90
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;->memberIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
