.class final Lcom/samsung/multiscreen/MDNSSearchProvider$3;
.super Lcom/samsung/multiscreen/ProviderThread;
.source "MDNSSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MDNSSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private terminate:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/ProviderThread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 231
    iput-boolean p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$3;->terminate:Z

    return-void
.end method


# virtual methods
.method public isTerminate()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$3;->terminate:Z

    return v0
.end method

.method terminate()V
    .locals 1

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$3;->terminate:Z

    return-void
.end method
