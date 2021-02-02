.class Lorg/eclipse/jetty/io/nio/SelectorManager$1;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    iput p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "Stopped {} on {}"

    .line 273
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 277
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v6}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$000(Lorg/eclipse/jetty/io/nio/SelectorManager;)[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 304
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p0, v5, v3

    invoke-interface {v6, v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    :cond_0
    return-void

    .line 280
    :cond_1
    :try_start_1
    iget v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    aget-object v6, v6, v7

    .line 282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Selector"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 283
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v7

    if-eqz v7, :cond_2

    .line 284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v8

    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v9}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setPriority(I)V

    .line 285
    :cond_2
    sget-object v7, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "Starting {} on {}"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object p0, v9, v3

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :goto_0
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    .line 290
    :try_start_2
    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->doSelect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 298
    :try_start_3
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v7

    .line 294
    sget-object v8, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 304
    :cond_3
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p0, v5, v3

    invoke-interface {v6, v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    :cond_4
    return-void

    :catchall_0
    move-exception v6

    .line 304
    sget-object v7, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    aput-object v8, v5, v4

    aput-object p0, v5, v3

    invoke-interface {v7, v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    :cond_5
    goto :goto_2

    :goto_1
    throw v6

    :goto_2
    goto :goto_1
.end method
