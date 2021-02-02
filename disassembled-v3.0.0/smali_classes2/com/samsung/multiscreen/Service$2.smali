.class final Lcom/samsung/multiscreen/Service$2;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Lcom/samsung/multiscreen/Service;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$threads:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/samsung/multiscreen/Service$2;->val$results:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/multiscreen/Service$2;->val$threads:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$2;->val$results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$2;->val$results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance p1, Lcom/samsung/multiscreen/Service$2$1;

    invoke-direct {p1, p0}, Lcom/samsung/multiscreen/Service$2$1;-><init>(Lcom/samsung/multiscreen/Service$2;)V

    invoke-static {p1}, Lcom/samsung/multiscreen/util/RunUtil;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Lcom/samsung/multiscreen/Service;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Service$2;->onSuccess(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method
