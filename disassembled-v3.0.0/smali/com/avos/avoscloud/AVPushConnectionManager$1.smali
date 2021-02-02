.class Lcom/avos/avoscloud/AVPushConnectionManager$1;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPushConnectionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerAddress(Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$000(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "push server address is null"

    .line 55
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
