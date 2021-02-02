.class Lcom/samsung/multiscreen/MDNSSearchProvider$2$1;
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

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MDNSSearchProvider$2;Ljava/io/IOException;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2$1;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider$2;

    iput-object p2, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2$1;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider$2;

    iget-object v0, v0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$result:Lcom/samsung/multiscreen/Result;

    iget-object v1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2$1;->val$e:Ljava/io/IOException;

    invoke-static {v1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/Exception;)Lcom/samsung/multiscreen/Error;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    return-void
.end method
