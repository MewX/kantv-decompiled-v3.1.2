.class Lcom/samsung/multiscreen/Search$1$4;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Search$1;->onFoundOnlyBLE(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/Search$1;

.field final synthetic val$NameOfTV:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Search$1;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/multiscreen/Search$1$4;->this$1:Lcom/samsung/multiscreen/Search$1;

    iput-object p2, p0, Lcom/samsung/multiscreen/Search$1$4;->val$NameOfTV:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1$4;->this$1:Lcom/samsung/multiscreen/Search$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$1100(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnBleFoundListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1$4;->this$1:Lcom/samsung/multiscreen/Search$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$1100(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnBleFoundListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Search$1$4;->val$NameOfTV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Search$OnBleFoundListener;->onFoundOnlyBLE(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
