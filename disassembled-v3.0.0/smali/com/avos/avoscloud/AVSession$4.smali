.class Lcom/avos/avoscloud/AVSession$4;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->openWithSignature(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;

.field final synthetic val$callback:Lcom/avos/avoscloud/SignatureCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/SignatureCallback;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$4;->this$0:Lcom/avos/avoscloud/AVSession;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession$4;->val$callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 254
    new-instance v0, Lcom/avos/avoscloud/SignatureTask;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$4;->val$callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$4;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SignatureTask;->commit([Ljava/lang/String;)Landroid/os/AsyncTask;

    return-void
.end method
