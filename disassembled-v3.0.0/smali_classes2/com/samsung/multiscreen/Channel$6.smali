.class Lcom/samsung/multiscreen/Channel$6;
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


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Error;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$6;->this$0:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$6;->val$error:Lcom/samsung/multiscreen/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$6;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$800(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$6;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$800(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$6;->val$error:Lcom/samsung/multiscreen/Error;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Channel$OnErrorListener;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_0
    return-void
.end method
