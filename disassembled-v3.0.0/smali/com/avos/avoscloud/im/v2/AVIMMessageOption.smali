.class public Lcom/avos/avoscloud/im/v2/AVIMMessageOption;
.super Ljava/lang/Object;
.source "AVIMMessageOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessageOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isReceipt:Z

.field private isTransient:Z

.field private isWill:Z

.field private priority:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

.field private pushData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->priority:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isTransient:Z

    .line 24
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isReceipt:Z

    .line 29
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isWill:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->priority:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isTransient:Z

    .line 24
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isReceipt:Z

    .line 29
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isWill:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->getProiority(I)Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->priority:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isTransient:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isReceipt:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->pushData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->priority:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    return-object v0
.end method

.method public getPushData()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->pushData:Ljava/lang/String;

    return-object v0
.end method

.method public isReceipt()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isReceipt:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isTransient:Z

    return v0
.end method

.method public isWill()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isWill:Z

    return v0
.end method

.method public setPriority(Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->priority:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    return-void
.end method

.method public setPushData(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->pushData:Ljava/lang/String;

    return-void
.end method

.method public setReceipt(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isReceipt:Z

    return-void
.end method

.method public setTransient(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isTransient:Z

    return-void
.end method

.method public setWill(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isWill:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->priority:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->getNumber()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isTransient:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->isReceipt:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->pushData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
