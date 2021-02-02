.class public Lcom/avos/avoscloud/PushServiceParcel;
.super Ljava/lang/Object;
.source "PushServiceParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/avos/avoscloud/PushServiceParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private newMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field private oldMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field private recallMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/avos/avoscloud/PushServiceParcel$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/PushServiceParcel$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PushServiceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object v0, p0, Lcom/avos/avoscloud/PushServiceParcel;->oldMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 23
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object v0, p0, Lcom/avos/avoscloud/PushServiceParcel;->newMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 24
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object p1, p0, Lcom/avos/avoscloud/PushServiceParcel;->recallMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNewMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/avos/avoscloud/PushServiceParcel;->newMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-object v0
.end method

.method public getOldMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/PushServiceParcel;->oldMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-object v0
.end method

.method public getRecallMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/avos/avoscloud/PushServiceParcel;->recallMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-object v0
.end method

.method public setNewMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/avos/avoscloud/PushServiceParcel;->newMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-void
.end method

.method public setOldMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/avos/avoscloud/PushServiceParcel;->oldMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-void
.end method

.method public setRecallMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/avos/avoscloud/PushServiceParcel;->recallMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 35
    iget-object p2, p0, Lcom/avos/avoscloud/PushServiceParcel;->oldMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    iget-object p2, p0, Lcom/avos/avoscloud/PushServiceParcel;->newMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 37
    iget-object p2, p0, Lcom/avos/avoscloud/PushServiceParcel;->recallMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
