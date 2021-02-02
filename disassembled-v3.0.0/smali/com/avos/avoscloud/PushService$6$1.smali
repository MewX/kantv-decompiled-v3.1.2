.class Lcom/avos/avoscloud/PushService$6$1;
.super Lcom/avos/avoscloud/SaveCallback;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushService$6;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushService$6;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$6$1;->this$0:Lcom/avos/avoscloud/PushService$6;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 659
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "already has one request sending"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 660
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$400()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 662
    iput v0, p1, Landroid/os/Message;->what:I

    .line 663
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$400()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
