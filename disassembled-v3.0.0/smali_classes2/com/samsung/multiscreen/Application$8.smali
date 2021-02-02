.class Lcom/samsung/multiscreen/Application$8;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application;->handleReadyMessage(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Application;

.field final synthetic val$onReadyListener:Lcom/samsung/multiscreen/Channel$OnReadyListener;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application;Lcom/samsung/multiscreen/Channel$OnReadyListener;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$8;->this$0:Lcom/samsung/multiscreen/Application;

    iput-object p2, p0, Lcom/samsung/multiscreen/Application$8;->val$onReadyListener:Lcom/samsung/multiscreen/Channel$OnReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$8;->val$onReadyListener:Lcom/samsung/multiscreen/Channel$OnReadyListener;

    invoke-interface {v0}, Lcom/samsung/multiscreen/Channel$OnReadyListener;->onReady()V

    return-void
.end method
