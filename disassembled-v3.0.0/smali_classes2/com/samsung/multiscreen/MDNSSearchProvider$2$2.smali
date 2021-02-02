.class Lcom/samsung/multiscreen/MDNSSearchProvider$2$2;
.super Ljava/lang/Object;
.source "MDNSSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MDNSSearchProvider$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/MDNSSearchProvider$2;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MDNSSearchProvider$2;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2$2;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2$2;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider$2;

    iget-object v0, v0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$result:Lcom/samsung/multiscreen/Result;

    const-string v1, "Not Found"

    invoke-static {v1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    return-void
.end method
