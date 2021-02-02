.class public Lcom/avos/avoscloud/AVObject$AVObjectCreator;
.super Ljava/lang/Object;
.source "AVObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVObjectCreator"
.end annotation


# static fields
.field public static instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2449
    new-instance v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject$AVObjectCreator;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVObject;
    .locals 1

    .line 2457
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVObject;-><init>(Landroid/os/Parcel;)V

    .line 2458
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->access$700(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getAVObjectClassByClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2461
    :try_start_0
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2448
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/avos/avoscloud/AVObject;
    .locals 0

    .line 2471
    new-array p1, p1, [Lcom/avos/avoscloud/AVObject;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2448
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->newArray(I)[Lcom/avos/avoscloud/AVObject;

    move-result-object p1

    return-object p1
.end method
