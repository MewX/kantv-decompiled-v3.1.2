.class Lcom/samsung/multiscreen/Application$4;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application;->closeConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Application;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$4;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/samsung/multiscreen/Application$4;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Application;->handleSocketClosed()V

    return-void
.end method
