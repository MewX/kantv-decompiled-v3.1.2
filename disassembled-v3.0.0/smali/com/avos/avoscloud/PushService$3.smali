.class Lcom/avos/avoscloud/PushService$3;
.super Lcom/avos/avoscloud/AVCallback;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$3;->this$0:Lcom/avos/avoscloud/PushService;

    iput-object p2, p0, Lcom/avos/avoscloud/PushService$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    if-nez p2, :cond_0

    .line 153
    iget-object p1, p0, Lcom/avos/avoscloud/PushService$3;->this$0:Lcom/avos/avoscloud/PushService;

    iget-object p2, p0, Lcom/avos/avoscloud/PushService$3;->val$intent:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/PushService;->access$100(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/PushService$3;->this$0:Lcom/avos/avoscloud/PushService;

    iget-object v0, p0, Lcom/avos/avoscloud/PushService$3;->val$intent:Landroid/content/Intent;

    invoke-static {p1, v0, p2}, Lcom/avos/avoscloud/PushService;->access$200(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method
