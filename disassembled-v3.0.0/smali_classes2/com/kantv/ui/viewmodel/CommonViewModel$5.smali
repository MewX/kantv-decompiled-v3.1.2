.class final Lcom/kantv/ui/viewmodel/CommonViewModel$5;
.super Ljava/lang/Object;
.source "CommonViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/viewmodel/CommonViewModel;->play_delay(ZLcom/kantv/video/KTVideoPlayer;Lcom/kantv/ui/activity/VideoPlayActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$5;->val$context:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$5;->val$context:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-boolean v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->isPause:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$5;->val$context:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/viewmodel/CommonViewModel$5;->val$context:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    :cond_0
    return-void
.end method
