.class Lcom/kantv/ui/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->initUpdateData(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/MainActivity;

.field final synthetic val$apkFile:Ljava/io/File;

.field final synthetic val$download:Lcom/kantv/ui/utils/DownloadUtils;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity;Lcom/kantv/ui/utils/DownloadUtils;Ljava/io/File;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$12;->this$0:Lcom/kantv/ui/MainActivity;

    iput-object p2, p0, Lcom/kantv/ui/MainActivity$12;->val$download:Lcom/kantv/ui/utils/DownloadUtils;

    iput-object p3, p0, Lcom/kantv/ui/MainActivity$12;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "version_update_pop"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/kantv/ui/MainActivity$12;->val$download:Lcom/kantv/ui/utils/DownloadUtils;

    iget-object v3, p0, Lcom/kantv/ui/MainActivity$12;->val$apkFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Lcom/kantv/ui/utils/DownloadUtils;->install(Ljava/io/File;)V

    .line 685
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
