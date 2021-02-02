.class final Lcom/samsung/multiscreen/MSFDSearchProvider$4;
.super Lcom/samsung/multiscreen/ProviderThread;
.source "MSFDSearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/ProviderThread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method terminate()V
    .locals 0

    .line 526
    invoke-virtual {p0}, Lcom/samsung/multiscreen/MSFDSearchProvider$4;->interrupt()V

    return-void
.end method
