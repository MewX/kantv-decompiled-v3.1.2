.class public Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;
.super Ljava/lang/Object;
.source "AVIMMessageCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mClazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->mClazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->mClazz:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Parcel;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Landroid/os/Parcel;)V

    .line 29
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    check-cast p1, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;->newArray(I)[Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    return-object p1
.end method
