.class Lcom/kantv/ui/MainActivity$7;
.super Lcom/avos/avoscloud/SaveCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->initPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$7;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0

    if-nez p1, :cond_0

    .line 547
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    :cond_0
    return-void
.end method
