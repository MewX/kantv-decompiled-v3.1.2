.class Lcom/samsung/multiscreen/Search$1$2;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Search$1;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/Search$1;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Search$1;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/multiscreen/Search$1$2;->this$1:Lcom/samsung/multiscreen/Search$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1$2;->this$1:Lcom/samsung/multiscreen/Search$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$500(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnStopListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1$2;->this$1:Lcom/samsung/multiscreen/Search$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$500(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnStopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/multiscreen/Search$OnStopListener;->onStop()V

    :cond_0
    return-void
.end method
