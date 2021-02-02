.class final Lcom/avos/avoscloud/AVFile$1;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFile;->withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/avos/avoscloud/GetFileCallback;

.field final synthetic val$objectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GetFileCallback;Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFile$1;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 221
    iget-object p1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 227
    invoke-static {p1}, Lcom/avos/avoscloud/AVFile;->access$000(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object p1

    .line 228
    iget-object p2, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    if-eqz p2, :cond_3

    .line 229
    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/avos/avoscloud/AVFile$1;->val$cb:Lcom/avos/avoscloud/GetFileCallback;

    if-eqz p1, :cond_3

    .line 232
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find file object by id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/avos/avoscloud/AVFile$1;->val$objectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/GetFileCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_3
    :goto_0
    return-void
.end method
