.class public Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;
.super Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;
.source "AVIMImageMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x2
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;",
            ">;"
        }
    .end annotation
.end field

.field static final IMAGE_HEIGHT:Ljava/lang/String; = "height"

.field static final IMAGE_WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 145
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Lcom/avos/avoscloud/AVFile;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static parseIntValue(Ljava/lang/Object;)I
    .locals 2

    if-eqz p0, :cond_3

    .line 96
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 99
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    .line 100
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 101
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    .line 97
    :cond_2
    :goto_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->localFile:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 111
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->isExternalAVFile(Lcom/avos/avoscloud/AVFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/avos/avoscloud/AVHttpClient;->clientInstance()Lcom/avos/avoscloud/AVHttpClient;

    move-result-object v0

    .line 113
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?imageInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 115
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/GetHttpResponseHandler;

    new-instance v4, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 141
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method

.method public getFileMetaData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->localFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->localFile:Ljava/io/File;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessageAccessor;->getImageMeta(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->file:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "height"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->parseIntValue(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "width"

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->parseIntValue(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
