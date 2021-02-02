.class Lcom/kantv/ui/activity/VideoPlayActivity$57;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 3257
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$57;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3261
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 3262
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 3263
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3265
    :try_start_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$57;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "android.settings.SETTINGS"

    .line 3267
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3269
    :try_start_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$57;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
