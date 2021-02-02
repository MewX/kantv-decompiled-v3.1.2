.class Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;)V
    .locals 0

    .line 1309
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler$1;->this$1:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler$1;->this$1:Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->access$1300(Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;)V

    return-void
.end method
