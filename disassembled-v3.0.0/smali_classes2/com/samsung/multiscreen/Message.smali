.class public Lcom/samsung/multiscreen/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field static final MEHOD_APPLICATION_GET:Ljava/lang/String; = "ms.application.get"

.field static final MEHOD_APPLICATION_INSTALL:Ljava/lang/String; = "ms.application.install"

.field static final MEHOD_APPLICATION_START:Ljava/lang/String; = "ms.application.start"

.field static final MEHOD_APPLICATION_STOP:Ljava/lang/String; = "ms.application.stop"

.field static final MEHOD_WEB_APPLICATION_GET:Ljava/lang/String; = "ms.webapplication.get"

.field static final MEHOD_WEB_APPLICATION_START:Ljava/lang/String; = "ms.webapplication.start"

.field static final MEHOD_WEB_APPLICATION_STOP:Ljava/lang/String; = "ms.webapplication.stop"

.field static final METHOD_EMIT:Ljava/lang/String; = "ms.channel.emit"

.field static final PROPERTY_APP_NAME:Ljava/lang/String; = "appName"

.field static final PROPERTY_ARGS:Ljava/lang/String; = "args"

.field static final PROPERTY_CLIENTS:Ljava/lang/String; = "clients"

.field static final PROPERTY_DATA:Ljava/lang/String; = "data"

.field static final PROPERTY_ERROR:Ljava/lang/String; = "error"

.field static final PROPERTY_EVENT:Ljava/lang/String; = "event"

.field static final PROPERTY_FROM:Ljava/lang/String; = "from"

.field static final PROPERTY_ID:Ljava/lang/String; = "id"

.field static final PROPERTY_LIBRARY:Ljava/lang/String; = "library"

.field static final PROPERTY_MESSAGE:Ljava/lang/String; = "message"

.field public static final PROPERTY_MESSAGE_ID:Ljava/lang/String; = "id"

.field static final PROPERTY_METHOD:Ljava/lang/String; = "method"

.field static final PROPERTY_MOD_NUMBER:Ljava/lang/String; = "modelNumber"

.field static final PROPERTY_OS:Ljava/lang/String; = "os"

.field static final PROPERTY_PARAMS:Ljava/lang/String; = "params"

.field static final PROPERTY_RESULT:Ljava/lang/String; = "result"

.field static final PROPERTY_TO:Ljava/lang/String; = "to"

.field static final PROPERTY_URL:Ljava/lang/String; = "url"

.field static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field public static final TARGET_ALL:Ljava/lang/String; = "all"

.field public static final TARGET_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final TARGET_HOST:Ljava/lang/String; = "host"


# instance fields
.field private final channel:Lcom/samsung/multiscreen/Channel;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final data:Ljava/lang/Object;

.field private final event:Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final from:Lcom/samsung/multiscreen/Client;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final payload:[B


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/multiscreen/Client;[B)V
    .locals 0
    .param p1    # Lcom/samsung/multiscreen/Channel;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/multiscreen/Client;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/samsung/multiscreen/Message;->channel:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Message;->event:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/multiscreen/Message;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/multiscreen/Message;->from:Lcom/samsung/multiscreen/Client;

    iput-object p5, p0, Lcom/samsung/multiscreen/Message;->payload:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "from"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "event"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "channel"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    instance-of p1, p1, Lcom/samsung/multiscreen/Message;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/samsung/multiscreen/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/multiscreen/Message;

    invoke-virtual {p1, p0}, Lcom/samsung/multiscreen/Message;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getChannel()Lcom/samsung/multiscreen/Channel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getChannel()Lcom/samsung/multiscreen/Channel;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getEvent()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getData()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getFrom()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getFrom()Lcom/samsung/multiscreen/Client;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getPayload()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getPayload()[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getChannel()Lcom/samsung/multiscreen/Channel;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/samsung/multiscreen/Message;->channel:Lcom/samsung/multiscreen/Channel;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/multiscreen/Message;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/multiscreen/Message;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Lcom/samsung/multiscreen/Client;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/multiscreen/Message;->from:Lcom/samsung/multiscreen/Client;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/multiscreen/Message;->payload:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 40
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getChannel()Lcom/samsung/multiscreen/Channel;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getEvent()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getData()Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getFrom()Lcom/samsung/multiscreen/Client;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getPayload()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message(event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Message;->getFrom()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
