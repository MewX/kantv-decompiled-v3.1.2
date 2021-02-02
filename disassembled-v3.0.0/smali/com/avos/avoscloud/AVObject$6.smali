.class final Lcom/avos/avoscloud/AVObject$6;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->fetchAllIfNeededInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/FindCallback;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$6;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 812
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-gtz p1, :cond_1

    .line 814
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$6;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz p1, :cond_1

    .line 815
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    return-void
.end method
