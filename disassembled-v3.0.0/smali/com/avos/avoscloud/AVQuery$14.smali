.class Lcom/avos/avoscloud/AVQuery$14;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->find()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Ljava/util/List;)V
    .locals 0

    .line 1586
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$14;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$14;->val$result:Ljava/util/List;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1598
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 1590
    :try_start_0
    iget-object p2, p0, Lcom/avos/avoscloud/AVQuery$14;->val$result:Ljava/util/List;

    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$14;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 1592
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method
