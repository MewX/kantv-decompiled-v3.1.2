.class Lcom/samsung/multiscreen/Channel$2;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel;->connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/samsung/multiscreen/Channel;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$2;->this$0:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$2;->val$attributes:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/multiscreen/Channel$2;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 437
    invoke-static {}, Lcom/samsung/multiscreen/StandbyDeviceList;->getInstance()Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$2;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$100(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Service;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->get(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Lcom/samsung/multiscreen/Channel$2$2;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Channel$2$2;-><init>(Lcom/samsung/multiscreen/Channel$2;)V

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/Service;->getByURI(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Service;)V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$2;->this$0:Lcom/samsung/multiscreen/Channel;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$2;->val$attributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/samsung/multiscreen/Channel;->getChannelUri(Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/Channel;->access$000(Lcom/samsung/multiscreen/Channel;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/multiscreen/Channel$2;->val$attributes:Ljava/util/Map;

    new-instance v3, Lcom/samsung/multiscreen/Channel$2$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/multiscreen/Channel$2$1;-><init>(Lcom/samsung/multiscreen/Channel$2;Lcom/samsung/multiscreen/Service;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/multiscreen/Channel;->connect(Landroid/net/Uri;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 409
    check-cast p1, Lcom/samsung/multiscreen/Service;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Channel$2;->onSuccess(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method
