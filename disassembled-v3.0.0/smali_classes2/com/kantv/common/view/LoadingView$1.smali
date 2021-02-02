.class Lcom/kantv/common/view/LoadingView$1;
.super Landroid/os/Handler;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/common/view/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/common/view/LoadingView;


# direct methods
.method constructor <init>(Lcom/kantv/common/view/LoadingView;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/kantv/common/view/LoadingView$1;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 36
    iget-object p1, p0, Lcom/kantv/common/view/LoadingView$1;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-virtual {p1}, Lcom/kantv/common/view/LoadingView;->invalidate()V

    return-void
.end method
