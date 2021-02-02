.class Lcom/samsung/multiscreen/Channel$11;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel;->emit(Lcom/samsung/multiscreen/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Channel;

.field final synthetic val$message:Lcom/samsung/multiscreen/Message;

.field final synthetic val$messagelistener:Lcom/samsung/multiscreen/Channel$OnMessageListener;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Channel$OnMessageListener;Lcom/samsung/multiscreen/Message;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$11;->this$0:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$11;->val$messagelistener:Lcom/samsung/multiscreen/Channel$OnMessageListener;

    iput-object p3, p0, Lcom/samsung/multiscreen/Channel$11;->val$message:Lcom/samsung/multiscreen/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$11;->val$messagelistener:Lcom/samsung/multiscreen/Channel$OnMessageListener;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$11;->val$message:Lcom/samsung/multiscreen/Message;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Channel$OnMessageListener;->onMessage(Lcom/samsung/multiscreen/Message;)V

    return-void
.end method
