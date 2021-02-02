.class Lcom/avos/avoscloud/PaasClient$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient;

.field final synthetic val$archivedFile:Ljava/io/File;

.field final synthetic val$callback:Lcom/avos/avoscloud/GenericObjectCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/io/File;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$4;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p2, p0, Lcom/avos/avoscloud/PaasClient$4;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/PaasClient$4;->val$archivedFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$4;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 594
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/PaasClient$4;->val$archivedFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$4;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 574
    :cond_0
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 575
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 576
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 577
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVObjectReferenceCount;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVObjectReferenceCount;->getValue()Lcom/avos/avoscloud/AVObject;

    move-result-object v2

    .line 578
    invoke-virtual {v2, p1}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V

    .line 579
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObjectReferenceCount;

    .line 580
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObjectReferenceCount;->getValue()Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    .line 579
    invoke-static {v1}, Lcom/avos/avoscloud/PaasClient;->unregisterEvtuallyObject(Lcom/avos/avoscloud/AVObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse exception during archive request"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 586
    :cond_2
    iget-object p1, p0, Lcom/avos/avoscloud/PaasClient$4;->val$archivedFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 587
    iget-object p1, p0, Lcom/avos/avoscloud/PaasClient$4;->val$archivedFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    return-void
.end method
