.class final Lcom/avos/avoscloud/AVInstallation$1;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVInstallation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVInstallation;->updateCurrentInstallation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 269
    check-cast p1, Lcom/avos/avoscloud/AVInstallation;

    .line 271
    :try_start_0
    sget-object p2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVInstallation;->access$000(Landroid/content/Context;Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
