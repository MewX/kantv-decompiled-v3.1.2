.class Lcom/samsung/multiscreen/Service$2$1;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service$2;->onSuccess(Lcom/samsung/multiscreen/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Service$2;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Service$2;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/samsung/multiscreen/Service$2$1;->this$0:Lcom/samsung/multiscreen/Service$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$2$1;->this$0:Lcom/samsung/multiscreen/Service$2;

    iget-object v0, v0, Lcom/samsung/multiscreen/Service$2;->val$threads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/ProviderThread;

    .line 249
    invoke-virtual {v1}, Lcom/samsung/multiscreen/ProviderThread;->terminate()V

    goto :goto_0

    :cond_0
    return-void
.end method
