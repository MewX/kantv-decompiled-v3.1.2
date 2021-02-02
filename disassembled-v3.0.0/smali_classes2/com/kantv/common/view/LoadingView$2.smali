.class Lcom/kantv/common/view/LoadingView$2;
.super Ljava/util/TimerTask;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/common/view/LoadingView;->startLoading()V
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

    .line 94
    iput-object p1, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0xc

    .line 97
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_3

    .line 99
    iget-object v5, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v5}, Lcom/kantv/common/view/LoadingView;->access$000(Lcom/kantv/common/view/LoadingView;)[I

    move-result-object v5

    aget v5, v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 100
    iget-object v5, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v5}, Lcom/kantv/common/view/LoadingView;->access$100(Lcom/kantv/common/view/LoadingView;)[Z

    move-result-object v5

    aput-boolean v2, v5, v3

    goto :goto_1

    .line 101
    :cond_0
    iget-object v5, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v5}, Lcom/kantv/common/view/LoadingView;->access$000(Lcom/kantv/common/view/LoadingView;)[I

    move-result-object v5

    aget v5, v5, v3

    if-nez v5, :cond_1

    .line 102
    iget-object v5, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v5}, Lcom/kantv/common/view/LoadingView;->access$100(Lcom/kantv/common/view/LoadingView;)[Z

    move-result-object v5

    aput-boolean v4, v5, v3

    .line 104
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v5}, Lcom/kantv/common/view/LoadingView;->access$100(Lcom/kantv/common/view/LoadingView;)[Z

    move-result-object v5

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_2

    .line 105
    iget-object v5, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v5}, Lcom/kantv/common/view/LoadingView;->access$000(Lcom/kantv/common/view/LoadingView;)[I

    move-result-object v5

    aget v5, v5, v3

    add-int/2addr v5, v4

    aput v5, v1, v3

    goto :goto_2

    .line 107
    :cond_2
    iget-object v5, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v5}, Lcom/kantv/common/view/LoadingView;->access$000(Lcom/kantv/common/view/LoadingView;)[I

    move-result-object v5

    aget v5, v5, v3

    sub-int/2addr v5, v4

    aput v5, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v0, v1}, Lcom/kantv/common/view/LoadingView;->access$002(Lcom/kantv/common/view/LoadingView;[I)[I

    .line 112
    iget-object v0, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v0}, Lcom/kantv/common/view/LoadingView;->access$000(Lcom/kantv/common/view/LoadingView;)[I

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadingView"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/kantv/common/view/LoadingView$2;->this$0:Lcom/kantv/common/view/LoadingView;

    invoke-static {v0}, Lcom/kantv/common/view/LoadingView;->access$200(Lcom/kantv/common/view/LoadingView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
