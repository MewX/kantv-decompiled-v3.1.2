.class Lcom/samsung/multiscreen/MSFDSearchProvider$3$1$1;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;->onSuccess(Lcom/samsung/multiscreen/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;

.field final synthetic val$service:Lcom/samsung/multiscreen/Service;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;Lcom/samsung/multiscreen/Service;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1$1;->this$1:Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;

    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1$1;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1$1;->this$1:Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->val$result:Lcom/samsung/multiscreen/Result;

    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1$1;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
