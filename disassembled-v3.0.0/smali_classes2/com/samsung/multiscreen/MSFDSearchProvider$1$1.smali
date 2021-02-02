.class Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider$1;->run()V
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
.field final synthetic this$1:Lcom/samsung/multiscreen/MSFDSearchProvider$1;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$ttl:J


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MSFDSearchProvider$1;Ljava/lang/String;J)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->this$1:Lcom/samsung/multiscreen/MSFDSearchProvider$1;

    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->val$id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->val$ttl:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->this$1:Lcom/samsung/multiscreen/MSFDSearchProvider$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {p1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$200(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->val$id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Service;)V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->this$1:Lcom/samsung/multiscreen/MSFDSearchProvider$1;

    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->val$id:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->val$ttl:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->access$300(Lcom/samsung/multiscreen/MSFDSearchProvider$1;Ljava/lang/String;J)V

    .line 179
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->this$1:Lcom/samsung/multiscreen/MSFDSearchProvider$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->addService(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Lcom/samsung/multiscreen/Service;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;->onSuccess(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method
