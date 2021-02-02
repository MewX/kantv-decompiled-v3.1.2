.class final Lcom/samsung/multiscreen/MSFDSearchProvider$7;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Result;Ljava/lang/Exception;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$7;->val$result:Lcom/samsung/multiscreen/Result;

    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$7;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$7;->val$result:Lcom/samsung/multiscreen/Result;

    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$7;->val$e:Ljava/lang/Exception;

    invoke-static {v1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/Exception;)Lcom/samsung/multiscreen/Error;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    return-void
.end method
