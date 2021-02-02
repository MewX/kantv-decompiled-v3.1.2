.class Lcom/samsung/multiscreen/Channel$3$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel$3;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/Channel$3;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel$3;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$3$1;->this$1:Lcom/samsung/multiscreen/Channel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 511
    iget-object p1, p0, Lcom/samsung/multiscreen/Channel$3$1;->this$1:Lcom/samsung/multiscreen/Channel$3;

    iget-object p1, p1, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {p1}, Lcom/samsung/multiscreen/Channel;->access$300(Lcom/samsung/multiscreen/Channel;)V

    return-void
.end method
