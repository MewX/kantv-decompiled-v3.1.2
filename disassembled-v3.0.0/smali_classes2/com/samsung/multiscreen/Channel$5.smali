.class Lcom/samsung/multiscreen/Channel$5;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Channel;

.field final synthetic val$error:Lcom/samsung/multiscreen/Error;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Result;Lcom/samsung/multiscreen/Error;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$5;->this$0:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$5;->val$result:Lcom/samsung/multiscreen/Result;

    iput-object p3, p0, Lcom/samsung/multiscreen/Channel$5;->val$error:Lcom/samsung/multiscreen/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 891
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$5;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_0

    .line 892
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$5;->val$error:Lcom/samsung/multiscreen/Error;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_0
    return-void
.end method
