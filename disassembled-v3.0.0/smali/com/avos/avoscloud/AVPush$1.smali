.class Lcom/avos/avoscloud/AVPush$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVPush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVPush;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/SendCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/SendCallback;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush$1;->this$0:Lcom/avos/avoscloud/AVPush;

    iput-object p2, p0, Lcom/avos/avoscloud/AVPush$1;->val$internalCallback:Lcom/avos/avoscloud/SendCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush$1;->val$internalCallback:Lcom/avos/avoscloud/SendCallback;

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SendCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 232
    iget-object p2, p0, Lcom/avos/avoscloud/AVPush$1;->this$0:Lcom/avos/avoscloud/AVPush;

    new-instance v0, Lcom/avos/avoscloud/AVObject;

    const-string v1, "_Notification"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/avos/avoscloud/AVPush;->access$002(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;

    .line 233
    iget-object p2, p0, Lcom/avos/avoscloud/AVPush$1;->this$0:Lcom/avos/avoscloud/AVPush;

    invoke-static {p2}, Lcom/avos/avoscloud/AVPush;->access$000(Lcom/avos/avoscloud/AVPush;)Lcom/avos/avoscloud/AVObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 234
    iget-object p1, p0, Lcom/avos/avoscloud/AVPush$1;->val$internalCallback:Lcom/avos/avoscloud/SendCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 235
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SendCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
