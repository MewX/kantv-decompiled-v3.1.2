.class public Lcom/avos/avoscloud/AVIMClientParcel;
.super Ljava/lang/Object;
.source "AVIMClientParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/avos/avoscloud/AVIMClientParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clientTag:Ljava/lang/String;

.field private isReconnection:Z

.field private sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/avos/avoscloud/AVIMClientParcel$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVIMClientParcel$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVIMClientParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->clientTag:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->sessionToken:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->isReconnection:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->clientTag:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->sessionToken:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->isReconnection:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVIMClientParcel;->clientTag:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVIMClientParcel;->sessionToken:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->isReconnection:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientTag()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->clientTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public isReconnection()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVIMClientParcel;->isReconnection:Z

    return v0
.end method

.method public setClientTag(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/avos/avoscloud/AVIMClientParcel;->clientTag:Ljava/lang/String;

    return-void
.end method

.method public setReconnection(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVIMClientParcel;->isReconnection:Z

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/avos/avoscloud/AVIMClientParcel;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 44
    iget-object p2, p0, Lcom/avos/avoscloud/AVIMClientParcel;->clientTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/avos/avoscloud/AVIMClientParcel;->sessionToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean p2, p0, Lcom/avos/avoscloud/AVIMClientParcel;->isReconnection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
