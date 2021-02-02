.class public Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.source "AVIMFileMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x6
.end annotation


# static fields
.field public static final CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/im/v2/AVIMMessageCreator<",
            "Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;",
            ">;"
        }
    .end annotation
.end field

.field static final DURATION:Ljava/lang/String; = "duration"

.field static final FILE_META:Ljava/lang/String; = "metaData"

.field static final FILE_SIZE:Ljava/lang/String; = "size"

.field static final FILE_URL:Ljava/lang/String; = "url"

.field static final FORMAT:Ljava/lang/String; = "format"

.field private static final LOCAL_PATH:Ljava/lang/String; = "local_path"

.field static final OBJECT_ID:Ljava/lang/String; = "objId"


# instance fields
.field actualFile:Lcom/avos/avoscloud/AVFile;

.field attrs:Ljava/util/Map;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcattrs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected file:Ljava/util/Map;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcfile"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field localFile:Ljava/io/File;

.field progressCallback:Lcom/avos/avoscloud/ProgressCallback;

.field text:Ljava/lang/String;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lctext"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 234
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_path"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/io/File;)V

    return-void
.end method

.method static isExternalAVFile(Lcom/avos/avoscloud/AVFile;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "__source"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "external"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected fulFillFileInfo(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFile()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFile()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 194
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "local_path"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    :goto_1
    const-string v1, "size"

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_2
    new-instance v1, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_2

    .line 213
    :cond_3
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot find the file!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :goto_2
    return-void
.end method

.method public getAVFile()Lcom/avos/avoscloud/AVFile;
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "url"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v3, "metaData"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 83
    :goto_0
    new-instance v3, Lcom/avos/avoscloud/AVFile;

    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "objId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    :cond_2
    return-object v3

    :cond_3
    return-object v1
.end method

.method protected getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
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

    const/4 p1, 0x0

    .line 231
    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public getAttrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getFile()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    return-object v0
.end method

.method public getFileMetaData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "metaData"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "url"

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSize()J
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "size"

    .line 142
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->attrs:Ljava/util/Map;

    return-void
.end method

.method protected setFile(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v0, "metaData"

    .line 94
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 95
    new-instance v1, Lcom/avos/avoscloud/AVFile;

    const-string v2, "url"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v0}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 96
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    const-string v1, "objId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    const-string v0, "local_path"

    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->localFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public setProgressCallback(Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->text:Ljava/lang/String;

    return-void
.end method

.method protected upload(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_0

    .line 150
    new-instance v1, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Lcom/avos/avoscloud/SaveCallback;)V

    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot find the file!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method
