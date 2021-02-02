.class Lcom/avos/avoscloud/AVObject$19;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveObject(Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$isEventually:Z

.field final synthetic val$option:Lcom/avos/avoscloud/AVSaveOption;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$19;->val$option:Lcom/avos/avoscloud/AVSaveOption;

    iput-boolean p3, p0, Lcom/avos/avoscloud/AVObject$19;->val$sync:Z

    iput-boolean p4, p0, Lcom/avos/avoscloud/AVObject$19;->val$isEventually:Z

    iput-object p5, p0, Lcom/avos/avoscloud/AVObject$19;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 4

    .line 1801
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$19;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$19;->val$option:Lcom/avos/avoscloud/AVSaveOption;

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject$19;->val$sync:Z

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$19;->val$isEventually:Z

    iget-object v3, p0, Lcom/avos/avoscloud/AVObject$19;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/avos/avoscloud/AVObject;->access$600(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVSaveOption;ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method
