.class final Lcom/avos/avoscloud/AVOSCloud$1;
.super Ljava/lang/Object;
.source "AVOSCloud.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVOSCloud;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/avos/avoscloud/AVOSCloud$1;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->access$000()V

    .line 209
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/avos/avoscloud/AVOSCloud$1$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVOSCloud$1$1;-><init>(Lcom/avos/avoscloud/AVOSCloud$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
