.class final Lcom/avos/avoscloud/AVQuery$3;
.super Lcom/avos/avoscloud/CloudQueryCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/CloudQueryCallback<",
        "Lcom/avos/avoscloud/AVCloudQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V
    .locals 0

    .line 1127
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$3;->val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {p0}, Lcom/avos/avoscloud/CloudQueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVCloudQueryResult;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1132
    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1134
    :cond_0
    iget-object p2, p0, Lcom/avos/avoscloud/AVQuery$3;->val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVCloudQueryResult;->getCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVCloudQueryResult;->setCount(I)V

    .line 1135
    iget-object p2, p0, Lcom/avos/avoscloud/AVQuery$3;->val$returnValue:Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVCloudQueryResult;->getResults()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public mustRunOnUIThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
